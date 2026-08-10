Instance: ScheduleWithVirtualAndPhysicalLocations
InstanceOf: SmartSchedulingSchedule
Title: "Schedule with Virtual and Physical Locations"
Description: """
This example demonstrates a Schedule with locations that are both physical and virtual. 
This pattern is commonly used when a specific practitioner role provides services at a 
specific location, but the service can also be provided virtually.
"""
Usage: #example
* serviceType = $service-type#124 "General Practice"
* actor[+] = Reference(ExampleLocation) "Berkshire Family Medicine - Pittsfield"
* actor[+] = Reference(ExampleVirtualLocation)
* actor[+] = Reference(ExamplePractitionerRole) "Dr. John Robert Smith"
* extension[+].url = "http://hl7.org/fhir/uv/smart-scheduling-links/StructureDefinition/schedule-specialty"
* extension[=].valueCoding = $sct#394802001 "General medicine"
