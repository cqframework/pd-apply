Instance: DontSendMessageActivity
InstanceOf: $cpg-communicationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DontSendMessageActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation not to send a message"
* kind = #CommunicationRequest
* profile = $cpg-communicationrequest
* code = $cpg-activity-type#send-message "Send a message"
* doNotPerform = true
* intent = #proposal
* dynamicValue[+]
  * path = "payload[0].contentString"
  * expression
    * language = #text/fhirpath
    * expression = "'Hello! ' + description"