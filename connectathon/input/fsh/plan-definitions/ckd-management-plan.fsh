Instance: CKDManagementPlan
InstanceOf: CPGComputablePlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(CKDManagementPlan, PlanDefinition)
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* description = "Management strategy for patients with newly diagnosed Chronic Kidney Disease"
* action[+]
  * title = "CKD Education"
  * description = "CKD Education at time of diagnosis"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * definitionCanonical = Canonical(CKDEducationPlan|0.2.0)
* action[+]
  * title = "Follow Up Plan"
  * description = "Schedule follow up with nephrologist"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"
  * definitionCanonical = Canonical(CKDFollowUpPlan|0.2.0)