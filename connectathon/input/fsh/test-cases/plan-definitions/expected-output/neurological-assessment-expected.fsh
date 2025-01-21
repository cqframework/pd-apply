Instance: NeurologicalAssessmentExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(NeurologicalAssessmentRequestGroup, RequestGroup)
* insert BundleEntry (InlineServiceRequest, ServiceRequest)

Instance: NeurologicalAssessmentRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = Canonical(NeurologicalAssessmentPlan|0.2.0)
* author = Reference(Practitioner/Practitioner1)
* encounter = Reference(Encounter/Encounter1)
* action
  * title = "Order neurological exam"
  * type = $action-type#create
  * resource = Reference(ServiceRequest/InlineServiceRequest)

Instance: InlineServiceRequest
InstanceOf: cpg-servicerequest
Usage: #inline
* status = #draft
* intent = #proposal
* instantiatesCanonical = Canonical(OrderServiceActivity|0.2.0)
* subject = Reference(Patient/Patient1)
* encounter = Reference(Encounter/Encounter1)
* requester = Reference(Practitioner/Practitioner1)
* doNotPerform = false
* code = $cpg-activity-type-cs#order-service "Order a service"
* occurrencePeriod.start = "2023-01-01"