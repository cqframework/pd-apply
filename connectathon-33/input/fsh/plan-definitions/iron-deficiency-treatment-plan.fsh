Instance: IronDeficiencyTreatmentPlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(IronDeficiencyTreatmentPlan, PlanDefinition)
* description = "Definition of a plan to prescribe iron supplement if patient has diagnosis or iron deficiency anemia"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* library = "http://example.com/Library/IronDeficiencyTreatmentLibrary"
* action
  * title = "Iron Supplementation"
  * textEquivalent = "Daily elemental iron should be prescribed if diagnosed with iron deficiency anemia"
  * code = $cpg-common-process#dispense-medication "Dispense Medications"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Has Anemia"