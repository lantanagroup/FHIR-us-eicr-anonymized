Instance: observation-blood-pressure-anon
InstanceOf: USCoreBloodPressureProfile
Title: "US Core Vital Sign Observation example"
Description: "Example of US Core Vital Sign Observation profile."
Usage: #example
* status = #final
* category[VSCat] = $observation-category#vital-signs "Vital Signs"
* category[VSCat].text = "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* code.text = "Blood pressure systolic and diastolic"
* subject = Reference(patient-anon)
* encounter.display = "GP Visit"
* effectiveDateTime = "2020-07-02"
* component[systolic].code = $loinc#8480-6 "Systolic blood pressure"
* component[systolic].code.text = "Systolic blood pressure"
* component[systolic].valueQuantity = 109 'mm[Hg]' "mmHg"
* component[diastolic].code = $loinc#8462-4 "Diastolic blood pressure"
* component[diastolic].code.text = "Diastolic blood pressure"
* component[diastolic].valueQuantity = 44 'mm[Hg]' "mmHg"