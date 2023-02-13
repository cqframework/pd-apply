Instance: ProposeDiagnosisActivity
InstanceOf: $cpg-proposediagnosisactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(ProposeDiagnosisActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to propose a diagnosis"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-proposediagnosistask"
* code = $cpg-activity-type#propose-diagnosis "Propose a diagnosis"
* doNotPerform = false
* intent = #proposal
* dynamicValue[+]
  * path = "input[0].type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input[0].valueReference"
  * expression
    * language = #text/cql-identifier
    * expression = "Propose Diagnosis Reference"
    * reference = Canonical(ProposeDiagnosisLibrary)