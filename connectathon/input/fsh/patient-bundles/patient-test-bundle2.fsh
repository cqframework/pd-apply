Instance: Patient2
InstanceOf: Patient
Usage: #example
* name
  * given = "Alice"

Instance: Practitioner2
InstanceOf: Practitioner
Usage: #example
* name
  * given = "Michael"

Instance: Encounter2
InstanceOf: Encounter
Usage: #example
* status = #in-progress
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#AMB
* subject = Reference(Patient2)
* participant.individual = Reference(Practitioner2)

Instance: ActiveRaTreatmentFeature2
InstanceOf: ActiveRaTreatmentFeature
Usage: #inline
* derivedFrom = Reference(QuestionnaireResponse/RaQuestionnaireResponse3)
* status = #final
* code = CaseFeatureCodes#on-ra-treatment
* subject = Reference(Patient/Patient2)
* valueBoolean = true

Instance: PatientTestBundle2
InstanceOf: Bundle
* type = #collection
* insert BundleEntry(Patient2, Patient)
* insert BundleEntry(Encounter2, Encounter)
* insert BundleEntry(Practitioner2, Practitioner)
* insert BundleEntry(ActiveRaTreatmentFeature2, ActiveRaTreatmentFeature)