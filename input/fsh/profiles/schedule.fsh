Profile: SmartSchedulingSchedule
Parent: Schedule
Id: smart-scheduling-schedule
Title: "Schedule"
Description: "This profile sets the minimum expectations for a Schedule Resource."

// Required by base R4 Schedule
//* actor 1..* // for notes purposes; commented out so it doesn't impact diff

// No US Core profile for Schedule in 6.1.0
// https://hl7.org/fhir/us/core/STU6.1/

// Align with SMART Schedule Link
// https://github.com/smart-on-fhir/smart-scheduling-links/blob/master/specification.md#schedule-file
// https://github.com/Culby/smart-scheduling-links/blob/master/specification.md#schedule-file
// actor references location (like the original), but also the PractitionerRole
* actor MS
  * reference 1..1 MS // original
  * display MS // from proposed
* serviceType 1..* MS // from both

// TODO - add the schedule extension - note that it likely is semantically duplicative with serviceType and can likely
// be deprecrated


Instance: ExampleSchedule
InstanceOf: SmartSchedulingSchedule
Title: "Example Schedule"
Usage: #example
* serviceType = $service-type#124 "General Practice"
* actor[0] = Reference(ExampleLocation) "Berkshire Family Medicine - Pittsfield"
* actor[+] = Reference(ExamplePractitionerRole) "Dr. John Robert Smith"
* extension.url = "http://fhir-registry.smarthealthit.org/StructureDefinition/specialty"
* extension.valueCoding = $sct#394802001 "General medicine"
