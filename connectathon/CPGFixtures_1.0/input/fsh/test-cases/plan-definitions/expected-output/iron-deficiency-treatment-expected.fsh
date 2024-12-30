Instance: IronDeficiencyTreatmentExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry
  * fullUrl = "http://apply-processor/RequestGroup/IronDeficiencyTreatmentRequestGroup"
  * resource = IronDeficiencyTreatmentRequestGroup

Instance: IronDeficiencyTreatmentRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/IronDeficiencyTreatmentPlan|0.1.0"