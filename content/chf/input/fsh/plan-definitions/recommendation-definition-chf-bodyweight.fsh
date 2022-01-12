Instance: chf-bodyweight-recommendationdefinition
InstanceOf: $cpg-recommendationdefinition
Usage: #definition
* insert SetMetadata(chf-bodyweight-recommendationdefinition, PlanDefinition)
* title = "CHF Body Weight"
* type = $plan-definition-type#eca-rule
* description = "Measure body weight daily"

* goal.description.text = "Weight target"
* goal.start = $sct#32485007 "Admission to hospital"

* action[+].id = "weight"
* action[=].title = "Weight"
* action[=].description = "Measure weight daily"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].trigger.type = #periodic
* action[=].trigger.timingTiming.repeat.frequency = 1
* action[=].trigger.timingTiming.repeat.period = 1
* action[=].trigger.timingTiming.repeat.periodUnit = #d
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/chf-bodyweight-computableactivity"

* action[+].title = "Report Weight"
* action[=].description = "Report weight metric daily"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].relatedAction.actionId = "weight"
* action[=].relatedAction.relationship = #after-end
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/chf-report-bodyweight-computableactivity"


Instance: chf-bodyweight-computableactivity
InstanceOf: $cpg-computableactivity
Usage: #definition
* insert SetMetadata(chf-bodyweight-computableactivity, ActivityDefinition)
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest"
* title = "CHF Body Weight"
* description = "Measure body weight"
* kind = #ServiceRequest
* code = $cpg-activity-type#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* location.reference = "Location/chf-locationdefinition"
* participant.type = #practitioner
* participant.role = $practitioner-role#nurse "Nurse"
* productCodeableConcept = $sct#307818003 "Weight monitoring (regime/therapy)"

/**
 * NOTE: Commenting out dynamicValue, need to consider supporting: text/cql,
 * text/cql-expression, text/cql-identifier, and text/fhirpath

* dynamicValue.path = "status"
* dynamicValue.expression.language = #text/cql
* dynamicValue.expression.expression = "'draft'"

 **/

Instance: chf-report-bodyweight-computableactivity
InstanceOf: $cpg-computableactivity
Usage: #definition
* insert SetMetadata(chf-report-bodyweight-computableactivity, ActivityDefinition)
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-generatereporttask"
* extension[cpg-reportWith].valueCanonical = "http://hl7.org/fhir/uv/cpg/Measure/chf-bodyweight"
* title = "CHF Report Body Weight"
* description = "Record body weight metric"
* kind = #Task
* code = $cpg-activity-type#generate-report "Generate a metric or case report"
* doNotPerform = false



/**
 * NOTE: Commentingout dynamicValue, need to consider supporting: text/cql,
 * text/cql-expression, text/cql-identifier, and text/fhirpath

* dynamicValue[+].path = "input.type"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "code"

* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql
* dynamicValue[=].expression.expression = "extension('http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-reportWith').value"

 **/