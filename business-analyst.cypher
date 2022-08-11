CREATE (business_analyst:CAREER { name: "Business Analyst", description: "Business analysts spend a significant amount of time interacting with clients, users, management, and developers" }) 
 - [:REQUIRES] -> (:SKILL {name: "Risk Assessment"}),

 (business_analyst)-[:REQUIRES]->(:MICRO_CREDENTIAL {name: "Business Analysis"}),
