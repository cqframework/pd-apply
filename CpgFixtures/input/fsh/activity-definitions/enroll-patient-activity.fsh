Instance: EnrollPatientActivity
InstanceOf: $cpg-enrollmentactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(EnrollPatientActivity, ActivityDefinition)
* extension[enrollIn].valueCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/activity-example-pathway"
* modifierExtension
  * url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-isUnenrollment"
  * valueBoolean = false
* description = "Example Activity Definition for a recommendation to enroll a patient in a pathway"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enrollmenttask"
* code = $cpg-activity-type#enrollment "Enroll in a pathway or strategy"
* doNotPerform = false
* intent = #proposal
* dynamicValue[+]
  * path = "input[0].type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input[0].value"
  * expression
    * language = #text/fhirpath
    * expression = "extension.where(url='http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enrollIn').value"