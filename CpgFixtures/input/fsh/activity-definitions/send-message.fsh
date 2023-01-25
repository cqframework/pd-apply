Instance: SendMessageActivity
InstanceOf: $cpg-communicationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(SendMessageActivity, ActivityDefinition)
* kind = #CommunicationRequest
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#send-message "Send a message"
* doNotPerform = false
* dynamicValue[+]
    * path = "payload.contentString"
    * expression
      * language = #text/fhirpath
      * expression = "'Hello!'"