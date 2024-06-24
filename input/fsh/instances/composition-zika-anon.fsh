Instance: composition-zika-anon
InstanceOf: EICRAnonymizedComposition
Title: "eICR Anonymized Composition Example: Initial Public Health Case Report - Anonymized, Zika"
Description: "Example of eICR Anonymized Composition profile (anonymized, Zika)"
Usage: #example
* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "1"
* identifier.value = "c03eab8c-11e8-4d0c-ad2a-b385395e27db"
* status = #final
* type = $loinc#55751-2 "Public Health Case Report"
* subject = Reference(patient-anon)
* encounter = Reference(encounter-outpatient-anon)
* date = "2024-06-02T22:13:23Z"
* author = Reference(practitionerrole-anon)
* title = "Initial Public Health Case Report - Zika Example"
* custodian = Reference(organization-custodian)

* relatesTo[sliceTransformed]
  * code = #transforms
  * targetIdentifier.system = "urn:ietf:rfc:3986"
  * targetIdentifier.value = "urn:uuid:58fecd25-973e-4397-af68-1b7683758955"

* section[sliceReasonForVisitSection]
  * title = "Reason for Visit Section"
  * code = $loinc#29299-5 "Reason for visit Narrative"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Reason for Visit Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">Reason for visit Narrative</div> <div title=\"code\">(29299-5)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td colspan=\"2\" lang=\"en-US\" class=\"text-no-entries\"><p>Reason for Visit: Bad cough</p></td></tr></table></div>"

* section[sliceChiefComplaintSection]
  * title = "Chief Complaint"
  * code = $loinc#10154-3 "Chief complaint Narrative - Reported"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Chief complaint Narrative - Reported</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">Chief complaint Narrative - Reported</div> <div title=\"code\">(10154-3)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td colspan=\"2\" lang=\"en-US\" class=\"text-no-entries\"><p>Chief Complaint: Bad cough</p></td></tr></table></div>"

* section[sliceHistoryOfPresentIllnessSection]
  * title = "History of Present Illness Section"
  * code = $loinc#10164-2 "History of Present illness Narrative"
  * insert rsDataAbsentReason(text)
  * text.status = #empty
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>MASKED</p></div>"

* section[sliceProblemSection]
  * title = "Problems Section"
  * code = $loinc#11450-4 "Problem list - Reported"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Problems Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">Problem list - Reported</div> <div title=\"code\">(11450-4)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Condition-condition-common-cold-anon.html\">Common cold (disorder)</a></td></tr></table></div>"
  * entry = Reference(condition-common-cold-anon)

* section[sliceMedicationsAdministeredSection]
  * title = "Medications Administered Section"
  * code = $loinc#29549-3 "Medication administered Narrative"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Medications Administered Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">Medication administered Narrative</div> <div title=\"code\">(29549-3)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"MedicationAdministration-medicationadministration-azithromycin-anon.html\">Azithromycin 500 MG Oral Tablet</a></td></tr></table></div>"
  * entry = Reference(medicationadministration-azithromycin-anon)

* section[sliceAdmissionMedicationsSection]
  * title = "Admission Medications Section"
  * code = $loinc#42346-7 "Medications on admission (narrative)"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Admission Medications Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">Medications on admission (narrative)</div> <div title=\"code\">(42346-7)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"MedicationAdministration-medicationadministration-naloxone-response-anon.html\">naloxone HCl 0.4 MG in 1 ML Injection</a></td></tr></table></div>"
  * entry = Reference(medicationadministration-naloxone-response-anon)

* section[sliceMedicationsSection]
  * title = "Medications Section"
  * code = $loinc#10160-0 "History of Medication use Narrative"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Medications Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">History of Medication use Narrative</div> <div title=\"code\">(10160-0)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"MedicationAdministration-medicationadministration-azithromycin-anon.html\">Azithromycin 500 MG Oral Tablet</a></td></tr></table></div>"
  * entry = Reference(medicationadministration-azithromycin-anon)

* section[sliceResultsSection]
  * title = "Results Section"
  * code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data Narrative"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Results Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">Relevant Dx tests/lab data</div> <div title=\"code\">(30954-2)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Observation-observation-lab-result-lymphocytes-anon.html\">Lymphocytes [#/​volume] in Blood by Automated count - Interpretation: High</a></td></tr></table></div>"
  * entry = Reference(observation-lab-result-lymphocytes-anon)

* section[slicePlanOfTreatmentSection]
  * title = "Plan of Treatment Section"
  * code = $loinc#18776-5 "Plan of care note"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Plan of Treatment Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">Plan of care note</div> <div title=\"code\">(18776-5)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><b>Trigger code</b></li><li>Trigger Code: </li><li>Trigger Code Display: </li><li>Trigger Code System: </li><li>Trigger Code Value Set: urn:oid:2.16.840.1.114222.4.11.7508</li><li>Trigger Code Value Set Version: 19/05/2018</li></ul><a href=\"ServiceRequest-servicerequest-zika-anon.html\">Request for Zika virus envelope (E) gene [Presence] in Serum by Probe and target amplification method</a></td></tr></table></div>"
  * entry[sliceEICRServiceRequest] = Reference(servicerequest-zika-anon)
    * extension.extension[0].url = "triggerCodeValueSet"
    * extension.extension[=].valueOid = "urn:oid:2.16.840.1.114222.4.11.7508"
    * extension.extension[+].url = "triggerCodeValueSetVersion"
    * extension.extension[=].valueString = "19/05/2018"
    * extension.extension[+].url = "triggerCode"
    * extension.extension[=].valueCoding = $sct#3928002 "Zika virus disease (disorder)"
    * extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-trigger-code-flag-extension"


