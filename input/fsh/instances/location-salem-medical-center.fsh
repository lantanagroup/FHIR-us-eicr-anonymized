Instance: location-salem-medical-center
InstanceOf: USPublicHealthLocation
Title: "US Public Health Location Example: Clinic Bldg A, Salem Medical Center"
Description: "Example of US Public Health Location profile (Clinic Bldg A, Salem Medical Center)"
Usage: #example
* identifier.system = "http://hl7.org.fhir/sid/us-npi"
* identifier.value = "1144221995"
* status = #active
* name = "Clinic Bldg A, Salem Medical Center"
* type = $v3-RoleCode#HOSP "Hospital"

* telecom[0].system = #phone
* telecom[=].value = "(+1) (555)555-3001"
* telecom[+].system = #fax
* telecom[=].value = "(+1) (555)555-3002"
* telecom[+].system = #email
* telecom[=].value = "mail@smc.org"

* address.line[0] = "Clinic Bldg A"
* address.line[+] = "4444 Healthcare Drive"
* address.city = "Ann Arbor"
* address.state = "MI"
* address.postalCode = "99999"
* managingOrganization.reference = "Organization/organization-salem-medical-center"