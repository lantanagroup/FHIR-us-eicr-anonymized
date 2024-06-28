Instance: device-ecmo-anon
InstanceOf: Device
Title: "Device Example: ECMO, anonymized"
Description: "Example of Device Profile (anonymized, ECMO)"
Usage: #example

* insert rsDataAbsentReasonText(text)

* udiCarrier.deviceIdentifier = "99863313444316"
* udiCarrier.carrierHRF = "(01)99863313444316(17)220101(10)M320(21)AC222"
* udiCarrier.entryType = #rfid
* status = #active
* manufacturer = "ACME Biomedical"
* expirationDate = "2022-01-01"
* lotNumber = "M320"
* serialNumber = "AC222"
* deviceName.name = "ACME Extracorporeal membrane oxygenator"
* deviceName.type = #udi-label-name
* modelNumber = "4.0"
* type = $sct#469244005 "Extracorporeal membrane oxygenator (physical object)"
* type.text = "Extracorporeal membrane oxygenator (physical object)"
* patient = Reference(patient-anon)