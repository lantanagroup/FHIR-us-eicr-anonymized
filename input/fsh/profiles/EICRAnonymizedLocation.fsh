Profile: EICRAnonymizedLocation
Parent: USPublicHealthLocation
Id: eicr-anon-location
Title: "eICR Anonymized Location"
Description: "This Location profile represents an anonymized eCR Location.

It is based on the **US Public Health Location** profile with further constraints to require masking of some data elements."

* ^version = "1.0.0"
* insert rsProfileMeta

* telecom.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* telecom.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* telecom.extension[dataAbsentReason].value[x] = #masked (exactly)
* telecom obeys eicr-anon-loc-tel

* managingOrganization only Reference(EICRAnonymizedOrgAddrTele)

Invariant: eicr-anon-loc-tel
Description: "Location.telecom fields SHALL NOT be present"
* severity = #error
* expression = "system.empty() and value.empty() and use.empty() and rank.empty() and period.empty()"