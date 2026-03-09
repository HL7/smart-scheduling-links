Profile: SmartSchedulingSlot
Parent: Slot
Id: smart-scheduling-slot 
Title: "Slot"
Description: "This profile sets minimum expectations for a Slot Resource."

// Note that there is no US Core 6.1.0 Slot profile
// https://hl7.org/fhir/us/core/STU6.1/

// Already required by base Slot resource
// schedule 1..1
// status 1..1
// start 1..1
// end 1..1
* appointmentType MS
* appointmentType from AppointmentTypeAndReasonsVS (preferred)

// 
* extension contains
    BookingDeepLink named bookingDeepLink 0..1 and
    BookingPhone named bookingPhone 0..1
