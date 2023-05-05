Instance: RecordInferenceExpected
InstanceOf: $cpg-recordinferencetask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/RecordInferenceActivity|0.1.0"
* code = $cpg-activity-type#record-inference "Record an inference"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[inference]
  * type = $cpg-activity-type#record-inference "Record an inference"
  * valueReference = Reference(Inference1)