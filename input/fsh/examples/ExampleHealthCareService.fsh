Instance: ExampleHealthCareService
InstanceOf: SmartSchedulingHealthcareService
Usage: #example
* active = true
* providedBy = Reference(ExampleOrganization) "ACME Health System"
* category = $service-category#17 "General Practice"
* type = $sct#308335008 "Patient encounter procedure"
* type.text = "Primary Care Visit"
* specialty = $sct#394814009 "General practice"
* location = Reference(ExampleLocation) "OpenClinTech Primary Clinic"
* name = "Primary Care Appointments - Online Booking"
* comment = "Book your primary care appointment online. Appointments available with next available provider. For urgent needs, please call our office or visit urgent care."
* telecom[+].use = #work
* telecom[=].system = #phone
* telecom[=].value = "(555) 123-4567"
* telecom[+].use = #work
* telecom[=].system = #email
* telecom[=].value = "appointments@acmehealth.org"
* telecom[+].use = #work
* telecom[=].system = #url
* telecom[=].value = "https://appointments.acmehealth.org"
* serviceProvisionCode = $service-provision-conditions#cost "Fees apply"
* appointmentRequired = true
* availableTime.daysOfWeek[0] = #mon
* availableTime.daysOfWeek[+] = #tue
* availableTime.daysOfWeek[+] = #wed
* availableTime.daysOfWeek[+] = #thu
* availableTime.daysOfWeek[+] = #fri
* availableTime.availableStartTime = "08:00:00"
* availableTime.availableEndTime = "17:00:00"
* availabilityExceptions = "Closed on major holidays. Online booking available 24/7 for future appointments."
