Instance: DontSendMessageExpected
InstanceOf: CommunicationRequest
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest"
* status = #draft
* doNotPerform = true
* subject = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)