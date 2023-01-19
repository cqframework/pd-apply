Instance: DispenseMedicationActivity
InstanceOf: ActivityDefinition // $cpg-dispensemedicationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DispenseMedicationActivity, ActivityDefinition)
* description = "Dispense medication activity"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-dispensemedicationtask"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#dispense-medication "Dispense a medication"
* intent = #proposal
* doNotPerform = false
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