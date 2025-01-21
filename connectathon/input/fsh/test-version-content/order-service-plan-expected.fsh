Instance: OrderServicePlanExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(OrderServiceRequestGroup, RequestGroup)
* insert BundleEntry(OrderServiceVersionTestExpected, ServiceRequest)

Instance: OrderServiceRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* instantiatesCanonical = Canonical(OrderServicePlan|0.2.0)
* status = #draft
* intent = #proposal
* subject = Reference(Patient/Patient1)
* encounter = Reference(Encounter/Encounter1)
* author = Reference(Practitioner/Practitioner1)
* action
  * title = "Order Service"
  * description = "Order Service"
  * code = $cpg-common-process#guideline-based-care "Guideline-based Care"
  * type = $action-type#create
  * resource = Reference(ServiceRequest/OrderServiceVersionTestExpected)

Instance: OrderServiceVersionTestExpected
InstanceOf: ServiceRequest
Usage: #inline
* instantiatesCanonical = "http://example.org/ActivityDefinition/OrderServiceActivityVersionTest|0.2.0"
* status = #draft
* intent = #proposal
* doNotPerform = true
* code = $cpg-activity-type-cs#order-service "Order a service"
* subject = Reference(Patient/Patient1)
* encounter = Reference(Encounter/Encounter1)
* requester = Reference(Practitioner/Practitioner1)