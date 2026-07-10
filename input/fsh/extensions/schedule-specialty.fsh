Extension: ScheduleSpeciality
Id: schedule-specialty
Title: "Schedule Specialty"
Description: "The specialty associated with this schedule."
* ^context.type = #element
* ^context.expression = "Schedule"

* value[x] only Coding
* valueCoding 1..1
* valueCoding.system 1..1
* valueCoding.code 1..1
* valueCoding.display 0..1
