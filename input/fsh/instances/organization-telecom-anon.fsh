Instance: organization-telecom-anon
InstanceOf: EICRAnonymizedOrgTele
Title: "eICR Anonymized Organization Telecom Example: anonymized (telecom only) Organization"
Description: "Example of eICR Anonymized Organization Telecom profile (anonymized (telecom only), Telecom Anonymized Organization)"
Usage: #example
* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "545454545"
* active = true
* name = "Telecom Anonymized Organization"

* insert rsDataAbsentReason(telecom)

* address.line = "11111 Custodian Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"