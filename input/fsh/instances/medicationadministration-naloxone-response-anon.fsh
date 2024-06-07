Instance: medicationadministration-naloxone-response-anon
InstanceOf: USPublicHealthMedicationAdministration
Title: "MedicationAdministration Example: anonymized, naloxone response"
Description: "Example of MedicationAdministration resource with Therapeutic Medication Response extension (anonymized: naloxone response)"
Usage: #example
* extension.url = "http://hl7.org/fhir/us/ecr/StructureDefinition/us-ph-therapeutic-medication-response-extension"
* extension.valueCodeableConcept = $sct#268910001 "Patient's condition improved (finding)"
* status = #completed
* medicationCodeableConcept = $rxnorm#1659929 "naloxone HCl 0.4 MG in 1 ML Injection"
* subject = Reference(patient-anon)
* effectivePeriod.start = "2018-03-07"
* effectivePeriod.end = "2018-03-07"
* dosage.route = $sct#206007 "Gluteus maximus muscle"
* dosage.method = $sct#422145002 "Inject - dosing instruction imperative (qualifier value)"
* dosage.dose = 1 'mL' "mL"