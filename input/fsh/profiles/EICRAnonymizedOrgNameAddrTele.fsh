Profile: EICRAnonymizedOrgNameAddrTele
Parent: EICRAnonymizedOrgAddrTele
Id: eicr-anon-org-name-addr-tele
Title: "eICR Anonymized Organization - Name, Address, Telecom"
Description: "This Organization profile represents an anonymized eCR Organization.

It is based on the **EICRAnonymizedOrgAddrTele** profile with further constraints to require masking of name."

* ^version = "1.0.0"
* insert rsProfileMeta

* name.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* name.extension[dataAbsentReason] ^short = "A value for name is not allowed, must use data-absent-reason with value 'masked'"
* name.extension[dataAbsentReason].value[x] = #masked (exactly)
* name obeys eicr-anon-org-name

Invariant: eicr-anon-org-name
Description: "Organization.name.value SHALL NOT be present"
* severity = #error
* expression = "value.empty()"