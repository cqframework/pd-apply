Instance: EnrollPatientExpected
InstanceOf: $cpg-enrollmenttask
Usage: #example
* extension[isUnenrollment].valueBoolean = false
* status = #draft
* intent = #proposal
* instantiatesCanonical = Canonical(EnrollPatientActivity|0.1.0)
* code = $cpg-activity-type#enrollment "Enroll in a pathway or strategy"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[pathway]
  * type = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#enrollment "Enroll in a pathway or strategy"
  * valueCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/activity-example-pathway"