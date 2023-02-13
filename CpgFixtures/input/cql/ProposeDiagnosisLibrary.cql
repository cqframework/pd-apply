library ProposeDiagnosis version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

context Patient

define "Condition":
  First([Condition] M
      sort by recordedDate
  )

define "Propose Diagnosis Reference":
  if "Condition" is not null then
    Reference { reference: string { value: 'Condition/' + "Condition".id } }
  else
    Reference { reference: string { value: 'Condition/unknown' } }