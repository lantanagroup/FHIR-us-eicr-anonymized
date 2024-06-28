RuleSet: rsProfileMeta
* ^status = #active
* ^experimental = false
* ^publisher = "APHL"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* ^jurisdiction.text = "United States of America"

RuleSet: rsDataAbsentReason(pContext)
* {pContext}.extension[+].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* {pContext}.extension[=].valueCode = #masked

RuleSet: rsDataAbsentReasonText(pContext)
* {pContext}.extension[+].url = "http://hl7.org/fhir/StructureDefinition/data-absent-reason"
* {pContext}.extension[=].valueCode = #masked
* {pContext}.status = #empty
* {pContext}.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>MASKED</p></div>"

RuleSet: rsAddBundleEntry(type, id)
* entry[+].resource = {id}
* entry[=].fullUrl = "http://www.example.org/fhir/{type}/{id}"

RuleSet: rsAddDARConstraintsToSection(pSectionSliceName)
* section[{pSectionSliceName}].text.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* section[{pSectionSliceName}].text.extension[dataAbsentReason] ^short = "Use data-absent-reason with value 'masked'"
* section[{pSectionSliceName}].text.extension[dataAbsentReason].value[x] = #masked (exactly)
* section[{pSectionSliceName}].text.div ^short = "Set to '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>MASKED</p></div>'"
* section[{pSectionSliceName}].text obeys eicr-anon-text

RuleSet: rsAddDARConstraints
* text.extension contains $data-absent-reason named dataAbsentReason 1..1 MS
* text.extension[dataAbsentReason] ^short = "Use data-absent-reason with value 'masked'"
* text.extension[dataAbsentReason].value[x] = #masked (exactly)
* text.div ^short = "Set to '<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>MASKED</p></div>'"
* text obeys eicr-anon-text