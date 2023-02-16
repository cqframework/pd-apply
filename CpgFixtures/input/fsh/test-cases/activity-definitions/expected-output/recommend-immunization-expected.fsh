Instance: RecommendImmunizationExpected
InstanceOf: $cpg-immunizationrecommendation
Usage: #example
* patient = Reference(Patient/Patient1)
* date = "2020-12-22"
* recommendation
  * vaccineCode = http://snomed.info/sct#14745005 "Hepatitis A vaccine"
  * forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due "Due"

//there is no status on spec
//where does date come from, card of 1..1 "date of recommendation"