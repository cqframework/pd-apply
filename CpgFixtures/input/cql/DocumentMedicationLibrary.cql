library DocumentMedication version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

context Patient

define "Medication Proposal Reference":
  'MedicationRequest/placeholder'
