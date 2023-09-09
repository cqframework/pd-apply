Instance: DischargeFollowUpExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* entry[+]
  * fullUrl = "http://apply-processor/RequestGroup/DischargeRequestGroup"
  * resource = DischargeRequestGroup
* entry[+]
  * resource = PatientMonitoringGoal

Instance: DischargeRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = "http://example.org/PlanDefinition/DischargeFollowUpPlan|0.1.0"
* extension
  * url = "http://hl7.org/fhir/StructureDefinition/resource-pertainsToGoal"
  * valueReference = Reference(PatientMonitoringGoal)
* action
  * title = "Monitor patient"
  * description = "Monitor patient post discharge"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"
  * action[+]
    * title = "Case management or referral"
    * code = $cpg-common-process#discharge-referral-of-patient "Discharge/Referral of Patient"
  * action[+]
    * title = "Schedule follow-up visit"
    * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"

Instance: PatientMonitoringGoal
InstanceOf: $cpg-goal
Usage: #inline
* subject = Reference(Patient1)
* lifecycleStatus = #planned
* description
  * text = "Patient monitoring"