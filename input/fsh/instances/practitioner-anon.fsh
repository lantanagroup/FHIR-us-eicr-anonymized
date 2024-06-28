Instance: practitioner-anon
InstanceOf: EICRAnonymizedPractitioner
Title: "eICR Anonymized Practitioner Example: Anonymized"
Description: "Example of eICR Anonymized Practitioner (anonymized)"
Usage: #example

* insert rsDataAbsentReasonText(text)

* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339108"
* insert rsDataAbsentReason(name)
* insert rsDataAbsentReason(name.family)
// * name.family = "Henry"
// * name.given = "Seven"
// * name.suffix = "M.D."
* insert rsDataAbsentReason(telecom)
// * telecom.system = #email
// * telecom.value = "henry.seven@example.com"
* insert rsDataAbsentReason(address)
// * address.line[0] = "BMass Doctors"
// * address.line[+] = "2100 North Ave"
// * address.city = "Burlington"
// * address.state = "MA"
// * address.postalCode = "02368"
// * address.country = "US"