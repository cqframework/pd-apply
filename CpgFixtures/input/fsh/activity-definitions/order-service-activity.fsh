Instance: OrderServiceActivity
InstanceOf: $cpg-servicerequestactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(OrderServiceActivity, ActivityDefinition)
* date = "2021-02-11T20:43:58+00:00"
* description = "Example Activity Definition for a recommendation to order a service"
* kind = #ServiceRequest
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* dynamicValue
  * path = "status"
  * expression
    * language = #text/cql
    * expression = "'draft'"