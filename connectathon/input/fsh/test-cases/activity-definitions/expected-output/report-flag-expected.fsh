Instance: ReportFlagExpected
InstanceOf: $cpg-reportflagtask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = Canonical(ReportFlagActivity|0.2.0)
* code = $cpg-activity-type-cs#report-flag "Report a flag"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[flag]
  * type = $cpg-activity-type-cs#report-flag "Report a flag"
  * valueReference = Reference(Flag1)