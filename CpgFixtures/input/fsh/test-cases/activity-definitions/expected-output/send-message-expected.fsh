Instance: SendMessageExpected
InstanceOf: $cpg-communicationrequest
Usage: #example
* status = #draft
* doNotPerform = false
* subject = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* payload
  * contentString = "Patient Greeting: Hello, Alice Activity Definition Description: Example Activity Definition for a recommendation to send a message Practitioner's given name: Michael"