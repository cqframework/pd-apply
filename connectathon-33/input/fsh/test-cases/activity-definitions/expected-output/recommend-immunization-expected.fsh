Instance: RecommendImmunizationExpected
InstanceOf: $cpg-immunizationrecommendation
Usage: #example
* patient = Reference(Patient/Patient1)
* date = "2020-12-22"
* recommendation
  * vaccineCode = http://snomed.info/sct#14745005 "Hepatitis A vaccine"
  * forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due "Due"

  //should have element * status = #draft, but this is not a part of the immunization recommendation specification