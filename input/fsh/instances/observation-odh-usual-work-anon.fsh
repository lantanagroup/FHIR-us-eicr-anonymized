Instance: observation-odh-usual-work-anon
InstanceOf: UsualWork
Title: "ODH Usual Work Example: observation-odh-usual-work-anonymized"
Description: "Example of ODH Usual Work profile (anonymized)"
Usage: #example

* insert rsDataAbsentReasonText(text)

* status = #final
* code = $loinc#21843-8 "History of Usual occupation"
* subject = Reference(patient-anon)
* effectivePeriod.start = "2015-01-01"
* effectivePeriod.end = "2018-03-07"
* valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.314#0136 "Human Resources Managers"
* component[odh-UsualIndustry].code = $loinc#21844-6 "History of Usual industry"
* component[odh-UsualIndustry].valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.315#8190 "Hospitals"