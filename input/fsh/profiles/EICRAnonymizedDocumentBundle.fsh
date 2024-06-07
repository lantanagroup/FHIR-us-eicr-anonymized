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
* entry.resource obeys eicr-anon-sbj
* entry.resource obeys eicr-anon-pt
* entry.resource obeys eicr-anon-sbj-disp
* entry.resource obeys eicr-anon-pt-disp

* entry[slicePublicHealthComposition].resource only EICRAnonymizedComposition
* entry[slicePublicHealthComposition].resource ^short = "References the Anonymized eICR Composition"

Invariant: eicr-anon-patient
Description: "All Patients must conform to EICRAnonymizedPatient profile"
* severity = #error
* expression = "ofType(Patient).resolve().conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-patient')"

Invariant: eicr-anon-sbj
Description: "If subject is present it SHALL reference EICRAnonymizedPatient"
* severity = #error
* expression = "subject.exists() implies subject.reference.resolve().conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-patient')"

Invariant: eicr-anon-pt
Description: "If patient is present it SHALL reference EICRAnonymizedPatient"
* severity = #error
* expression = "patient.exists() implies patient.reference.resolve().conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-patient')"

Invariant: eicr-anon-prct
Description: "If practitioner is present it SHALL reference EICRAnonymizedPractitioner"
* severity = #error
* expression = "practitioner.exists() implies practitioner.reference.resolve().conformsTo('http://fhir.org/fhir/us/anonymized-eicr/StructureDefinition/eicr-anon-practitioner')"

// disallow display
Invariant: eicr-anon-sbj-disp
Description: "If subject is present it SHALL NOT have a display"
* severity = #error
* expression = "subject.exists() implies subject.display.empty()"

Invariant: eicr-anon-pt-disp
Description: "If patient is present it SHALL NOT have a display"
* severity = #error
* expression = "patient.exists() implies patient.display.empty()"

Invariant: eicr-anon-prct-disp
Description: "If practitioner is present it SHALL NOT have a display"
* severity = #error
* expression = "practitioner.exists() implies practitioner.display.empty()"

Invariant: eicr-anon-aut-disp
Description: "If author is present it SHALL NOT have a display"
* severity = #error
* expression = "author.exists() implies author.display.empty()"

Invariant: eicr-anon-cust-disp
Description: "If custodian is present it SHALL NOT have a display"
* severity = #error
* expression = "custodian.exists() implies custodian.display.empty()"

Invariant: eicr-anon-enc-disp
Description: "If encounter is present it SHALL NOT have a display"
* severity = #error
* expression = "encounter.exists() implies encounter.display.empty()"

Invariant: eicr-anon-att-disp
Description: "If attester is present it SHALL NOT have a display"
* severity = #error
* expression = "attester.exists() implies attester.display.empty()"

Invariant: eicr-anon-ent-disp
Description: "If entry is present it SHALL NOT have a display"
* severity = #error
* expression = "entry.exists() implies entry.display.empty()"

//Bundle.entry.descendants().reference.distinct().all($this in %context.entry.fullUrl.select($this.toString().substring('http://example.org/fhir/'.length())))
