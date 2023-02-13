Instance: RecommendImmunizationExpected
InstanceOf: ImmunizationRecommendation
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-immunizationrecommendation"
* patient = Reference(Patient/Patient1)
* date = "2020-12-22"
* recommendation
  * vaccineCode = http://snomed.info/sct#14745005 "Hepatitis A vaccine"
  * forecastStatus = http://terminology.hl7.org/CodeSystem/immunization-recommendation-status#due "Due"