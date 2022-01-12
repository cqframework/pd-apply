Instance: chf-bodyweight-change-recommendationdefinition
InstanceOf: $cpg-recommendationdefinition
Usage: #definition
* insert SetMetadata(chf-bodyweight-change-recommendationdefinition, PlanDefinition)
* title = "CHF Body Weight Change"
* type = $plan-definition-type#eca-rule
* description = "Measure body weight change daily"

* goal.description.text = "Weight change target"
* goal.start = $sct#32485007 "Admission to hospital"

* action[+].id = "weight-change"
* action[=].title = "Weight change"
* action[=].description = "Measure weight change daily"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].trigger.type = #periodic
* action[=].trigger.timingTiming.repeat.frequency = 1
* action[=].trigger.timingTiming.repeat.period = 1
* action[=].trigger.timingTiming.repeat.periodUnit = #d
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/chf-bodyweight-change-computableactivity"

* action[+].title = "Report Weight Change"
* action[=].description = "Report weight change metric daily"
* action[=].code = $cpg-common-process#diagnostic-testing
* action[=].relatedAction.actionId = "weight-change"
* action[=].relatedAction.relationship = #after-end
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/chf-report-bodyweight-change-computableactivity"


Instance: chf-bodyweight-change-computableactivity
InstanceOf: $cpg-computableactivity
Usage: #definition
* insert SetMetadata(chf-bodyweight-change-computableactivity, ActivityDefinition)
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-recordinferencetask"
* title = "CHF Body Weight Change"
* description = "Record body weight change"
* kind = #Task
* code = $cpg-activity-type#record-inference "Record an inference"
* doNotPerform = false

/**
 * NOTE: Commenting out dynamicValue, need to consider supporting: text/cql,
 * text/cql-expression, text/cql-identifier, and text/fhirpath

* dynamicValue[+].path = "input.type"
* dynamicValue[=].expression.language = #text/cql-expression
* dynamicValue[=].expression.expression = "code"

* dynamicValue[+].path = "input.value"
* dynamicValue[=].expression.language = #text/cql-identifier
* dynamicValue[=].expression.expression = "Body Weight Change"
* dynamicValue[=].expression.reference = "http://hl7.org/fhir/uv/cpg/Library/CHF"

 **/

Instance: chf-report-bodyweight-change-computableactivity
InstanceOf: $cpg-computableactivity
Usage: #definition
* insert SetMetadata(chf-report-bodyweight-change-computableactivity, ActivityDefinition)
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-generatereporttask"
* extension[cpg-reportWith].valueCanonical = "http://hl7.org/fhir/uv/cpg/Measure/chf-bodyweight-change"
* title = "CHF Report Body Weight Change"
* description = "Record body weight change metric"
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