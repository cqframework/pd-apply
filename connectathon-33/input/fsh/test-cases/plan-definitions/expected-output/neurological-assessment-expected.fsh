Instance: NeurologicalAssessmentExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/NeurologicalAssessmentRequestGroup"
  * resource = NeurologicalAssessmentRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/ServiceRequest/InlineServiceRequest"
  * resource = InlineServiceRequest

Instance: NeurologicalAssessmentRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = "http://example.com/PlanDefinition/NeurologicalAssessmentPlan|0.1.0"
* author = Reference(Practitioner/Practitioner1)
* encounter = Reference(Encounter/Encounter1)
* action.title = "Order neurological exam"
* action
  * type = http://terminology.hl7.org/CodeSystem/action-type#create
  * resource = Reference(ServiceRequest/InlineServiceRequest)

Instance: InlineServiceRequest
InstanceOf: ServiceRequest
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest"
* status = #draft
* intent = #option
* instantiatesCanonical = "http://example.com/ActivityDefinition/OrderServiceActivity|0.1.0"
* subject = Reference(Patient/Patient1)
* encounter = Reference(Encounter/Encounter1)
* requester = Reference(Practitioner/Practitioner1)
* doNotPerform = false
* code = $cpg-activity-type#order-service "Order a service"
* occurrencePeriod.start = "2023-01-01"