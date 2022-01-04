Instance: CHF
InstanceOf: Library
Usage: #definition
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-computablelibrary"
* meta.profile[+] = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-executablelibrary"
* insert SetMetadata(CHF, Library)
* title = "Congestive Heart Failure Logic"
* type = $library-type#logic-library
* contact.telecom.system = #url
* contact.telecom.value = "http://hl7.org/Special/committees/dss"
* description = "Logic for an example congestive heart failure pathway"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].resource = "http://hl7.org/fhir/Library/FHIR-ModelInfo|4.0.1"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].resource = "http://hl7.org/fhir/Library/FHIRHelpers|4.0.1"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].resource = "http://snomed.info/sct"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].resource = "http://loinc.org"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].resource = "http://hl7.org/fhir/uv/cpg/CodeSystem/chf-codes"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].resource = "http://terminology.hl7.org/CodeSystem/condition-clinical"
* relatedArtifact[+].type = #depends-on
* relatedArtifact[=].resource = "http://terminology.hl7.org/CodeSystem/condition-ver-status"
* content.id = "ig-loader-CHF.cql"
