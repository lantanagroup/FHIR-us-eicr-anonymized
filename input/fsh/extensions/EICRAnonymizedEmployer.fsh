Extension: EICRAnonymizedEmployer
Parent: http://hl7.org/fhir/us/odh/StructureDefinition/odh-Employer-extension
Id: eicr-anon-employer-extension
Title: "eICR Anonymized Employer Extension"
Description: "This Patient profile represents an anonymized eICR Employer Extension.

It is based on the **ODH Employer Extension** profile with further constraints to require masking of some data elements."
Context: Observation

* ^version = "1.0.0"
* insert rsProfileMeta

// * value[x] 1..
// * value[x] only Reference(EICRAnonymizedRelatedPerson or EICRAnonymizedOrganization)
* valueReference 1..
* valueReference only Reference(EICRAnonymizedRelatedPerson or EICRAnonymizedOrganization)