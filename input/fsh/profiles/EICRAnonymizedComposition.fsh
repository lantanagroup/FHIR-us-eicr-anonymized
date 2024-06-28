Profile: EICRAnonymizedComposition
Parent: EICRComposition
Id: eicr-anon-composition
Title: "eICR Anonymized Composition"
Description: "This Composition profile represents an anonymized eICR Composition."
* ^version = "1.0.0"
* insert rsProfileMeta

* insert rsAddDARConstraints

* extension 1..

// sliceExtensionInformationRecipient
* identifier ^short = "This is the identifier of this anonymized eICR, the identifier of the original eICR (before anonymization) is recorded in the relatesTo[sliceTransformed].target.identifier"

* subject only Reference(EICRAnonymizedPatient)
* subject.display 0..0
* subject ^short = "The subject of this anonymized Composition is the eICR Anonymized Patient"
* encounter only Reference(EICRAnonymizedEncounter)
* encounter ^short = "References the eICR Anonymized Encounter"
* encounter.display 0..0
* date ^short = "The creation date of the eICR Anonymized Document (this is different to the creation date of the original (non-anonymized) eICR document)"
* author only Reference(EICRAnonymizedPractitionerRole or EICRAnonymizedPractitioner or USPublicHealthOrganization or Device)
* author ^short = "References the eICR Anonymized PractitionerRole, eICR Anonymized Practitioner, US Public Health Organization, or Device"
* author.display 0..0

// 2024-06-25 remove anonymized constraint on Custodian Organization
// * custodian only Reference (EICRAnonymizedOrgTele)
// * custodian ^short = "References the eICR Anonymized Organization - Telecom"
* custodian.display 0..0

* relatesTo 1..
* relatesTo[sliceTransformed] 1..1 MS
* relatesTo[sliceTransformed] ^short = "Document or Composition that this Composition is transformed from - in the case of an anonymized eICR this is the orginal eICR that has been transformed to remove identifying data"
* relatesTo[sliceTransformed] ^definition = "Document of Composition that this Composition is transformed from - in the case of an anonymized eICR this is the orginal eICR that has been transformed to remove identifying data"
* relatesTo[sliceTransformed].target[x] only Identifier
* relatesTo[sliceTransformed].target[x] ^short = "Identifier of the Document or Composition transformed"
* relatesTo[sliceTransformed].target[x] ^definition = "Identifier of the Document or Composition transformed"

* insert rsAddDARConstraintsToSection(sliceReasonForVisitSection)
* insert rsAddDARConstraintsToSection(sliceChiefComplaintSection)

// * section[sliceHistoryOfPresentIllnessSection].text.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
// * section[sliceHistoryOfPresentIllnessSection].text.extension[dataAbsentReason] ^short = "Use data-absent-reason with value 'masked'"
// * section[sliceHistoryOfPresentIllnessSection].text.extension[dataAbsentReason].value[x] = #masked (exactly)
// * section[sliceHistoryOfPresentIllnessSection].text.div ^short = """Set to '<div xmlns="http://www.w3.org/1999/xhtml"><p>MASKED</p></div>'"""
// * section[sliceHistoryOfPresentIllnessSection].text.div obeys eicr-anon-sect-text-div
* insert rsAddDARConstraintsToSection(sliceHistoryOfPresentIllnessSection)

* insert rsAddDARConstraintsToSection(sliceProblemSection)

* insert rsAddDARConstraintsToSection(sliceMedicationsAdministeredSection)

* insert rsAddDARConstraintsToSection(sliceAdmissionMedicationsSection)

* insert rsAddDARConstraintsToSection(sliceMedicationsSection)

* insert rsAddDARConstraintsToSection(sliceResultsSection)

* insert rsAddDARConstraintsToSection(slicePlanOfTreatmentSection)

* insert rsAddDARConstraintsToSection(sliceImmunizationsSection)
* section[sliceImmunizationsSection].entry[sliceUSCoreImmunization] only Reference(EICRAnonymizedImmunization)

* insert rsAddDARConstraintsToSection(sliceProceduresSection)

* insert rsAddDARConstraintsToSection(sliceVitalSignsSection)

* insert rsAddDARConstraintsToSection(sliceSocialHistorySection)
* section[sliceSocialHistorySection].entry[sliceExposureContactInformation] 0..0
* section[sliceSocialHistorySection].entry[sliceExposureContactInformation] only Reference(USPublicHealthExposureContactInformation)
* section[sliceSocialHistorySection].entry[sliceODHPastOrPresentJob] only Reference(EICRAnonymizedPastOrPresentJob)
* section[sliceSocialHistorySection].entry contains sliceEICRAnonymizedCalculatedAge 1..1 MS
* section[sliceSocialHistorySection].entry[sliceEICRAnonymizedCalculatedAge] only Reference(EICRAnonymizedCalculatedAge)
* section[sliceSocialHistorySection].entry[sliceEICRAnonymizedCalculatedAge] ^short = "Calculated Age entry"
* section[sliceSocialHistorySection].entry[sliceEICRAnonymizedCalculatedAge] ^definition = "Calculated Age entry"

* insert rsAddDARConstraintsToSection(slicePregnancySection)
// added to pass new validation rules about slices not adding properly
* section[slicePregnancySection].entry 1..

* insert rsAddDARConstraintsToSection(sliceEmergencyOutbreakInformationSection)

// * section[slicePastMedicalHistorySection].text.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
// * section[slicePastMedicalHistorySection].text.extension[dataAbsentReason] ^short = "Use data-absent-reason with value 'masked'"
// * section[slicePastMedicalHistorySection].text.extension[dataAbsentReason].value[x] = #masked (exactly)
// * section[slicePastMedicalHistorySection].text.div ^short = """Set to '<div xmlns="http://www.w3.org/1999/xhtml"><p>MASKED</p></div>'"""
// * section[slicePastMedicalHistorySection].text.div obeys eicr-anon-sect-text-div
* insert rsAddDARConstraintsToSection(slicePastMedicalHistorySection)

* insert rsAddDARConstraintsToSection(sliceReviewOfSystemsSection)
* insert rsAddDARConstraintsToSection(sliceReportabilityResponseInformationSection)

Invariant: eicr-anon-text
Description: """text.div SHALL be '<div xmlns="http://www.w3.org/1999/xhtml"><p>MASKED</p></div>'"""
* severity = #error
* expression = "`div` ~ '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>MASKED</p></div>'"