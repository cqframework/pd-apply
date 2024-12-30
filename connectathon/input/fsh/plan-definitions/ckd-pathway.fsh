Instance: CkdPathway
InstanceOf: PlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(CkdPathway, PlanDefinition)
* type = $cpg-plan-type#clinical-protocol
* action[+]
  * title = "CKD Management"
  * description = "Definition of plan for new diagnosis of CKD"
  * definitionCanonical = Canonical(CKDManagementPlan|0.2.0)
* action[+]
  * title = "Greet patient"
  * description = "Greet patient at time of patient portal sign up"
  * definitionCanonical = Canonical(SendMessagePlan|0.2.0)

