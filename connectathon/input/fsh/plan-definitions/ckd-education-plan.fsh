Instance: CKDEducationPlan
InstanceOf: CPGComputablePlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(CKDEducationPlan, PlanDefinition)
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* description = "Plan definition to provide education to a patient with newly diagnosed chronic kidney disease"
* action
  * title = "Recommend CKD Patient Education"
  * description = "Recommend verbal and written education on disease state at time of CKD diagnosis"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * action
    * title = "Provide CKD Patient Education"
    * description = "Provide verbal and written education on disease state at time of CKD diagnosis"