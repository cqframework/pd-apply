Instance: RegistrationExpected
InstanceOf: Bundle
Usage: #example
* type = #collection
* insert BundleEntry(RegistrationRequestGroup, RequestGroup)

Instance: RegistrationRequestGroup
InstanceOf: RequestGroup
Usage: #inline
* intent = #proposal
* status = #draft
* subject = Reference(Patient1)
* author = Reference(Practitioner1)
* encounter = Reference(Encounter1)
* instantiatesCanonical = Canonical(RegistrationPlan|0.2.0)
* action
  * title = "Registration with questionnaire"
  * description = "Register patient using questionnaire"
  * code = $cpg-common-process#registration "Registration"
  * resource = Reference(RegistrationQuestionnaire)