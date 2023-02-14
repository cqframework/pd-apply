Instance: chf-scenario1-daily-management-expected
InstanceOf: RequestGroup
Usage: #example
* instantiatesCanonical = "http://hl7.org/fhir/uv/cpg/PlanDefinition/chf-daily-management"
* status = #draft
* intent = #plan
* subject = Reference(Patient/chf-scenario1)
* encounter = Reference(Encounter/chf-scenario1)
* action[+]
  * title = "Weight"
  * description = "Measure weight daily"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
  * action[+]
    * id = "weight"
    * title = "Weight"
    * description = "Measure weight daily"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
    * timingTiming
      * repeat
        * frequency = 1
        * period = 1
        * periodUnit = #d
  * action[+]
    * title = "Report Weight"
    * description = "Report weight metric daily"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
    * relatedAction
      * actionId = "weight"
      * relationship = #after-end
* action[+]
  * title = "Weight Change"
  * description = "Manage weight change"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
  * action[+]
    * id = "weight-change"
    * title = "Weight change"
    * description = "Measure weight change daily"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
    * timingTiming
      * repeat
        * frequency = 1
        * period = 1
        * periodUnit = #d
    * action[+]
      * title = "Report Weight Change"
      * description = "Report weight change metric daily"
      * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
      * relatedAction
        * actionId = "weight-change"
        * relationship = #after-end
* action[+]
  * title = "Urine Output"
  * description = "Measure urine output daily"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
  * action[+]
    * id = "urine-out"
    * title = "Urine Out"
    * description = "Measure urine output daily"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
    * timingTiming
      * repeat
        * frequency = 1
        * period = 1
        * periodUnit = #d
  * action[+]
    * title = "Report Urine Out"
    * description = "Report urine output metric daily"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
    * relatedAction
      * actionId = "urine-out"
      * relationship = #after-end
* action[+]
  * title = "Net I/Os"
  * description = "Measure net intake/output daily"
  * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
  * action[+]
    * id = "net-io"
    * title = "Net IOs"
    * description = "Measure net intake/output daily"
    * code = http://hl7.org/fhir/uv/cpg/CodeSystem/cpg-common-process#diagnostic-testing
    * timingTiming
      * repeat
        * frequency = 1
        * period = 1
        * periodUnit = #d