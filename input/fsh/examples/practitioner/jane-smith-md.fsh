Instance: JaneSmithMD
InstanceOf: SmartSchedulingPractitioner
Usage: #example
Title: "Jane Smith, MD"
Description: "Jane Smith MD with multiple state licenses"
* id = "jane-smith-md"
* identifier.use = #usual
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "4827472855"
* active = true
* name[+].use = #nickname
* name[=].text = "Jane Smith"
* name[=].family = "Smith"
* name[=][+].given = "Jane"
* name[=][0].prefix = "Dr."

* telecom[+].use = #mobile
* telecom[=].system = #phone
* telecom[=].value = "+1-93-736-544"

* telecom[+].use = #work
* telecom[=].system = #email
* telecom[=].value = "janesmith@user.com"

* address[+].use = #work
* address[=].type = #physical
* address[=].city = "Miami"
* address[=].state = "Florida"
* address[=].postalCode = "33101"   