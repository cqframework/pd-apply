Instance: activity-example-recommendimmunization
InstanceOf: $cpg-recommendimmunization
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(RecommendImmuniztionActivity, ActivityDefinition)
* date = "2021-02-11T20:43:58+00:00"
* description = "Example Activity Definition for a recommendation to provide an immunization"
* kind = #ImmunizationRecommendation
* profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrecommendation"
* code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-activity-type#recommend-immunization "Recommend an immunization"
* intent = #proposal
* priority = #routine
* doNotPerform = false
* productCodeableConcept = http://snomed.info/sct#14745005 "Hepatitis A vaccine"