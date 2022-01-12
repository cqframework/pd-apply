Instance: chf-lasix-recommendationdefinition
InstanceOf: $cpg-recommendationdefinition
Usage: #definition
* insert SetMetadata(chf-lasix-recommendationdefinition, PlanDefinition)
* extension[cpg-partOf].valueCanonical = Canonical(chf-hypervolemia)
* title = "CHF LASIX"
* type = $plan-definition-type#eca-rule
* description = "Administer LASIX IV, transition to PO as appropriate"
* goal.description.text = "Transition to LASIX PO"
* goal.start = $sct#32485007 "Admission to hospital"

* action[+].id = "lasix-iv"
* action[=].title = "LASIX IV"
* action[=].description = "Administer LASIX IV"
* action[=].code = $cpg-common-process#dispense-medications
* action[=].condition.kind = #stop
* action[=].condition.expression.language = #text/cql-identifier
* action[=].condition.expression.expression = "Should Stop LASIX IV"
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/chf-lasix-iv-computableactivity"

* action[+].id = "lasix-po"
* action[=].title = "LASIX PO"
* action[=].description = "Administer LASIX PO"
* action[=].code = $cpg-common-process#dispense-medications
* action[=].condition.kind = #start
* action[=].condition.expression.language = #text/cql-identifier
* action[=].condition.expression.expression = "Should Start LASIX PO"
* action[=].definitionCanonical = "http://hl7.org/fhir/uv/cpg/ActivityDefinition/chf-lasix-po-computableactivity"

Instance: chf-lasix-iv-computableactivity
InstanceOf: $cpg-computableactivity
Usage: #definition
* insert SetMetadata(chf-lasix-iv-computableactivity, ActivityDefinition)
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
* title = "CHF LASIX IV"
* description = "Activity definition to administer LASIX IV as part of a congestive heart failure pathway"
* kind = #MedicationRequest
* code = $cpg-activity-type#order-medication "Order a medication"
* intent = #proposal
* priority = #routine
* doNotPerform = false
* productCodeableConcept = $chf-codes#lasix-iv "LASIX IV"

* dosage.sequence = 1
* dosage.text = "40mg"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $sct#47625008 "Intravenous Route (qualifier value)"
* dosage.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosage.doseAndRate.doseQuantity = 40 'mg' "mg"

Instance: chf-lasix-po-computableactivity
InstanceOf: $cpg-computableactivity
Usage: #definition
* insert SetMetadata(chf-lasix-po-computableactivity, ActivityDefinition)
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-medicationrequest"
* title = "CHF LASIX PO"
* description = "Activity definition to administer LASIX PO as part of a congestive heart failure pathway"
* kind = #MedicationRequest
* code = $cpg-activity-type#order-medication "Order a medication"
* intent = #proposal
* priority = #routine
* doNotPerform = false
* productCodeableConcept = $chf-codes#lasix-po "LASIX PO"

* dosage.sequence = 1
* dosage.text = "40mg"
* dosage.timing.repeat.frequency = 1
* dosage.timing.repeat.period = 1
* dosage.timing.repeat.periodUnit = #d
* dosage.route = $sct#26643006 "Oral Route (qualifier value)"
* dosage.doseAndRate.type = $dose-rate-type#ordered "Ordered"
* dosage.doseAndRate.doseQuantity = 40 'mg' "mg"
