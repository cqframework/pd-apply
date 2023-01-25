Instance: EnrollPatientActivity
InstanceOf: $cpg-enrollmentactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(EnrollPatientActivity, ActivityDefinition)
* extension[+]
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enrollIn"
  * valueCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/activity-example-pathway"
* modifierExtension
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-isUnenrollment"
  * valueBoolean = false
* date = "2021-02-11T20:43:58+00:00"
* description = "Example Activity Definition for a recommendation to enroll a patient in a pathway"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enrollmenttask"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#enrollment "Enroll in a pathway or strategy"
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
    * expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enrollIn').value"