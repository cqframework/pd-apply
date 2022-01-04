Instance: chf-cardiology-consultation-recommendationdefinition
InstanceOf: $cpg-recommendationdefinition
Usage: #definition
* insert SetMetadata(chf-cardiology-consultation-recommendationdefinition, PlanDefinition)
* extension[cpg-partOf].valueCanonical = Canonical(chf-hypervolemia)
* title = "CHF Cardiology Consultation"
* type = $plan-definition-type#eca-rule
* description = "Cardiology consultation within 24 hrs"
* goal.description.text = "Cardiology Consultation within 24 hours"
* goal.start = $sct#32485007 "Admission to hospital"

* action.id = "cardiology-consultation"
* action.title = "Cardiology Consultation"
* action.description = "Cardiology Consultation"
* action.code = $cpg-common-process#guideline-based-care
* action.definitionCanonical = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/chf-cardiology-consultation-computableactivity"


Instance: chf-cardiology-consultation-computableactivity
InstanceOf: $cpg-computableactivity
Usage: #definition
* insert SetMetadata(chf-cardiology-consultation-computableactivity, ActivityDefinition)
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-servicerequest"
* title = "CHF Cardiology Consultation"
* description = "Cardiology consultation as part of a congestive heart failure care pathway"
* kind = #ServiceRequest
* code = $cpg-activity-type#order-service "Order a service"
* intent = #proposal
* doNotPerform = false
* productCodeableConcept = $chf-codes#cardiology-consultation "Cardiology Consultation"

/**
 * NOTE: Commenting out dynamicValue, need to consider supporting: text/cql,
 * text/cql-expression, text/cql-identifier, and text/fhirpath

* dynamicValue.path = "status"
* dynamicValue.expression.language = #text/cql
* dynamicValue.expression.expression = "'draft'"

 **/