Instance: CkdPathwayExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry (CkdPathwayRequestGroup, RequestGroup)
* insert BundleEntry (InlineCKDManagementRequestGroup, RequestGroup)
* insert BundleEntry (InlineCKDEducationRequestGroup, RequestGroup)
* insert BundleEntry (InlineCKDFollowUpRequestGroup, RequestGroup)
* insert BundleEntry (InlineSendMessageRequestGroup, RequestGroup)
* insert BundleEntry(InlineCommunicationRequest, CommunicationRequest)

Instance: CkdPathwayRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* author = Reference(Practitioner/Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = Canonical(CkdPathway|0.2.0)
* action[+]
  * title = "CKD Management"
  * description = "Definition of plan for new diagnosis of CKD"
  * resource = Reference(RequestGroup/InlineCKDManagementRequestGroup)
* action[+]
  * title = "Greet patient"
  * description = "Greet patient at time of patient portal sign up"
  * resource = Reference(RequestGroup/InlineSendMessageRequestGroup)

Instance: InlineCKDManagementRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = Canonical(CKDManagementPlan|0.2.0)
* action[+]
  * title = "CKD Education"
  * description = "CKD Education at time of diagnosis"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"
  * resource = Reference(InlineCKDEducationRequestGroup)
* action[+]
  * title = "Follow Up Plan"
  * description = "Schedule follow up with nephrologist"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"
  * resource = Reference(InlineCKDFollowUpRequestGroup)

Instance: InlineCKDEducationRequestGroup
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
  * textEquivalent = "Recommend verbal and written education on disease state at time of CKD diagnosis"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"

Instance: InlineCKDFollowUpRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = Canonical(CKDFollowUpPlan|0.2.0)
* action
  * title = "Recommend CKD Follow Up"
  * description = "Recommend CKD Follow Up"
  * textEquivalent = "Recommend CKD Follow Up"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"

Instance: InlineSendMessageRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = Canonical(SendMessagePlan|0.2.0)
* action
  * title = "Greet the patient"
  * description = "Send a message with a greeting"
  * code = $cpg-common-process#alerts-reminders-education "Alerts Reminders Education"
  * type = $action-type#create
  * resource = Reference(CommunicationRequest/InlineCommunicationRequest)

Instance: InlineCommunicationRequest
InstanceOf: CommunicationRequest
Usage: #inline
* status = #draft
* doNotPerform = false
* subject = Reference(Patient1)
* requester = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* payload.contentString = "Greeting: Hello! Alice Message: Example Activity Definition for a recommendation to send a message Practitioner: Michael"
