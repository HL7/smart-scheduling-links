Instance: ExampleVirtualLocation
InstanceOf: SmartSchedulingLocation
Title: "Example Virtual Location"
Description: "Example Virtual Location instance conforming to the SMARTLocation profile."
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
* telecom[1].value = "contact@smart.com"
* telecom[1].use = #work

* address.line[0] = "123 Main St"
* address.city = "Tampa"
* address.state = "FL"
* address.postalCode = "33602"
* address.district = "Hillsborough"

* description = "Primary outpatient clinic offering telemedicine services."

* physicalType = http://hl7.org/fhir/ValueSet/location-form#vi
