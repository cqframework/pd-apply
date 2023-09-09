Instance: NeurologicalAssessmentPlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(NeurologicalAssessmentPlan, PlanDefinition)
* description = "Definition of a plan to recommend nuerological assessment"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* library = "http://example.org/Library/NeurologicalAssessmentLibrary"
* action
  * title = "Order neurological exam"
  * dynamicValue
    * path = "occurrencePeriod.start"
    * expression
      * language = #text/cql-identifier
      * expression = "Timing of Service"
  * definitionCanonical = "http://example.org/ActivityDefinition/OrderServiceActivity"