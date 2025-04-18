Profile: EICRAnonymizedPastOrPresentJob
Parent: PastOrPresentJob
Id: eicr-anon-past-or-present-job
Title: "eICR Anonymized Past or Present Job"
Description: "This Past or Present Job profile represents an anonymized eICR Past or Present Job."

* insert rsProfileMeta
* insert rsAddDARConstraints

//* extension[employer] contains EICRAnonymizedEmployer named employer 0..1
* extension[employer].valueReference only Reference(EICRAnonymizedRelatedPerson or EICRAnonymizedOrganization)

* subject only Reference(EICRAnonymizedPatient)
* subject ^short = "The subject of this anonymized Past or Present Job is the anonymized Patient"
* subject ^definition = "The subject of this anonymized Past or Present Job is the anonymized Patient"

* focus only Reference(EICRAnonymizedRelatedPerson)
* focus ^short = "The focus of this anonymized Past or Present Job is the anonymized RelatedPerson"
* focus ^definition = "The focus of this anonymized Past or Present Job is the anonymized RelatedPerson"

* performer 0..0
* performer ^short = "PastOrPresentJob.performer is not allowed"