Profile: EICRAnonymizedCalculatedAge
Parent: Observation
Id: eicr-anon-caculated-age
Title: "eICR Anonymized Calculated Age"
Description: "This Observation profile represents the patient's age, calculated by subtracting the date of birth from the current date."
* insert rsProfileMeta

* insert rsAddDARConstraints

* code MS
* code = $loinc#29553-5 "Age calculated"

* subject 1..1 MS
* subject only Reference(EICRAnonymizedPatient)
* effective[x] 1..1 MS
* effective[x] only dateTime
* value[x] 1..1 MS
* value[x] only Quantity
* value[x].value 1..1 MS
* value[x].unit 1..1 MS 
* value[x].system 1..1 MS
* value[x].system = $ucum (exactly)
* value[x].code 1..1 MS
* value[x].code from AgePQ_UCUM (extensible)