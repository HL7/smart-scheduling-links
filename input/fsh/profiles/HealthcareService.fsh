Profile: SmartSchedulingHealthcareService
Parent: HealthcareService
Id: smart-scheduling-healthcare-service
Title: "Healthcare Service"
Description: "This profile sets minimum expections for a HealthcareService resource"
* id 1..1 MS 
* active 1..1 MS
* providedBy 0..1 MS
* providedBy only Reference(Organization)
* category 0..1 MS
* type 1..1 MS 
* specialty 1..1 MS 
* location 1..1 MS 
* location only Reference(SmartSchedulingLocation)
* name 1..1 MS 
* comment 0..1 MS 
* telecom 0..* MS 
* serviceProvisionCode 0..1 MS 
* appointmentRequired 0..1 MS 
* availableTime 0..* MS 
  * daysOfWeek 0..* MS 
  * allDay 0..1 MS 
  * availableStartTime 0..1 MS 
  * availableEndTime 0..1 MS 
* notAvailable 0..* MS
  * description 1..1 MS
  * during 0..1 MS 




Instance: ExampleHealhCareService
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
