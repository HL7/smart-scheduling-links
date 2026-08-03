Instance: ExampleSlotWithCharacteristic
InstanceOf: SmartSchedulingSlot
Usage: #example
Title: "Slot with Characteristic Extension (Alternative to Patient Type)"
Description: """
A slot using the characteristic complex extension — an alternative modeling approach to
the standalone patient-type extension (a slot would use one or the other, not both).
This slot is accepting new patients and offers services in English (US) and Spanish.
"""

* schedule = Reference(ExampleSchedule)
* status = #free
* start = "2026-03-21T10:45:00-04:00"
* end = "2026-03-21T11:15:00-04:00"

* extension[+].url = "http://hl7.org/fhir/uv/smart-scheduling-links/StructureDefinition/characteristic"
* extension[=].extension[+].url = "acceptingPatients"
* extension[=].extension[=].valueCodeableConcept.coding.system = "http://terminology.hl7.org/CodeSystem/accepting-patients"
* extension[=].extension[=].valueCodeableConcept.coding.code = #newpt
* extension[=].extension[+].url = "languagesSpoken"
* extension[=].extension[=].valueCodeableConcept.coding.system = "urn:ietf:bcp:47"
* extension[=].extension[=].valueCodeableConcept.coding.code = #en-US
* extension[=].extension[=].valueCodeableConcept.coding.display = "English (United States)"
* extension[=].extension[+].url = "languagesSpoken"
* extension[=].extension[=].valueCodeableConcept.coding.system = "urn:ietf:bcp:47"
* extension[=].extension[=].valueCodeableConcept.coding.code = #es
* extension[=].extension[=].valueCodeableConcept.coding.display = "Spanish"
