Instance: DontCollectInformationExpected
InstanceOf: Task
Usage: #example
* meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-questionnairetask"
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
* input
  * type = $cpg-activity-type#collect-information "Collect information"
  * valueCanonical = "http://hl7.org/fhir/uv/cpg/Questionnaire/activity-example-collectinformation"