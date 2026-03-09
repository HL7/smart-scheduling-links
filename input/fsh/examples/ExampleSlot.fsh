Instance: ExampleSlot
InstanceOf: SmartSchedulingSlot
Title: "Example Slot"
Description: "Example slot that has the booking extensions"
Usage: #example
* schedule = Reference(ExampleSchedule)
* status = #free
* start = "2026-03-21T10:45:00-04:00"
* end = "2026-03-21T11:15:00-04:00"
* extension[0].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/booking-deep-link"
* extension[=].valueUrl = "https://booking.healthsystem.org/slot/123"
* extension[+].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/booking-phone"
* extension[=].valueString = "+1-555-123-4567"