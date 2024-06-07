Instance: organization-custodian-organization-anon
InstanceOf: EICRAnonymizedCustodianOrganization
Title: "eICR Anonymized Organization Example: anonymized (telecom only) Custodian Organization"
Description: "Example of eICR Anonymized Custodian Organization profile (anonymized (telecom only), Custodian Organization)"
Usage: #example
* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "545454545"
* active = true
* name = "Custodian Organization"

* insert rsDdtaAbsentReason(telecom)

* address.line = "11111 Custodian Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"