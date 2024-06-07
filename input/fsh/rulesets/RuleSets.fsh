RuleSet: rsProfileMeta
* ^status = #active
* ^experimental = false
* ^publisher = "APHL"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"

RuleSet: rsDdtaAbsentReason(pContext)
* {pContext}.extension[dataAbsentReason].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* {pContext}.extension[dataAbsentReason].valueCode = #masked

RuleSet: addBundleEntry(type, id)
* entry[+].resource = {id}
* entry[=].fullUrl = "http://www.example.org/fhir/{type}/{id}"