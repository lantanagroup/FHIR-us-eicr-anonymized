Profile: EICRAnonymizedPatient
Parent: USPublicHealthPatient
Id: eicr-anon-patient
Title: "eICR Anonymized Patient"
Description: "This Patient profile represents an anonymized eICR Patient.

It is based on the **US Public Health Patient** profile with further constraints to require masking of some data elements."

* ^version = "1.0.0"
* insert rsProfileMeta

// need the data absent reason set out here because it is only on id in the base profile
* identifier.system.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* identifier.system.extension[dataAbsentReason] ^short = "A value for identifier.system is not allowed, must use data-absent-reason with value 'masked'"
* identifier.system.extension[dataAbsentReason].value[x] = #masked (exactly)
* identifier.value.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* identifier.value.extension[dataAbsentReason] ^short = "A value for identifier.value is not allowed, must use data-absent-reason with value 'masked'"
* identifier.value.extension[dataAbsentReason].value[x] = #masked (exactly)
* identifier obeys eicr-anon-pt-iden

* name.extension[dataAbsentReason] 1..
* name.extension[dataAbsentReason] ^short = "A value for name is not allowed, must use data-absent-reason with value 'masked'"
* name obeys eicr-anon-pt-name

// need the data absent reason set out here because it is only on id in the base profile
// * telecom.value.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
// * telecom.value.extension[dataAbsentReason] ^short = "A value for telecom.value is not allowed, must use data-absent-reason with value 'masked'"
// * telecom.value.extension[dataAbsentReason].value[x] = #masked (exactly)
// * telecom obeys eicr-anon-pt-tel

* birthDate.extension[dataAbsentReason] 1..
* birthDate.extension[dataAbsentReason] ^short = "A value for birthDate is not allowed, must use data-absent-reason with value 'masked'"
* birthDate obeys eicr-anon-pt-bd

// need the data absent reason set out here because it is only on address in the base profile
* address.line.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* address.line.extension[dataAbsentReason] ^short = "A value for address.line is not allowed, must use data-absent-reason with value 'masked'"
* address.line.extension[dataAbsentReason].value[x] = #masked (exactly)
* address obeys eicr-anon-pt-addr

* contact.name.extension[dataAbsentReason] 1..
* contact.name.extension[dataAbsentReason] ^short = "A value for name is not allowed, must use data-absent-reason with value 'masked'"
* contact.name obeys eicr-anon-pt-ct-name

* contact.telecom.extension[dataAbsentReason] 1..
* contact.telecom.extension[dataAbsentReason] ^short = "A value for contact.telecom is not allowed, must use data-absent-reason with value 'masked'"
* contact.telecom obeys eicr-anon-pt-ct-tel

* contact.address.extension[dataAbsentReason] 1..
* contact.address.extension[dataAbsentReason] ^short = "A value for contact.address is not allowed, must use data-absent-reason with value 'masked'"
* contact.address obeys eicr-anon-pt-ct-addr

Invariant: eicr-anon-pt-iden
Description: "Patient.identifier.system.value SHALL NOT be present AND Patient.identifier.value.value SHALL NOT be present"
* severity = #error
* expression = "system.value.empty() and value.value.empty()"
* xpath = "not(f:system/@value) and not(f:value/@value)"

Invariant: eicr-anon-pt-name
Description: "Patient.name fields SHALL NOT be present"
* severity = #error
* expression = "use.empty() and text.empty() and family.empty() and given.empty() and prefix.empty() and suffix.empty() and period.empty()"
* xpath = "not(f:use) and not(f:text) and not(f:family) and not(f:given) and not(f:prefix) and not(f:suffix) and not(f:period)"

// Invariant: eicr-anon-pt-tel
// Description: "Patient.telecom.value.value SHALL NOT be present"
// * severity = #error
// * expression = "value.value.empty()"
// * xpath = "not(f:value/@value)"

Invariant: eicr-anon-pt-bd
Description: "Patient.birthDate.value SHALL NOT be present"
* severity = #error
* expression = "value.empty()"

Invariant: eicr-anon-pt-addr
Description: "Patient.address.line.value SHALL NOT be present"
* severity = #error
* expression = "line.value.empty()"

Invariant: eicr-anon-pt-ct-name
Description: "Patient.contact.name fields SHALL NOT be present"
* severity = #error
* expression = "use.empty() and text.empty() and family.empty() and given.empty() and prefix.empty() and suffix.empty() and period.empty()"

Invariant: eicr-anon-pt-ct-tel
Description: "Patient.contact.telecom fields SHALL NOT be present"
* severity = #error
* expression = "system.empty() and value.empty() and use.empty() and rank.empty() and period.empty()"

Invariant: eicr-anon-pt-ct-addr
Description: "Patient.contact.address fields SHALL NOT be present"
* severity = #error
* expression = "use.empty() and text.empty() and line.empty() and city.empty() and district.empty() and state.empty() and postalCode.empty() and country.empty() and period.empty()"