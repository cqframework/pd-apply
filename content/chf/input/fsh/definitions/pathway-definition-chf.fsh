Instance: chf-pathway
InstanceOf: $cpg-pathwaydefinition
Usage: #definition
* insert SetMetadata(chf-pathway, PlanDefinition)
* title = "Congestive Heart Failure Care Pathway"
* type = $plan-definition-type#clinical-protocol
* description = "Treatment and management care pathway for patients with admitting diagnosis of congestive heart failure"

* action[+].title = "CHF Daily Management"
* action[=].description = "Daily Management strategy for Congestive Heart Failure"
* action[=].code = $cpg-common-process#guideline-based-care
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-daily-management"

* action[+].title = "CHF Hypervolemia"
* action[=].description = "Hypervolemia strategy for Congestive Heart Failure"
* action[=].code = $cpg-common-process#guideline-based-care
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-hypervolemia"