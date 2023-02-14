Instance: CHFDailyManagement
InstanceOf: PlanDefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(CHFDailyManagement, PlanDefinition)
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-strategydefinition"
* extension[cpg-partOf].valueCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-pathway"
* extension[cpg-enabled].valueBoolean = true
* type = http://terminology.hl7.org/CodeSystem/plan-definition-type#workflow-definition
* date = "2021-02-11T20:43:58+00:00"
* description = "Daily management strategy as part of a care pathway for patients with admitting diagnosis of congestive heart failure"
* action[+]
  * title = "Weight"
  * description = "Measure weight daily"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
  * definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-bodyweight"
* action[+]
  * title = "Weight Change"
  * description = "Manage weight change"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
  * definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-bodyweight-change"
* action[+]
  * title = "Urine Output"
  * description = "Measure urine output daily"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
  * definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-urine-out"
* action[+]
  * title = "Net I/Os"
  * description = "Measure net intake/output daily"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
  * definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-net-io"