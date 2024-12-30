Instance: RecommendImmunizationActivity
InstanceOf: $cpg-immunizationactivity
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(RecommendImmunizationActivity, ActivityDefinition)
* description = "Example Activity Definition for a recommendation to provide an immunization"
* kind = #MedicationRequest
* profile = $cpg-immunizationrequest
* code = $cpg-activity-type-cs#recommend-immunization
* priority = #routine
* doNotPerform = false
* intent = #proposal
* productCodeableConcept = $sct#14745005 "Hepatitis A vaccine"