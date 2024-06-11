Profile: EICRAnonymizedOrgTele
Parent: USPublicHealthOrganization
Id: eicr-anon-org-telecom
Title: "eICR Anonymized Organization - Telecom"
Description: "This Organization profile represents an anonymized eCR Organization - Telecom.

It is based on the **US Public Health Organization** profile with further constraints to require masking of telecom."

* ^version = "1.0.0"
* insert rsProfileMeta

* telecom.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* telecom.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* telecom.extension[dataAbsentReason].value[x] = #masked (exactly)
* telecom obeys eicr-anon-org-tel

Invariant: eicr-anon-org-tel
Description: "Organization.telecom fields SHALL NOT be present"
* severity = #error
* expression = "system.empty() and value.empty() and use.empty() and rank.empty() and period.empty()"