Extension: BookingDeepLink
Id: booking-deep-link
Title: "Booking Deep Link"
Description: "A deep link into the Provider Booking Portal where the user can begin booking this slot."
* ^url = "http://fhir-registry.smarthealthit.org/StructureDefinition/booking-deep-link"
* ^status = #active
* ^context.type = #element
* ^context.expression = "Slot"

* value[x] only url
* valueUrl 1..1
