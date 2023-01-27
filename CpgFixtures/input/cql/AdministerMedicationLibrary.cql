library AdministerMedication version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

context Patient

context Patient

define "Patient id":
  Patient.id

define "Medication Requests":
  [MedicationRequest]

define "Medication Proposal":
  First([MedicationRequest] M
      sort by authoredOn
  )