Instance: DispenseMedicationExpected
InstanceOf: CPGDispenseMedicationTask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = Canonical(DispenseMedicationActivity|0.2.0)
* code = $cpg-activity-type-cs#dispense-medication "Dispense a Medication"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[medicationRequest]
  * type = $cpg-activity-type-cs#order-medication "Order a medication"
  * valueReference = Reference(PastMedicationRequest)