Instance: ProposeDiagnosisExpected
InstanceOf: Task
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/ProposeDiagnosisActivity|0.1.0"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#propose-diagnosis "Propose a diagnosis"
* input
  * type = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#propose-diagnosis "Propose a diagnosis"
  * valueReference =  Reference(Condition/Condition1)