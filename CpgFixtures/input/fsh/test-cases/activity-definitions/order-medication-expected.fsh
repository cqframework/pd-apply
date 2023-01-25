Instance: OrderMedicationExpected
InstanceOf: MedicationRequest
Usage: #example
* status = #draft
* doNotPerform = false
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/OrderMedicationActivity|0.1.0"
* subject = Reference(Patient1)
* requester = Reference(Practitioner1)
* medicationCodeableConcept = http://snomed.info/sct#376988009 "Levothyroxine sodium 75 microgram oral tablet"
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