Profile: SmartSchedulingSchedule
Parent: Schedule
Id: smart-scheduling-schedule
Title: "Schedule"
Description: """
Each line of the Schedule File is a minified JSON object that conveys information about a Schedule 
to which slots are attached. The Schedule represents a particular healthcare service (e.g., primary care 
appointments, specialist consultations, or procedures) offered at a specific location or by a specific 
practitioner role.
"""

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
* extension contains schedule-specialty named specialty 0..*

Instance: ExampleSchedule
InstanceOf: SmartSchedulingSchedule
Title: "Example Schedule"
Description: "This example demonstrates a Schedule with multiple actors, indicating that general practice appointments are available for practitioner role "doc-smith-role" at location "123". This pattern is commonly used when a specific practitioner role provides services at a specific location."
Usage: #example
* serviceType = $service-type#124 "General Practice"
* actor[0] = Reference(ExampleLocation) "Berkshire Family Medicine - Pittsfield"
* actor[+] = Reference(ExamplePractitionerRole) "Dr. John Robert Smith"
* extension[+].url = "http://fhir-registry.smarthealthit.org/StructureDefinition/specialty"
* extension[=].valueCoding = $sct#394802001 "General medicine"
