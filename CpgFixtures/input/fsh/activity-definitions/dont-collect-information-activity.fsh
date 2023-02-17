Instance: DontCollectInformationActivity
InstanceOf: $cpg-collectinformationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DontCollectInformationActivity, ActivityDefinition)
* extension[cpg-collectWith].valueCanonical = "http://hl7.org/fhir/uv/cpg/Questionnaire/activity-example-collectinformation"
* description = "Example Activity Definition for a recommendation not to collect information"
* kind = #Task
* profile = $cpg-questionnairetask
* code = $cpg-activity-type#collect-information "Collect information"
* doNotPerform = true
* intent = #proposal
* dynamicValue[+]
  * path = "input[0].type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input[0].valueCanonical"
  * expression
    * language = #text/fhirpath
    * expression = "extension.where(url='http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith').value"