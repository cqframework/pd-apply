Instance: RecommendImmunizationActivity
InstanceOf: $cpg-immunizationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(RecommendImmunizationActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to provide an immunization"
* kind = #ImmunizationRecommendation
* profile = $cpg-immunizationrecommendation
* code = $cpg-activity-type#recommend-immunization "Recommend an immunization"
* priority = #routine
* doNotPerform = false
* intent = #proposal
* productCodeableConcept = http://snomed.info/sct#14745005 "Hepatitis A vaccine"