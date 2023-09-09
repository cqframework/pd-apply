Instance: ReportFlagActivity
InstanceOf: $cpg-reportflagactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(ReportFlagActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to report a flag"
* kind = #Task
* profile = $cpg-reportflagtask
* code = $cpg-activity-type#report-flag "Report a flag"
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
    * expression = "Report Flag Reference"
    * reference = Canonical(ReportFlagLibrary)