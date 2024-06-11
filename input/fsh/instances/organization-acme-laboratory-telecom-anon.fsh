Instance: organization-acme-laboratory-telecom-anon
InstanceOf: EICRAnonymizedOrgTele
Title: "US PH Organization Example: Acme Labs (anonymized (telecom only))"
Description: "Example of US Public Health Organization profile (anonymized (telecom only), Acme Labs)"
Usage: #example
* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "1144221999"
* active = true
* type = $v3-RoleCode#OUTLAB "outpatient laboratory"
* name = "Acme Labs"

* insert rsDataAbsentReason(telecom)

* address.line = "7777 Laboratory Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"