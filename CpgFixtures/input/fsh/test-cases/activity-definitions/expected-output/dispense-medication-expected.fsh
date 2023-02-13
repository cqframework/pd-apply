Instance: DispenseMedicationExpected
InstanceOf: Task
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-dispensemedicationtask"
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefintion/DispenseMedicaitonActivity|0.1.0"
* code = $cpg-activity-type#dispense-medication "Dispense a Medication"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input
  * type = $cpg-activity-type#dispense-medication "Dispense a Medication"
  * valueReference = Reference(PastMedicationRequest)