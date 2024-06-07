Instance: observation-lab-result-lymphocytes-anon
InstanceOf: USCoreLaboratoryResultObservationProfile
Title: "US Core Lab Result Observation Example: observation-lab-result-lymphocytes-anon"
Description: "Example of US Core Lab Result profile (anonymized, lymphocytes)"
Usage: #example
* status = #final
* category[Laboratory] = $observation-category#laboratory "Laboratory"
* category[Laboratory].text = "Laboratory"
* code = $loinc#731-0 "Lymphocytes [#/volume] in Blood by Automated count"
* subject = Reference(patient-anon)
* effectiveDateTime = "2018-03-07"
* valueQuantity = 5.2 '10*3/uL'
* interpretation = $v3-ObservationInterpretation#H "High"
* referenceRange.low = 1 '10*3/uL'
* referenceRange.high = 4.8 '10*3/uL'