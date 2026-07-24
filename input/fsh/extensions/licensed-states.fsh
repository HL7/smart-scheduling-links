Extension: LicensedStates
Id: licensed-states
Title: "Licensed States"
Description: """
A list of states where this location can provide services. This is orthogonal
to the concept of which states a practitioner is licensed in. The latter is
a superset of the former.
"""
* ^context.type = #element
* ^context.expression = "Location"

// Each repetition of this extension carries exactly one state.
// Extension.value[x] is 0..1 in the base resource, so the "many states"
// cardinality lives on the slice where the extension is used (see
// SmartSchedulingLocation), not here.
* value[x] only string
* value[x] 1..1
