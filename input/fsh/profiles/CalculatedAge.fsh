Profile: CalculatedAge
Parent: Observation
Id: caculated-age-observation
Title: "Calculated Age"
Description: "This Observation profile represents the patient's age, calculated by subtracting the date of birth from the current date."
* insert rsProfileMeta

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