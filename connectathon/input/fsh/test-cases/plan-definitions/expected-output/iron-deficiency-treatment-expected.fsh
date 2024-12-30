Instance: IronDeficiencyTreatmentExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(IronDeficiencyTreatmentRequestGroup, RequestGroup)

Instance: IronDeficiencyTreatmentRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = Canonical(IronDeficiencyTreatmentPlan|0.2.0)