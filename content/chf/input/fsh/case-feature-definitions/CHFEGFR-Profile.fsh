Profile: CHFEGFR
Parent: Observation
Id: chf-egfr
Title: "CHF eGFR"
Description: "CHF EGFR (in mol/mm/m2) Profile"
* insert CaseFeatureMetadata
* . 0..*
* . ^short = "CHF EGFR Profile"
* . ^definition = "This profile defines how to represent eGFR in FHIR using a CHF code and UCUM units of measure."
* code ^short = "eGFR"
* code ^definition = "eGFR, measured in mol/mm/m2."
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains eGFRCode 1..1
* code.coding[eGFRCode].system 1..1
* code.coding[eGFRCode].system only uri
* code.coding[eGFRCode].system = "http://hl7.org/fhir/uv/cpg/CodeSystem/chf-codes" (exactly)
* code.coding[eGFRCode].code 1..1
* code.coding[eGFRCode].code only code
* code.coding[eGFRCode].code = #egfr (exactly)
* valueQuantity.value 1..1 MS
* valueQuantity.value only decimal
* valueQuantity.unit 1..1 MS
* valueQuantity.unit only string
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1
* valueQuantity.code only code
* valueQuantity.code = #mol/mm/m2 (exactly)
* valueQuantity.code ^short = "mol/mm/m2"
* valueQuantity.code ^definition = "Moles per millimeter per meter squared"