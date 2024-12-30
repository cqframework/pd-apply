Instance: DocumentMedicationActivity
InstanceOf: CPGDocumentMedicationActivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DocumentMedicationActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to document a medication"
* kind = #Task
* profile = $cpg-documentmedicationtask
* code = $cpg-activity-type-cs#document-medication "Document a medication"
* doNotPerform = false
* intent = #proposal
* dynamicValue[+]
  * path = "input[0].type.coding[0]"
  * expression
    * language = #text/cql-identifier
    * expression = "Medication Request Code"
    * reference = Canonical(DocumentMedicationLibrary|0.2.0)
* dynamicValue[+]
  * path = "input[0].valueReference"
  * expression
    * language = #text/cql-identifier
    * expression = "Medication Proposal Reference"
    * reference = Canonical(DocumentMedicationLibrary|0.2.0)