Instance: observation-rr-reportability-information-anon
InstanceOf: RRReportabilityInformationObservation
Title: "RR Reportability Information Observation Example - anonymized"
Description: "Example of RR Reportability Information Observation profile - anonymized"
Usage: #example

* insert rsDataAbsentReasonText(text)

* extension[0].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-determination-of-reportability-extension"
* extension[=].valueCodeableConcept = urn:oid:2.16.840.1.114222.4.5.274#RRVS1 "Reportable"
* extension[+].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-determination-of-reportability-reason-extension"
* extension[=].valueString = "Condition is reportable"
* extension[+].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-determination-of-reportability-rule-extension"
* extension[=].valueString = "Description of rule used in reportability determination"
* extension[+].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-external-resource-extension"
* extension[=].valueReference.reference = "DocumentReference/documentreference-add-reporting-needs-pdf"
* extension[+].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-external-resource-extension"
* extension[=].valueReference.reference = "DocumentReference/documentreference-zika-info-pdf"
* extension[+].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/rr-external-resource-extension"
* extension[=].valueReference.reference = "DocumentReference/documentreference-zika-follow-up-pdf"
* status = #final
* code = urn:oid:2.16.840.1.114222.4.5.274#RRVS5 "Patient home address"
* subject = Reference(patient-anon)
* performer[0].reference = "Organization/organization-rr-rules-authoring-agency-haw"
// * performer[=].display = "Health Authority West Rules Authoring Agency"
* performer[+].reference = "Organization/organization-rr-routing-entity-haw"
// * performer[=].display = "Health Authority West Routing Entity"
* performer[+].reference = "Organization/organization-rr-responsible-agency-haw"
// * performer[=].display = "Health Authority West Routing Entity"
* component.code = urn:oid:2.16.840.1.114222.4.5.232#RR4 "Timeframe to report (urgency)"
* component.valueQuantity = 24 'H' "H"