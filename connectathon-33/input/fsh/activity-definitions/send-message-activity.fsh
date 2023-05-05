Instance: SendMessageActivity
InstanceOf: $cpg-communicationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(SendMessageActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to send a message"
* kind = #CommunicationRequest
* profile = $cpg-communicationrequest
* code = $cpg-activity-type#send-message "Send a message"
* doNotPerform = false
* intent = #proposal
* dynamicValue[+]
  * path = "payload[0].contentString"
  * expression
    * language = #text/fhirpath
    * expression = "'Greeting: Hello! ' + %subject.name.given.first() + ' Message: ' + description + ' Practitioner: ' + %practitioner.name.given.first()"