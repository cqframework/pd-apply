Instance: CkdPathwayExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/CkdPathwayRequestGroup"
  * resource = CkdPathwayRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/InlineCKDFollowUpRequestGroup"
  * resource = InlineCKDFollowUpRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/InlineCkdEducationRequestGroup"
  * resource = InlineCkdEducationRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/CommunicationRequest/InlineCommunicationRequest"
  * resource = InlineCommunicationRequest
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/InlineCKDManagementRequestGroup"
  * resource = InlineCKDManagementRequestGroup
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/InlineSendMessageRequestGroup"
  * resource = InlineSendMessageRequestGroup

Instance: CkdPathwayRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient/Patient1)
* author = Reference(Practitioner/Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/CkdPathway|0.1.0"
* action[+]
  * title = "CKD Management"
  * description = "Definition of plan for new diagnosis of CKD"
  * resource = Reference(RequestGroup/InlineCKDManagementRequestGroup)
* action[+]
  * title = "Greet patient"
  * description = "Greet patient at time of patient portal sign up"
  * resource = Reference(RequestGroup/InlineSendMessageRequestGroup)

Instance: InlineCKDFollowUpRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #option
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/CKDFollowUpPlan|0.1.0"
* action
  * title = "CKD Follow Up Plan"
  * description = "Schedule follow up with a nephrologist at time of CKD diagnosis"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"

Instance: InlineCkdEducationRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #option
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/CKDEducationPlan|0.1.0"
* action
  * title = "CKD Patient Education"
  * description = "Provide verbal and written education on disease state at time of CKD diagnosis"
  * code = $cpg-common-process#provide-counseling "Provide Counseling"

Instance: InlineCommunicationRequest
InstanceOf: CommunicationRequest
Usage: #inline
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-communicationrequest"
* status = #draft
* doNotPerform = false
* subject = Reference(Patient1)
* requester = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* payload.contentString = "Greeting: Hello! Alice Message: Example Activity Definition for a recommendation to send a message Practitioner: Michael"

Instance: InlineCKDManagementRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #option
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/CKDManagementPlan|0.1.0"
* action[+]
  * title = "CKD Education"
  * description = "CKD Education at time of diagnosis"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#provide-counseling "Provide Counseling"
  * resource = Reference(RequestGroup/InlineCKDEducationRequestGroup)
* action[+]
  * title = "Follow Up Plan"
  * description = "Schedule follow up with nephrologist"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"
  * resource = Reference(RequestGroup/InlineCKDFollowUpRequestGroup)

Instance: InlineSendMessageRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #option
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.com/PlanDefinition/SendMessagePlan|0.1.0"
* action
  * title = "Greet the patient"
  * description = "Send a message with a greeting"
  * code = $cpg-common-process#alerts-reminders-education "Alerts Reminders Education"
  * type = http://terminology.hl7.org/CodeSystem/action-type#create
  * resource = Reference(CommunicationRequest/InlineCommunicationRequest)