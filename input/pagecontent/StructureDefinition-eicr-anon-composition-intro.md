It is based on the **[eICR Composition](http://hl7.org/fhir/us/ecr/StructureDefinition/eicr-composition)** profile with further constraints to require masking of:
 * subject
 * encounter
 * author
 * custodian

It disallows the Exposure Contact Information profile (slice) and requires the text to be masked in the History of Present Illness Section and Past Medical History Section.
 
 It requires:
  * relatesTo (must reference the original eICR)
  * eICR Anonymized Immunization
  * Calculated Age Observation