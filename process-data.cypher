//Similar Careers
MATCH (c:Career)-[:REQUIRES]->(skill)<-[:REQUIRES]-(otherCareer)
WHERE c.name CONTAINS "Computer Science"
RETURN otherCareer.name AS name, COUNT(skill) AS skillsInCommon,
COLLECT(skill.name) AS skills
ORDER BY skillsInCommon DESC, otherCareer.name
LIMIT 10