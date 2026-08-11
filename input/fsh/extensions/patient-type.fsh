Extension: PatientType
Id: patient-type
Title: "Patient Type"
Description: """
This extension enables SSL to represent new-patient acceptance policy and binding to
AcceptingPatientsVS. 
"""

* ^context.type = #element
* ^context.expression = "Slot"

* value[x] only Coding
* valueCoding 1..1
* valueCoding.system 1..1
* valueCoding.system = "http://terminology.hl7.org/CodeSystem/accepting-patients"
* valueCoding.code 1..1
* valueCoding.code from http://terminology.hl7.org/ValueSet/accepting-patients (extensible)
