Instance: RecordInferenceActivity
InstanceOf: $cpg-recordinferenceactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(RecordInferenceActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to record an inference"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recordinferencetask"
* code = $cpg-activity-type#record-inference "Record an inference"
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
    * expression = "Record Inference Reference"
    * reference = Canonical(RecordInferenceLibrary)
