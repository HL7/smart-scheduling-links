Extension: SlotCharacteristic
Id: characteristic
Title: "Slot Characteristic"
Description: """
This extension is modeled on the `characteristic` data element from the FHIR R6/CI build
(e.g., HealthcareService.characteristic), which conveys a collection of characteristics
(attributes), each represented as its own CodeableConcept.

It is modeled as a complex extension: each characteristic is a named sub-extension carrying
its own CodeableConcept. This mirrors the repeating `0..* CodeableConcept` shape of the R6
element — orthogonal concepts (e.g., patient acceptance policy vs. languages spoken) are
kept in separate CodeableConcepts rather than mixed as sibling codings of a single one.

This extension is an alternative modeling approach to the standalone patient-type extension;
a slot would use one approach or the other, not both.

Defined characteristics:

- `acceptingPatients` (1..1): the new/existing patient acceptance policy, bound to AcceptingPatientsVS.
- `languagesSpoken` (0..*): a language available/spoken for this slot (one per repetition),
  coded with BCP-47 as in Patient.communication.language, so slot discovery clients can
  render language filters for patients booking appointments.
"""

* ^context.type = #element
* ^context.expression = "Slot"

* value[x] 0..0
* extension contains
    acceptingPatients 1..1 and
    languagesSpoken 0..*

* extension[acceptingPatients] ^short = "New/existing patient acceptance policy"
* extension[acceptingPatients].value[x] only CodeableConcept
* extension[acceptingPatients].valueCodeableConcept 1..1
* extension[acceptingPatients].valueCodeableConcept.coding 1..1
* extension[acceptingPatients].valueCodeableConcept.coding.system 1..1
* extension[acceptingPatients].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/accepting-patients"
* extension[acceptingPatients].valueCodeableConcept.coding.code 1..1
* extension[acceptingPatients].valueCodeableConcept.coding.code from http://hl7.org/fhir/us/ndh/ValueSet/AcceptingPatientsVS (required)

* extension[languagesSpoken] ^short = "Language available/spoken for this slot (one per repetition)"
* extension[languagesSpoken].value[x] only CodeableConcept
* extension[languagesSpoken].valueCodeableConcept 1..1
* extension[languagesSpoken].valueCodeableConcept.coding 1..1
* extension[languagesSpoken].valueCodeableConcept.coding.system 1..1
* extension[languagesSpoken].valueCodeableConcept.coding.system = "urn:ietf:bcp:47"
* extension[languagesSpoken].valueCodeableConcept.coding.code 1..1
* extension[languagesSpoken].valueCodeableConcept.coding.code from http://hl7.org/fhir/ValueSet/all-languages (required)
