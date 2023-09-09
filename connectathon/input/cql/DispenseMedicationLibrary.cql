library DispenseMedicationLibrary version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'

context Patient

define "Patient id":
  Patient.id

define "Medication Requests":
  [MedicationRequest]

define "Medication Proposal":
  First([MedicationRequest] M
      sort by authoredOn
  )

define "Medication Proposal Reference":
  if "Medication Proposal" is not null then
    Tuple { reference: 'MedicationRequest/' + "Medication Proposal".id }
  else
    Tuple { reference: 'MedicationRequest/unknown' }