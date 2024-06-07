Instance: organization-salem-medical-center-anon
InstanceOf: EICRAnonymizedOrganization
Title: "eICR Anonymized Organization Example: Salem Medical Center"
Description: "Example of eICR Anonymized Organization profile (anonymized (telecom only), Salem Medical Center)"
Usage: #example
* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "55555555"
* active = true
* name = "Salem Medical Center"

* insert rsDdtaAbsentReason(telecom)

* address.line = "22222 Health Authority Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"