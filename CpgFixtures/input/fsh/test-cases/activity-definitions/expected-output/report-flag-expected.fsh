Instance: ReportFlagExpected
InstanceOf: Task
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/ReportFlagActivity|0.1.0"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#report-flag "Report a flag"
* input
  * type = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#report-flag "Report a flag"
  * valueReference = Reference(Flag/Flag1)

Instance: Flag1
InstanceOf: Flag
Usage: #inline
* status = #active
* category = http://terminology.hl7.org/CodeSystem/flag-category#admin "Administrative"
* code
  * text = "Flag"
* subject = Reference(Patient/Patient1)