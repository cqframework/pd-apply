Instance: RecoredInferanceExpected
InstanceOf: Task
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/RecordInferenceActivity|0.1.0"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#record-inference "Record an inference"
* input
  * type = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#record-inference "Record an inference"
  * valueReference = Reference(Observation/Inference1)

Instance: Inference1
InstanceOf: Observation
Usage: #inline
* status = #final
* code
  * text = "Inference"
* subject = Reference(Paitent/Patient1)