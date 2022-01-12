Profile: CHFJVP
Parent: Observation
Id: chf-jvp
Title: "CHF Jugular Venous Pressure"
Description: "CHF Jugular Venous Pressure (in cmH2O) Profile"
* insert CaseFeatureMetadata
* . 0..*
* . ^short = "CHF JVP Profile"
* . ^definition = "This profile defines how to represent jugular venous pressure observations in FHIR using a CHF code and UCUM units of measure."
* code ^short = "JVP"
* code ^definition = "Jugular venous pressure, measured in cmH2O."
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains JVPCode 1..1
* code.coding[JVPCode].system 1..1
* code.coding[JVPCode].system only uri
* code.coding[JVPCode].system = "http://hl7.org/fhir/uv/cpg/CodeSystem/chf-codes" (exactly)
* code.coding[JVPCode].code 1..1
* code.coding[JVPCode].code only code
* code.coding[JVPCode].code = #jvp (exactly)
* valueQuantity.value 1..1 MS
* valueQuantity.value only decimal
* valueQuantity.unit 1..1 MS
* valueQuantity.unit only string
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1
* valueQuantity.code only code
* valueQuantity.code = #cm[H2O] (exactly)
* valueQuantity.code ^short = "cmH2O"
* valueQuantity.code ^definition = "Centimeters of H2O"