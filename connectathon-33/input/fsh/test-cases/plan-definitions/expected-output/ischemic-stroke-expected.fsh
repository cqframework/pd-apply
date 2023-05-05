Instance: IschemicStrokeExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/IschemicStrokeRequestGroup"
  * resource = IschemicStrokeRequestGroup

Instance: IschemicStrokeRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = "http://example.com/PlanDefinition/IschemicStrokePlan|0.1.0"
* author = Reference(Practitioner/Practitioner1)
* encounter = Reference(Encounter/Encounter1)
* action
  * title = "Ischemic Stroke Treatment"
  * description = "Recommendation to administer TPA if patient had Ischemic Stroke"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#dispense-medications "Dispense Medications"
  * textEquivalent = "Administer TPA intravenously"