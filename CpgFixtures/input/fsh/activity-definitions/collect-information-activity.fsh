Instance: CollectInformationActivity
InstanceOf: $cpg-collectinformationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(CollectInformationActivity, ActivityDefinition)
* extension[cpg-collectWith].valueCanonical = "http://hl7.org/fhir/uv/cpg/Questionnaire/activity-example-collectinformation"
* description = "Example Activity Definition for a recommendation to collect information"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* code = $cpg-activity-type#collect-information "Collect information"
* doNotPerform = false
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