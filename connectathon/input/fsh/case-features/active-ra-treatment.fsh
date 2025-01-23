Profile: ActiveRaTreatmentFeature
Parent: Observation
Description: "Case feature definition: patient has active RA treatment"
Title: "Active RA Treatment Feature"
* insert CaseFeatureExpressions(ActiveRaTreatmentLogic, On RA Treatment)
* status = #final
* code = CaseFeatureCodes#on-ra-treatment
* value[x] only boolean
* subject 1..1 MS
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/ActiveRaTreatmentFeature#Observation.subject"
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.language = #text/fhirpath
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.expression = "%resource.subject"
* effective[x] 1..1 MS
* effective[x] only dateTime
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/ActiveRaTreatmentFeature#Observation.effective[x]"
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.language = #text/fhirpath
  * ^extension[sdc-questionnaire-definitionExtractValue].extension[expression].valueExpression.expression = "%resource.authored"