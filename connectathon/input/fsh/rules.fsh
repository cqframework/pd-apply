RuleSet: DefinitionMetadata(id, type)
* url = "http://example.org/{type}/{id}"
* name = "{id}"
* title = "{type} {id}"
* status = #draft
* experimental = true
* publisher = "Example"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* version = "0.2.0"
* status = #draft

RuleSet: KnowledgeArtifactDefinitionMetadata(id, type)
* url = "http://example.org/{type}/{id}"
* name = "{id}"
* title = "{type} {id}"
* status = #draft
* experimental = true
* publisher = "Example"
* jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* version = "0.2.0"
* status = #draft

RuleSet: QuestionnaireMetaData(id)
* url = "http://questionnaire-processor/Questionnaire/{id}"
* status = #draft

RuleSet: QuestionnaireItem(id, path)
* linkId = "{id}#{path}"
* definition = "http://example.org/StructureDefinition/{id}#{path}"

RuleSet: HiddenExtension
* extension[+]
  * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-hidden"
  * valueBoolean = true

RuleSet: QuestionnaireResponseMetaData(questionnaireId)
* questionnaire = Canonical({questionnaireId})
* status = #completed

RuleSet: CaseFeatureExpressions(reference, baseExpression)
* ^extension[CPGInferenceExpression].valueExpression.language = #text/cql-identifier
* ^extension[CPGInferenceExpression].valueExpression.reference = "http://example.org/Library/{reference}"
* ^extension[CPGInferenceExpression].valueExpression.expression = "{baseExpression} Inference"
* ^extension[CPGAssertionExpression].valueExpression.language = #text/cql-identifier
* ^extension[CPGAssertionExpression].valueExpression.reference = "http://example.org/Library/{reference}"
* ^extension[CPGAssertionExpression].valueExpression.expression = "{baseExpression} Assertion"
* ^extension[CPGFeatureExpression].valueExpression.language = #text/cql-identifier
* ^extension[CPGFeatureExpression].valueExpression.reference = "http://example.org/Library/{reference}"
* ^extension[CPGFeatureExpression].valueExpression.expression = "{baseExpression}"

RuleSet: BundleEntry(id, type)
* entry[+]
  * fullUrl = "http://apply-processor/{type}/{id}"
  * resource = {id}
