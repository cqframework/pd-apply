Instance: DontSendMessageExpected
InstanceOf: $cpg-communicationrequest
Usage: #example
* status = #draft
* doNotPerform = true
* subject = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* payload
  * contentString = "Hello! Example Activity Definition for a recommendation not to send a message"