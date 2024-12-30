Instance: CKDEducationPlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(CKDEducationPlan, PlanDefinition)
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* description = "Plan definition to provide education to a patient with newly diagnosed chronic kidney disease"
* action
  * title = "CKD Patient Education"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * description = "Provide verbal and written education on disease state at time of CKD diagnosis"