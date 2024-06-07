Instance: condition-zika-anon
InstanceOf: Condition
Title: "eICR Condition example: anonymized - zika"
Description: "Example of eICR Condition profile (anonymized, zika)"
Usage: #example
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* code = $sct#3928002 "Zika virus disease (disorder)"
* subject = Reference(patient-anon)
* onsetDateTime = "2017-08-23"
* asserter = Reference(practitioner-anon)