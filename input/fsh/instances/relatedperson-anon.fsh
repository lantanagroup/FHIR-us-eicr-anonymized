Instance: relatedperson-anon
InstanceOf: EICRAnonymizedRelatedPerson
Title: "eICR Anonymized RelatedPerson Example: Anonymized"
Description: "Example of eICR Anonymized RelatedPerson profile (anonymized)"
Usage: #example

* insert rsDataAbsentReason(identifier)
// * identifier
//   * use = #usual
//   * type = $v2-0203#SS "Social Security number"
//   * system = "http://hl7.org/fhir/sid/us-ssn"
//   * value = "132225986"
* active = true
* patient = Reference(patient-anon)
* relationship = $v3-RoleCode#GESTM "gestational mother"
  * text = "Gestational Mother"
* insert rsDataAbsentReason(name)
// * name
//   * use = #official
//   * family = "Quinn"
//   * given[0] = "Jada"
//   * given[+] = "Ann"
* insert rsDataAbsentReason(telecom)
// * telecom[0]
//   * system = #phone
//   * value = "1-(404)555-1212"
//   * use = #home
// * telecom[+]
//   * system = #email
//   * value = "jadaann.quinn@example.com"
* gender = #female
* insert rsDataAbsentReason(birthDate)
// * birthDate = "1985-01-15"
* insert rsDataAbsentReason(address)
// * address
//   * use = #home
//   * line = "1875 West Morton Avenue"
//   * city = "Salt Lake City"
//   * district = "Salt Lake"
//   * state = "UT"
//   * postalCode = "84116"
//   * country = "US"