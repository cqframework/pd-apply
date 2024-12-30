Instance: RegistrationPlan
InstanceOf: CPGComputablePlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(RegistrationPlan, PlanDefinition)
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* description = "Definition of plan to collect information for patient registration"
* action
  * title = "Registration with questionnaire"
  * description = "Register patient using questionnaire"
  * code = $cpg-common-process#registration "Registration"
  * definitionCanonical = Canonical(RegistrationQuestionnaire|0.2.0)