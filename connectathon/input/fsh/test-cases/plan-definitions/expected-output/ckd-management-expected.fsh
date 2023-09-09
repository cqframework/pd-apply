Instance: CKDManagementExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/CKDManagementRequestGroup"
  * resource = CKDManagementRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/InlineCKDEducationRequestGroup"
  * resource = InlineCKDEducationRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/CKDFollowUpRequestGroup"
  * resource = CKDFollowUpRequestGroup

Instance: CKDManagementRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/CKDManagementPlan|0.1.0"
* action[+]
  * title = "CKD Education"
  * description = "CKD Education at time of diagnosis"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * resource = Reference(InlineCKDEducationRequestGroup)
* action[+]
  * title = "Follow Up Plan"
  * description = "Schedule follow up with nephrologist"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"
  * resource = Reference(CKDFollowUpRequestGroup)

Instance: CKDFollowUpRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #option
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/CKDFollowUpPlan|0.1.0"
* action
  * title = "CKD Follow Up Plan"
  * description = "Schedule follow up with a nephrologist at time of CKD diagnosis"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"

Instance: InlineCKDEducationRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #option
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/CKDEducationPlan|0.1.0"
* action
  * title = "CKD Patient Education"
  * description = "Provide verbal and written education on disease state at time of CKD diagnosis"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
