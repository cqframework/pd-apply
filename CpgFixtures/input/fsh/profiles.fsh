Profile: FixedCPGComputableActivityDefinitionDocumentMedication
Parent: $cpg-computableactivity
Description: "fixes problem in cpg spec"
* profile = Canonical($cpg-documentmedicationtask) (exactly)
* kind = #Task (exactly)
* intent 1..1 MS
* intent = #proposal (exactly)
* doNotPerform 1..1 MS

Profile: FixedCPGTaskAdministerMedication
Parent: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-task
Description: "fixes problem in cpg spec"
* code = $cpg-activity-type#administer-medication "Administer a medication" (exactly)
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "code"
* input ^slicing.rules = #open
* input ^slicing.description = "Slice based on the component.code pattern"
* input contains medicationRequest 1..1 MS
* input[medicationRequest]
  * type = $cpg-activity-type#administer-medication "Administer a medication" (exactly)
  * valueReference 1..1 MS

Profile: FixedCPGTaskDispenseMedication
Parent: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-task
Description: "fixes problem in cpg spec"
* code = $cpg-activity-type#dispense-medication "Dispense a Medication" (exactly)
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "code"
* input ^slicing.rules = #open
* input ^slicing.description = "Slice based on the component.code pattern"
* input contains medicationRequest 1..1 MS
* input[medicationRequest]
  * type = $cpg-activity-type#dispense-medication "Dispense a Medication" (exactly)
  * valueReference 1..1 MS

Profile: FixedCPGTaskDocumentMedication
Parent: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-task
Description: "fixes problem in cpg spec"
* code = $cpg-activity-type#document-medication "Document a medication" (exactly)
* input ^slicing.discriminator.type = #pattern
* input ^slicing.discriminator.path = "code"
* input ^slicing.rules = #open
* input ^slicing.description = "Slice based on the component.code pattern"
* input contains medicationRequest 1..1 MS
* input[medicationRequest]
  * type = $cpg-activity-type#document-medication "Document a medication"
  * valueReference 1..1 MS



