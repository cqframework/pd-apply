Instance: SendMessagePlan
InstanceOf: CPGComputablePlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(SendMessagePlan, PlanDefinition)
* type = $cpg-plan-type#eca-rule
* description = "Definition of plan recommendation to send a message"
* action
  * title = "Greet the patient"
  * type = $action-type#create
  * description = "Send a message with a greeting"
  * code = $cpg-common-process#alerts-reminders-education "Alerts Reminders Education"
  * definitionCanonical = Canonical(SendMessageActivity|0.2.0)