CodeSystem: CHFCodes
Id: chf-codes
Title: "CHF Codes"
Description: "Codes used in the congestive heart failure pathway. Ideally these shouldn't exist, but where I couldn't find an appropriate code in a standard terminology, I defined codes here."
* ^meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-publishablecodesystem"
* ^extension[0].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
* ^extension[=].valueCode = #shareable
* ^extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
* ^extension[=].valueCode = #computable
* ^extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeCapability"
* ^extension[=].valueCode = #publishable
* ^extension[+].url = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-knowledgeRepresentationLevel"
* ^extension[=].valueCode = #structured
* ^version = "1.0.0"
* ^status = #draft
* ^experimental = true
* ^date = "2019-05-08"
* ^publisher = "Health Level 7 International - Clinical Decision Support WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.hl7.org/Special/committees/dss/index.cfm"
* ^jurisdiction = $m49.htm#001 "World"
* ^caseSensitive = true
* ^content = #complete
* #body-weight-change "Body weight change" "The change in body weight between two body weight measurements, in kg. Typically captured daily."
* #net-intake-output "Net intake/output" "The net intake and output, in Liters per day. Typically captured daily."
* #measure-jvp "Measure jugular venous pressure" "Measure jugular venous pressure in cmH2O"
* #jvp "Jugular venous pressure" "Jugular venous pressure in cmH2O. May be loinc#8595-1?"
* #egfr "eGFR result" "eGFR result in mol/mm/m2. Too many codes to choose from, needs clinical/terminological SME input"
* #measure-egfr "Measure eGFR" "Measure eGFR, could not identify SNOMED code for this"
* #lasix-iv "LASIX IV" "LASIX IV"
* #lasix-po "LASIX PO" "LASIX PO"
* #cardiology-consultation "Cardiology Consultation" "Cardiology consultation"
