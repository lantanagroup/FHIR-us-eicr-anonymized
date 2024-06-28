Instance: observation-past-or-present-job-anon
InstanceOf: EICRAnonymizedPastOrPresentJob
Title: "eICR Anonymized Past or Present Job Example: anonymized"
Description: "Example of eICR Anonymized Past or Present Job profile (anonymized)"
Usage: #example

* insert rsDataAbsentReasonText(text)


* extension[employer].valueReference = Reference(organization-name-tele-addr-anon)

* status = #final
* code = $loinc#11341-5 "History of Occupation"
* subject = Reference(patient-anon)
* focus = Reference(relatedperson-anon)
* effectivePeriod.start = "2015-04-24"
* valueCodeableConcept.coding[0] = $PHOccupationCDCCensus2010#3600 "Nursing, psychiatric, and home health aides"
//* valueCodeableConcept.coding[+] = $PHOccupationalDataForHealthODH#31-1014.00.007136 "Certified Nursing Assistant (CNA) [Nursing Assistants]"
* component[0].code = $loinc#86188-0 "History of Occupation industry"
* component[=].valueCodeableConcept.coding[0] = $PHIndustryCDCCensus2010#8270 "Nursing care facilities"
//* component[=].valueCodeableConcept.coding[+] = $PHOccupationalDataForHealthODH#621610.008495 "Home nursing services"
* component[+].code = $loinc#87729-0 "History of Occupational hazard"
* component[=].valueString = "Asbestos"