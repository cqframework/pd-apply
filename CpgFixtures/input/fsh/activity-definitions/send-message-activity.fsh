Instance: SendMessageActivity
InstanceOf: $cpg-communicationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(SendMessageActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to send a message"
* kind = #CommunicationRequest
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest"
* code = $cpg-activity-type#send-message "Send a message"
* doNotPerform = false
* intent = #proposal
* dynamicValue[+]  
  * path = "payload.contentString"
  * expression
    * language = #text/fhirpath  
    * expression = "'Hello!'"