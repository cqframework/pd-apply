Instance: AnemiaScreeningPlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(AnemiaScreeningPlan, PlanDefinition)
* description = "Definition of plan to screen for iron defeciency anemia"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* library = "http://example.org/Library/AnemiaScreeningLibrary"
* action[+]
  * title = "Order CBC Lab Panel"
  * description = "Order CBC Lab Panel to screen for anemia"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Needs CBC"
* action[+]
  * title = "Order serum ferritin"
  * description = "Order serum ferritin to monitor iron status"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Needs serum ferritin"
