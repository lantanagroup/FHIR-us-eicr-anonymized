Profile: EICRAnonymizedOrganizationTelecom
Parent: USPublicHealthOrganization
Id: eicr-anon-organization-telecom
Title: "eICR Anonymized Organization - Telecom"
Description: "This Organization profile represents an anonymized eCR Organization - Telecom.

It is based on the **US Public Health Organization** profile with further constraints to require masking of some telecom."

* ^version = "1.0.0"
* insert rsProfileMeta

* telecom.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* telecom.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* telecom.extension[dataAbsentReason].value[x] = #masked (exactly)
* telecom obeys eicr-anon-org-tel
// eicr-anon-org-tel defined in EICAnonymizedOrganization