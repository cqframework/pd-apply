library RaMonitoringRecommendationLibrary version '0.2.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.2.0'
include ActiveRaTreatmentFeatureLogic version '0.2.0' called ActiveRaTreatmentFeature

context Patient

define "Order monitoring tests if on RA treatment":
  if (ActiveRaTreatmentFeature."On RA Treatment" is not null) then
    ActiveRaTreatmentFeature."On RA Treatment".value as boolean
  else
    false