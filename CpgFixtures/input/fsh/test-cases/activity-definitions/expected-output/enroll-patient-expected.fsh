Instance: EnrollPatientExpected
InstanceOf: Task
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/EnrollPatientActivity|0.1.0"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#enrollment "Enroll in a pathway or strategy"
* input
  * type = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#enrollment "Enroll in a pathway or strategy"
  * valueCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/activity-example-pathway"