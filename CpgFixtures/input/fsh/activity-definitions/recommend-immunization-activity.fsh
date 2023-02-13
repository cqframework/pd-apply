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
* date = 2023-02-11T20:43:58+00:00  //this is when AD was last published, so does not translate to Task.date?
* productCodeableConcept = http://snomed.info/sct#14745005 "Hepatitis A vaccine"
* timingDateTime = 2023-02-11T20:43:58+00:00
//what maps to forecastStatus? required on immunization recommendation