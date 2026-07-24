ValueSet: LocationPhysicalTypeVS
Id: location-physical-type-vs
Title: "Location Physical Type"
Description: """
A value set that defines the physical type of a location but adds the virtual location from the location-form value set from R5.
"""

// required for hl7 auto publisher
* ^experimental = false
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[0].valueCode = #pa
* ^publisher = "HL7 International / Patient Administration"
* ^contact[0].name = "HL7 International / Patient Administration"
* ^contact[0].telecom[0].system = #url
* ^contact[0].telecom[0].value = "http://www.hl7.org/Special/committees/pafm"

// aligns with the preferred valueset binding for appointmentType in both appointment & slot: https://hl7.org/fhir/R4/v2/0276/index.html
* include codes from system http://terminology.hl7.org/CodeSystem/location-physical-type
* include codes from system LocationPhysicalTypeCS

* http://hl7.org/fhir/ValueSet/location-form#vi "Virtual"

