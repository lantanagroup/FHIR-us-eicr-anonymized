Profile: EICRAnonymizedComposition
Parent: EICRComposition
Id: eicr-anon-composition
Title: "eICR Anonymized Composition"
Description: "This Composition profile represents an anonymized eICR Composition.

It is based on the **eICR Composition** profile with further constraints to require masking of:
 * subject
 * encounter
 * author
 * custodian
 * Immunization
 
 It also requires relatesTo which must point to the original eICR, along with the Calculated Age Observation.
 "
* ^version = "1.0.0"
* insert rsProfileMeta

* extension 1..

// sliceExtensionInformationRecipient
* identifier ^short = "This is the identifier of the anonymized eICR, the identifier of the original eICR (before anonymization) is recorded in the relatesTo[sliceTransformed].target.identifier"

* subject only Reference(EICRAnonymizedPatient)
* subject.display 0..0
* subject ^short = "The subject of this anonymized Composition is the anonymized Patient"
* subject ^definition = "The subject of this anonymized Composition is the anonymized Patient"
* encounter only Reference(EICRAnonymizedEncounter)
* encounter ^short = "References the anonymized Encounter"
* encounter.display 0..0
* date ^short = "The creation date of the anonymized eICR document (this is different to the creation date of the original (non-anonymized) eICR document)"
* author only Reference(EICRAnonymizedPractitionerRole or EICRAnonymizedPractitioner or EICRAnonymizedOrganization or Device)
* author ^short = "References the anonymized PractitionerRole, Practitioner, Organization, or Device"
* author.display 0..0

* custodian only Reference (EICRAnonymizedOrganizationTelecom)
* custodian ^short = "References the anonymized Organization - telecom"
* custodian.display 0..0

* relatesTo 1..
* relatesTo[sliceTransformed] 1..1 MS
* relatesTo[sliceTransformed] ^short = "Document or Composition that this Composition is transformed from - in the case of an anonymized eICR this is the orginal eICR that has been transformed to remove identifying data"
* relatesTo[sliceTransformed] ^definition = "Document of Composition that this Composition is transformed from - in the case of an anonymized eICR this is the orginal eICR that has been transformed to remove identifying data"
* relatesTo[sliceTransformed].target[x] only Identifier
* relatesTo[sliceTransformed].target[x] ^short = "Identifier of the Document or Composition transformed"
* relatesTo[sliceTransformed].target[x] ^definition = "Identifier of the Document or Composition transformed"

// * section.entry.reference obeys eicr-anon-comp-obs

* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization] only Reference(EICRAnonymizedImmunization)

* section[sliceSocialHistorySection].entry[sliceExposureContactInformation] 0..0

* section[sliceSocialHistorySection].entry contains sliceCalculatedAge 1..1 MS
* section[sliceSocialHistorySection].entry[sliceCalculatedAge] only Reference(CalculatedAge)
* section[sliceSocialHistorySection].entry[sliceCalculatedAge] ^short = "Calculated Age entry"
* section[sliceSocialHistorySection].entry[sliceCalculatedAge] ^definition = "Calculated Age entry"

* section[slicePregnancySection].entry 1..
// Invariant: eicr-anon-comp-obs
// Description: "If entry.Observation.subject is present it SHALL reference EICRAnonymizedPatient"
// * severity = #error
// * expression = "(Observation.subject.exists() and Observation.subject.conformsTo(EICRAnonymizedPatient)) or Observation.subject.empty()"