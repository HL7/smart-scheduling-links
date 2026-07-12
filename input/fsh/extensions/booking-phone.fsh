Extension: BookingPhone
Id: booking-phone
Title: "Booking Phone"
Description: "A phone number the user can call to book this slot."
* ^context.type = #element
* ^context.expression = "Slot"

* value[x] only ContactPoint
* valueContactPoint 1..1
* valueContactPoint.system 1..1
* valueContactPoint.system = #phone (exactly)
* valueContactPoint.value 1..1
