Instance: ReportFlagActivity
InstanceOf: $cpg-reportflagactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(ReportFlagActivity, ActivityDefinition)
* date = "2021-02-11T20:43:58+00:00"
* description = "Example Activity Definition for a recommendation to report a flag"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recordinferencetask"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#report-flag "Report a flag"
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