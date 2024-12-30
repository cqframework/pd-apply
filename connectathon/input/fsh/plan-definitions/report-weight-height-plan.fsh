Instance: ReportWeightHeightPlan
InstanceOf: CPGComputablePlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(ReportWeightHeightPlan, PlanDefinition)
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* description = "Plan to report weight and height of patient upon admission"
* goal
  * description
    * text = "Weight target"
* action[+]
  * title = "Recommend Weight Measurement"
  * description = "Recommend Weight Measurement"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"
  * action[+]
    * title = "Report Weight"
    * description = "Report weight metric upon admission"
* action[+]
  * title = "Recommend Height Measurement"
  * description = "Recommend Height Measurement"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"
  * action[+]
    * title = "Report Height"
    * description = "Report height metric upon admission"
