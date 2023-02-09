Instance: DocumentMedicationExpected
InstanceOf: Task
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/DocumentMedicationActivity|0.1.0"  
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#document-medication "Document a medication"
* input
  * type = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#document-medication "Document a medication"
  * valueReference = Reference(MedicationRequest/PastMedicationRequest)