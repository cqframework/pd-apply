Profile: CHFNetIO
Parent: Observation
Id: chf-net-io
Title: "CHF Net Intake/Output"
Description: "CHF Net Intake/Output (in L/day) Profile"
* insert CaseFeatureMetadata
* . 0..*
* . ^short = "CHF Net Intake/Output Profile"
* . ^definition = "This profile defines how to represent net intake/output observations in FHIR using a CHF code and UCUM units of measure."
* code ^short = "Intake/output"
* code ^definition = "Intake/output over 24 hours, measured in L/day."
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains NetIOCode 1..1
* code.coding[NetIOCode].system 1..1
* code.coding[NetIOCode].system only uri
* code.coding[NetIOCode].system = "http://hl7.org/fhir/uv/cpg/CodeSystem/chf-codes" (exactly)
* code.coding[NetIOCode].code 1..1
* code.coding[NetIOCode].code only code
* code.coding[NetIOCode].code = #net-intake-output (exactly)
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