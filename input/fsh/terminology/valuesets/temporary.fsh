CodeSystem: Temporary
Id: temporary
Title: "Temporary CodeSystem"
Description: """
A temporary code system holding codes this implementation guide requires that do not yet exist
in an appropriate code system. It currently defines a single concept for a broad physical
location type, which is absent from
http://terminology.hl7.org/CodeSystem/location-physical-type.

These codes WILL change. They are expected to migrate to HL7 Terminology (THO) in a future
release of this guide, at which point this code system and its URL will be retired and
implementers will need to move to the replacement codes.
"""

// required by base FHIR spec
* ^status = #active
* ^content = #complete
* ^caseSensitive = true // required for hl7 codesystems; must conform to shareable codesystem profile

// required for hl7 auto publisher
* ^experimental = true
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #pa
* ^publisher = "HL7 International / Patient Administration"
* ^contact[0].name = "HL7 International / Patient Administration"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/pafm"

// our code system
* #ph   "Physical"             "A location that is physical"
