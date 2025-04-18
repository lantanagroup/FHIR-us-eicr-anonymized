Instance: patient-anon-not
InstanceOf: USPublicHealthPatient
Title: "eICR NOT Anonymized Patient Example: NOT Anonymized"
Description: "Example of US Public Health Patient (NOT anonymized)"
Usage: #example

* insert rsDataAbsentReasonText(text)

* extension[race].extension[ombCategory].url = "ombCategory"
* extension[race].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[race].extension[text].url = "text"
* extension[race].extension[text].valueString = "White"
* extension[race].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[ethnicity].extension[ombCategory].url = "ombCategory"
* extension[ethnicity].extension[ombCategory].valueCoding = urn:oid:2.16.840.1.113883.6.238#2186-5 "Not Hispanic or Latino"
* extension[ethnicity].extension[text].url = "text"
* extension[ethnicity].extension[text].valueString = "Not Hispanic or Latino"
* extension[ethnicity].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[birthsex].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[birthsex].valueCode = #F
* extension[genderIdentity].extension[value].url = "value"
* extension[genderIdentity].extension[value].valueCodeableConcept = $v3-NullFlavor#ASKU "asked but unknown"
* extension[genderIdentity].extension[value].valueCodeableConcept.text = "asked but unknown"
* extension[genderIdentity].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-genderidentity-extension"
* extension[tribalAffiliation].extension[TribeName].url = "TribeName"
* extension[tribalAffiliation].extension[TribeName].valueCoding = $v3-TribalEntityUS#91 "Fort Mojave Indian Tribe of Arizona, California & Nevada"
* extension[tribalAffiliation].extension[EnrolledTribeMember].url = "EnrolledTribeMember"
* extension[tribalAffiliation].extension[EnrolledTribeMember].valueBoolean = true
* extension[tribalAffiliation].url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-tribal-affiliation-extension"

* identifier.use = #usual
* identifier.type = $v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.smarthealthit.org"
* identifier.value = "1032702"

* active = true

* name.family = "Everywoman"
* name.given[0] = "Eve"
* name.given[+] = "L"

* telecom[phone].system = #phone
* telecom[phone].value = "1-(404)555-1212"
* telecom[phone].use = #home

* telecom[email].system = #email
* telecom[email].value = "eve.everywoman@example.com"

* gender = #female

* insert rsDataAbsentReason(birthDate)

* deceasedBoolean = false

* address.line = "5101 Peachtree St NE"
* address.city = "Atlanta"
* address.state = "GA"
* address.postalCode = "30302"
* address.country = "US"

* contact.relationship = $v3-RoleClass#GUARD
* insert rsDataAbsentReason(contact.name)

//* contact.telecom.system = #phone

* insert rsDataAbsentReason(contact.telecom)

* insert rsDataAbsentReason(contact.address)

* communication.language = urn:ietf:bcp:47#en "English"