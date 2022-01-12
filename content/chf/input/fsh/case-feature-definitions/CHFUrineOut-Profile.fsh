Profile: CHFUrineOut
Parent: Observation
Id: chf-urine-out
Title: "CHF Urine Out"
Description: "CHF Urine Output (in L/day) Profile"
* insert CaseFeatureMetadata
* . 0..*
* . ^short = "CHF Urine Output Profile"
* . ^definition = "This profile defines how to represent urine output observations in FHIR using a LOINC code and UCUM units of measure."
* code ^short = "Urine output"
* code ^definition = "Urine output over 24 hours, measured in L/day."
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains UrineOutputCode 1..1
* code.coding[UrineOutputCode].system 1..1
* code.coding[UrineOutputCode].system only uri
* code.coding[UrineOutputCode].system = "http://loinc.org" (exactly)
* code.coding[UrineOutputCode].code 1..1
* code.coding[UrineOutputCode].code only code
* code.coding[UrineOutputCode].code = #9192-6 (exactly)
* valueQuantity.value 1..1 MS
* valueQuantity.value only decimal
* valueQuantity.unit 1..1 MS
* valueQuantity.unit only string
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1
* valueQuantity.code only code
* valueQuantity.code = #L/d (exactly)
* valueQuantity.code ^short = "L/d"
* valueQuantity.code ^definition = "Liters per day"