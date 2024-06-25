Profile: EICRAnonymizedOrganization
Parent: USPublicHealthOrganization
Id: eicr-anon-organization
Title: "eICR Anonymized Organization"
Description: "This Organization profile represents an anonymized eCR Organization."

* ^version = "1.0.0"
* insert rsProfileMeta

* name.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* name.extension[dataAbsentReason] ^short = "A value for name is not allowed, must use data-absent-reason with value 'masked'"
* name.extension[dataAbsentReason].value[x] = #masked (exactly)
* name obeys eicr-anon-org-name

* telecom.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* telecom.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* telecom.extension[dataAbsentReason].value[x] = #masked (exactly)
* telecom obeys eicr-anon-org-tel

* address.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* address.extension[dataAbsentReason] ^short = "A value is not allowed, must use data-absent-reason with value 'masked'"
* address.extension[dataAbsentReason].value[x] = #masked (exactly)
* address obeys eicr-anon-org-ad

Invariant: eicr-anon-org-ad
Description: "Organization.address fields SHALL NOT be present"
* severity = #error
* expression = "use.empty() and text.empty() and line.empty() and city.empty() and district.empty() and state.empty() and postalCode.empty() and country.empty() and period.empty()"

Invariant: eicr-anon-org-tel
Description: "Organization.telecom fields SHALL NOT be present"
* severity = #error
* expression = "system.empty() and value.empty() and use.empty() and rank.empty() and period.empty()"

Invariant: eicr-anon-org-name
Description: "Organization.name.value SHALL NOT be present"
* severity = #error
* expression = "value.empty()"