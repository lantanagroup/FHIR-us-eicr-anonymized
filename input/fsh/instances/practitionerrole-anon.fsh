Instance: practitionerrole-anon
InstanceOf: EICRAnonymizedPractitionerRole
Title: "eICR Anonymized PractitionerRole Example: anonymized"
Description: "Example of eICR Anonymized PractitionerRole profile (anonymized)"
Usage: #example

* insert rsDataAbsentReasonText(text)

* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339108"
* practitioner = Reference(practitioner-anon)
* organization = Reference(organization-salem-medical-center)
* code = $provider-taxonomy#261QP2300X "Primary Care Clinic/Center"
* specialty = $sct#419772000 "Family practice"
* location = Reference(location-salem-medical-center)

* telecom.system = #email
* insert rsDataAbsentReason(telecom.value)
// * telecom.value = "henry.seven@example.com"