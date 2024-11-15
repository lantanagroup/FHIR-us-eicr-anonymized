Instance: immunization-pneumo-anon
InstanceOf: EICRAnonymizedImmunization
Title: "eICR Anonymized Immunization Example: immunization-ecr-pneumo-anonymized"
Description: "Example of eICR Anonymized Immunization profile (anonymized, pneumo)"
Usage: #example

* insert rsDataAbsentReasonText(text)

* status = #completed
* vaccineCode = $cvx#33 "pneumococcal polysaccharide PPV23"
* patient = Reference(patient-anon)
* occurrenceDateTime = "2018-09-01"
* primarySource = true