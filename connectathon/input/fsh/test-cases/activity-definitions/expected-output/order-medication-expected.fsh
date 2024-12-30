Instance: OrderMedicationExpected
InstanceOf: $cpg-medicationrequest
Usage: #example
* status = #draft
* doNotPerform = false
* intent = #proposal
* instantiatesCanonical = Canonical(OrderMedicationActivity|0.2.0)
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
  * route = $sct#26643006 "Oral Route (qualifier value)"
  * doseAndRate
    * type = $dose-rate-type#ordered "Ordered"
    * doseQuantity = 75 'ug' "mcg"