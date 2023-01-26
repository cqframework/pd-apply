Instance: DontSendMessageActivity
InstanceOf: $cpg-communicationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DontSendMessageActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation not to send a message"
* kind = #CommunicationRequest
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest"
* code = $cpg-activity-type#send-message "Send a message"
* doNotPerform = true
* dynamicValue 
  * path = "status"
  * expression
    * language = #text/fhirpath
    * expression = "'active'"