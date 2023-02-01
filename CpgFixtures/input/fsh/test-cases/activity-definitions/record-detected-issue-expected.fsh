Instance: RecordDetectedIssueExpected
InstanceOf: Task
Usage: #example
* status = #draft
* doNotPerform = false
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/RecordDetectedIssueActivity|0.1.0"
* code = $cpg-activity-type#record-detected-issue "Record a detected issue"
* input
  * type = $cpg-activity-type#record-detected-issue "Record a detected issue"
  * valueReference = Reference(DetectedIssue/DetectedIssue1)