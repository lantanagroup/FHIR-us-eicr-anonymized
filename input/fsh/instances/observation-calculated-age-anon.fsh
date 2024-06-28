Instance: observation-calculated-age-anon
InstanceOf: EICRAnonymizedCalculatedAge
Title: "Calculated Age Observation Example: anonymized"
Description: "Example of Calculated Age Observation (anonymized)"
Usage: #example

* insert rsDataAbsentReasonText(text)

* status = #final
* code = $loinc#29553-5 "Age calculated"
* subject = Reference(patient-anon)
* effectiveDateTime = "2024-06-02T22:13:23Z"
* valueQuantity = 35 'a' "year"