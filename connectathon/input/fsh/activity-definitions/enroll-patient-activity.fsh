Instance: EnrollPatientActivity
InstanceOf: $cpg-enrollmentactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(EnrollPatientActivity, ActivityDefinition)
* extension[enrollIn].valueCanonical = Canonical(CkdPathway)
* description = "Example Activity Definition for a recommendation to enroll a patient in a pathway"
* kind = #Task
* profile = $cpg-enrollmenttask
* code = $cpg-activity-type-cs#enrollment "Enroll in a pathway or strategy"
* doNotPerform = false
* intent = #proposal
* dynamicValue[+]
  * path = "input[0].type"
  * expression
    * language = #text/fhirpath
    * expression = "%context.code"
* dynamicValue[+]
  * path = "input[0].valueCanonical"
  * expression
    * language = #text/fhirpath
    * expression = "%context.extension.where(url='http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-enrollIn').value"