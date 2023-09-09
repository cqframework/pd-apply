library RecordInferenceLibrary version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'

context Patient

define "Inference":
  First([Observation] M
      sort by effective
  )

define "Record Inference Reference":
  if "Inference" is not null then
    Tuple { reference: 'Observation/' + "Inference".id }
  else
    Tuple { reference: 'Observation/unknown' }