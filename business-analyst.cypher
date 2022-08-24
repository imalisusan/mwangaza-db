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

(business_facilitation_and_communication:COURSE{name: "Business Facilitation and Communication"}),

(business_process_modeling_and_improvement:COURSE{name: "Business Process Modeling and Improvement"}),

(business_analysis_and_process_management:COURSE{name: "Business Analysis & Process Management"}),

(business_analytics_specialization:COURSE{name: "Business Analytics Specialization"}),

(cousera:INSTITUTION{name: "Cousera"}),

(conestoga:INSTITUTION{name: "Conestoga"}),

(business_analysis_introduction)-[:OFFERED_AT]-> (conestoga),

(business_facilitation_and_communication)-[:OFFERED_AT]-> (conestoga),

(business_process_modeling_and_improvement)-[:OFFERED_AT]-> (conestoga),

(business_analysis_and_process_management)-[:OFFERED_AT]-> (cousera),

(business_analytics_specialization)-[:OFFERED_AT]-> (cousera),

(business_analysis_introduction)-[:COSTS {costs: 40950}]-> (conestoga),

(business_facilitation_and_communication)-[:COSTS {costs: 40950}]-> (conestoga),

(business_process_modeling_and_improvement)-[:COSTS {costs: 40950}]-> (conestoga),

(business_analysis_and_process_management)-[:COSTS {costs: 0}]-> (cousera),

(business_analytics_specialization)-[:COSTS {costs: 0}]-> (cousera),

(blogging:HOBBY{name: "Blogging"}),

(journaling:HOBBY{name: "Journaling"}),

(acting:HOBBY{name: "Acting"}),

(reading:HOBBY{name: "Reading"}),

(party_planning:HOBBY{name: "Party Planning"}),

(bargain_shopping:HOBBY{name: "Bargain Shopping"}),

(business_analyst)-[:IS_FOSTERED_BY]->(blogging),

(business_analyst)-[:IS_FOSTERED_BY]->(journaling),

(business_analyst)-[:IS_FOSTERED_BY]->(acting),

(business_analyst)-[:IS_FOSTERED_BY]->(reading),

(business_analyst)-[:IS_FOSTERED_BY]->(party_planning),

(business_analyst)-[:IS_FOSTERED_BY]->(bargain_shopping),