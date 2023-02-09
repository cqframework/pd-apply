Instance: AdministerMedicationExpected
InstanceOf: Task
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/AdministerMedicationActivity|0.1.0"
* code = $cpg-activity-type#administer-medication "Administer a medication"
* input 
  * type = $cpg-activity-type#administer-medication "Administer a medication"
  * valueReference = Reference(MedicationRequest/PastMedicationRequest)