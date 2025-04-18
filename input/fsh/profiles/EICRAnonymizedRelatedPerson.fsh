Profile: EICRAnonymizedRelatedPerson
Parent: RelatedPerson
Id: eicr-anon-relatedperson
Title: "eICR Anonymized RelatedPerson"
Description: "This RelatedPerson profile represents an anonymized eCR RelatedPerson."

* insert rsProfileMeta
* insert rsAddDARConstraints

* identifier.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* identifier.extension[dataAbsentReason] ^short = "RelatedPerson.identifier is not allowed, must use data-absent-reason with value 'masked'"
* identifier.extension[dataAbsentReason].value[x] = #masked (exactly)
* identifier obeys eicr-anon-rp-iden

* patient only Reference(EICRAnonymizedPatient)
* patient ^short = "The patient of this anonymized Past or Present Job is the anonymized Patient"
* patient ^definition = "The patient of this anonymized Past or Present Job is the anonymized Patient"

* name.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* name.extension[dataAbsentReason] ^short = "RelatedPerson.name is not allowed, must use data-absent-reason with value 'masked'"
* name.extension[dataAbsentReason].value[x] = #masked (exactly)
* name obeys eicr-anon-rp-name

* telecom.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* telecom.extension[dataAbsentReason] ^short = "RelatedPerson.telecom is not allowed, must use data-absent-reason with value 'masked'"
* telecom.extension[dataAbsentReason].value[x] = #masked (exactly)
* telecom obeys eicr-anon-rp-tel

* birthDate.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* birthDate.extension[dataAbsentReason] ^short = "RelatedPerson.birthDate is not allowed, must use data-absent-reason with value 'masked'"
* birthDate.extension[dataAbsentReason].value[x] = #masked (exactly)
* birthDate obeys eicr-anon-rp-bd

* address.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* address.extension[dataAbsentReason] ^short = "ReleatedPerson.address is not allowed, must use data-absent-reason with value 'masked'"
* address.extension[dataAbsentReason].value[x] = #masked (exactly)
* address obeys eicr-anon-rp-ad

Invariant: eicr-anon-rp-iden
Description: "Values for RelatedPerson.identifier.system and RelatedPerson.identifier.value SHALL NOT be present"
* severity = #error
* expression = "system.hasValue().not() and value.hasValue().not()"

Invariant: eicr-anon-rp-name
Description: "RelatedPerson.name fields SHALL NOT be present"
* severity = #error
* expression = "use.empty() and text.empty() and given.empty() and prefix.empty() and suffix.empty() and period.empty()"

Invariant: eicr-anon-rp-tel
Description: "RelatedPerson.telecom fields SHALL NOT be present"
* severity = #error
* expression = "system.empty() and value.empty() and use.empty() and rank.empty() and period.empty()"

Invariant: eicr-anon-rp-bd
Description: "A value for Patient.birthDate SHALL NOT be present"
* severity = #error
* expression = "hasValue().not()"

Invariant: eicr-anon-rp-ad
Description: "RelatedPerson.address fields SHALL NOT be present"
* severity = #error
* expression = "use.empty() and text.empty() and line.empty() and city.empty() and district.empty() and state.empty() and postalCode.empty() and country.empty() and period.empty()"