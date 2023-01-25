Instance: ProposeDiagnosisActivity
InstanceOf: $cpg-proposediagnosisactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(ProposeDiagnosisActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to propose a diagnosis"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-proposediagnosistask"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#propose-diagnosis "Propose a diagnosis"
* doNotPerform = false
* dynamicValue[+]
  * path = "input.type"
  * expression
    * language = #text/cql-expression
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/cql-expression
    * expression = "Condition { clinicalStatus: \"Active Condition\", verificationStatus: \"Provisional Condition\", category: \"Problem-list Item\", code: \"Ischemic Stroke\", subject: Patient, onset: Today() }"