Instance: ExamplePatient
InstanceOf: Patient
Usage: #inline
* name.given = "Smith"

Instance: chf-bundle
InstanceOf: Bundle
* type = #collection
* entry[+].resource = ExamplePatient

// Pathway Def
* entry[+].resource = chf-pathway

// Strategy Defs
* entry[+].resource = chf-daily-management
* entry[+].resource = chf-hypervolemia

// Recommendation and Activity Defs
* entry[+].resource = chf-bodyweight-change-recommendationdefinition
* entry[+].resource = chf-bodyweight-change-computableactivity
* entry[+].resource = chf-report-bodyweight-change-computableactivity

* entry[+].resource = chf-bodyweight-recommendationdefinition
* entry[+].resource = chf-bodyweight-computableactivity
* entry[+].resource = chf-report-bodyweight-computableactivity

* entry[+].resource = chf-cardiology-consultation-recommendationdefinition
* entry[+].resource = chf-cardiology-consultation-computableactivity

* entry[+].resource = chf-creatinine-recommendationdefinition
* entry[+].resource = chf-creatinine-computableactivity

* entry[+].resource = chf-egfr-recommendationdefinition
* entry[+].resource = chf-egfr-computableactivity

* entry[+].resource = chf-jvp-recommendationdefinition
* entry[+].resource = chf-jvp-computableactivity

* entry[+].resource = chf-lasix-recommendationdefinition
* entry[+].resource = chf-lasix-iv-computableactivity
* entry[+].resource = chf-lasix-po-computableactivity

* entry[+].resource = chf-net-io-recommendationdefinition
* entry[+].resource = chf-net-io-computableactivity

* entry[+].resource = chf-o2-sat-recommendationdefinition
* entry[+].resource = chf-o2-sat-computableactivity

* entry[+].resource = chf-potassium-recommendationdefinition
* entry[+].resource = chf-potassium-computableactivity

* entry[+].resource = chf-urine-out-recommendationdefinition
* entry[+].resource = chf-report-urine-out-computableactivity
* entry[+].resource = chf-urine-out-computableactivity

* entry[+].resource = chf-lifestyle-modification-recommendationdefinition

// * entry[+].resource = CHF // NOTE: Have to do this manually after Publisher converts to ELM
