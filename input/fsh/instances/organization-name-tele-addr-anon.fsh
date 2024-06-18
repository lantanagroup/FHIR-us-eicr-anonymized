Instance: organization-name-tele-addr-anon
InstanceOf: EICRAnonymizedOrgTeleAddrName
Title: "eICR Anonymized Organization Name Telecom Address Example: anonymized (name, telecom, address) Organization"
Description: "Example of eICR Anonymized Organization Name Telecom Address profile (anonymized name, telecom, address)"
Usage: #example
* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "7878787878"
* active = true

* insert rsDataAbsentReason(name)
* insert rsDataAbsentReason(telecom)
* insert rsDataAbsentReason(address)