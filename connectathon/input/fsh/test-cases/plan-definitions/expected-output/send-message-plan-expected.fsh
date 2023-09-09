Instance: SendMessagePlanExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/SendMessageRequestGroup"
  * resource = SendMessageRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/CommunicationRequest/SendMessageRequest"
  * resource = SendMessageRequest

Instance: SendMessageRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/SendMessagePlan|0.1.0"
* action
  * title = "Greet the patient"
  * description = "Send a message with a greeting"
  * code = $cpg-common-process#alerts-reminders-education "Alerts Reminders Education"
  * type = http://terminology.hl7.org/CodeSystem/action-type#create
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