Instance: observation-vaccine-credential-assertion-anon
InstanceOf: EICRVaccineCredentialPatientAssertion
Title: "eICR Vaccine Credential Patient Assertion Observation Example: anonymized"
Description: "Example of eICR Vaccine Credential Patient Assertion Observation (anonymized)"
Usage: #example
* status = #final
* code = $loinc#11370-4 "Immunization status - Reported"
* subject = Reference(patient-anon)
* effectiveDateTime = "2020-11-10T22:33:22Z"
* valueCodeableConcept = $v2-0532#Y "Yes"