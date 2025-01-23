Instance: RaMonitoringStrategyParameters
InstanceOf: Parameters
Usage: #example
* parameter[+]
  * name = "subject"
  * valueString = "Patient/Patient2"
* parameter[+]
  * name = "practitioner"
  * valueString = "Practitioner/Practitioner2"
* parameter[+]
  * name = "encounter"
  * valueString = "Encounter/Encounter2"
* parameter[+]
  * name = "planDefinition"
  * resource = RaMonitoringStrategy
* parameter[+]
  * name = "data"
  * resource = PatientTestBundle2