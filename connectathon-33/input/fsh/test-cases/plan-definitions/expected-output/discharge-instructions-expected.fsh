Instance: DischargeInstructionsExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/DischargeInstructionsRequestGroup"
  * resource = DischargeInstructionsRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/CommunicationRequest/DischargeMessageRequest"
  * resource = DischargeMessageRequest

Instance: DischargeInstructionsRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/DischargeInstructionsPlan|0.1.0"
* action
  * title = "Send message with discharge instructions"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * type = http://terminology.hl7.org/CodeSystem/action-type#create
  * resource = Reference(CommunicationRequest/DischargeMessageRequest)

Instance: DischargeMessageRequest
InstanceOf: CommunicationRequest
Usage: #inline
* status = #draft
* subject = Reference(Patient1)
* requester = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* doNotPerform = false
* payload
  * contentString = "Provide patient discharge instructions for Alice"
