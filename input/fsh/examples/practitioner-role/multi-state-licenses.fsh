Instance: jane-smith-md
InstanceOf: SmartSchedulingPractitionerRole
Usage: #example
* identifier[+].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "1234567811"
* active = true
* period.start = "2020-01-01"
* practitioner = Reference(JaneSmithMD)
* organization = Reference(ExampleOrganization)
* code = $sct#309343006 "Physician"
* specialty = $sct#394802001 "General medicine"
* location[+] = Reference(FloridaLocation) "Florida Location"
* location[+] = Reference(WashingtonLocation) "Washington Location"
* location[+] = Reference(VirginiaLocation) "Virginia Location"
* telecom[0].system = #phone
* telecom[=].value = "413-555-0123"
* telecom[+].system = #email
* telecom[=].value = "appointments@berkshirefamilymedicine.example.com"
