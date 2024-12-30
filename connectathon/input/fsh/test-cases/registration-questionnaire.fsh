Instance: RegistrationQuestionnaire
InstanceOf: CPGComputableQuestionnaire
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(RegistrationQuestionnaire, Questionnaire)
* description = "Questionnaire to collect identifying information"
* item[+].linkId = "name"
* item[=].text = "Name"
* item[=].type = #string
* item[=].required = true
