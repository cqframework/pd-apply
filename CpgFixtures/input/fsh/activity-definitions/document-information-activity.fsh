Instance: activity-example-documentmedication
InstanceOf: $cpg-documentmedicationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(CollectionInformationActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to document a medication"
* kind = #Task
* code = $cpg-activity-type#document-medication "Document a medication"
* intent = #proposal
* doNotPerform = false
* dynamicValue[+]
  * path = "input.type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/cql-indentifier
    * expression = "Medication Proposal Reference"
    * reference = Canonical(DocumentMedicationLibrary)