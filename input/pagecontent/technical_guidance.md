For transmission of reportable, anonymized eICR data to the CDC when the relevant PHA has approved that sharing.

This IG masks and/or disallows fields in the various FHIR profiles for the purposes of anonymization.

Where changes were needed to the original eICR IG profiles, new profiles that are based on the original profiles have been created:
 - eICR Anonymized Composition
 - eICR Anonymized DocumentBundle
 - eICR Anonymized Encounter
 - eICR Anonymized Immunization
 - eICR Anonymized Location
 - eICR Anonymized Organization
 - eICR Anonymized Past or Present Job
 - eICR Anonymized Patient
 - eICR Anonymized Practitioner
 - eICR Anonymized PractitionerRole
 - eICR Anonymized RelatedPerson

Rather than create new profiles for all the profiles in the original eICR IG, in order to replace the original Patient, Practitioner, Organization profiles with new anonymized profiles, constraints (invariants) have been added to the eICR Document Bundle to validate that all relevant references conform to the new anonymized profiles. For example, there is a constraint to ensure that all Patient references in the Bundle conform to the new anonymized Patient profile and that a display that could inadvertently show patient data is disallowed.