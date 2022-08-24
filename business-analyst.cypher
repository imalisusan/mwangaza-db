CREATE (business_analyst:CAREER { name: "Business Analyst", description: "Business analysts spend a significant amount of time interacting with clients, users, management, and developers" }) 
 - [:REQUIRES] -> (:SKILL {name: "Risk Assessment"}),

(business_analyst)-[:REQUIRES]->(:TECHNICAL_SKILL {name: "Proficiency in basic office applications"}),

(business_analyst)-[:REQUIRES]->(:TECHNICAL_SKILL {name: "Software testing skills"}),

(business_analyst)-[:REQUIRES]->(:TECHNICAL_SKILL {name: "Understanding of programming languages"}),

(business_analyst)-[:REQUIRES]->(:TECHNICAL_SKILL {name: "Database usage"}),

(business_analyst)-[:REQUIRES]->(:TECHNICAL_SKILL {name: "Advanced Process Modelling"}),

(business_analyst)-[:REQUIRES]->(:TECHNICAL_SKILL {name: "Research"}),

(business_analyst)-[:REQUIRES]->(:TECHNICAL_SKILL {name: "Familiarization with software development methods"}),

(business_analyst)-[:REQUIRES]->(:TECHNICAL_SKILL {name: "Documentation"}),

(business_analyst)-[:REQUIRES]->(:TECHNICAL_SKILL {name: "Cost-benefit analysis"}),

(business_analyst)-[:REQUIRES]->(:MICRO_CREDENTIAL {name: "Certified Business Analysis Profession (CBAP)"}),

(business_analyst)-[:REQUIRES]->(:MICRO_CREDENTIAL {name: "Certified Analytics Professional (CAP)"}),

(business_analyst)-[:REQUIRES]->(:MICRO_CREDENTIAL {name: "Certification in Business Data Analytics (CBDA)"}),

(business_analyst)-[:REQUIRES]->(:MICRO_CREDENTIAL {name: "Certified Foundation Level Business Analyst (CFLBA)"}),

(business_analyst)-[:REQUIRES]->(:TECHNICAL_SKILL {name: "Certification of Competency in Business Analysis (CCBA)"}),

(business_analysis_introduction:COURSE{name: "Business Analysis Introduction"}),

(business_analysis_introduction:COURSE{name: "Business Facilitation and Communication"}),

(Business Process Modeling_and_improvement:COURSE{name: "Business Process Modeling and Improvement"}),

(business_analysis_and_Process_Management:COURSE{name: "Business Analysis & Process Management"}),

(business_analytics_specialization:COURSE{name: "Business Analytics Specialization"}),

(business_analysis_introduction:COURSE{name: "Business Facilitation and Communication"}),

(business_analysis_introduction:COURSE{name: "Business Facilitation and Communication"}),

(business_analyst)-[:OFFERED_AT]->(:INSTITUTION {name: "Nairobi Institue of Business Studies"}),

(business_analysis)-[:OFFERED_AT]->(:INSTITUTION {name: "Great Learning", institution_link: "https://www.mygreatlearning.com/pg-program-data-science-business-analytics-course?gl_blog_id=12094", cost:"$409.50"}),

(business_analyst)-[:OFFERED_AT]->(:INSTITUTION {name: "Nairobi Institue of Business Studies"}),

(business_analyst)-[:OFFERED_AT]->(:INSTITUTION {name: "Nairobi Institue of Business Studies"}),


