Profile: EICRAnonymizedPractitionerRole
Parent: USPublicHealthPractitionerRole
Id: eicr-anon-practitionerrole
Title: "eICR Anonymized PractitionerRole"
Description: "This PractitionerRole profile represents an anonymized eCR PractitionerRole."

* insert rsProfileMeta
* insert rsAddDARConstraints

* practitioner only Reference(EICRAnonymizedPractitioner)

* telecom.value.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* telecom.value.extension[dataAbsentReason] ^short = "A value for telecom.value is not allowed, must use data-absent-reason with value 'masked'"
* telecom.value.extension[dataAbsentReason].value[x] = #masked (exactly)
* telecom obeys eicr-anon-prctrl-tel

Invariant: eicr-anon-prctrl-tel
Description: "A value for PracitionerRole.telecom.value SHALL NOT be present"
* severity = #error
* expression = "value.hasValue().not()"