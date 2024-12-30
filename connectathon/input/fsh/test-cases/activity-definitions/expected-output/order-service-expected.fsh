Instance: OrderServiceExpected
InstanceOf: $cpg-servicerequest
Usage: #example
* status = #draft
* doNotPerform = false
* intent = #proposal
* instantiatesCanonical = Canonical(OrderServiceActivity|0.2.0)
* code = $cpg-activity-type-cs#order-service "Order a service"
* subject = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)