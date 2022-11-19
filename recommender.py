from neo4j import GraphDatabase
import logging
from neo4j.exceptions import ServiceUnavailable

class Recommender:
    def __init__(self, uri, user, password):
        self.driver = GraphDatabase.driver(uri, auth=(user, password))
        
    def close(self):
        self.driver.close()

    # a simple example to get skills from database
    def find_skills(self, person_name):
        with self.driver.session() as session:
            result = session.execute_read(self._find_and_return_skills, person_name)
            return {"skills": result}
        
    # a simple example to get Similar Careers from database
    def find_similar_careers(self, career_name):
        with self.driver.session() as session:
            result = session.execute_read(self._find_and_return_skills, career_name)
            return {"careers": result}   
          
    @staticmethod
    def _find_and_return_skills(tx, person_name):
        query = (
            "MATCH (p:Person {name: $person_name})-[:HAS_SKILL]-(skill) "
            "RETURN skill.name AS name"
        )
        result = tx.run(query, person_name=person_name)
        return [record["name"] for record in result]
    
    @staticmethod
    def _find_and_return_similar_careers(tx, career_name):
        query = (
            "MATCH (career:Career)-[:REQUIRES]->(skill)<-[:REQUIRES]-(otherCareer)"
            "WHERE career.name CONTAINS {name: $career_name}"
            "RETURN otherCareer.name AS name, COUNT(topic) AS skillsInCommon,"
            "COLLECT(skill.name) AS skills"
            "ORDER BY skillsInCommon DESC, otherCareer.name"
            "LIMIT 10"
        )
        result = tx.run(query, career_name=career_name)
        return [record["name"] for record in result]
    
    # get recommendations from the database, to be called by our FastAPI server
    def find_recommendation(self, cuisine_name, location_name, person_list, max):
        with self.driver.session() as session:
            result = session.execute_read(self._find_and_return_recommendation, cuisine_name, location_name, person_list, max)
            return result

    @staticmethod
    def _find_and_return_recommendation(tx, cuisine_name, location_name, person_list, max):
        # simple hack to generalized and parameterized functions into one
        cuisine_string = "(cuisine)" if cuisine_name == '' else "(cuisine:Cuisine {name: $cuisine_name})"
        location_string = "(location)" if location_name == '' else "(location:Location {name: $location_name})"
        person_string = "" if len(person_list) == 0 else "WHERE person.name IN %s" % (str(person_list))

        # if True, return only the restaurants with the highest number of likes by friends
        if (max):
            query = (
                '''MATCH (restaurant:Restaurant)-[:LOCATED_IN]->{location},
                      (restaurant)-[:SERVES]->{cuisine},
                      (person:Person)-[:LIKES]->(restaurant)
                {person}
                WITH restaurant.name AS name, collect(person.name) AS likers, COUNT(*) AS occurence
                WITH MAX(occurence) as max_count
                MATCH (restaurant:Restaurant)-[:LOCATED_IN]->{location},
                      (restaurant)-[:SERVES]->{cuisine},
                      (person:Person)-[:LIKES]->(restaurant)
                {person}
                WITH restaurant.name AS name, collect(person.name) AS likers, COUNT(*) AS occurence, max_count
                WHERE occurence = max_count
                RETURN name, likers, occurence'''.format(location=location_string, cuisine=cuisine_string, person=person_string)
            )
        else:
            query = (
                '''MATCH (restaurant:Restaurant)-[:LOCATED_IN]->%s,
                      (restaurant)-[:SERVES]->%s,
                      (person:Person)-[:LIKES]->(restaurant)
                %s
                RETURN restaurant.name AS name, collect(person.name) AS likers, COUNT(*) AS occurence
                ORDER BY occurence DESC''' % (location_string, cuisine_string, person_string)
            )


        result = tx.run(query, cuisine_name=cuisine_name, location_name=location_name, person_list=person_list)
        try:
            return [{"restaurant": row["name"], "likers": row["likers"], "occurence": row["occurence"]} for row in result]
        except ServiceUnavailable as exception:
            logging.error("{query} raised an error: \n {exception}".format(query=query, exception=exception))
            raise

if __name__ == "__main__":
    uri = "bolt://localhost:7687"
    user = "neo4j"
    password = "Strath$8552"
    
    app = Recommender(uri, user, password)
    #print(app.find_skills("Alice"))
    print(app.find_similar_careers("HTML"))
    app.close()
