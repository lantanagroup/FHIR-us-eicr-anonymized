Profile: EICRAnonymizedOrgTeleAddr
Parent: EICRAnonymizedOrgTele
Id: eicr-anon-org-tele-addr
Title: "eICR Anonymized Organization - Telecom, Address"
Description: "This Organization profile represents an anonymized eCR Organization.

It is based on the **EICRAnonymizedOrgTele** profile with further constraints to require masking of address."

* ^version = "1.0.0"
* insert rsProfileMeta

* address.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* address.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* address.extension[dataAbsentReason].value[x] = #masked (exactly)
* address obeys eicr-anon-org-ad

Invariant: eicr-anon-org-ad
Description: "Organization.address fields SHALL NOT be present"
* severity = #error
* expression = "use.empty() and text.empty() and line.empty() and city.empty() and district.empty() and state.empty() and postalCode.empty() and country.empty() and period.empty()"