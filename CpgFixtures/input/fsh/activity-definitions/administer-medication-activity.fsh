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
  * path = "input.type"
  * expression
    * language = #text/cql
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/cql
    * expression = "Medication Proposal"
    * reference = Canonical(AdministerMedicationLibrary)