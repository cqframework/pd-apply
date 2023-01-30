Instance: AdministerMedicationActivity
InstanceOf: $cpg-administermedication
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(AdministerMedicationActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to administer a medication"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-administermedicationtask"
* code = $cpg-activity-type#administer-medication "Administer a medication"
* intent = #proposal
* doNotPerform = false
* dynamicValue[+]
  * path = "input[0].type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input[0].value"
  * expression
    * language = #text/cql-identifier
    * expression = "Medication Proposal Reference"
    * reference = Canonical(AdministerMedicationLibrary)