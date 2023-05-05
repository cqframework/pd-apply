Instance: ReportHeightWeightExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/ReportHeightWeightRequestGroup"
  * resource = ReportHeightWeightRequestGroup
* entry[+]
  * resource = WeightTargetGoal

Instance: ReportHeightWeightRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/ReportWeightHeightPlan|0.1.0"
* extension
  * url = "http://hl7.org/fhir/StructureDefinition/resource-pertainsToGoal"
  * valueReference = Reference(WeightTargetGoal)
* action[+]
  * title = "Report Weight"
  * description = "Report weight metric upon admission"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"
* action[+]
  * title = "Report Height"
  * description = "Report height metric upon admission"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"


Instance: WeightTargetGoal
InstanceOf: $cpg-goal
Usage: #inline
* subject = Reference(Patient1)
* lifecycleStatus = #planned
* description
  * text = "Weight target"