Instance: ReportFlagExpected
InstanceOf: $cpg-reportflagtask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/ReportFlagActivity|0.1.0"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#report-flag "Report a flag"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input
  * type = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#report-flag "Report a flag"
  * valueReference = Reference(Flag1)