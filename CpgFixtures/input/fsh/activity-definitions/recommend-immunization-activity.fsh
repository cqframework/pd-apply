Instance: RecommendImmuniztionActivity
InstanceOf: $cpg-immunizationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(RecommendImmuniztionActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to provide an immunization"
* kind = #ImmunizationRecommendation
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrecommendation"
* code = $cpg-activity-type#recommend-immunization "Recommend an immunization"
* intent = #proposal
* priority = #routine
* doNotPerform = false
* productCodeableConcept = http://snomed.info/sct#14745005 "Hepatitis A vaccine"