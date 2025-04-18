Profile: EICRAnonymizedImmunization
Parent: USCoreImmunizationProfile
Id: eicr-anon-immunization
Title: "eICR Anonymized Immunization"
Description: "This Immunization profile represents an anonymized eICR Immunization."

* insert rsProfileMeta
* insert rsAddDARConstraints

* patient only Reference(EICRAnonymizedPatient)
* patient ^short = "The patient of this anonymized Immunization is the anonymized Patient"
* patient ^definition = "The patient of this anonymized Immunization is the anonymized Patient"

* performer 0..0
* performer ^short = "Immunization.performer is not allowed"