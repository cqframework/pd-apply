library ProposeDiagnosisLibrary version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'

context Patient

define "Condition":
  First([Condition] M
      sort by recordedDate
  )

define "Propose Diagnosis Reference":
  if "Condition" is not null then
    Tuple { reference: 'Condition/' + "Condition".id }
  else
    Tuple { reference: 'Condition/unknown' }