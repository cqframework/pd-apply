Instance: DontCollectInformationActivity
InstanceOf: $cpg-collectinformationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DontCollectInformationActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation not to collect information"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
* code = $cpg-activity-type#collect-information "Collect information"
* doNotPerform = true
* dynamicValue[+]
  * path = "input.type"
  * expression
    * language = #text/cql
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/cql
    * expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-collectWith').value"