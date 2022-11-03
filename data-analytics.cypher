CREATE (data_analytics:CAREER { name: "Data Analytics", description: "Data analytics is the science of analyzing raw data to make conclusions about that information." }) 
 - [:REQUIRES] -> (:SKILL {name: " "}),

(fundamental: STAGE{name: "Fundamentals"}),

(statistics: STAGE{name: "Statistics"}),

(machine_learning: STAGE{name: "Machine Learning"}),

(python:PROGRAMMING_LANGUAGE{name: "Python"}),

(r:PROGRAMMING_LANGUAGE{name: "R"}),

(matlab:PROGRAMMING_LANGUAGE{name: "MATLAB"}),

(scala:PROGRAMMING_LANGUAGE{name: "Scala"}),

(julia:PROGRAMMING_LANGUAGE{name: "Julia"}),

(sql:PROGRAMMING_LANGUAGE{name: "SQL"}),

(ms_excel:TOOL{name: "MS Excel"}),

(tableau:TOOL{name: "Tableau"}),

(rapid_miner:TOOL{name: "Rapid Miner"}),

(sap:TOOL{name: "SAP"}),

(power_bi:TOOL{name: "Power BI"}),

(problem_solving: BASIC_SKILL{name: "Problem Solving"}),

(database_knowledge: BASIC_SKILL{name: "Database Knowledge"}),

(data_wrangling: BASIC_SKILL{name: "Data Wrangling"}),

(communication_skill: BASIC_SKILL{name: "Communication Skills"}),

(domain_knowledge: BASIC_SKILL{name: "Domain Knowledge"}),

(dashboarding: BASIC_SKILL{name: "Dashboarding"}),

(calculus: TECHNICAL_TOPIC{name: "Calculus"}),

(standard_deviation: TECHNICAL_TOPIC{name: "Standard Deviation"}),

(linear_equations: TECHNICAL_TOPIC{name: "Linear Equations"}),

(matrix_operation: TECHNICAL_TOPIC{name: "Matrix Operations"}),

(matrix_approximation: TECHNICAL_TOPIC{name: "Matrix Approximation"}),

(vector_operations: TECHNICAL_TOPIC{name: "Vector Operations"}),

(linear_mappings: TECHNICAL_TOPIC{name: "Linear Mappings"}),

(linear_algebra: TECHNICAL_TOPIC{name: "Linear Algebra"}),

(probability: TECHNICAL_TOPIC{name: "Probability"}),

(descriptive_statistics: TECHNICAL_TOPIC{name: "Descriptive Statistics"}),

(inferential_statistics: TECHNICAL_TOPIC{name: "Inferential Statistics"}),

(sampling_distribution: TECHNICAL_TOPIC{name: "Sampling Distribution"}),

(linear_regression: TECHNICAL_TOPIC{name: "Linear Regression"}),

(hypothesis_testing: TECHNICAL_TOPIC{name: "Hypothesis Testing"}),

(confidence_intervals: TECHNICAL_TOPIC{name: "Confidence Intervals"}),

(correlation_measures: TECHNICAL_TOPIC{name: "Correlation Measures"}),

(covariance_matrix: TECHNICAL_TOPIC{name: "Covariance Matrix"}),

(data_scrubbing: TECHNICAL_TOPIC{name: "Data Scrubbing"}),

(regression: TECHNICAL_TOPIC{name: "Regression"}),

(exploratory_data_analysis: TECHNICAL_TOPIC{name: "Exploratory Data Analysis"}),

(reading_cvs_data: TECHNICAL_TOPIC{name: "Reading CVS Data"}),

(training_and_testing_data: TECHNICAL_TOPIC{name: "Training and Testing Data"}),

(data_sources_and_acquisition: TECHNICAL_TOPIC{name: "Data Sources and Acquisition"}),

(decision_tree: TECHNICAL_TOPIC{name: "Decision Tree"}),

(multi-dimensional_data_model: TECHNICAL_TOPIC{name: "Milti-dimenasional Data Model"}),

(data_replication: TECHNICAL_TOPIC{name: "Data Replication"}),

(regression: TECHNICAL_TOPIC{name: "Regression"}),

(data_analytics)-[:REQUIRES]-> (python),

(data_analytics)-[:REQUIRES]-> (r),

(data_analytics)-[:REQUIRES]-> (matlab),

(data_analytics)-[:REQUIRES]-> (scala),

(data_analytics)-[:REQUIRES]-> (julia),

(data_analytics)-[:REQUIRES]-> (sql),

(data_analytics)-[:REQUIRES]-> (ms_excel),

(data_analytics)-[:REQUIRES]-> (tableau),

(data_analytics)-[:REQUIRES]-> (rapid_miner),

(data_analytics)-[:REQUIRES]-> (sap),

(data_analytics)-[:REQUIRES]-> (power_bi),

(data_analytics)-[:REQUIRES]-> (problem_solving),

(data_analytics)-[:REQUIRES]-> (database_knowledge),

(data_analytics)-[:REQUIRES]-> (data_wrangling),

(data_analytics)-[:REQUIRES]-> (communication_skill),

(data_analytics)-[:REQUIRES]-> (domain_knowledge),

(data_analytics)-[:REQUIRES]-> (dashboarding),

(data_analytics)-[:REQUIRES]-> (calculus),

(data_analytics)-[:REQUIRES]-> (standard_deviation),

(data_analytics)-[:REQUIRES]-> (matrix_operation),

(data_analytics)-[:REQUIRES]-> (linear_equations),

(data_analytics)-[:REQUIRES]-> (matrix_approximation),

(data_analytics)-[:REQUIRES]-> (vector_operations),

(data_analytics)-[:REQUIRES]-> (linear_mappings),

(data_analytics)-[:REQUIRES]-> (linear_algebra),

(data_analytics)-[:REQUIRES]-> (probability),

(data_analytics)-[:REQUIRES]-> (descriptive_statistics),

(data_analytics)-[:REQUIRES]-> (inferential_statistics),

(data_analytics)-[:REQUIRES]-> (sampling_distribution),

(data_analytics)-[:REQUIRES]-> (linear_regression),

(data_analytics)-[:REQUIRES]-> (hypothesis_testing),

(data_analytics)-[:REQUIRES]-> (confidence_intervals),

(data_analytics)-[:REQUIRES]-> (correlation_measures),

(data_analytics)-[:REQUIRES]-> (covariance_matrix),

(data_analytics)-[:REQUIRES]-> (data_scrubbing),

(data_analytics)-[:REQUIRES {month: 1}]-> (data_scrubbing),

(data_analytics)-[:REQUIRES {month: 1}]-> (exploratory_data_analysis),

(data_analytics)-[:REQUIRES {month: 1}]-> (regression),

(data_analytics)-[:REQUIRES {month: 1}]-> (data_scrubbing),

(data_analytics)-[:REQUIRES {month: 1}]-> (reading_cvs_data),

(data_analytics)-[:REQUIRES {month: 1}]-> (training_and_testing_data),

(data_analytics)-[:REQUIRES {month: 2}]-> (data_sources_and_acquisition),

(data_analytics)-[:REQUIRES {month: 2}]-> (decision_tree),

(data_analytics)-[:REQUIRES {month: 2}]-> (data_replication),

(data_analytics)-[:REQUIRES {month: 3}]-> (multi-dimensional_data_model),