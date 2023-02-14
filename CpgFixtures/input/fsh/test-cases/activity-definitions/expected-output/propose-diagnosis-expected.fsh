Instance: ProposeDiagnosisExpected
InstanceOf: $cpg-proposediagnosistask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/ProposeDiagnosisActivity|0.1.0"
* code = $cpg-activity-type#propose-diagnosis "Propose a diagnosis"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input
  * type = $cpg-activity-type#propose-diagnosis "Propose a diagnosis"
  * valueReference =  Reference(Condition1)