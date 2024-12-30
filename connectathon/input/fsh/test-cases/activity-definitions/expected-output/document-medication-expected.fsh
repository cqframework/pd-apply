Instance: DocumentMedicationExpected
InstanceOf: CPGDocumentMedicationTask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = Canonical(DocumentMedicationActivity|0.2.0)
* code = $cpg-activity-type-cs#document-medication "Document a medication"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[medicationRequest]
  * type = $cpg-activity-type-cs#order-medication "Order a medication"
  * valueReference = Reference(PastMedicationRequest)