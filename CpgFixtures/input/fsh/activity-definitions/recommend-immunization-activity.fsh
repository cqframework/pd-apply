Instance: RecommendImmunizationActivity
InstanceOf: $cpg-immunizationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(RecommendImmunizationActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to provide an immunization"
* kind = #ImmunizationRecommendation
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrecommendation"
* code = $cpg-activity-type#recommend-immunization "Recommend an immunization"
* priority = #routine
* doNotPerform = false
* intent = #proposal
* productCodeableConcept = http://snomed.info/sct#14745005 "Hepatitis A vaccine"

//should we test reutn of tuple on target resource using cql like this?
// * dynamicValue[+]
//   * path = "recommendation.forecastStatus"
//   * expression = "Forecast Status" (returns code tuple)
//   * reference = Canonical(RecommendImmunizationLibrary)