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