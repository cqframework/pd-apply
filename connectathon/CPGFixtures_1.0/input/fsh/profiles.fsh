Profile: FixedCPGComputableActivityDefinitionDocumentMedication
Parent: $cpg-computableactivity
Description: "fixes problem in cpg spec"
* profile = Canonical($cpg-documentmedicationtask) (exactly)
* kind = #Task (exactly)
* intent 1..1 MS
* intent = #proposal (exactly)
* doNotPerform 1..1 MS

Profile: FixedCPGTaskAdministerMedication
Parent: $cpg-task
Description: "fixes problem in cpg spec"
* code = $cpg-activity-type#administer-medication "Administer a medication" (exactly)
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "code"
* input ^slicing.rules = #open
* input ^slicing.description = "Slice based on the input.code pattern"
* input contains medicationAdministration 0..1 MS
* input[medicationAdministration]
  * type = $cpg-activity-type#administer-medication "Administer a medication" (exactly)
  * valueReference 1..1 MS

Profile: FixedCPGTaskDispenseMedication
Parent: $cpg-task
Description: "fixes problem in cpg spec"
* code = $cpg-activity-type#dispense-medication "Dispense a Medication" (exactly)
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "code"
* input ^slicing.rules = #open
* input ^slicing.description = "Slice based on the input.code pattern"
* input contains medicationDispense 1..1 MS
* input[medicationDispense]
  * type = $cpg-activity-type#dispense-medication "Dispense a Medication" (exactly)
  * valueReference 1..1 MS

Profile: FixedCPGTaskDocumentMedication
Parent: $cpg-task
Description: "fixes problem in cpg spec"
* code = $cpg-activity-type#document-medication "Document a medication" (exactly)
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "code"
* input ^slicing.rules = #open
* input ^slicing.description = "Slice based on the input.code pattern"
* input contains medicationStatement 1..1 MS
* input[medicationStatement]
  * type = $cpg-activity-type#document-medication "Document a medication"
  * valueReference 1..1 MS

