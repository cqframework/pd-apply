Instance: DispenseMedicationActivity
InstanceOf: $cpg-dispensemedicationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DispenseMedicationActivity, ActivityDefinition)
* description = "Dispense medication activity"
* kind = #Task
* profile = $cpg-dispensemedicationtask
* code = $cpg-activity-type#dispense-medication "Dispense a medication"
* doNotPerform = false
* intent = #proposal
* dynamicValue[+]
  * path = "input[0].type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input[0].valueReference"
  * expression
    * language = #text/cql-identifier
    * expression = "Medication Proposal Reference"
    * reference = Canonical(DispenseMedicationLibrary)