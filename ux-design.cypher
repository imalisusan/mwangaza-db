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

(figma: TOOL{name: "Figma"}),

(mockflow: TOOL{name: "Mockflow"}),

(axure: TOOL{name: "Axure"}),

(adobe_xd: TOOL{name: "Adobe XD"}),

(figma: TOOL{name: "Figma"}),

(sketch: TOOL{name: "Sketch"}),

(framer: TOOL{name: "Framer"}),

(protopie: TOOL{name: "Protopie"}),

(avocode: TOOL{name: "Avocode"}),

(zeplin: TOOL{name: "Zeplin"}),

(adobe_illlustrator: TOOL{name: "Adobe Illustrator"}),

(corel_draw: TOOL{name: "CorelDraw"}),

(spline: TOOL{name: "Spline"}),

(atomic_design: TECHNICAL_TOPIC{name: "Atomic Design by Brad Forst"}),

(carbon_design: TECHNICAL_TOPIC{name: "Carbon Design by IBM"}),

(atlassian_design: TECHNICAL_TOPIC{name: "Atlassian Design"}),

(fluent_design: TECHNICAL_TOPIC{name: "Fluent Design"}),

(dribble: RESOURCE{name: "Dribble" link: "dribble.com"}),

(noun_project: RESOURCE{name: "Noun Project" link: "nounproject.com"}),

(icon_finder: RESOURCE{name: "Icon Finder" link: "iconfinder.com"}),

(flaticon: RESOURCE{name: "Flat Icon" link: "flaticon.com"}),

(coolors: RESOURCE{name: "Coolors" link: "coolors.co"}),

(font_space: RESOURCE{name: "Font Space" link: "fontspace.com"}),

(font_freak: RESOURCE{name: "Font Freak" link: "fontfreak.com"}),

(pixa_bay: RESOURCE{name: "PixaBay" link: "pixabay.com"}),

(unsplash: RESOURCE{name: "Unsplash" link: "unsplash.com"}),

(screenlane: RESOURCE{name: "Screenlane" link: "screenlane.com"}),

(design_guidelines_and_principles)-[:REQUIRES]-> (adaptive_web_design),

(design_guidelines_and_principles)-[:REQUIRES]-> (responsive_design),

(design_guidelines_and_principles)-[:REQUIRES]-> (mobile_first_design),

(design_guidelines_and_principles)-[:REQUIRES]-> (google_material_design),

(design_guidelines_and_principles)-[:REQUIRES]-> (apple_ios_human_interface_guidelines),

(design_guidelines_and_principles)-[:REQUIRES]-> (wcag_guidelines),

(wireframing)-[:REQUIRES]-> (balsamiq),

(wireframing)-[:REQUIRES]-> (figma),

(wireframing)-[:REQUIRES]-> (mockflow),

(prototyping)-[:REQUIRES]-> (axure),

(prototyping)-[:REQUIRES]-> (adobe_xd),

(prototyping)-[:REQUIRES]-> (figma),

(prototyping)-[:REQUIRES]-> (sketch),

(prototyping)-[:REQUIRES]-> (framer),

(prototyping)-[:REQUIRES]-> (protopie),

(prototyping)-[:REQUIRES]-> (zeplin),

(prototyping)-[:REQUIRES]-> (adobe_illlustrator),

(prototyping)-[:REQUIRES]-> (corel_draw),

(prototyping)-[:REQUIRES]-> (spline),

(building_a_design_system)-[:REQUIRES]-> (atomic_design),

(building_a_design_system)-[:REQUIRES]-> (carbon_design),

(building_a_design_system)-[:REQUIRES]-> (atlassian_design),

(building_a_design_system)-[:REQUIRES]-> (fluent_design),

