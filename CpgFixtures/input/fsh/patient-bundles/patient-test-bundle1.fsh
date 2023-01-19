Instance: Patient1
InstanceOf: Patient
Usage: #inline

Instance: Practitioner1
InstanceOf: Practitioner
Usage: #inline

Instance: Encounter1
InstanceOf: Encounter
Usage: #inline
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(Patient1)
* participant.individual = Reference(Practitioner1)

Instance: PastMedicationRequest
InstanceOf: MedicationRequest
Usage: #inline
* status = #active
* intent = #order
* authoredOn = "2023-01-01"
* medicationCodeableConcept.text = "Some medication"
* subject = Reference(Patient1)

Instance: PatientTestBundle1
InstanceOf: Bundle
* type = #collection
* entry[+].resource = Patient1
* entry[+].resource = Encounter1
* entry[+].resource = Practitioner1
* entry[+].resource = PastMedicationRequest