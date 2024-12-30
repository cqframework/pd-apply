Instance: OrderServicePlan
InstanceOf: cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(OrderServicePlan, PlanDefinition)
* type = $cpg-plan-type#eca-rule
* description = "Definition of plan recommendation to order service"
* action
  * title = "Order Service"
  * description = "Order Service"
  * code = $cpg-common-process#guideline-based-care "Guideline-based Care"
  * type = $action-type#create
  // avoid using defCanonical with version for test purposes
  * definitionCanonical = "http://example.org/ActivityDefinition/OrderServiceActivityVersionTest"