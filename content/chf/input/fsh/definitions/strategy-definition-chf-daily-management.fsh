Instance: chf-daily-management
InstanceOf: $cpg-strategydefinition
Usage: #definition
* insert SetMetadata(chf-daily-management, PlanDefinition)

* title = "CHF Daily Management"
* type = $plan-definition-type#workflow-definition
* description = "Daily management strategy as part of a care pathway for patients with admitting diagnosis of congestive heart failure"

* action[+].title = "Weight"
* action[=].description = "Measure weight daily"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-bodyweight-recommendationdefinition"

* action[+].title = "Weight Change"
* action[=].description = "Manage weight change"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-bodyweight-change-recommendationdefinition"

* action[+].title = "Urine Output"
* action[=].description = "Measure urine output daily"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-urine-out-recommendationdefinition"

* action[+].title = "Net I/Os"
* action[=].description = "Measure net intake/output daily"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-net-io-recommendationdefinition"
