Instance: SendMessagePlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(SendMessagePlan, PlanDefinition)
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#eca-rule
* description = "Definition of plan recommendation to send a message"
* action
  * title = "Greet the patient"
  * type = http://terminology.hl7.org/CodeSystem/action-type#create
  * description = "Send a message with a greeting"
  * code = $cpg-common-process#alerts-reminders-education "Alerts Reminders Education"
  * definitionCanonical = "http://example.org/ActivityDefinition/SendMessageActivity"