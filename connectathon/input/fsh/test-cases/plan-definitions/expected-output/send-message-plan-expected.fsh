Instance: SendMessagePlanExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(SendMessageRequestGroup, RequestGroup)
* insert BundleEntry(SendMessageRequest, CommunicationRequest)

Instance: SendMessageRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = Canonical(SendMessagePlan|0.2.0)
* action
  * title = "Greet the patient"
  * description = "Send a message with a greeting"
  * code = $cpg-common-process#alerts-reminders-education "Alerts Reminders Education"
  * type = $action-type#create
  * resource = Reference(SendMessageRequest)

Instance: SendMessageRequest
InstanceOf: $cpg-communicationrequest
Usage: #inline
* status = #draft
* doNotPerform = false
* subject = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* payload
  * contentString = "Greeting: Hello! Alice Message: Example Activity Definition for a recommendation to send a message Practitioner: Michael"