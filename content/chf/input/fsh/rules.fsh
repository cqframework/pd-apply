RuleSet: SetMetadata(id, type)
* id = "{id}"
* name = "{id}"
* url = "http://hl7.org/fhir/uv/cpg-example-chf/{type}/{id}"
* version = "1.0.0"

* status = #draft
* experimental = true
* date = "2022-01-03"
* publisher = "HL7 International - Clinical Decision Support WG"
* jurisdiction = $m49.htm#001 "World"

* extension[cpg-knowledgeCapability][+].valueCode = #sharable
* extension[cpg-knowledgeCapability][+].valueCode = #computable
* extension[cpg-knowledgeCapability][+].valueCode = #publishable
* extension[cpg-knowledgeRepresentationLevel][+].valueCode = #structured
* extension[cpg-enabled][+].valueBoolean = true


RuleSet: CaseFeatureMetadata
* ^meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-casefeaturedefinition"

* ^extension[cpg-caseFeatureOf].valueCanonical = "http://hl7.org/fhir/uv/cpg-example-chf/PlanDefinition/chf-pathway"
* ^extension[cpg-knowledgeCapability][+].valueCode = #sharable
* ^extension[cpg-knowledgeCapability][+].valueCode = #computable
* ^extension[cpg-knowledgeCapability][+].valueCode = #publishable
* ^extension[cpg-knowledgeRepresentationLevel][+].valueCode = #structured

* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true
* ^date = "2022-01-03"
* ^publisher = "HL7 International - Clinical Decision Support WG"
* ^jurisdiction = $m49.htm#001 "World"