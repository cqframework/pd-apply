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

Instance: Condition1
InstanceOf: Condition
Usage: #inline
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#provisional
* category = http://terminology.hl7.org/CodeSystem/condition-category#problem-list-item
* code = http://snomed.info/sct#422504002 "Ischemic stroke (disorder)"
* subject = Reference(Patient/Patient1)