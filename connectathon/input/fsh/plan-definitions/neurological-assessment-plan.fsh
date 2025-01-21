Instance: NeurologicalAssessmentPlan
InstanceOf: CPGComputablePlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(NeurologicalAssessmentPlan, PlanDefinition)
* description = "Definition of a plan to recommend nuerological assessment"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* library = Canonical(NeurologicalAssessmentLibrary|0.2.0)
* action
  * title = "Order neurological exam"
  * type = $action-type#create
  * dynamicValue
    * path = "occurrencePeriod.start"
    * expression
      * language = #text/cql-identifier
      * expression = "Timing of Service"
  * definitionCanonical = Canonical(OrderServiceActivity|0.2.0)