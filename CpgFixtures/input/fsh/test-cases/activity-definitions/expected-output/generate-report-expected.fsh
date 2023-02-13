Instance: GenerateReportExpected
InstanceOf: Task
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-generatereporttask"
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/GenerateReportActivity|0.1.0"
* code = $cpg-activity-type#generate-report "Generate a metric or case report"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input
  * type = $cpg-activity-type#generate-report "Generate a metric or case report"
  * valueCanonical = "http://hl7.org/fhir/uv/cpg/Measure/activity-example-generatereport"