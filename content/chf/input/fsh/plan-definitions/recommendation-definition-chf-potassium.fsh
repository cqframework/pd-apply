Instance: chf-potassium-recommendationdefinition
InstanceOf: $cpg-recommendationdefinition
Usage: #definition
* insert SetMetadata(chf-potassium-recommendationdefinition, PlanDefinition)
* extension[cpg-partOf].valueCanonical = Canonical(chf-hypervolemia)
* title = "CHF Potassium"
* type = $plan-definition-type#eca-rule
* description = "Monitor potassium"
* goal.description.text = "Potassium goal"
* goal.start = $sct#32485007 "Admission to hospital"

* action.id = "potassium"
* action.title = "Potassium"
* action.description = "Monitor potassium"
* action.code = $cpg-common-process#diagnostic-testing
* action.trigger.type = #periodic
* action.trigger.timingTiming.repeat.frequency = 1
* action.trigger.timingTiming.repeat.period = 1
* action.trigger.timingTiming.repeat.periodUnit = #d
* action.definitionCanonical = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/chf-potassium-computableactivity"

Instance: chf-potassium-computableactivity
InstanceOf: $cpg-computableactivity
Usage: #definition
* insert SetMetadata(chf-potassium-computableactivity, ActivityDefinition)
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest"
* title = "CHF Potassium"
* description = "Monitor Potassium"
* kind = #ServiceRequest
* code = $cpg-activity-type#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* location.reference = "Location/chf-locationdefinition"
* participant.type = #practitioner
* participant.role = $practitioner-role#nurse "Nurse"
* productCodeableConcept = $sct#59573005 "Potassium measurement (procedure)"

/**
 * NOTE: Commenting out dynamicValue, need to consider supporting: text/cql,
 * text/cql-expression, text/cql-identifier, and text/fhirpath

* dynamicValue.path = "status"
* dynamicValue.expression.language = #text/cql
* dynamicValue.expression.expression = "'draft'"

**/
