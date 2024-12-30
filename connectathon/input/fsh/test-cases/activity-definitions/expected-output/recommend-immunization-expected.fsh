Instance: RecommendImmunizationExpected
InstanceOf: CPGImmunizationRequest
Usage: #example
* status = #draft
* intent = #proposal
* category = $cpg-activity-type-cs#recommend-immunization
* subject = Reference(Patient/Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* instantiatesCanonical = Canonical(RecommendImmunizationActivity)
* doNotPerform = false
* medicationCodeableConcept = $sct#14745005 "Hepatitis A vaccine"
