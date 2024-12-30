Instance: ProposeDiagnosisExpected
InstanceOf: $cpg-proposediagnosistask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = Canonical(ProposeDiagnosisActivity|0.2.0)
* code = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[diagnosis]
  * type = $cpg-activity-type-cs#propose-diagnosis "Propose a diagnosis"
  * valueReference =  Reference(Condition1)