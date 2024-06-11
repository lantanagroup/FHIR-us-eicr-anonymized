Instance: location-salem-medical-center-anon
InstanceOf: EICRAnonymizedLocation
Title: "eICR Anonymized Location Example: Anonymized telecom, Clinic Bldg A, Salem Medical Center"
Description: "Example of US Public Health profile (anonymized telecom, Salem Medical Center)"
Usage: #example
* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "1144221995"
* status = #active
* name = "Clinic Bldg A, Salem Medical Center"
* type = $v3-RoleCode#HOSP "Hospital"
* insert rsDataAbsentReason(telecom)
* address.line[0] = "Clinic Bldg A"
* address.line[+] = "4444 Healthcare Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"
* managingOrganization.reference = "Organization/organization-salem-medical-center-anon"