Profile: CHFLASIXIVRequest
Parent: $cpg-medicationrequest
Id: chf-lasix-iv-request
Title: "CHF LASIX IV Request"
Description: "Request to administer LASIX IV as part of a congestive heart failure pathway"
* ^meta.profile = "http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-casefeaturedefinition"
* ^status = #draft
* ^experimental = true
* ^date = "2019-06-06"
* ^publisher = "Health Level Seven, Inc. - CDS WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/DSS"
* ^jurisdiction = $m49.htm#001 "World"
* . ^mustSupport = false
* medication[x] MS