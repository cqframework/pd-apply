Instance: DischargeFollowUpPlan
InstanceOf: $cpg-computableplandefinition
Usage: #example
* insert KnowledgeArtifactDefinitionMetadata(DischargeFollowUpPlan, PlanDefinition)
* description = "Definition of plan to monitor patient following discharge"
* type = $cpg-plan-type#clinical-protocol "Clinical Protocol"
* goal
  * description
    * text = "Patient monitoring"
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