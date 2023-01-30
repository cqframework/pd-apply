Instance: DispenseMedicationExpected
InstanceOf: Task
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefintion/DispenseMedicaitonActivity|0.1.0"
* code = $cpg-activity-type#dispensemedication "Dispense a Medication"
// * for = Reference(Patient/Patient1) ?
* input
  * type = $cpg-activity-type#dispensemedication "Dispense a Medication"
  * valueReference = Reference(MedicationRequest/PastMedicationRequest)