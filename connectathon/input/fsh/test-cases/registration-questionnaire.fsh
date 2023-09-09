Instance: RegistrationQuestionnaire
InstanceOf: $cpg-shareablequestionnaire
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(RegistrationQuestionnaire, Questionnaire)
* description = "Questionnaire to collect identifying infomration"
* item[+].linkId = "name"
* item[=].text = "Name"
* item[=].type = #string
* item[=].required = true
