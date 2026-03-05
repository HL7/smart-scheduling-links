Profile: SmartSchedulingPractitionerRole
Parent: PractitionerRole
Id: smart-scheduling-practitionerRole
Title: "PractitionerRole"
Description: "The PractitionerRole resource represents the specific roles that practitioners perform at organizations where appointments are available"
* id 1..1 MS 
* identifier 0..* MS 
* active 0..1 MS 
* period 0..1 MS 
  * start 0..1 MS
  * end 0..1 MS 
* practitioner 0..1 MS
* practitioner only Reference(SmartSchedulingPractitioner) 
* organization 0..1 MS
* organization only Reference(Organization)
* code 0..* MS 
* specialty 0..* MS 
* location 0..* MS 
* location only Reference(SmartSchedulingLocation)
* healthcareService 0..* MS
* healthcareService only Reference(SmartSchedulingHealthcareService)
* telecom MS


Instance: ExamplePractitionerRole
InstanceOf: SmartSchedulingPractitionerRole
Title: "Example PractitionerRole"
Usage: #example
* id = "ad23d8f2-b88e-48af-ae96-e36f5a5fbd43"
* identifier[0].system = "https://healthsystem.example.com/practitioner-role-directory"
* identifier[=].value = "ROLE-12345"
* identifier[+].system = "http://hl7.org/fhir/sid/us-npi"
* identifier[=].value = "1234567890"
* active = true
* period.start = "2020-01-01"
* practitioner = Reference(ExamplePractitioner) "Dr. John Robert Smith"
* organization = Reference(ExampleOrganization) "Berkshire Family Medicine"
* code = $sct#309343006 "Physician"
* specialty = $sct#394802001 "General medicine"
* location = Reference(ExampleLocation) "OpenClinTech Primary Clinic"
* telecom[0].system = #phone
* telecom[=].value = "413-555-0123"
* telecom[+].system = #email
* telecom[=].value = "appointments@berkshirefamilymedicine.example.com"
