Instance: RecordDetectedIssueExpected
InstanceOf: Task
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/RecordDetectedIssueActivity|0.1.0"
* code = $cpg-activity-type#record-detected-issue "Record a detected issue"
* input
  * type = $cpg-activity-type#record-detected-issue "Record a detected issue"
  * valueReference = Reference(DetectedIssue/DetectedIssue1)

Instance: DetectedIssue1
InstanceOf: DetectedIssue
Usage: #inline
* status = #final
* code = http://terminology.hl7.org/CodeSystem/v3-ActCode#TIME "Time-related Detected Issue"
* severity = #high
* patient = Reference(Patient/Patient1)