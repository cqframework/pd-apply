Instance: GenerateReportActivity
InstanceOf: $cpg-generatereportactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(GenerateReportActivity, ActivityDefinition)
* extension[reportWith].valueCanonical = "http://hl7.org/fhir/uv/cpg/Measure/activity-example-generatereport"
* description = "Example Activity Definition for a recommendation to generate a report"
* kind = #Task
* profile = $cpg-generatereporttask
* code = $cpg-activity-type#generate-report "Generate a metric or case report"
* doNotPerform = false
* intent = #proposal
* dynamicValue[+]
  * path = "input[0].type"
  * expression
    * language = #text/fhirpath
    * expression = "code"
* dynamicValue[+]
  * path = "input[0].valueCanonical"
  * expression
    * language = #text/fhirpath
    * expression = "extension.where(url='http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-reportWith').value"