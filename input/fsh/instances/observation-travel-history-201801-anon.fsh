Instance: observation-travel-history-201801-anon
InstanceOf: USPublicHealthTravelHistory
Title: "Travel History Observation Example: observation-travel-history-anonymized-201801"
Description: "Example of Travel History Observation profile (anonymized, January 2018)"
Usage: #example
* status = #final
* code = $sct#420008001 "Travel"
* code.text = "Travel History"
* subject = Reference(patient-anon)
* effectivePeriod.start = "2018-01-15"
* effectivePeriod.end = "2018-01-30"
* component[travelLocation].code = $v3-ParticipationType#LOC "Location"
* component[travelLocation].valueCodeableConcept = urn:iso:std:iso:3166#FJI "Fiji"
* component[travelLocation].code = $v3-ParticipationType#LOC "Location"
* component[travelLocation].valueCodeableConcept = urn:oid:1.0.3166.1#VUT "Vanuatu"
* component[travelPurpose].code = $sct#280147009 "Type of activity (attribute)"
* component[travelPurpose].valueCodeableConcept = $sct#702348006 "Active duty military (occupation)"