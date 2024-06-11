Profile: EICRAnonymizedDocumentBundle
Parent: EICRDocumentBundle
Id: eicr-anon-document-bundle
Title: "eICR Anonymized Document Bundle"
Description: "This Composition profile represents an anonymized eICR Document Bundle.

It is based on the **eICR Document Bundle** profile with further constraints to require masking the contained eICR Composition.

It also adds invariants (constraints) to check that any required anonymized profiles are present in the Bundle entries."
* ^version = "1.0.0"
* insert rsProfileMeta

* entry 1..
// * entry.resource obeys eicr-anon-sbj
// * entry.resource obeys eicr-anon-pt

* obeys eicr-anon-patient
* obeys eicr-anon-prct
* obeys eicr-anon-prct-rol
* obeys eicr-anon-enc
* obeys eicr-anon-loc
* obeys eicr-anon-rp

* obeys eicr-anon-exposure

// no references can have a display
* entry.resource obeys eicr-anon-display

* entry.resource obeys eicr-anon-org-tele

* entry[slicePublicHealthComposition].resource only EICRAnonymizedComposition
* entry[slicePublicHealthComposition].resource ^short = "References the Anonymized eICR Composition"

Invariant: eicr-anon-org-tele
Description: "All Organization resources must conform to EICRAnonymizedTele"
* severity = #error
* expression = "descendants().reference.resolve().ofType(Organization).exists() implies descendants().reference.resolve().ofType(Organization).conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-org-tele')"

Invariant: eicr-anon-org
Description: "All Organization resources must conform to EICRAnonymizedNameAddrTele (other than custodian and employer)"
* severity = #error
* expression = "descendants().exclude(descendants().select(custodian)).reference.resolve().ofType(Organization).exists() implies descendants().exclude(descendants().select(custodian)).reference.resolve().ofType(Organization).conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-org-name-addr-tele')"

Invariant: eicr-anon-patient
Description: "All Patient resources must conform to EICRAnonymizedPatient profile"
* severity = #error
* expression = "entry.resource.ofType(Patient).empty() or entry.where(resource.ofType(Patient).exists()).fullUrl.resolve().conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-patient')"

Invariant: eicr-anon-prct
Description: "All Practitioner resources must conform to EICRAnonymizedPractitioner"
* severity = #error
* expression = "entry.resource.ofType(Practitioner).empty() or entry.where(resource.ofType(Practitioner).exists()).fullUrl.resolve().conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-practitioner')"

Invariant: eicr-anon-prct-rol
Description: "All PractitionerRole resources must conform to EICRAnonymizedPractitionerRole"
* severity = #error
* expression = "entry.resource.ofType(PractitionerRole).empty() or entry.where(resource.ofType(PractitionerRole).exists()).fullUrl.resolve().conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-practitionerrole')"

Invariant: eicr-anon-enc
Description: "All Encounter resources must conform to EICRAnonymizedEncounter"
* severity = #error
* expression = "entry.resource.ofType(Encounter).empty() or entry.where(resource.ofType(Encounter).exists()).fullUrl.resolve().conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-encounter')"

Invariant: eicr-anon-loc
Description: "All Location resources must conform to EICRAnonymizedLocation"
* severity = #error
* expression = "entry.resource.ofType(Location).empty() or entry.where(resource.ofType(Location).exists()).fullUrl.resolve().conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-location')"

Invariant: eicr-anon-rp
Description: "All RelatedPerson resources must conform to EICRAnonymizedRelatedPerson"
* severity = #error
* expression = "entry.resource.ofType(RelatedPerson).empty() or entry.where(resource.ofType(RelatedPerson).exists()).fullUrl.resolve().conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-relatedperson')"

Invariant: eicr-anon-exposure
Description: "US Public Health Exposure Contact Information is not allowed"
* severity = #error
* expression = "entry.fullUrl.resolve().conformsTo('http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-exposure-contact-information').not()"

// Invariant: eicr-anon-sbj
// Description: "If subject is present it SHALL reference EICRAnonymizedPatient"
// * severity = #error
// * expression = "subject.exists() implies subject.reference.resolve().conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-patient')"

// Invariant: eicr-anon-pt
// Description: "If patient is present it SHALL reference EICRAnonymizedPatient"
// * severity = #error
// * expression = "patient.exists() implies patient.reference.resolve().conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-patient')"

// disallow display
Invariant: eicr-anon-display
Description: "A reference cannot have a display"
* severity = #error
* expression = "children().where(reference.exists()).display.empty()"