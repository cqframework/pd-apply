Instance: simpleQuestionnaire
InstanceOf: Questionnaire
Usage: #definition
* name = "simpleQuestionnaire"
* status = #draft
* url = "http://example.org/Questionnaire/simpleQuestionnaire"
* item.linkId = "1"
* item.text = "A question for you"
* item.type = #text

// Scenario 1: Directly define a question
Instance: withDirectQuestionnaire
InstanceOf: PlanDefinition
Usage: #definition
* name = "withDirectQuestionnaire"
* status = #draft
* url = "http://example.org/PlanDefinition/withDirectQuestionnaire"
* action.definitionCanonical = Canonical(simpleQuestionnaire)


// Scenario 2: Collect information task
Instance: collectSimpleQuestionnaire
InstanceOf: ActivityDefinition
Usage: #definition
* name = "collectSimpleQuestionnaire"
* status = #draft
* url = "http://example.org/ActivityDefinition/collectSimpleQuestionnaire"
* doNotPerform = false
* extension[cpg-collectWith].valueCanonical = Canonical(simpleQuestionnaire)
* kind = #Task

Instance: withQuestionnaireCollectionTask
InstanceOf: PlanDefinition
Usage: #example
* name = "withQuestionnaireCollectionTask"
* status = #draft
* url = "http://example.org/PlanDefinition/withQuestionnaireCollectionTask"
* action.definitionCanonical = Canonical(collectSimpleQuestionnaire)


// Scenario 3: Build the questionnaire dynmically
Profile: Simplecasefeaturedefinition
Parent: Observation
Id: simpleCaseFeatureDefinition
Title: "Creatinine Clearance (CrCl)"
* code = http://loinc.org#39802-4
* value[x] only Quantity
* valueQuantity 0..1
* valueQuantity.system = "http://snomed.info/sct"
* valueQuantity.code = #umol/L
* valueQuantity.unit = "μmol/L"

Instance: withQuestionnaireFromInput
InstanceOf: PlanDefinition
Usage: #example
* name = "withQuestionnaireFromInput"
* status = #draft
* url = "http://example.org/PlanDefinition/withQuestionnaireFromInput"
* action.title = "With an input"
* action.input.type = #Observation
* action.input.profile = Canonical(simpleCaseFeatureDefinition)
* action.input.extension.url = "questionnaire-extractable"
* action.input.extension.valueBoolean = true