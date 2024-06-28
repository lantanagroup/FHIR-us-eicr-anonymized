Instance: observation-rr-relevant-reportable-condition-anon
InstanceOf: RRRelevantReportableConditionObservation
Title: "RR Relevant Reportable Condition Observation Example - anonymized"
Description: "Example of RR Relevant Reportable Condition Observation profile - anonymized"
Usage: #example

* insert rsDataAbsentReasonText(text)

* status = #final
* code.coding[codeSNOMED] = $sct#64572001
* code.coding[codeLOINC] = $loinc#75323-6
* code.text = "Condition"
* subject = Reference(patient-anon)
* valueCodeableConcept = $sct#3928002 "Zika virus disease (disorder)"
* hasMember.reference = "Observation/observation-rr-reportability-information-anon"