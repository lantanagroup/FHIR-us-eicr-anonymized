Instance: organization-name-tele-addr-anon
InstanceOf: EICRAnonymizedOrganization
Title: "eICR Anonymized Organization Example: anonymized Organization"
Description: "Example of eICR Anonymized Organization profile (anonymized)"
Usage: #example

* insert rsDataAbsentReasonText(text)

* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "7878787878"
* active = true

* insert rsDataAbsentReason(name)
* insert rsDataAbsentReason(telecom)
* insert rsDataAbsentReason(address)