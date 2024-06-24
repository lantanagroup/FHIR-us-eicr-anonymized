Instance: encounter-outpatient-anon
InstanceOf: EICRAnonymizedEncounter
Title: "eICR Anonymized Encounter Example: encounter-outpatient-anon"
Description: "Example of eICR Anonymized Encounter profile (anonymized, outpatient)"
Usage: #example
* identifier.system = "http://hospital.smarthealthit.org"
* identifier.value = "9937012"
* status = #finished
* class = $v3-ActCode#AMB "ambulatory"
* type = $cpt#99202
* type.text = "Office Visit"
* subject = Reference(patient-anon)

* participant.type = $v3-ParticipationType#ATND "attender"
* participant.individual = Reference(practitionerrole-anon)

* period.start = "2018-04-01T10:00:00-05:00"
* period.end = "2018-04-02T10:15:00-05:00"

* diagnosis[0].extension.extension[0].url = "triggerCodeValueSet"
* diagnosis[=].extension.extension[=].valueOid = "urn:oid:2.16.840.1.114222.4.11.7508"
* diagnosis[=].extension.extension[+].url = "triggerCodeValueSetVersion"
* diagnosis[=].extension.extension[=].valueString = "12/12/2018"
* diagnosis[=].extension.extension[+].url = "triggerCode"
* diagnosis[=].extension.extension[=].valueCoding = $sct#3928002 "Zika virus disease (disorder)"
* diagnosis[=].extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-trigger-code-flag-extension"
* diagnosis[=].condition.reference = "Condition/condition-zika-anon"
* diagnosis[+].condition.reference = "Condition/condition-common-cold-anon"

* location.location.reference = "Location/location-salem-medical-center"
* serviceProvider.reference = "Organization/organization-salem-medical-center"
