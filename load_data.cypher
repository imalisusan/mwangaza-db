//Careers with skills
LOAD CSV WITH HEADERS FROM "file:\data\CareerswithSkills.csv" AS row
WITH row, split(row.Skills, ",") AS skills
UNWIND skills AS skill
MERGE (p1:Career {name: row.Career})
MERGE (p2:Skill {name: skill})
MERGE (p1)-[:REQUIRES]->(p2);

//Careers with skills2
LOAD CSV WITH HEADERS FROM "file:\data\CareerSkills2.csv" AS row
WITH row, split(row.Skills, ",") AS skills
UNWIND skills AS skill
MERGE (p3:Career {name: row.Career})
MERGE (p4:Skill {name: skill})
MERGE (p3)-[:REQUIRES]->(p4);

//CourseSkills
LOAD CSV WITH HEADERS FROM "file:\data\CourseSkills.csv" AS row
WITH row, split(row.Skills, ",") AS skills
UNWIND skills AS skill
MERGE (p5:Course {name: row.Course})
MERGE (p6:Skill {name: skill})
MERGE (p5)-[:REQUIRES]->(p6);

//CourseJobs
LOAD CSV WITH HEADERS FROM "file:\data\CourseJobs.csv" AS row
WITH row, split(row.Job_Titles, ",") AS job_titles 
UNWIND job_titles AS job_title
MERGE (p7:Course {name: row.Course})
MERGE (p8:Job_Titles {job_title: job_title})
MERGE (p7)-[:CAN_LEAD_TO]->(p8);

//CourseInstitutions
LOAD CSV WITH HEADERS FROM "file:\data\CourseInstitutions.csv" AS row
WITH row, split(row.Institutions, ",") AS institutions 
UNWIND institutions AS institution
MERGE (p9:Course {name: row.Course})
MERGE (p10:Institution {institution: institution})
MERGE (p9)-[:IS_TAUGHT_AT]->(p10);

CREATE (alice:Person {name:"Alice"})-[:KNOWS]->(php:Skill {name:"PHP"}),
       (alice)-[:KNOWS]->(sql:Skill {name:"SQL"}),
       (alice)-[:KNOWS]->(javascript:Skill {name:"JavaScript"}),
       (alice)-[:KNOWS]->(database:Skill {name:"Database"}),
       (alice)-[:KNOWS]->(html:Skill {name:"HTML"}),
       (alice)-[:KNOWS]->(css:Skill {name:"CSS"}),
       (alice)-[:KNOWS]->(design:Skill {name:"Design"})