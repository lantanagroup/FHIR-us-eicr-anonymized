Instance: bundle-document-zika-anon
InstanceOf: EICRAnonymizedDocumentBundle
Title: "eICR Anonymized Document Bundle Example: bundle-eicr-document-zika-anon"
Description: "Example of eICR Anonymized Document Bundle profile (anonymized, Zika)"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2be4b4e4-6df1-4cb2-a947-c70fa0eda54d"
* type = #document
* timestamp = "2024-06-02T22:13:23Z"
* insert addBundleEntry(Composition, composition-zika-anon)
* insert addBundleEntry(Condition, condition-zika-anon)
* insert addBundleEntry(Condition, condition-common-cold-anon)
* insert addBundleEntry(Encounter, encounter-outpatient-anon)
* insert addBundleEntry(Immunization, immunization-pneumo-anon)
* insert addBundleEntry(Location, location-city-football-stadium-anon)
* insert addBundleEntry(Location, location-salem-medical-center-anon)
* insert addBundleEntry(MedicationAdministration, medicationadministration-azithromycin-anon)
* insert addBundleEntry(MedicationAdministration, medicationadministration-naloxone-response-anon)
* insert addBundleEntry(Observation, observation-blood-pressure-anon)
* insert addBundleEntry(Observation, observation-calculated-age-anon)
* insert addBundleEntry(Observation, observation-country-of-nationality-anon)
* insert addBundleEntry(Observation, observation-country-of-residence-anon)
* insert addBundleEntry(Observation, observation-disability-status-anon)
* insert addBundleEntry(Observation, observation-odh-usual-work-anon)
* insert addBundleEntry(Observation, observation-pregnancy-status-anon)
* insert addBundleEntry(Observation, observation-travel-history-201801-anon)
* insert addBundleEntry(Observation, observation-emergency-outbreak-info-anon)
* insert addBundleEntry(Observation, observation-exposure-contact-info-football-game-anon)
* insert addBundleEntry(Observation, observation-lab-result-lymphocytes-anon)
* insert addBundleEntry(Observation, observation-vaccine-credential-assertion-anon)
* insert addBundleEntry(Organization, organization-acme-laboratory-anon)
* insert addBundleEntry(Organization, organization-salem-medical-center-anon)
* insert addBundleEntry(Patient, patient-anon)
* insert addBundleEntry(Practitioner, practitioner-anon)
* insert addBundleEntry(PractitionerRole, practitionerrole-anon)
* insert addBundleEntry(Procedure, procedure-ecmo-anon)
* insert addBundleEntry(ServiceRequest, servicerequest-zika-anon)