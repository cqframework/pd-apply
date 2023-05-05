Instance: CkdPathway
InstanceOf: PlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(CkdPathway, PlanDefinition)
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#clinical-protocol
* action[+]
  * title = "CKD Management"
  * description = "Definition of plan for new diagnosis of CKD"
  * definitionCanonical = "http://example.com/PlanDefinition/CKDManagementPlan"
* action[+]
  * title = "Greet patient"
  * description = "Greet patient at time of patient portal sign up"
  * definitionCanonical = "http://example.com/PlanDefinition/SendMessagePlan"

