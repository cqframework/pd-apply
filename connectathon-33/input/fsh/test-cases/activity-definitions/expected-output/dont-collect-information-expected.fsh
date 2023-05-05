Instance: DontCollectInformationExpected
InstanceOf: $cpg-questionnairetask
Usage: #example
* status = #draft
* intent = #proposal
* modifierExtension[doNotPerform]
  * url = "http://hl7.org/fhir/StructureDefinition/request-doNotPerform"
  * valueBoolean = true
* instantiatesCanonical = "http://example.com/ActivityDefinition/DontCollectInformationActivity|0.1.0"
* code = $cpg-activity-type#collect-information "Collect information"
* for = Reference(Patient1)
* encounter = Reference(Encounter1)
* requester = Reference(Practitioner1)
* input[questionnaire]
  * type = $cpg-activity-type#collect-information "Collect information"
  * valueCanonical = "http://hl7.org/fhir/uv/cpg/Questionnaire/activity-example-collectinformation"