Instance: ExampleVirtualLocation
InstanceOf: SmartSchedulingVirtualLocation
Title: "Example Virtual Only Location"
Description: "Example Virtual only Location instance conforming to the SMART Virtual Location profile."
Usage: #example
* id = "44981b4a-8eae-48f7-bb7f-bf008bbe05ad"
* identifier.system = "https://healthsystem.example.com/facility-directory"
* identifier.value = "FAC-PITT-001"

* name = "Virtual Telemedicine Clinic"
* status = #active

// virtual locations will not require a physical address
// * address.line[0] = "123 Main St"
// * address.city = "Tampa"
// * address.state = "FL"
// * address.postalCode = "33602"
// * address.district = "Hillsborough"

* description = "Primary outpatient clinic offering telemedicine services."

* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#vi

* extension[licensedStates][0].valueString = "FL"
* extension[licensedStates][1].valueString = "GA"
* extension[licensedStates][2].valueString = "AL"
