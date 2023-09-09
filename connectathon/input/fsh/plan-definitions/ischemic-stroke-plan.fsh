Instance: IschemicStrokePlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(IschemicStrokePlan, PlanDefinition)
* description = "Definition of a plan to administer TPA if patient had ischemic stroke"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* library = "http://example.org/Library/IschemicStrokeLibrary"
* action
  * title = "Ischemic Stroke Treatment"
  * description = "Recommendation to administer TPA if patient had Ischemic Stroke"
  * textEquivalent = "Administer TPA intravenously"
  * code = $cpg-common-process#dispense-medications "Dispense Medications"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Had Ischemic Stroke"