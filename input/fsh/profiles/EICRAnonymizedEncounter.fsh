Profile: EICRAnonymizedEncounter
Parent: EICREncounter
Id: eicr-anon-encounter
Title: "eICR Anonymized Encounter"
Description: "This Encounter profile represents an anonymized eICR Encounter.

It is based on the **eICR Encounter** profile with further constraints to require masking of some data elements."

* ^version = "1.0.0"
* insert rsProfileMeta

* subject only Reference(EICRAnonymizedPatient)
* subject ^short = "The subject is the anonymized Patient"
* subject ^definition = "The subject is the anonymized Patient"

* participant[sliceResponsibleProvider].individual only Reference(EICRAnonymizedPractitionerRole)

* location.location only Reference(EICRAnonymizedLocation)

* serviceProvider only Reference(EICRAnonymizedOrganization)