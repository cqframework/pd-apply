Instance: GenerateReportActivity
InstanceOf: $cpg-generatereportactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(GenerateReportActivity, ActivityDefinition)
* extension[reportWith].valueCanonical = "http://hl7.org/fhir/uv/cpg/Measure/activity-example-generatereport"
* description = "Example Activity Definition for a recommendation to generate a report"
* kind = #Task
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-generatereporttask"
* code = $cpg-activity-type#generate-report "Generate a metric or case report"
* doNotPerform = false
* dynamicValue[+]
  * path = "input.type"
  * expression
    * language = #text/cql
    * expression = "code"
* dynamicValue[+]
  * path = "input.value"
  * expression
    * language = #text/cql
    * expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-reportWith').value"