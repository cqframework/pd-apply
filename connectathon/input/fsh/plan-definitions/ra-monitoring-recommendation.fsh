Instance: RaMonitoringRecommendation
InstanceOf: CPGRecommendationDefinition
Usage: #definition
Title: "RA Monitoring Recommendation"
* insert DefinitionMetadata(RaMonitoringRecommendation, PlanDefinition)
* description = "Monitoring tests for antirheumatic drug therapy for Ra."
* library = Canonical(RaMonitoringRecommendationLibrary|0.2.0)
* action
  * title = "Order monitoring tests for antirheumatic drug therapy."
  * description = "Order monitoring tests for antirheumatic drug therapy."
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Order monitoring tests if on RA treatment"
  * input[+]
    * type = #Observation
    * profile = Canonical(ActiveRaTreatmentFeature)
  * code = $cpg-common-process#diagnostic-testing
  * definitionCanonical = Canonical(OrderServiceActivity|0.2.0)