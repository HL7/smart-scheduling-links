Instance: ExampleVirtualandPhysicalLocation
InstanceOf: SmartSchedulingLocation
Title: "Example Virtual and Physical Location"
Description: "Example Virtual and Physical Location instance conforming to the SMART Location profile."
Usage: #example
* id = "44981b4a-8eae-48f7-bb7f-bf008bbe35af"
* identifier.system = "https://healthsystem.example.com/facility-directory"
* identifier.value = "FAC-PITT-001"

* name = "Virtual and Physical Telemedicine Clinic"
* status = #active

* telecom[0].system = #phone
* telecom[0].value = "+1-813-555-0100"
* telecom[0].use = #work

* telecom[1].system = #email
* telecom[1].value = "contact@smart.com"
* telecom[1].use = #work

* address.line[0] = "123 Main St"
* address.city = "Tampa"
* address.state = "FL"
* address.postalCode = "33602"
* address.district = "Hillsborough"

* description = "Primary outpatient clinic offering telemedicine services."

* physicalType = LocationPhysicalTypeCS#phvi

* extension[licensedStates][0].valueString = "FL"
* extension[licensedStates][1].valueString = "GA"