Instance: OrderServiceActivity
InstanceOf: $cpg-servicerequestactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(OrderServiceActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to order a service"
* kind = #ServiceRequest
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest"
* code = $cpg-activity-type#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
