Instance: chf-daily-management
InstanceOf: $cpg-strategydefinition
Usage: #definition
* insert SetMetadata(chf-daily-management, PlanDefinition)

* title = "CHF Daily Management"
* type = $plan-definition-type#workflow-definition
* description = "Daily management strategy as part of a care pathway for patients with admitting diagnosis of congestive heart failure"
* library = Canonical(CHF)

* action[+].title = "Weight"
* action[=].description = "Measure weight daily"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg-example-chf/PlanDefinition/chf-bodyweight-recommendationdefinition"

* action[+].title = "Weight Change"
* action[=].description = "Manage weight change"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg-example-chf/PlanDefinition/chf-bodyweight-change-recommendationdefinition"

* action[+].title = "Urine Output"
* action[=].description = "Measure urine output daily"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg-example-chf/PlanDefinition/chf-urine-out-recommendationdefinition"

* action[+].title = "Net I/Os"
* action[=].description = "Measure net intake/output daily"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg-example-chf/PlanDefinition/chf-net-io-recommendationdefinition"

* action[=].title = "Lifestyle Modifications"
* action[=].description = "Behavioral weight control, includes 3 primary components: diet, exercise, and behavior therapy"
* action[=].code = $cpg-common-process#alerts-reminders-education
* action[=].input.type = #Observation
* action[=].input.profile = Canonical(CHFBodyWeightChange)
* action[=].condition.kind = #applicability
* action[=].condition.expression.language = #text/cql-identifier
* action[=].condition.expression.expression = "Is Increasing Body Weight"
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg-example-chf/PlanDefinition/chf-lifestyle-modification-recommendationdefinition"
