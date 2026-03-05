Extension: BookingPhone
Id: booking-phone
Title: "Booking Phone"
Description: "A phone number the user can call to book this slot."
* ^url = "http://fhir-registry.smarthealthit.org/StructureDefinition/booking-phone"
* ^status = #active
* ^context.type = #element
* ^context.expression = "Slot"

* value[x] only string
* valueString 1..1
