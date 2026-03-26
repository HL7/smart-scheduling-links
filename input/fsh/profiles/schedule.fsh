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

// TODO - add the schedule extension - note that it likely is semantically duplicative with serviceType and can likely
// be deprecrated


Instance: ExampleSchedule
InstanceOf: SmartSchedulingSchedule
Title: "Example Schedule"
Description: "Example Schedule instance conforming to the SmartSchedulingSchedule profile."
Usage: #example
* serviceType = $service-type#124 "General Practice"
* actor[0] = Reference(ExampleLocation) "Berkshire Family Medicine - Pittsfield"
* actor[+] = Reference(ExamplePractitionerRole) "Dr. John Robert Smith"
