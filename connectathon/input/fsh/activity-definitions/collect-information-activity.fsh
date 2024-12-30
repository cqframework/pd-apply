Instance: CollectInformationActivity
InstanceOf: $cpg-collectinformationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(CollectInformationActivity, ActivityDefinition)
* extension[cpg-collectWith].valueCanonical = "http://example.org/Questionnaire/activity-example-collectinformation-questionnaire"
* description = "Example Activity Definition for a recommendation to collect information"
* kind = #Task
* profile = $cpg-questionnairetask
* code = $cpg-activity-type-cs#collect-information "Collect information"
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
    * expression = "%context.extension.where(url='http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith').value"