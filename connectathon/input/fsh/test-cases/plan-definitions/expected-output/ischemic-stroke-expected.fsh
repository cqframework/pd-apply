Instance: IschemicStrokeExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(IschemicStrokeRequestGroup, RequestGroup)

Instance: IschemicStrokeRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* instantiatesCanonical = Canonical(IschemicStrokePlan|0.2.0)
* author = Reference(Practitioner/Practitioner1)
* encounter = Reference(Encounter/Encounter1)
* action
  * title = "Recommend Ischemic Stroke Treatment"
  * description = "Recommendation to administer TPA if patient had Ischemic Stroke"
  * textEquivalent = "Administer TPA intravenously"
  * code = $cpg-common-process#dispense-medications "Dispense Medications"
  * condition
    * kind = #applicability
    * expression
      * language = #text/cql-identifier
      * expression = "Had Ischemic Stroke"