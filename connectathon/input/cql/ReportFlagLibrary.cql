library ReportFlagLibrary version '0.1.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.1.0'

context Patient

define "Flag":
  First([Flag] M
      sort by period.start
  )

define "Report Flag Reference":
  if "Flag" is not null then
    Tuple { reference: 'Flag/' + "Flag".id }
  else
    Tuple { reference: 'Flag/unknown' }