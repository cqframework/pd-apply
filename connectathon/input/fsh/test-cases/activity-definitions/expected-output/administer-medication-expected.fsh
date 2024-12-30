Instance: AdministerMedicationExpected
InstanceOf: CPGAdministerMedicationTask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = Canonical(AdministerMedicationActivity|0.2.0)
* code = $cpg-activity-type-cs#administer-medication "Administer a medication"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[medicationRequest]
  * type = $cpg-activity-type-cs#order-medication "Order a medication"
  * valueReference = Reference(PastMedicationRequest)
