Instance: CKDEducationExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(CKDEducationRequestGroup, RequestGroup)

Instance: CKDEducationRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = Canonical(CKDEducationPlan|0.2.0)
* action
  * title = "Recommend CKD Patient Education"
  * description = "Recommend verbal and written education on disease state at time of CKD diagnosis"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * action
    * title = "Provide CKD Patient Education"
    * description = "Provide verbal and written education on disease state at time of CKD diagnosis"