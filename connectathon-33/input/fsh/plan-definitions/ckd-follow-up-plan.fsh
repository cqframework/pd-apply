Instance: CKDFollowUpPlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(CKDFollowUpPlan, PlanDefinition)
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* description = "Definition of a plan to schedule follow up at time of CKD diagnosis"
* action
  * title = "CKD Follow Up Plan"
  * description = "Schedule follow up with a nephrologist at time of CKD diagnosis"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"
