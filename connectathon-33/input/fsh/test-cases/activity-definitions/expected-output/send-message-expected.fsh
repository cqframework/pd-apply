Instance: SendMessageExpected
InstanceOf: $cpg-communicationrequest
Usage: #example
* status = #draft
* doNotPerform = false
* subject = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* payload
  * contentString = "Greeting: Hello! Alice Message: Example Activity Definition for a recommendation to send a message Practitioner: Michael"