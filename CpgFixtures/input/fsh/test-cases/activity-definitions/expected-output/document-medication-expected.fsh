Instance: DocumentMedicationExpected
InstanceOf: $cpg-documentmedicationtask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/DocumentMedicationActivity|0.1.0"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#document-medication "Document a medication"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input
  * type = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#document-medication "Document a medication"
  * valueReference = Reference(PastMedicationRequest)