Instance: RecordDetectedIssueExpected
InstanceOf: Task
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recorddetectedissuetask"
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/RecordDetectedIssueActivity|0.1.0"
* code = $cpg-activity-type#record-detected-issue "Record a detected issue"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input
  * type = $cpg-activity-type#record-detected-issue "Record a detected issue"
  * valueReference = Reference(DetectedIssue1)