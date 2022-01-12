Instance: chf-urine-out-recommendationdefinition
InstanceOf: $cpg-recommendationdefinition
Usage: #definition
* insert SetMetadata(chf-urine-out-recommendationdefinition, PlanDefinition)
* extension[cpg-partOf].valueCanonical = Canonical(chf-hypervolemia)
* title = "CHF Urine Out"
* type = $plan-definition-type#eca-rule
* description = "Measure urine output daily"
* goal.description.text = "Urine output target"
* goal.start = $sct#32485007 "Admission to hospital"

* action[+].id = "urine-out"
* action[=].title = "Urine Out"
* action[=].description = "Measure urine output daily"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].trigger.type = #periodic
* action[=].trigger.timingTiming.repeat.frequency = 1
* action[=].trigger.timingTiming.repeat.period = 1
* action[=].trigger.timingTiming.repeat.periodUnit = #d
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/chf-urine-out-computableactivity"

* action[+].title = "Report Urine Out"
* action[=].description = "Report urine output metric daily"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].relatedAction.actionId = "urine-out"
* action[=].relatedAction.relationship = #after-end
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/chf-report-urine-out-computableactivity"


Instance: chf-urine-out-computableactivity
InstanceOf: $cpg-computableactivity
Usage: #definition
* insert SetMetadata(chf-urine-out-computableactivity, ActivityDefinition)
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest"
* title = "CHF Urine Out"
* description = "Measure urine output"
* kind = #ServiceRequest
* code = $cpg-activity-type#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* location.reference = "Location/chf-locationdefinition"
* participant.type = #practitioner
* participant.role = $practitioner-role#nurse "Nurse"
* productCodeableConcept = $sct#444990003 "Measurement of urine output (procedure)"

/**
 * NOTE: Commenting out dynamicValue, need to consider supporting: text/cql,
 * text/cql-expression, text/cql-identifier, and text/fhirpath

* dynamicValue.path = "status"
* dynamicValue.expression.language = #text/cql
* dynamicValue.expression.expression = "'draft'"

 **/


Instance: chf-report-urine-out-computableactivity
InstanceOf: $cpg-computableactivity
Usage: #definition
* insert SetMetadata(chf-report-urine-out-computableactivity, ActivityDefinition)
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-generatereporttask"
* extension[cpg-reportWith].valueCanonical = "http://hl7.org/fhir/uv/cpg/Measure/chf-urine-out"
* title = "CHF Report Urine Out"
* description = "Record urine output metric"
* kind = #Task
* code = $cpg-activity-type#generate-report "Generate a metric or case report"
* doNotPerform = false

/**
 * NOTE: Commenting out dynamicValue, need to consider supporting: text/cql,
 * text/cql-expression, text/cql-identifier, and text/fhirpath

* dynamicValue[+].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"

* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-reportWith').value"

 **/