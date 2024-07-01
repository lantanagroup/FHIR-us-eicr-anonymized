Profile: EICRAnonymizedDocumentBundle
Parent: EICRDocumentBundle
Id: eicr-anon-document-bundle
Title: "eICR Anonymized Document Bundle"
Description: "This Composition profile represents an anonymized eICR Document Bundle."

* ^version = "1.0.0"
* insert rsProfileMeta

* entry 1..

// * obeys eicr-anon-patient
// * obeys eicr-anon-prct
// * obeys eicr-anon-prct-rol
// * obeys eicr-anon-enc
// * obeys eicr-anon-rp

// * obeys eicr-anon-exposure

* entry obeys eicr-anon-text-div

* entry obeys eicr-anon-patient
* entry obeys eicr-anon-prct
* entry obeys eicr-anon-prct-rol
* entry obeys eicr-anon-enc
* entry obeys eicr-anon-rp
* entry obeys eicr-anon-exposure

// no references can have a display
* entry.resource obeys eicr-anon-display

* entry[slicePublicHealthComposition].resource only EICRAnonymizedComposition
* entry[slicePublicHealthComposition].resource ^short = "References the Anonymized eICR Composition"

Invariant: eicr-anon-patient
Description: "All Patient resources must conform to EICRAnonymizedPatient profile"
* severity = #error
* expression = "resource.ofType(Patient).empty() or resource.ofType(Patient).conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-patient')"

Invariant: eicr-anon-prct
Description: "All Practitioner resources must conform to EICRAnonymizedPractitioner"
* severity = #error
* expression = "resource.ofType(Practitioner).empty() or resource.ofType(Practitioner).conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-practitioner')"

Invariant: eicr-anon-prct-rol
Description: "All PractitionerRole resources must conform to EICRAnonymizedPractitionerRole"
* severity = #error
* expression = "resource.ofType(PractitionerRole).empty() or resource.ofType(PractitionerRole).conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-practitionerrole')"

Invariant: eicr-anon-enc
Description: "All Encounter resources must conform to EICRAnonymizedEncounter"
* severity = #error
* expression = "resource.ofType(Encounter).empty() or resource.ofType(Encounter).conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-encounter')"

Invariant: eicr-anon-rp
Description: "All RelatedPerson resources must conform to EICRAnonymizedRelatedPerson"
* severity = #error
* expression = "resource.ofType(RelatedPerson).empty() or resource.ofType(RelatedPerson).conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-relatedperson')"

Invariant: eicr-anon-exposure
Description: "US Public Health Exposure Contact Information is not allowed"
* severity = #error
* expression = "resource.conformsTo('http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-exposure-contact-information').not()"

// disallow display
Invariant: eicr-anon-display
Description: "A reference cannot have a display"
* severity = #error
* expression = "children().where(reference.exists()).display.empty()"

// disallow all text.div other than "MASKED"
Invariant: eicr-anon-text-div
Description: """text.div SHALL be '<div xmlns="http://www.w3.org/1999/xhtml"><p>MASKED</p></div>'"""
* severity = #error
// * expression = "resource.text.exists() implies resource.text.`div` ~ '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>MASKED</p></div>'"
* expression = """resource.text.exists() implies resource.text.`div`.toString().matches('<div xmlns="http://www.w3.org/1999/xhtml">\\s*<p>MASKED</p>\\s*</div>')"""