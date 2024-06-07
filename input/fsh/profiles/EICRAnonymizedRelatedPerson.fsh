Profile: EICRAnonymizedRelatedPerson
Parent: RelatedPerson
Id: eicr-anon-relatedperson
Title: "eICR Anonymized RelatedPerson"
Description: "This RelatedPerson profile represents an anonymized eCR RelatedPerson.

It is based on the **RelatedPerson** resource with further constraints to require masking of some data elements."

* ^version = "1.0.0"
* insert rsProfileMeta

* identifier.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* identifier.extension[dataAbsentReason] ^short = "A value for identifier.system is not allowed, must use data-absent-reason with value 'masked'"
* identifier.extension[dataAbsentReason].value[x] = #masked (exactly)
* identifier obeys eicr-anon-rp-iden

* patient only Reference(EICRAnonymizedPatient)
* patient ^short = "The patient of this anonymized Past or Present Job is the anonymized Patient"
* patient ^definition = "The patient of this anonymized Past or Present Job is the anonymized Patient"

* name.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* name.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* name.extension[dataAbsentReason].value[x] = #masked (exactly)
* name obeys eicr-anon-rp-name

* telecom.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* telecom.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* telecom.extension[dataAbsentReason].value[x] = #masked (exactly)
* telecom obeys eicr-anon-rp-tel

* address.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* address.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* address.extension[dataAbsentReason].value[x] = #masked (exactly)
* address obeys eicr-anon-rp-ad

Invariant: eicr-anon-rp-iden
Description: "RelatedPerson.identifier.system SHALL NOT be present AND Patient.identifier.value SHALL NOT be present"
* severity = #error
* expression = "system.empty() and value.empty()"
* xpath = "not(f:system) and not(f:value)"

Invariant: eicr-anon-rp-name
Description: "RelatedPerson.name fields SHALL NOT be present"
* severity = #error
* expression = "use.empty() and text.empty() and given.empty() and prefix.empty() and suffix.empty() and period.empty()"
* xpath = "not(f:use) and not(f:text) and not(f:given) and not(f:prefix) and not(f:suffix) and not(f:period)"

Invariant: eicr-anon-rp-tel
Description: "RelatedPerson.telecom fields SHALL NOT be present"
* severity = #error
* expression = "system.empty() and value.empty() and use.empty() and rank.empty() and period.empty()"
* xpath = "not(f:system) and not(f:value) and not(f:use) and not(f:rank)"

Invariant: eicr-anon-rp-ad
Description: "RelatedPerson.address fields SHALL NOT be present"
* severity = #error
* expression = "use.empty() and text.empty() and line.empty() and city.empty() and district.empty() and state.empty() and postalCode.empty() and country.empty() and period.empty()"
* xpath = "not(f:text) and not(f:line) and not(f:city) and not(f:district) and not(f:state) and not(f:postalCode) and not(f:country)"