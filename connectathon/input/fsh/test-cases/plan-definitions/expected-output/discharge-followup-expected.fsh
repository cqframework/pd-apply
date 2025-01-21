Instance: DischargeFollowUpExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(DischargeRequestGroup, RequestGroup)
* insert BundleEntry(PatientMonitoringGoal, Goal)

Instance: DischargeRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = Canonical(DischargeFollowUpPlan|0.2.0)
* extension[resource-pertainsToGoal].valueReference = Reference(PatientMonitoringGoal)
* action
  * title = "Monitor patient"
  * description = "Monitor patient post discharge"
  * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"
  * action[+]
    * title = "Case management or referral"
    * textEquivalent = "Case management or referral"
    * code = $cpg-common-process#discharge-referral-of-patient "Discharge/Referral of Patient"
  * action[+]
    * title = "Schedule follow-up visit"
    * textEquivalent = "Schedule follow-up visit"
    * code = $cpg-common-process#monitor-and-follow-up-of-patient "Monitor and Follow-up of Patient"

Instance: PatientMonitoringGoal
InstanceOf: $cpg-goal
Usage: #inline
* subject = Reference(Patient1)
* lifecycleStatus = #proposed
* description
  * text = "Patient monitoring"