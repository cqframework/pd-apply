Instance: chf-net-io-recommendationdefinition
InstanceOf: $cpg-recommendationdefinition
Usage: #definition
* insert SetMetadata(chf-net-io-recommendationdefinition, PlanDefinition)
* extension[cpg-partOf].valueCanonical = Canonical(chf-hypervolemia)
* title = "CHF Net IO"
* type = $plan-definition-type#eca-rule
* description = "Measure net intake/output daily"
* goal.description.text = "Net io target"
* goal.start = $sct#32485007 "Admission to hospital"

* action.id = "net-io"
* action.title = "Net IOs"
* action.description = "Measure net intake/output daily"
* action.code = $cpg-common-process#diagnostic-testing
* action.trigger.type = #periodic
* action.trigger.timingTiming.repeat.frequency = 1
* action.trigger.timingTiming.repeat.period = 1
* action.trigger.timingTiming.repeat.periodUnit = #d
* action.definitionCanonical = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/chf-net-io-computableactivity"

Instance: chf-net-io-computableactivity
InstanceOf: $cpg-computableactivity
Usage: #definition
* insert SetMetadata(chf-net-io-computableactivity, ActivityDefinition)
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest"
* title = "CHF Net IO"
* description = "Measure net intake/output"
* kind = #ServiceRequest
* code = $cpg-activity-type#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* location.reference = "Location/chf-locationdefinition"
* participant.type = #practitioner
* participant.role = $practitioner-role#nurse "Nurse"
* productCodeableConcept = $sct#63061008 "Measuring intake and output (procedure)"

/**
 * NOTE: Commenting out dynamicValue, need to consider supporting: text/cql,
 * text/cql-expression, text/cql-identifier, and text/fhirpath

* dynamicValue.path = "status"
* dynamicValue.expression.language = #text/cql
* dynamicValue.expression.expression = "'draft'"

 **/