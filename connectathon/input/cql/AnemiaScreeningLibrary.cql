library AnemiaScreeningLibrary version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'

codesystem "SNOMED": 'http://snomed.info/sct'
code "Unintentional weight loss":
  '448765001' from "SNOMED" display 'Unintentional weight loss (finding)'
code "Inadequate mineral intake":
  '441921000124106' from "SNOMED" display 'Inadequate mineral intake (finding)'

context Patient

define "Patient id":
  Patient.id

define "Observation":
  First([Observation] M
    sort by effective
  )

define "Observation Code":
  "Observation".code.coding.first()

define "Needs CBC":
  "Observation Code" = "Unintentional weight loss"

define "Needs serum ferritin":
  "Observation Code" = "Inadequate mineral intake"

