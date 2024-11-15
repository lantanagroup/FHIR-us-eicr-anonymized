Instance: procedure-ecmo-anon
InstanceOf: EICRProcedure
Title: "eICR Procedure Example: ECMO"
Description: "Example of eICR Procedure (anonymized, ECMO)"
Usage: #example

* insert rsDataAbsentReasonText(text)

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:b2a737f2-2fdb-49c1-b097-dac173d07afd"
* status = #completed
* code = $sct#233573008 "Extracorporeal membrane oxygenation (procedure)"
* code.text = "Extracorporeal membrane oxygenation (procedure)"
* subject = Reference(patient-anon)
* performedPeriod.start = "2020-11-01T12:55:26-07:00"
* performedPeriod.end = "2020-11-01T13:25:26-07:00"
* focalDevice.manipulated.reference = "Device/device-ecmo-anon"