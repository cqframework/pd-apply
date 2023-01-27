Instance: RecordDetectedIssueActivity
InstanceOf: $cpg-recorddetectedissueactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(RecordDetectedIssueActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to record a detected issue"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recorddetectedissuetask"
* code = $cpg-activity-type#record-detected-issue "Record a detected issue"
* doNotPerform = false
* dynamicValue[+]
  * path = "input[0].type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input[0].value"
  * expression
    * language = #text/fhirpath
    * expression = "DetectedIssue { id: 'detected-issue', status: 'final', code: \"Time-related Detected Issue\", severity: 'high', patient: Patient, identified: Today() }"