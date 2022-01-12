Profile: CHFPotassium
Parent: $vitalsigns
Id: chf-potassium
Title: "CHF Potassium"
Description: "CHF Potassium (in meq/L) Profile"
* insert CaseFeatureMetadata
* . 0..*
* . ^short = "CHF Potassium Profile"
* . ^definition = "This profile defines how to represent potassium observations in FHIR using a standard LOINC code and UCUM units of measure."
* code ^short = "Potassium"
* code ^definition = "Potassium (in meq/L)."
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains PotassiumCode 1..1
* code.coding[PotassiumCode].system 1..1
* code.coding[PotassiumCode].system only uri
* code.coding[PotassiumCode].system = "http://loinc.org" (exactly)
* code.coding[PotassiumCode].code 1..1
* code.coding[PotassiumCode].code only code
* code.coding[PotassiumCode].code = #86919-8 (exactly)
* valueQuantity.value 1..1 MS
* valueQuantity.value only decimal
* valueQuantity.unit 1..1 MS
* valueQuantity.unit only string
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1
* valueQuantity.code only code
* valueQuantity.code = #meq/L (exactly)
* valueQuantity.code ^short = "%"
* valueQuantity.code ^definition = "Percent saturation"