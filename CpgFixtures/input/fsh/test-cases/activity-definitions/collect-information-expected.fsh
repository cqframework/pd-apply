Instance: CollectInformationExpected
InstanceOf: Task
Usage: #example
* status = #draft
* intent = #proposal
* instantiatesCanonical = "http://example.com/ActivityDefinition/CollectInformationActivity|0.1.0"
* code = $cpg-activity-type#collect-information "Collect information"
* input
  * type = $cpg-activity-type#collect-information
  * valueCanonical = "http://hl7.org/fhir/uv/cpg/Questionnaire/activity-example-collectinformation"