Instance: ExampleSchedule
InstanceOf: SmartSchedulingSchedule
Title: "Example Schedule"
Usage: #example
* serviceType = $service-type#124 "General Practice"
* actor[0] = Reference(ExampleLocation) "Berkshire Family Medicine - Pittsfield"
* actor[+] = Reference(ExamplePractitionerRole) "Dr. John Robert Smith"
* extension.url = "http://fhir-registry.smarthealthit.org/StructureDefinition/specialty"
* extension.valueCoding = $sct#394802001 "General medicine"