Instance: RecordInferenceExpected
InstanceOf: $cpg-recordinferencetask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = Canonical(RecordInferenceActivity|0.2.0)
* code = $cpg-activity-type-cs#record-inference "Record an inference"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[inference]
  * type = $cpg-activity-type-cs#record-inference "Record an inference"
  * valueReference = Reference(Inference1)