* section[sliceImmunizationsSection]
  * title = "Immunizations Section"
  * code = $loinc#11369-6 "History of Immunization Narrative"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Immunizations Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">History of Immunization Narrative</div> <div title=\"code\">(11369-6)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Immunization-immunization-pneumo-anon.html\">pneumococcal polysaccharide vaccine</a></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Observation-observation-vaccine-credential-assertion-anon.html\">Vaccine Credential Patient Assertion Observation Example</a></td></tr></table></div>"
  * entry[sliceUSCoreImmunization] = Reference(immunization-pneumo-anon)
  * entry[sliceVaccineCredentialsPatientAssertion] = Reference(observation-vaccine-credential-assertion-anon)

* section[sliceProceduresSection]
  * title = "Procedures Section"
  * code = $loinc#47519-4 "History of Procedures Document"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Procedures Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">History of Procedures Document</div> <div title=\"code\">(47519-4)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Procedure-procedure-ecmo-anon.html\">Extracorporeal membrane oxygenation (procedure)</a></td></tr></table></div>"
  * entry = Reference(procedure-ecmo-anon)

* section[sliceVitalSignsSection]
  * title = "Vital Signs Section"
  * code = $loinc#8716-3 "Vital signs"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Vital Signs Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">Vital signs</div> <div title=\"code\">(8716-3)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Observation-observation-blood-pressure-anon.html\">Blood pressure systolic and diastolic</a></td></tr></table></div>"
  * entry = Reference(observation-blood-pressure-anon)

* section[sliceSocialHistorySection]
  * title = "Social History Section"
  * code = $loinc#29762-2 "Social history Narrative"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Social History Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">Social history Narrative</div> <div title=\"code\">(29762-2)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Observation-observation-travel-history-201801-anon.html\">eICR Travel History: anonymized 2018-01</a></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Observation-observation-odh-usual-work-anon.html\">ODH Usual Work: anonymized</a></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Observation-observation-past-or-present-job-anon.html\">:eICR Anonymized Past or Present Job</a></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Observation-observation-disability-status-anon.html\">:US Public Health Disability Status: anonymized</a></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Observation-observation-country-of-nationality-anon.html\">:eICR Country of Nationality: anonymized</a></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Observation-observation-country-of-residence-anon.html\">:eICR Country of Residence: anonymized</a></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Observation-observation-calculated-age-anon.html\">:eICR Calculated Age: anonymized</a></td></tr></table></div>"
  * entry[sliceTravelHistory] = Reference(observation-travel-history-201801-anon)
  * entry[sliceODHUsualWork] = Reference(observation-odh-usual-work-anon)
  * entry[sliceODHPastOrPresentJob] = Reference(observation-past-or-present-job-anon)
  * entry[sliceDisabilityStatus] = Reference(observation-disability-status-anon)
  * entry[sliceCountryOfNationality] = Reference(observation-country-of-nationality-anon)
  * entry[sliceCountryOfResidence] = Reference(observation-country-of-residence-anon)
  * entry[sliceEICRAnonymizedCalculatedAge] = Reference(observation-calculated-age-anon)

* section[slicePregnancySection]
  * title = "Pregnancy Section"
  * code = $loinc#90767-5 "Pregnancy summary Document"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Pregnancy Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">Pregnancy summary Document</div> <div title=\"code\">(90767-5)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Observation-observation-pregnancy-status-anon.html\">eICR Pregnancy Status: anonymized</a></td></tr></table></div>"
  * entry = Reference(observation-pregnancy-status-anon)

* section[sliceEmergencyOutbreakInformationSection]
  * title = "Emergency Outbreak Information Section"
  * code = $loinc#83910-0 "Public health Note"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Emergency Outbreak Information Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">Public health Note</div> <div title=\"code\">(83910-0)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Observation-observation-emergency-outbreak-info-anon.html\">US Public Health Emergency Outbreak Information Example</a></td></tr></table></div>"
  * entry = Reference(observation-emergency-outbreak-info-anon)

* section[slicePastMedicalHistorySection]
  * title = "Past Medical History Section"
  * code = $loinc#11348-0 "History of Past illness Narrative"
  * insert rsDataAbsentReason(text)
  * text.status = #empty
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>MASKED</p></div>"

* section[sliceReviewOfSystemsSection]
  * title = "Review of Systems Section"
  * code = $loinc#10187-3 "Review of systems Narrative - Reported"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Review of Systems Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">Review of Systems Section Narrative</div> <div title=\"code\">(10187-3)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td colspan=\"2\" lang=\"en-US\" class=\"text-no-entries\"><p>Review of systems section text</p></td></tr></table></div>"

* section[sliceReportabilityResponseInformationSection]
  * title = "Reportability Response Information Section"
  * code = $loinc#88085-6 "Reportability response report Document Public health"
  * text.status = #generated
  * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tr><td style=\"font-weight: bold\">title</td><td><div title=\"title\">Reportability Response Information Section</div></td></tr><tr><td style=\"font-weight: bold\">code</td><td><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><ul style=\"list-style:none; padding-left:0; margin:0 0;\"><li><div title=\"display\">Reportability response report Document Public health</div><div title=\"code\">(88085-6)</div></li><li><div title=\"system\"><a href=\"http://loinc.org\">http://loinc.org</a></div></li></ul></li></ul></td></tr><tr><td style=\"font-weight: bold\">entry</td><td><a href=\"Observation-observation-rr-relevant-reportable-condition-anon.html\">RR Relevant Reportable Condition: anonymized</a></td></tr></table></div>"
  * entry = Reference(observation-rr-relevant-reportable-condition-anon)