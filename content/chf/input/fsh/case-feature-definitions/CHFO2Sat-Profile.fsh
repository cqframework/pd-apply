Profile: CHFO2Sat
Parent: $vitalsigns
Id: chf-o2-sat
Title: "CHF Oxygen Saturation"
Description: "CHF Oxygen Saturation (%) Profile"
* insert CaseFeatureMetadata
* . 0..*
* . ^short = "CHF O2 Sat Profile"
* . ^definition = "This profile defines how to represent oxygen saturation observations in FHIR using a standard LOINC code and UCUM units of measure."
* code ^short = "O2 Sat"
* code ^definition = "Oxygen Saturation."
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains O2SatCode 1..1
* code.coding[O2SatCode].system 1..1
* code.coding[O2SatCode].system only uri
* code.coding[O2SatCode].system = "http://loinc.org" (exactly)
* code.coding[O2SatCode].code 1..1
* code.coding[O2SatCode].code only code
* code.coding[O2SatCode].code = #2708-6 (exactly)
* valueQuantity.value 1..1 MS
* valueQuantity.value only decimal
* valueQuantity.unit 1..1 MS
* valueQuantity.unit only string
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1
* valueQuantity.code only code
* valueQuantity.code = #% (exactly)
* valueQuantity.code ^short = "%"
* valueQuantity.code ^definition = "Percent saturation"