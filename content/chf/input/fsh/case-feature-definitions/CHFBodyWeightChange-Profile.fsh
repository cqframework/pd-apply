Profile: CHFBodyWeightChange
Parent: Observation
Id: chf-bodyweight-change
Title: "CHF Body Weight Change"
Description: "CHF Body Weight Change (in kg) Profile"
* insert CaseFeatureMetadata
* ^extension[cpg-inferenceExpression].valueExpression.language = #text/cql-identifier
* ^extension[cpg-inferenceExpression].valueExpression.expression = "Current Body Weight Change"
* ^extension[cpg-inferenceExpression].valueExpression.reference = "http://hl7.org/fhir/uv/cpg/Library/CHF"
* ^extension[cpg-assertionExpression].valueExpression.language = #text/cql-identifier
* ^extension[cpg-assertionExpression].valueExpression.expression = "Body Weight Change Assertion"
* ^extension[cpg-assertionExpression].valueExpression.reference = "http://hl7.org/fhir/uv/cpg/Library/CHF"
* ^extension[cpg-featureExpression].valueExpression.language = #text/cql-identifier
* ^extension[cpg-featureExpression].valueExpression.expression = "Body Weight Change"
* ^extension[cpg-featureExpression].valueExpression.reference = "http://hl7.org/fhir/uv/cpg/Library/CHF"
* . 0..*
* . ^short = "CHF Body Weight Profile"
* . ^definition = "This profile defines how to represent body weight change observations in FHIR using a CHF code and UCUM units of measure."
* code ^short = "Body Weight Change"
* code ^definition = "Body Weight Change."
* code.coding ^slicing.discriminator[0].type = #value
* code.coding ^slicing.discriminator[=].path = "code"
* code.coding ^slicing.discriminator[+].type = #value
* code.coding ^slicing.discriminator[=].path = "system"
* code.coding ^slicing.ordered = false
* code.coding ^slicing.rules = #open
* code.coding contains BodyWeightCode 1..1
* code.coding[BodyWeightCode].system 1..1
* code.coding[BodyWeightCode].system only uri
* code.coding[BodyWeightCode].system = "http://hl7.org/fhir/uv/cpg/CodeSystem/chf-codes" (exactly)
* code.coding[BodyWeightCode].code 1..1
* code.coding[BodyWeightCode].code only code
* code.coding[BodyWeightCode].code = #body-weight-change (exactly)
* valueQuantity.value 1..1 MS
* valueQuantity.value only decimal
* valueQuantity.unit 1..1 MS
* valueQuantity.unit only string
* valueQuantity.system 1..1 MS
* valueQuantity.system only uri
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..1
* valueQuantity.code only code
* valueQuantity.code = #kg/d (exactly)
* valueQuantity.code ^short = "kg/d"
* valueQuantity.code ^definition = "Kilograms per day"