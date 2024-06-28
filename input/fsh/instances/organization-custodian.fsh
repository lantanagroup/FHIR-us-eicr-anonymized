Instance: organization-custodian
InstanceOf: USPublicHealthOrganization
Title: "US Public Health Organization Example: Custodian Organization"
Description: "Example of US Public Health Organization profile (Custodian Organization)"
Usage: #example

* insert rsDataAbsentReasonText(text)

* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "545454545"
* active = true
* name = "Custodian Organization"

* telecom[0].system = #phone
* telecom[=].value = "+1-555-555-4545"
* telecom[+].system = #email
* telecom[=].value = "mail@custodianorganization.com"

* address.line = "11111 Custodian Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"