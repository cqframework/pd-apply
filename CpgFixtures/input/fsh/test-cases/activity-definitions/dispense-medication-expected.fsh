Instance: DispenseMedicationExpected
InstanceOf: Task
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefintion/DispenseMedicaitonActivity|0.1.0"
* code = $cpg-activity-type#dispense-medication "Dispense a Medication"
* input
  * type = $cpg-activity-type#dispense-medication "Dispense a Medication"
  * valueReference = Reference(MedicationRequest/PastMedicationRequest)