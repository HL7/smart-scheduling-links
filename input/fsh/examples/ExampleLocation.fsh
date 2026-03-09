Instance: ExampleLocation
InstanceOf: SmartSchedulingLocation
Title: "Example Location"
Description: "Example Location instance conforming to the SMARTLocation profile."
Usage: #example
* id = "44981b4a-8eae-48f7-bb7f-bf008bbe05af"
* identifier[0].system = "https://www.openclintech.com/ids/locations"
* identifier[0].value = "loc-001"

* name = "OpenClinTech Primary Clinic"
* status = #active

* telecom[0].system = #phone
* telecom[0].value = "+1-813-555-0100"
* telecom[0].use = #work

* telecom[1].system = #email
* telecom[1].value = "contact@openclintech.com"
* telecom[1].use = #work

* address.line[0] = "123 Main St"
* address.city = "Tampa"
* address.state = "FL"
* address.postalCode = "33602"
* address.district = "Hillsborough"

* description = "Primary outpatient clinic offering general services."

* position.latitude = 27.9506
* position.longitude = -82.4572