library RecordDetectedIssue version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '4.0.1'

context Patient

define "Detected Issue":
  First([DetectedIssue] M
      sort by identified
  )

define "Record Detected Issue Reference":
  if "Detected Issue" is not null then
    Reference { reference: string { value: 'DetectedIssue/' + "Detected Issue".id } }
  else
    Reference { reference: string { value: 'DetectedIssue/unknown' } }