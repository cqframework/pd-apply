Instance: EnrollPatientExpected
InstanceOf: $cpg-enrollmenttask
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = Canonical(EnrollPatientActivity|0.2.0)
* code = $cpg-activity-type-cs#enrollment "Enroll in a pathway or strategy"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[pathway]
  * type = $cpg-activity-type-cs#enrollment "Enroll in a pathway or strategy"
  * valueCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/activity-example-pathway-pd"