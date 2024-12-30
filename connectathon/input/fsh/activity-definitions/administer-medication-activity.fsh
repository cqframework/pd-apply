Instance: AdministerMedicationActivity
InstanceOf: CPGAdministerMedicationActivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(AdministerMedicationActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to administer a medication"
* kind = #Task
* profile = $cpg-administermedicationtask
* code = $cpg-activity-type-cs#administer-medication "Administer a medication"
* doNotPerform = false
* intent = #proposal
* dynamicValue[+]
  * path = "input[0].type.coding[0]"
  * expression
    * language = #text/cql-identifier
    * expression = "Medication Request Code"
    * reference = Canonical(AdministerMedicationLibrary|0.2.0)
* dynamicValue[+]
  * path = "input[0].valueReference"
  * expression
    * language = #text/cql-identifier
    * expression = "Medication Proposal Reference"
    * reference = Canonical(AdministerMedicationLibrary|0.2.0)