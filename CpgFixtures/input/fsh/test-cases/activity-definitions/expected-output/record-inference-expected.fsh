Instance: RecordInferenceExpected
InstanceOf: Task
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recordinferencetask"
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/RecordInferenceActivity|0.1.0"
* code = $cpg-activity-type#record-inference "Record an inference"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input
  * type = $cpg-activity-type#record-inference "Record an inference"
  * valueReference = Reference(Inference1)