Instance: EnrollPatientParameters
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
  * resource = EnrollPatientActivity
* parameter[+]
  * name = "data"
  * resource = PatientTestBundle1