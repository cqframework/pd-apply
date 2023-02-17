Instance: OrderServiceActivity
InstanceOf: $cpg-servicerequestactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(OrderServiceActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to order a service"
* profile = $cpg-servicerequest
* code = $cpg-activity-type#order-service "Order a service"
* doNotPerform = false
* intent = #proposal
