Profile: EICRAnonymizedOrganization
Parent: USPublicHealthOrganization
Id: eicr-anon-organization
Title: "eICR Anonymized Organization"
Description: "This Organization profile represents an anonymized eCR Organization.

It is based on the **US Public Health Organization** profile with further constraints to require masking of:
 * telecom
 * address"

* ^version = "1.0.0"
* insert rsProfileMeta

* telecom.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* telecom.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* telecom.extension[dataAbsentReason].value[x] = #masked (exactly)
* telecom obeys eicr-anon-org-tel

* address.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* address.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* address.extension[dataAbsentReason].value[x] = #masked (exactly)
* address obeys eicr-anon-org-ad

Invariant: eicr-anon-org-tel
Description: "Organization.telecom fields SHALL NOT be present"
* severity = #error
* expression = "system.empty() and value.empty() and use.empty() and rank.empty() and period.empty()"
* xpath = "not(f:system) and not(f:value) and not(f:use) and not(f:rank)"

Invariant: eicr-anon-org-ad
Description: "Organization.address fields SHALL NOT be present"
* severity = #error
* expression = "use.empty() and text.empty() and line.empty() and city.empty() and district.empty() and state.empty() and postalCode.empty() and country.empty() and period.empty()"
* xpath = "not(f:text) and not(f:line) and not(f:city) and not(f:district) and not(f:state) and not(f:postalCode) and not(f:country)"