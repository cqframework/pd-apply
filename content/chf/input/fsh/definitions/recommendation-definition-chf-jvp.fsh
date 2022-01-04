Instance: chf-jvp-recommendationdefinition
InstanceOf: $cpg-recommendationdefinition
Usage: #definition
* insert SetMetadata(chf-jvp-recommendationdefinition, PlanDefinition)
* extension[cpg-partOf].valueCanonical = Canonical(chf-hypervolemia)
* title = "CHF Jugular Venous Pressure"
* type = $plan-definition-type#eca-rule
* description = "Measure jugular venous pressure"
* goal.description.text = "JVP target"
* goal.start = $sct#32485007 "Admission to hospital"

* action.id = "jvp"
* action.title = "JVP"
* action.description = "Measure JVP daily"
* action.code = $cpg-common-process#diagnostic-testing
* action.trigger.type = #periodic
* action.trigger.timingTiming.repeat.frequency = 1
* action.trigger.timingTiming.repeat.period = 1
* action.trigger.timingTiming.repeat.periodUnit = #d
* action.definitionCanonical = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/chf-jvp-computableactivity"


Instance: chf-jvp-computableactivity
InstanceOf: $cpg-computableactivity
Usage: #definition
* insert SetMetadata(chf-jvp-computableactivity, ActivityDefinition)
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest"
* title = "CHF Jugular Venous Pressure"
* description = "Measure jugular venous pressure"
* kind = #ServiceRequest
* code = $cpg-activity-type#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* location.reference = "Location/chf-locationdefinition"
* participant.type = #practitioner
* participant.role = $practitioner-role#nurse "Nurse"
* productCodeableConcept = $chf-codes#measure-jvp "Measure jugular venous pressure"

/**
 * NOTE: Commenting out dynamicValue, need to consider supporting: text/cql,
 * text/cql-expression, text/cql-identifier, and text/fhirpath

* dynamicValue.path = "status"
* dynamicValue.expression.language = #text/cql
* dynamicValue.expression.expression = "'draft'"

 **/