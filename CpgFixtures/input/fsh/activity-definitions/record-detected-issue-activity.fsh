Instance: RecordDetectedIssueActivity
InstanceOf: $cpg-recorddetectedissueactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(RecordDetectedIssueActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to record a detected issue"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recorddetectedissuetask"
* code = $cpg-activity-type#record-detected-issue "Record a detected issue"
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
    * expression = "Record Detected Issue Reference"
    * reference = Canonical(RecordDetectedIssueLibrary)