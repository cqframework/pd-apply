Instance: DontSendMessageExpected
InstanceOf: CommunicationRequest
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest"
* status = #draft
* doNotPerform = true
* subject = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* payload
  * contentString = "Hello! Example Activity Definition for a recommendation not to send a message"