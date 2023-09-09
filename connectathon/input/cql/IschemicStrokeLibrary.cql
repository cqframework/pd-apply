library IschemicStrokeLibrary version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'

codesystem "SNOMED": 'http://snomed.info/sct'
code "Ischemic Stroke":
  '422504002' from "SNOMED" display 'Ischemic stroke (disorder)'

context Patient

define "Patient id":
  Patient.id

define "Condition":
  First([Condition] M
    sort by recordedDate
  )

define "Condition Timing":
  ToString("Condition".recordedDate) = '2023-03-28'

define "Condition Code Value":
  "Condition".code.coding.first()

define "Had Ischemic Stroke":
  "Condition Code Value" = "Ischemic Stroke"

define "Medications":
  [Medication]

define "Active Medication":
  Medications.where(status = 'active')

define "Medication Reference":
  if "Active Medication" is not null then
    Tuple { reference: 'Medication/' + "Active Medication".id }
  else
    Tuple { reference: 'Medication/unknown' }