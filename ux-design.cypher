CREATE (ui_ux_design:CAREER { name: "UI/UX Design", description: "UX Design is the process design teams use to create products that provide meaningful and relevant experiences to users." }) 
 - [:REQUIRES] -> (:SKILL {name: " "}),

(design_guidelines_and_principles: STAGE{name: "Design Guidelines and Principles"}),

(wireframing: STAGE{name: "Wireframing"}),

(prototyping: STAGE{name: "Prototyping"}),

(building_a_design_system: STAGE{name: "Building a Design System"}),

(adaptive_web_design: TECHNICAL_TOPIC{name: "Adaptive Web Design"}),

(responsive_design: TECHNICAL_TOPIC{name: "Responsive Design"}),

(mobile_first_design: TECHNICAL_TOPIC{name: "Mobile-First Design"}),

(google_material_design: TECHNICAL_TOPIC{name: "Google Material Design"}),

(apple_ios_human_interface_guidelines: TECHNICAL_TOPIC{name: "Apple iOS Human Interface Guidelines"}),

(wcag_guidelines: TECHNICAL_TOPIC{name: "WCAG Guidelines"}),

(balsamiq: TOOL{name: "Balsamiq"}),

(figma: TECHNICAL_TOPIC{name: "Figma"}),

(mockflow: TECHNICAL_TOPIC{name: "Mockflow"}),

(axure: TECHNICAL_TOPIC{name: "Axure"}),

(adobe_xd: TECHNICAL_TOPIC{name: "Adobe XD"}),

(figma: TECHNICAL_TOPIC{name: "Figma"}),

(sketch: TECHNICAL_TOPIC{name: "Sketch"}),

(framer: TECHNICAL_TOPIC{name: "Framer"}),

(protopie: TECHNICAL_TOPIC{name: "Protopie"}),

(avocode: TECHNICAL_TOPIC{name: "Avocode"}),

(zeplin: TECHNICAL_TOPIC{name: "Zeplin"}),

(adobe_illlustrator: TECHNICAL_TOPIC{name: "Adobe Illustrator"}),

(corel_draw: TECHNICAL_TOPIC{name: "CorelDraw"}),

(spline: TECHNICAL_TOPIC{name: "Spline"}),

(atomic_design: TECHNICAL_TOPIC{name: "Atomic Design by Brad Forst"}),

(carbon_design: TECHNICAL_TOPIC{name: "Carbon Design by IBM"}),

(attlassian_design: TECHNICAL_TOPIC{name: "Atlassian Design"}),

(fluent_design: TECHNICAL_TOPIC{name: "Fluent Design"}),

(design_guidelines_and_principles)-[:REQUIRES]-> (adaptive_web_design),