Instance: RaMonitoringStrategyExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(RaMonitoringStrategyRequestGroup4, RequestGroup)
* insert BundleEntry(RaMonitoringRecommendationRequestGroup4, RequestGroup)
* insert BundleEntry(RaQuestionnaireResponse4, QuestionnaireResponse)
* insert BundleEntry(RaQuestionnaire4, Questionnaire)
* insert BundleEntry(OrderTestingRequest4, ServiceRequest)

Instance: RaMonitoringStrategyRequestGroup4
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = Canonical(RaMonitoringStrategy)

Instance: RaMonitoringRecommendationRequestGroup4
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = Canonical(RaMonitoringRecommendation)
* action
  * title = "Order monitoring tests for antirheumatic drug therapy."
  * description = "Order monitoring tests for antirheumatic drug therapy."
  * code = $cpg-common-process#diagnostic-testing
  * type = $action-type#create
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Order monitoring tests if on RA treatment"
  * resource = Reference(OrderTestingRequest4)

Instance: RaQuestionnaireResponse4
InstanceOf: QuestionnaireResponse
Usage: #inline
* insert QuestionnaireResponseMetaData(RaQuestionnaire4)
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

Instance: RaQuestionnaire4
InstanceOf: Questionnaire
Usage: #inline
* insert QuestionnaireMetaData(RaQuestionnaire1)
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

Instance: OrderTestingRequest4
InstanceOf: $cpg-servicerequest
Usage: #inline
* status = #draft
* doNotPerform = false
* intent = #proposal
* instantiatesCanonical = Canonical(OrderServiceActivity)
* code = $cpg-activity-type-cs#order-service "Order a service"
* subject = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)

