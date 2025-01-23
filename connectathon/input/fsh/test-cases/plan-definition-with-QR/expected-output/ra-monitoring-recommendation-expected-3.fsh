Instance: RaMonitoringRecommendation2Expected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(RaMonitoringRecommendationRequestGroup2, RequestGroup)
* insert BundleEntry(RaQuestionnaireResponse2, QuestionnaireResponse)
* insert BundleEntry(RaQuestionnaire2, Questionnaire)
* insert BundleEntry(ActiveRaTreatmentFeature2, Observation)

Instance: RaMonitoringRecommendationRequestGroup2
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = Canonical(RaMonitoringRecommendation)

Instance: RaQuestionnaireResponse2
InstanceOf: QuestionnaireResponse
Usage: #example
* insert QuestionnaireResponseMetaData(RaQuestionnaire2)
* subject = Reference(Patient/Patient2)
* authored  = "2025-01-01T11:45:33+11:00"
* author = Reference(Practitioner/Practitioner2)
* item[+]
  * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation)
  * text = "Measurements and simple assertions"
  * item[+]
    * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation.code)
    * text = "Type of observation (code / type)"
    * answer[+].valueCoding = CaseFeatureCodes#on-ra-treatment

Instance: RaQuestionnaire2
InstanceOf: Questionnaire
Usage: #example
* insert QuestionnaireMetaData(RaQuestionnaire2)
* extension[LaunchContextExtension]
  * extension[name].valueCoding = $launch-context-codes#patient
  * extension[type].valueCode = #Patient
* item[+]
  * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation)
  * text = "Measurements and simple assertions"
  * type = #group
  * extension[sdc-questionnaire-definitionExtract].extension[definition].valueCanonical = Canonical(ActiveRaTreatmentFeature)
  * extension[sdc-questionnaire-definitionExtractValue]
    * extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/ActiveRaTreatmentFeature#Observation.subject"
    * extension[expression].valueExpression
      * language = #text/fhirpath
      * expression = "%resource.subject"
  * extension[sdc-questionnaire-definitionExtractValue]
    * extension[definition].valueUri = "http://fhir.org/test/StructureDefinition/ActiveRaTreatmentFeature#Observation.effective[x]"
    * extension[expression].valueExpression
      * language = #text/fhirpath
      * expression = "%resource.authored"
  * extension[ItemPopulationContextExtension].valueExpression
    * language = #text/cql-identifier
    * expression = "On RA Treatment"
    * reference = Canonical(ActiveRaTreatmentFeatureLogic)
    * name = "ActiveRaTreatmentFeature"
  * item[+]
    * insert QuestionnaireItem(ActiveRaTreatmentFeature, Observation.valueBoolean)
    * text = "Actual result"
    * type = #boolean
    * extension[InitialExpressionExtension]
      * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression"
      * valueExpression
        * language = #text/cql-expression
        * expression = "%ActiveRaTreatmentFeature.value[x]"

Instance: ActiveRaTreatmentFeature2
InstanceOf: ActiveRaTreatmentFeature
Usage: #inline
* derivedFrom = Reference(QuestionnaireResponse/RaQuestionnaireResponse2)
* status = #final
* code = CaseFeatureCodes#on-ra-treatment
* subject = Reference(Patient/Patient2)
* valueBoolean = false
* effectiveDateTime = "2025-01-01T11:45:33+11:00"
