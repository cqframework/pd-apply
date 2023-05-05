Instance: IschemicStrokePathway
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(IschemicStrokePathway, PlanDefinition)
* description = "Plan to treat patient with ischemic stroke"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* library = "http://example.org/Library/IschemicStrokeLibrary"
* action[+]
  * title = "Action based on timing"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Condition Timing"
* action[+]
  * title = "Generate Report"
  * dynamicValue
    * path = "description"
    * expression
      * language = #text/fhirpath
      * expression = "description + ' for patient ' + %subject.name.given.first()"
  * definitionCanonical = "http://example.org/ActivityDefinition/GenerateReportActivity"
* action[+]
  * title = "Ischemic Stroke Plan"
  * definitionCanonical = "http://example.org/PlanDefinition/IschemicStrokePlan"
  * action[+]
    * title = "Order Medication"
    * condition
      * kind = #applicability
      * expression
        * language = #text/cql-identifier
        * expression = "Had Ischemic Stroke"
    * dynamicValue
      * path = "medicationReference"
      * expression
        * language = #text/cql-identifier
        * expression = "Medication Reference"
    * definitionCanonical = "http://example.org/ActivityDefinition/OrderMedicationActivity"