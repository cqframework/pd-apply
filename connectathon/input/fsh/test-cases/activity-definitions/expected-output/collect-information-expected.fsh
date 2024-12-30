Instance: CollectInformationExpected
InstanceOf: $cpg-questionnairetask
* status = #draft
* intent = #proposal
* instantiatesCanonical = Canonical(CollectInformationActivity|0.2.0)
* code = $cpg-activity-type-cs#collect-information "Collect information"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[questionnaire]
  * type = $cpg-activity-type-cs#collect-information "Collect information"
  * valueCanonical = "http://example.org/Questionnaire/activity-example-collectinformation-questionnaire"