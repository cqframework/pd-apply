Instance: OrderMedicationExpected
InstanceOf: $cpg-medicationrequest
Usage: #example
* status = #draft
* doNotPerform = false
* intent = #proposal
* instantiatesCanonical = "http://example.org/ActivityDefinition/OrderMedicationActivity|0.1.0"
* subject = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* medicationReference = Reference(PastMedication)
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