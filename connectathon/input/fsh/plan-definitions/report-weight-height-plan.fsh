Instance: ReportWeightHeightPlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(ReportWeightHeightPlan, PlanDefinition)
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* description = "Plan to report weight and height of patient upon admission"
* goal
  * description
    * text = "Weight target"
* action[+]
  * title = "Report Weight"
  * description = "Report weight metric upon admission"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"
* action[+]
  * title = "Report Height"
  * description = "Report height metric upon admission"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"