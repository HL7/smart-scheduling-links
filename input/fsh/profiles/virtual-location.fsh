Profile: SmartSchedulingVirtualLocation
Parent: SmartSchedulingLocation
Id: smart-scheduling-virtual-location
Title: "Virtual Location"
Description: """
Each line of the Virtual Location File is a minified JSON object that 
conveys a virtual location where appointments are available.
"""

// Align with US Core 6.1.0 
// https://hl7.org/fhir/us/core/STU6.1/StructureDefinition-us-core-location.html
// * name 1..1 MS // only required field. Name is also required in smart scheduling
// * status MS
// * telecom MS
// * address MS
//   * line MS
//   * city MS
//   * state MS
//   * postalCode MS
//   * district MS
// * managingOrganization MS

// Align with SMART Schedule
// https://github.com/smart-on-fhir/smart-scheduling-links/blob/master/specification.md
// https://github.com/Culby/smart-scheduling-links/blob/master/specification.md
// * id 1..1 MS
// * identifier 1..* MS

// * name 1..1 MS
// * telecom 1..* MS
//   * system 1..1 MS
//   * value 1..1 MS

// address fields are optional for virtual locations
// instead, virtual locations will largely be required to use the licensedStates extension to indicate 
//the states where the virtual location is licensed to operate
//* address MS
//   * line 1..* MS
//   * city 1..1 MS
//   * state 1..1 MS
//   * postalCode 1..1 MS
//   * district MS
// * description MS
// * position MS
//   * latitude MS
//   * longitude MS

// * physicalType MS
* physicalType = http://terminology.hl7.org/CodeSystem/location-physical-type#vi

// * extension contains 
//     $xver-loc-virtualService named virtualService 0..* and 
//     LicensedStates named licensedStates 1..*
* extension[licensedStates] 1..* MS

* extension[virtualService] ^short = "Virtual service connection details (R5 element carried via xver extension)"
* extension[virtualService] ^definition = "Carries the R5 Location.virtualService element (VirtualServiceDetail) for round-tripping from/to R5."
* extension[virtualService].extension[channelType]
* extension[virtualService].extension[address[x]]
* extension[virtualService].extension[address[x]].value[x] only url
* extension[virtualService].extension[additionalInfo]
* extension[virtualService].extension[maxParticipants]
* extension[virtualService].extension[sessionKey]

* extension[licensedStates] ^short = "Licensed states for the location."
* extension[licensedStates] ^definition = "Carries the licensed states for the location. This is a subset of locations where a practitioner is licensed to practice in."
