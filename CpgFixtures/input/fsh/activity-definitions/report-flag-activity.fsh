Instance: ReportFlagActivity
InstanceOf: $cpg-reportflagactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(ReportFlagActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to report a flag"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-reportflagtask"
* code = $cpg-activity-type#report-flag "Report a flag"
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
    * expression = "Flag { id: 'flag', status: 'active', code: \"Flag\", subject: Patient }"