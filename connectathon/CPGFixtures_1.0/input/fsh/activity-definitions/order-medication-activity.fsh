Instance: OrderMedicationActivity
InstanceOf: $cpg-medicationrequestactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(OrderMedicationActivity, ActivityDefinition)
* description = "Order a medication activity"
* kind = #MedicationRequest
* profile = $cpg-medicationrequest
* code = $cpg-activity-type#order-medication "Order a medication"
* priority = #routine
* doNotPerform = false
* intent = #proposal
* productReference = Reference(PastMedication)
* dosage
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