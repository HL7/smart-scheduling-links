Instance: AcceptNewAndExistingPatients
InstanceOf: SmartSchedulingSlot
Usage: #example
Title: "Slot Accepting New and Existing Patients"
Description: "A slot that is accepting new and existing patients"

* appointmentType = http://terminology.hl7.org/CodeSystem/accepting-patients#newpt
* schedule = Reference(ExampleSchedule)
* status = #free
* start = "2026-03-21T10:45:00-04:00"
* end = "2026-03-21T11:15:00-04:00"

Instance: AcceptOnlyExistingPatients
InstanceOf: SmartSchedulingSlot
Usage: #example
Title: "Slot Accepting Only Existing Patients"
Description: "A slot that is accepting only existing patients"

* appointmentType = http://terminology.hl7.org/CodeSystem/accepting-patients#existptonly
* schedule = Reference(ExampleSchedule)
* status = #free
* start = "2026-03-21T10:45:00-04:00"
* end = "2026-03-21T11:15:00-04:00"
