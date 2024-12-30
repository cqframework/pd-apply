Instance: DischargeInstructionsExpected2
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(DischargeInstructionsRequestGroup, RequestGroup)
* insert BundleEntry(DischargeMessageRequest, CommunicationRequest)

Instance: DischargeInstructionsRequestGroup2
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = Canonical(DischargeInstructionsPlan|0.2.0)
* action
  * title = "Send message with discharge instructions"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * type = $action-type#create
  * resource = Reference(CommunicationRequest/DischargeMessageRequest2)

Instance: DischargeMessageRequest2
InstanceOf: CommunicationRequest
Usage: #inline
* status = #draft
* subject = Reference(Patient1)
* requester = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* doNotPerform = false
* payload
  * contentString = "Send message with discharge instructions for Alice"
