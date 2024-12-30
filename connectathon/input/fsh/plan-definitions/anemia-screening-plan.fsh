Instance: AnemiaScreeningPlan
InstanceOf: CPGComputablePlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(AnemiaScreeningPlan, PlanDefinition)
* description = "Definition of plan to screen for iron defeciency anemia"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* library = Canonical(AnemiaScreeningLibrary|0.2.0)
* action[+]
  * title = "Recommend CBC Lab Panel"
  * description = "Recommend CBC Lab Panel"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Needs CBC"
  * action[+]
    * title = "Order CBC Lab Panel"
    * description = "Order CBC Lab Panel to screen for anemia"
* action[+]
  * title = "Recommend serum ferritin"
  * description = "Recommend serum ferritin"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Needs serum ferritin"
  * action[+]
    * title = "Order serum ferritin"
    * description = "Order serum ferritin to monitor iron status"
