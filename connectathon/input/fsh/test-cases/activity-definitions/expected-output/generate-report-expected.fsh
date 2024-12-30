Instance: GenerateReportExpected
InstanceOf: $cpg-generatereporttask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = Canonical(GenerateReportActivity|0.2.0)
* code = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[definition]
  * type = $cpg-activity-type-cs#generate-report "Generate a metric or case report"
  * valueCanonical = "http://hl7.org/fhir/uv/cpg/Measure/activity-example-generatereport-measure"