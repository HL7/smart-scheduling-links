Profile: SmartSchedulingLocation
Parent: Location
Id: smart-scheduling-location
Title: "Location"
Description: """
Each line of the Location File is a minified JSON object that 
conveys a physical location where appointments are available.
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
* id 1..1 MS

* name 1..1 MS
* telecom 1..* MS
  * system 1..1 MS
  * value 1..1 MS

// we're loosening the restrictions on address to accommodate virtual locations
// we are considering sub profiles to handle virtual locations and physical locations more explicitly
* address MS
//   * line 1..* MS
//   * city 1..1 MS
//   * state 1..1 MS
//   * postalCode 1..1 MS
//   * district MS
* description MS
* position MS
  * latitude MS
  * longitude MS

* physicalType MS
* physicalType from LocationPhysicalTypeVS (preferred)

* extension contains 
    $xver-loc-virtualService named virtualService 0..* and
    LicensedStates named licensedStates 0..*

// * extension[virtualService] ^short = "Virtual service connection details (R5 element carried via xver extension)"
// * extension[virtualService] ^definition = "Carries the R5 Location.virtualService element (VirtualServiceDetail) for round-tripping from/to R5."

// * extension[virtualService] obeys ssl-vsd-url-only
// * extension[virtualService].extension[channelType]
// * extension[virtualService].extension[address]
// * extension[virtualService].extension[additionalInfo]
// * extension[virtualService].extension[maxParticipants]
// * extension[virtualService].extension[sessionKey]

// // xver 0.1.0 makes the _datatype sub-extension 1..1, so `value[x] only url` is no longer
// // expressible on the address slice (it would force extension to 0..0). It is stated as an
// // invariant instead, anchored on virtualService rather than on the address slice: xver 0.1.0
// // declares Extension.extension:address.extension as min 0 while its _datatype slice is min 1,
// // so constraining into that sub-tree drags that inconsistency into our snapshot.
// Invariant: ssl-vsd-url-only
// Description: "The virtual service address SHALL be conveyed as a url."
// Severity: #error
// Expression: "extension.where(url = 'address').value.exists() implies extension.where(url = 'address').value.ofType(FHIR.url).exists()"

* extension[licensedStates] ^short = "Licensed states for the location."
* extension[licensedStates] ^definition = "Carries the licensed states for the location. This is a subset of locations where a practitioner is licensed to practice in."

Instance: ExampleLocation
InstanceOf: SmartSchedulingLocation
Title: "Example Physical only Location"
Description: "Example Physical only Location instance conforming to the SMARTLocation profile."
Usage: #example
* id = "44981b4a-8eae-48f7-bb7f-bf008bbe05af"
* identifier.system = "https://healthsystem.example.com/facility-directory"
* identifier.value = "FAC-PITT-001"

* name = "OpenClinTech Primary Clinic"
* status = #active

* telecom[0].system = #phone
* telecom[0].value = "+1-813-555-0100"
* telecom[0].use = #work

* telecom[1].system = #email
* telecom[1].value = "contact@openclintech.com"
* telecom[1].use = #work

* address.line[0] = "123 Main St"
* address.city = "Tampa"
* address.state = "FL"
* address.postalCode = "33602"
* address.district = "Hillsborough"

* physicalType = LocationPhysicalTypeCS#ph

* description = "Primary outpatient clinic offering general services."

* position.latitude = 27.9506
* position.longitude = -82.4572
