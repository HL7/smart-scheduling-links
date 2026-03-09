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
