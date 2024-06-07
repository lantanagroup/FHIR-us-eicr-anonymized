Profile: EICRAnonymizedPractitioner
Parent: USCorePractitionerProfile
Id: eicr-anon-practitioner
Title: "eICR Anonymized Practitioner"
Description: "This Practitioner profile represents an anonymized eCR Practitioner.

It is based on the **US Core Practitioner** profile with further constraints to require masking of some data elements."

* ^version = "1.0.0"
* insert rsProfileMeta

* name.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* name.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* name.extension[dataAbsentReason].value[x] = #masked (exactly)
* name obeys eicr-anon-prct-name

* name.family.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* name.family.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* name.family.extension[dataAbsentReason].value[x] = #masked (exactly)
* name.family obeys eicr-anon-prct-fam

* telecom.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* telecom.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* telecom.extension[dataAbsentReason].value[x] = #masked (exactly)
* telecom obeys eicr-anon-prct-tel

* address.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* address.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* address.extension[dataAbsentReason].value[x] = #masked (exactly)
* address obeys eicr-anon-prct-ad

Invariant: eicr-anon-prct-name
Description: "Practitioner.name fields SHALL NOT be present"
* severity = #error
* expression = "use.empty() and text.empty() and given.empty() and prefix.empty() and suffix.empty() and period.empty()"
* xpath = "not(f:use) and not(f:text) and not(f:given) and not(f:prefix) and not(f:suffix) and not(f:period)"

Invariant: eicr-anon-prct-fam
Description: "Practitioner.name.family.value SHALL NOT be present"
* severity = #error
* expression = "value.empty()"
* xpath = "not(@value)"

Invariant: eicr-anon-prct-tel
Description: "Practitioner.telecom fields SHALL NOT be present"
* severity = #error
* expression = "system.empty() and value.empty() and use.empty() and rank.empty() and period.empty()"
* xpath = "not(f:system) and not(f:value) and not(f:use) and not(f:rank)"

Invariant: eicr-anon-prct-ad
Description: "Practitioner.address fields SHALL NOT be present"
* severity = #error
* expression = "use.empty() and text.empty() and line.empty() and city.empty() and district.empty() and state.empty() and postalCode.empty() and country.empty() and period.empty()"
* xpath = "not(f:text) and not(f:line) and not(f:city) and not(f:district) and not(f:state) and not(f:postalCode) and not(f:country)"