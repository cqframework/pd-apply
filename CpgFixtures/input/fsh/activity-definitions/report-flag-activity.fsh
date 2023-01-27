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
  * path = "input[0].type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input[0].value"
  * expression
    * language = #text/fhirpath
    * expression = "Flag { id: 'flag', status: 'active', code: \"Flag\", subject: Patient }"