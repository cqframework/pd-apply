Instance: DontSendMessageActivity
InstanceOf: ActivityDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DontSendMessageActivity, ActivityDefinition)
* kind = #CommunicationRequest
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#send-message "Send a message"
* doNotPerform = true
* dynamicValue 
  * path = "status"
  * expression
    * language = #text/fhirpath
    * expression = "'active'"