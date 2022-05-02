Instance: ExamplePatient
InstanceOf: Patient
Usage: #inline
* name.given = "Smith"

Instance: questionnaire-bundle
InstanceOf: Bundle
* type = #collection
* entry[+].resource = ExamplePatient
// Questionnaire
* entry[+].resource = simpleQuestionnaire

// PlanDefs
* entry[+].resource = withDirectQuestionnaire
* entry[+].resource = withQuestionnaireCollectionTask
* entry[+].resource = withQuestionnaireFromInput

// CaseFeature Defs
* entry[+].resource = Simplecasefeaturedefinition

// ActivityDefs
* entry[+].resource = collectSimpleQuestionnaire
