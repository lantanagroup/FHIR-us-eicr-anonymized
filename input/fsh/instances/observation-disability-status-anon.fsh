Instance: observation-disability-status-anon
InstanceOf: USPublicHealthDisabilityStatus
Title: "Disability Status Example: anonymized"
Description: "Example of Disability Status Profile (anonymized)"
Usage: #example
* status = #final
* code = $loinc#69856-3 "Are you deaf, or do you have serious difficulty hearing"
* subject = Reference(patient-anon-not)
* effectiveDateTime = "2020-11-10T22:33:22Z"
* valueBoolean = true