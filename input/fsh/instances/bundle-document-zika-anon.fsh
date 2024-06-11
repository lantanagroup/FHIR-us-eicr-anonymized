Instance: bundle-document-zika-anon
InstanceOf: EICRAnonymizedDocumentBundle
Title: "eICR Anonymized Document Bundle Example: bundle-eicr-document-zika-anon"
Description: "Example of eICR Anonymized Document Bundle profile (anonymized, Zika)"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:2be4b4e4-6df1-4cb2-a947-c70fa0eda54d"
* type = #document
* timestamp = "2024-06-02T22:13:23Z"
* insert rsAddBundleEntry(Composition, composition-zika-anon)
* insert rsAddBundleEntry(Condition, condition-zika-anon)
* insert rsAddBundleEntry(Condition, condition-common-cold-anon)
* insert rsAddBundleEntry(Encounter, encounter-outpatient-anon)
* insert rsAddBundleEntry(Immunization, immunization-pneumo-anon)
// * insert rsAddBundleEntry(Location, location-city-football-stadium-anon)
* insert rsAddBundleEntry(Location, location-salem-medical-center-anon)
* insert rsAddBundleEntry(MedicationAdministration, medicationadministration-azithromycin-anon)
* insert rsAddBundleEntry(MedicationAdministration, medicationadministration-naloxone-response-anon)
* insert rsAddBundleEntry(Observation, observation-blood-pressure-anon)
* insert rsAddBundleEntry(Observation, observation-calculated-age-anon)
* insert rsAddBundleEntry(Observation, observation-country-of-nationality-anon)
* insert rsAddBundleEntry(Observation, observation-country-of-residence-anon)
* insert rsAddBundleEntry(Observation, observation-disability-status-anon)
* insert rsAddBundleEntry(Observation, observation-odh-usual-work-anon)
* insert rsAddBundleEntry(Observation, observation-pregnancy-status-anon)
* insert rsAddBundleEntry(Observation, observation-travel-history-201801-anon)
* insert rsAddBundleEntry(Observation, observation-emergency-outbreak-info-anon)
// * insert rsAddBundleEntry(Observation, observation-exposure-contact-info-football-game-anon)
* insert rsAddBundleEntry(Observation, observation-lab-result-lymphocytes-anon)
* insert rsAddBundleEntry(Observation, observation-vaccine-credential-assertion-anon)
* insert rsAddBundleEntry(Organization, organization-acme-laboratory-telecom-anon)
* insert rsAddBundleEntry(Organization, organization-telecom-anon)
* insert rsAddBundleEntry(Organization, organization-salem-medical-center-anon)
* insert rsAddBundleEntry(Patient, patient-anon)
* insert rsAddBundleEntry(Practitioner, practitioner-anon)
* insert rsAddBundleEntry(PractitionerRole, practitionerrole-anon)
* insert rsAddBundleEntry(Procedure, procedure-ecmo-anon)
* insert rsAddBundleEntry(ServiceRequest, servicerequest-zika-anon)