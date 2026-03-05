Profile: SmartSchedulingPractitioner
Parent: Practitioner
Id: smart-scheduling-practitioner
Title: "Practitioner"
Description: "This profile sets minimum expections for a Practitioner resource"
* id 1..1 MS 
* identifier 1..1 MS
  * use 0..1 MS
  * system 0..1 MS 
  * value 0..1 MS 
* active 0..1 MS
* name 0..* MS
  * use 0..1 MS 
  * text 0..1 MS 
  * family 0..1 MS 
  * given 0..* MS 
  * prefix 0..* MS 
  * suffix 0..* MS 
  * period 0..1 MS
* telecom 0..* MS
  * system 0..1 MS 
  * value 0..1 MS 
  * use 0..1 MS 
  * rank 0..1 MS 
  * period 0..1 MS
* address 0..* MS 
  * use 0..1 MS 
  * type 0..1 MS
  * text 0..1 MS  
  * line 0..* MS 
  * city 0..1 MS 
  * district 0..1 MS
  * state 0..1 MS 
  * postalCode 0..1 MS 
  * country 0..1 MS 
  * period 0..1 MS 
 

Instance: ExamplePractitioner
InstanceOf: SmartSchedulingPractitioner
Usage: #example
Title: "Example Practitioner"
Description: "Example Location instance conforming to the SMARTLocation profile."
* id = "fd3c7a99-bb59-4fef-9f79-88d1f7275ca6"
* identifier.use = #usual
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "npi-8373s"
* active = true
* name[+].use = #nickname
* name[=].text = "John Mark"
* name[=].family = "John"
* name[=][+].given = "Mark"
* name[=][0].prefix = "Dr."

* telecom[+].use = #mobile
* telecom[=].system = #phone
* telecom[=].value = "+1-93-736-544"

* telecom[+].use = #work
* telecom[=].system = #email
* telecom[=].value = "johnmark@user.com"

* address[+].use = #work
* address[=].type = #physical
* address[=].city = "Seattle"
* address[=].state = "Washington"
* address[=].postalCode = "98106"   