Instance: ReportHeightWeightExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(ReportHeightWeightRequestGroup, RequestGroup)
* insert BundleEntry(WeightTargetGoal, Goal)

Instance: ReportHeightWeightRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = Canonical(ReportWeightHeightPlan|0.2.0)
* extension[resource-pertainsToGoal].valueReference = Reference(WeightTargetGoal)
* action[+]
  * title = "Recommend Weight Measurement"
  * description = "Recommend Weight Measurement"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"
  * action[+]
    * title = "Report Weight"
    * description = "Report weight metric upon admission"
* action[+]
  * title = "Recommend Height Measurement"
  * description = "Recommend Height Measurement"
  * code = $cpg-common-process#diagnostic-testing "Conduct Diagnostic Tests"
  * action[+]
    * title = "Report Height"
    * description = "Report height metric upon admission"


Instance: WeightTargetGoal
InstanceOf: $cpg-goal
Usage: #inline
* subject = Reference(Patient1)
* lifecycleStatus = #proposed
* description
  * text = "Weight target"