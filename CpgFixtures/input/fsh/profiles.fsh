Profile: FixedCPGComputableActivityDefinitionDocumentMedication
Parent: $cpg-computableactivity
Description: "fixes problem in cpg spec"
* profile = Canonical($cpg-documentmedicationtask) (exactly)
* kind = #Task (exactly)
* intent 1..1 MS
* intent = #proposal (exactly)
* doNotPerform 1..1 MS

// Profile: FixedCPGTaskAdministerMedication
// Parent: http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-task
// Description: "fixes problem in cpg spec"
// * code = $cpg-activity-type#administer-medication "Administer a medication" (exactly)
// * input 0..* MS
//   * input[medicationRequest] 0..1 MS
//     * type = $cpg-activity-type#administer-medication "Administer a medication" (exactly)
//     * valueReference 1..1 MS


