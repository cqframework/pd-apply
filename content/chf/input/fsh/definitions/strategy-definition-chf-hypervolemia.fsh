Instance: chf-hypervolemia
InstanceOf: $cpg-strategydefinition
Usage: #definition
* insert SetMetadata(chf-hypervolemia, PlanDefinition)

* title = "CHF Hypervolemia"
* type = $plan-definition-type#workflow-definition
* description = "Hypervolemia strategy as part of a care pathway for patients with admitting diagnosis of congestive heart failure"

* action[+].title = "JVP"
* action[=].description = "Measure JVP daily"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-jvp-recommendationdefinition"

* action[+].title = "O2 Sat"
* action[=].description = "Monitor O2 Sat"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-o2-sat-recommendationdefinition"

* action[+].title = "Potassium"
* action[=].description = "Monitor Potassium"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-potassium-recommendationdefinition"

* action[+].title = "Creatinine"
* action[=].description = "Monitor Creatinine"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-creatinine-recommendationdefinition"

* action[+].title = "eGFR"
* action[=].description = "Monitor eGFR"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-egfr-recommendationdefinition"

* action[+].title = "LASIX"
* action[=].description = "LASIX"
* action[=].code = $cpg-common-process#guideline-based-care
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-lasix-recommendationdefinition"

* action[+].title = "Cardiology Consultation"
* action[=].description = "Cardiology Consultation within 24 hours"
* action[=].code = $cpg-common-process#guideline-based-care
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-cardiology-consultation-recommendationdefinition"
