Profile: EICRAnonymizedPractitionerRole
Parent: USPublicHealthPractitionerRole
Id: eicr-anon-practitionerrole
Title: "eICR Anonymized PractitionerRole"
Description: "This PractitionerRole profile represents an anonymized eCR PractitionerRole.

It is based on the **US Public Health PractitionerRole** profile with further constraints to require masking of some data elements."

* ^version = "1.0.0"
* insert rsProfileMeta

* practitioner only Reference(EICRAnonymizedPractitioner)
* organization only Reference(EICRAnonymizedOrganization)
* location only Reference(EICRAnonymizedLocation)

// * telecom.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
// * telecom.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
// * telecom.extension[dataAbsentReason].value[x] = #masked (exactly)
// * telecom obeys eicr-anon-prctrl-tel

* telecom.value.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* telecom.value.extension[dataAbsentReason] ^short = "A value for telecom.value is not allowed, must use data-absent-reason with value 'masked'"
* telecom.value.extension[dataAbsentReason].value[x] = #masked (exactly)
* telecom obeys eicr-anon-prctrl-tel

// Invariant: eicr-anon-prctrl-tel
// Description: "PractitionerRole.telecom fields SHALL NOT be present"
// * severity = #error
// * expression = "system.empty() and value.empty() and use.empty() and rank.empty() and period.empty()"
// * xpath = "not(f:system) and not(f:value) and not(f:use) and not(f:rank)"

Invariant: eicr-anon-prctrl-tel
Description: "PracitionerRole.telecom.value.value SHALL NOT be present"
* severity = #error
* expression = "value.value.empty()"
* xpath = "not(f:value/@value)"