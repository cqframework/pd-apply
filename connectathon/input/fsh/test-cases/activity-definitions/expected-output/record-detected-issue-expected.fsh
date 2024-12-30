Instance: RecordDetectedIssueExpected
InstanceOf: $cpg-recorddetectedissuetask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = Canonical(RecordDetectedIssueActivity|0.2.0)
* code = $cpg-activity-type-cs#record-detected-issue "Record a detected issue"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[detectedIssue]
  * type = $cpg-activity-type-cs#record-detected-issue "Record a detected issue"
  * valueReference = Reference(DetectedIssue1)