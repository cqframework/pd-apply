Instance: AdministerMedicationExpected
InstanceOf: Task
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-administermedicationtask"
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/AdministerMedicationActivity|0.1.0"
* code = $cpg-activity-type#administer-medication "Administer a medication"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input
  * type = $cpg-activity-type#administer-medication "Administer a medication"
  * valueReference = Reference(PastMedicationRequest)
