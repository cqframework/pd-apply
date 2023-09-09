Instance: IschemicStrokePathExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/IschemicStrokePathRequestGroup"
  * resource = IschemicStrokePathRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/Task/GenerateReportRequest"
  * resource = GenerateReportRequest
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/InlineIschemicStrokeRequestGroup"
  * resource = InlineIschemicStrokeRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/MedicationRequest/OrderMedicationRequest"
  * resource = OrderMedicationRequest

Instance: IschemicStrokePathRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = "http://example.org/PlanDefinition/IschemicStrokePathway|0.1.0"
* author = Reference(Practitioner/Practitioner1)
* encounter = Reference(Encounter/Encounter1)
* action[+]
  * title = "Generate Report"
  * type = http://terminology.hl7.org/CodeSystem/action-type#create
  * resource = Reference(Task/GenerateReportRequest)
* action[+]
  * title = "Ischemic Stroke Plan"
  * resource = Reference(RequestGroup/IschemicStrokeRequestGroup)
  * action
    * title = "Order Medication"
    * type = http://terminology.hl7.org/CodeSystem/action-type#create
    * resource = Reference(MedicationRequest/OrderMedicationRequest)

Instance: GenerateReportRequest
InstanceOf: Task
Usage: #inline
* status = #draft
* intent = #option
* instantiatesCanonical = "http://example.org/ActivityDefinition/GenerateReportActivity|0.1.0"
* for = Reference(Patient/Patient1)
* encounter = Reference(Encounter/Encounter1)
* requester = Reference(Practitioner/Practitioner1)
* code = $cpg-activity-type#generate-report "Generate a metric or case report"
* input[+]
  * type = $cpg-activity-type#generate-report "Generate a metric or case report"
  * valueCanonical = "http://hl7.org/fhir/uv/cpg/Measure/activity-example-generatereport"
* description = "Plan to treat patient with ischemic stroke for patient Alice"

Instance: InlineIschemicStrokeRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #option
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = "http://example.org/PlanDefinition/IschemicStrokePlan|0.1.0"
* author = Reference(Practitioner/Practitioner1)
* encounter = Reference(Encounter/Encounter1)
* action
  * title = "Ischemic Stroke Treatment"
  * description = "Recommendation to administer TPA if patient had Ischemic Stroke"
  * code = $cpg-common-process#dispense-medications "Dispense Medications"
  * textEquivalent = "Administer TPA intravenously"

Instance: OrderMedicationRequest
InstanceOf: MedicationRequest
Usage: #inline
* status = #draft
* intent = #option
* instantiatesCanonical = "http://example.org/ActivityDefinition/OrderMedicationActivity|0.1.0"
* subject = Reference(Patient/Patient1)
* requester = Reference(Practitioner/Practitioner1)
* encounter = Reference(Encounter/Encounter1)
* doNotPerform = false
* medicationReference = Reference(CurrentMedication)
* dosageInstruction
  * sequence = 1
  * text = "75mcg daily"
  * timing
    * repeat
      * frequency = 1
      * period = 1
      * periodUnit = #d
  * route = http://snomed.info/sct#26643006 "Oral Route (qualifier value)"
  * doseAndRate
    * type = http://terminology.hl7.org/CodeSystem/dose-rate-type#ordered "Ordered"
    * doseQuantity = 75 'ug' "mcg"
