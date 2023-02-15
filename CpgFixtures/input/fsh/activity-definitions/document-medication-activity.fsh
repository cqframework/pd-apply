Instance: DocumentMedicationActivity
InstanceOf: FixedCPGComputableActivityDefinitionDocumentMedication
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DocumentMedicationActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to document a medication"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-documentmedicationtask"
* code = $cpg-activity-type#document-medication "Document a medication"
* doNotPerform = false
* intent = #proposal
* dynamicValue[+]
  * path = "input[0].type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input[0].value"
  * expression
    * language = #text/cql-identifier
    * expression = "Medication Proposal Reference"
    * reference = Canonical(DocumentMedicationLibrary)