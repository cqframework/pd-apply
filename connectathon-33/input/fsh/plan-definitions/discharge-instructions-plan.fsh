Instance: DischargeInstructionsPlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DischargeInstructionsPlan, PlanDefinition)
* description = "Provide patient discharge instructions"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* action
  * title = "Send message with discharge instructions"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * dynamicValue
    * path = "payload[0].contentString"
    * expression
      * language = #text/fhirpath
      * expression = "description + ' for ' + %subject.name.given.first()"
  * definitionCanonical = "http://example.com/ActivityDefinition/SendMessageActivity"