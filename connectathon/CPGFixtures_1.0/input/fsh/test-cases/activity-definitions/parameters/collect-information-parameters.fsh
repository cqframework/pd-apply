Instance: CollectInformationParameters
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "subject"
  * valueString = "Patient/Patient1"
* parameter[+]
  * name = "practitioner"
  * valueString = "Practitioner/Practitioner1"
* parameter[+]
  * name = "encounter"
  * valueString = "Encounter/Encounter1"
* parameter[+]
  * name = "activityDefinition"
  * resource = CollectInformationActivity
* parameter[+]
  * name = "data"
  * resource = PatientTestBundle1