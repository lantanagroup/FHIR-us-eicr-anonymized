Instance: organization-acme-laboratory-anon
InstanceOf: EICRAnonymizedOrganization
Title: "US PH Organization Example: Acme Labs"
Description: "Example of US Public Health Organization profile (anonymized (telecom only), Acme Labs)"
Usage: #example
* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "1144221999"
* active = true
* type = $v3-RoleCode#OUTLAB "outpatient laboratory"
* name = "Acme_Labs"

* insert rsDdtaAbsentReason(telecom)

* address.line = "7777 Laboratory Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"