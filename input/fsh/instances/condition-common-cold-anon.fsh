Instance: condition-common-cold-anon
InstanceOf: USPublicHealthCondition
Title: "US Public Health Condition example: anonymized - common cold"
Description: "Example of US Public Health Condition profile (anonymized, common cold)"
Usage: #example
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#82272006 "Common cold (disorder)"
* subject = Reference(patient-anon)
* onsetDateTime = "2017-09-23"
* asserter = Reference(practitioner-anon)