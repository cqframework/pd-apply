library ActiveRaTreatmentFeatureLogic version '0.2.0'

using FHIR version '4.0.1'

include FHIRHelpers version '0.2.0'

codesystem "CaseFeatureCodes": 'http://example.org/CodeSystem/CaseFeatureCodes'
code "On RA Treatment Feature": 'on-ra-treatment' from "CaseFeatureCodes"

codesystem "RxNorm": 'http://www.nlm.nih.gov/research/umls/rxnorm'
code "RA Treatment":
  '376645' from "RxNorm" display 'Sulfasalazine Delayed Release Oral Tablet'

context Patient

define "Active RA Treatment Orders":
  [MedicationRequest: "RA Treatment"] RaTreatment
    where RaTreatment.status in { 'active' }

/**
 * @description
 * Inference if the patient is taking drug with a RA Treatment code
 */
define "On RA Treatment Inferred":
  if exists("Active RA Treatment Orders") then
    Observation {
      meta: Meta {
        profile: {
          canonical { value: 'http://example.org/StructureDefinition/ActiveRA TreatmentFeature' }
        }
      },
      extension: {
        Extension {
          url: url { value: 'http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-instantiatesCaseFeature' },
          value: canonical { value: 'http://example.org/StructureDefinition/ActiveRA TreatmentFeature' }
        },
        Extension {
          url: url { value: 'http://hl7.org/fhir/uv/cpg/StructureDefinition/cpg-caseFeatureType' },
          value: code { value: 'inferred' }
        }
      },
      status: ObservationStatus { value: 'final' },
      effective: dateTime { value: Now() },
      code: CodeableConcept {
        coding: {
          Coding {
            system: uri { value: 'http://example.org/CodeSystem/CaseFeatureCodes' },
            code: code { value: 'on-medication-RA Treatment' }
          }
        }
      },
      value: boolean { value: true }
    }
  else null

define function MostRecent(observationList List<FHIR.Observation>):
  First(
    observationList Observation
    sort by effective.value descending
  )

/**
 * @description
 * Assertion is if there is a case feature directly documented
 */
define "On RA Treatment Asserted":
  MostRecent([Observation: "On RA Treatment Feature"])

/**
 * @description
 * Feature is asserted followed by inferred
 */
define "On RA Treatment":
  Coalesce(
    "On RA Treatment Asserted",
    "On RA Treatment Inferred"
  )