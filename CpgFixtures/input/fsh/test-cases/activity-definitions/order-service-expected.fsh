Instance: OrderServiceExpected
InstanceOf: ServiceRequest
Usage: #example
* status = #draft
* doNotPerform = false
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/OrderServiceActivity|0.1.0"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#order-service "Order a service"
* subject = Reference(Patient/Patient1)