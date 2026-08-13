Instance: ExampleVirtualLocation
InstanceOf: SmartSchedulingLocation
Title: "Example Virtual Only Location"
Description: "Example Virtual only Location instance conforming to the SMART Virtual Location profile."
Usage: #example
* id = "44981b4a-8eae-48f7-bb7f-bf008bbe05ad"
* identifier.system = "https://healthsystem.example.com/facility-directory"
* identifier.value = "FAC-PITT-001"

* name = "Virtual Telemedicine Clinic"
* status = #active

* telecom[0].system = #phone
* telecom[0].value = "+1-813-555-0100"
* telecom[0].use = #work

* telecom[1].system = #email
* telecom[1].value = "contact@openclintech.com"
* telecom[1].use = #work

* description = "Primary outpatient clinic offering telemedicine services."

* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#vi
