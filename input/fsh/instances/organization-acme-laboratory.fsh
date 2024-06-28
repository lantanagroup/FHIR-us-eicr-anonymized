Instance: organization-acme-laboratory
InstanceOf: USPublicHealthOrganization
Title: "US PH Organization Example: Acme Labs"
Description: "Example of US Public Health Organization profile: Acme Labs"
Usage: #example

* insert rsDataAbsentReasonText(text)

* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "1144221999"
* active = true
* type = $v3-RoleCode#OUTLAB "outpatient laboratory"
* name = "Acme Labs"

* telecom[0].system = #phone
* telecom[=].value = "+1-555-555-2222"
* telecom[+].system = #email
* telecom[=].value = "mail@acmelabs.com"

* address.line = "7777 Laboratory Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"