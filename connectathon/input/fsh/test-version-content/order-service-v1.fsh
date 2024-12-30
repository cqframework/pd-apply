Instance: OrderServiceActivityV1
InstanceOf: cpg-servicerequestactivity
Usage: #example
* url = "http://example.org/ActivityDefinition/OrderServiceActivityVersionTest"
* version = "0.1.0"
* name = "OrderServiceActivity"
* title = "ActivityDefinition OrderServiceActivity"
* status = #draft
* experimental = true
* publisher = "Example Publisher"
* description = "Example Activity Definition for a recommendation to order a service"
* kind = #ServiceRequest
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest"
* code = $cpg-activity-type-cs#order-service "Order a service"
* intent = #proposal
* doNotPerform = false