Profile: SmartSchedulingSlot
Parent: Slot
Id: smart-scheduling-slot 
Title: "Slot"
Description: """
Each line of the Slot File is a minified JSON object that conveys information 
about an appointment slot. Publishers are encouraged to represent slots with 
fine-grained timing details (e.g. representing appointments at specific times 
of the day), but MAY represent slots with coarse grained 
timing (e.g., "between 9 a.m. and 5 p.m." or "between noon and five p.m.").
"""

// Note that there is no US Core 6.1.0 Slot profile
// https://hl7.org/fhir/us/core/STU6.1/

// Already required by base Slot resource
// schedule 1..1
// status 1..1
// start 1..1
// end 1..1

* schedule MS
* schedule only Reference(SmartSchedulingSchedule)
* status MS
* start MS
* end MS
// * appointmentType MS
// * appointmentType from AppointmentTypeAndReasonsVS (preferred)

// 
* extension contains
    BookingDeepLink named bookingDeepLink 0..1 and
    BookingPhone named bookingPhone 0..1 and
    PatientType named patientType 1..1

Instance: ExampleSlot
InstanceOf: SmartSchedulingSlot
Title: "Example Slot"
Description: "Example slot that has the booking extensions"
Usage: #example
* schedule = Reference(ExampleSchedule)
* status = #free
* start = "2026-03-21T10:45:00-04:00"
* end = "2026-03-21T11:15:00-04:00"
* extension[0].url = "http://hl7.org/fhir/uv/smart-scheduling-links/StructureDefinition/booking-deep-link"
* extension[=].valueUrl = "https://ehr.example.org/booking/slots/123"

* extension[+].url = "http://hl7.org/fhir/uv/smart-scheduling-links/StructureDefinition/booking-phone"
* extension[=].valueContactPoint.system = #phone
* extension[=].valueContactPoint.value = "+1-555-123-4567"

* extension[+].url = "http://hl7.org/fhir/uv/smart-scheduling-links/StructureDefinition/patient-type"
* extension[=].valueCoding.system = "http://hl7.org/fhir/us/ndh/ValueSet/AcceptingPatientsVS"
* extension[=].valueCoding.code = #newpt
