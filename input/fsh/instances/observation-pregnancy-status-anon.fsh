Instance: observation-pregnancy-status-anon
InstanceOf: USPublicHealthPregnancyStatusObservation
Title: "US Public Health Pregnancy Status Observation Example: anonymized"
Description: "Example of US Public Health Pregnancy Status Observation profile (anonymized)"
Usage: #example
* extension[extensionPregnancyStatusRecordedDate].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-date-recorded-extension"
* extension[extensionPregnancyStatusRecordedDate].valueDateTime = "2017-10-01"
* extension[extensionPregnancyStatusDeterminationDate].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-date-determined-extension"
* extension[extensionPregnancyStatusDeterminationDate].valueDateTime = "2017-10-01"
* status = #final
* code = $loinc#82810-3 "Pregnancy status"
* subject = Reference(patient-anon)
* effectivePeriod.start = "2017-08-26"
* valueCodeableConcept = $sct#77386006 "Pregnancy (finding)"
* method = $sct#16310003 "Ultrasonography (procedure)"
* component[sliceEstimatedGestationalAgeOfPregnancy].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-date-determined-extension"
* component[sliceEstimatedGestationalAgeOfPregnancy].extension.valueDateTime = "2017-10-01"
* component[sliceEstimatedGestationalAgeOfPregnancy].code = $loinc#53691-2 "Gestational age Estimated from patient reported estimated date of conception"
* component[sliceEstimatedGestationalAgeOfPregnancy].valueQuantity.value = 143
* component[sliceEstimatedGestationalAgeOfPregnancy].valueQuantity.unit = "d"
* component[sliceEstimatedDateOfDelivery].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-date-determined-extension"
* component[sliceEstimatedDateOfDelivery].extension.valueDateTime = "2017-10-01"
* component[sliceEstimatedDateOfDelivery].code = $loinc#57064-8 "Delivery date Estimated from date fundal height reaches umb"
* component[sliceEstimatedDateOfDelivery].valueDateTime = "2018-05-01"