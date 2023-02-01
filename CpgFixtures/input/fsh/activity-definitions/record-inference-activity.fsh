Instance: RecordInferenceActivity
InstanceOf: $cpg-recordinferenceactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(RecordInferenceActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to record an inference"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recordinferencetask"
* intent = #proposal
* code = $cpg-activity-type#record-inference "Record an inference"
* doNotPerform = false
* dynamicValue[+]
  * path = "input[0].type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]   
  * path = "input[0].value" 
  * expression  
    * language = #text/cql-expression
    * expression = "Observation { id: 'Inference1', status: 'final', code: \"Inference\", subject: Patient1, issued: Now() }" 