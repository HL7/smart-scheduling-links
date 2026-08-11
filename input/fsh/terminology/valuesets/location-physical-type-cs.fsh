CodeSystem: LocationPhysicalTypeCS
Id: location-physical-type-cs
Title: "Location Physical Type CodeSystem"
Description: """
A code system that adds concepts for a broad physical type location and a combined virtual and physical location.
"""

// required by base FHIR spec
* ^status = #active
* ^content = #complete

// required for hl7 auto publisher
* ^experimental = false
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #pa
* ^publisher = "HL7 International / Patient Administration"
* ^contact[0].name = "HL7 International / Patient Administration"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/pafm"

// our code system
* #ph   "Physical"             "A location that is physical"
