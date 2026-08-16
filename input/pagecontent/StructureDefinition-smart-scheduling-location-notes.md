Discussed modeling approaches within the SSL Workgroup. See [notes in confluence](https://confluence.hl7.org/spaces/PA/pages/413052512/Telemedicine+visits) that discusses the modeling approaches and pro/cons for choosing this modeling direction

### Representing virtual locations that are licensed
In the Location resource, address has a 0..1 cardinality. Within that data element, state is also 0..1. 
A use case we need to account for is the concept of showing available slots that patients can book
for, usually, the state that they live in. Usually, the superset of states here is based on the 
practitioner's license. However, that concept is orthogonal to which slot is available because a
practitioner may not necessarily want to offer appointments in a given state. There are multiple ways
of modeling this with some of them described below:

- Option 1: extend the native Location.address.state data element to have a 0..* cardinality
- Option 2: use multiple Location resources to represent the available slots for a particular state
- Option 3: introduce an extension on Location that denotes the states in which this slot can be offered.

For this PR, we're opting for Option 3 since Location.address semantically represents a physical location and this use case primarily addresses virtual visits. Thus, favor an extension that explicitly describes this use case.

[Discussed on 8/3/26](https://github.com/HL7/smart-scheduling-links/pull/45) to do the following:
- remove combined code for physical & virtual; encourage implementers to use two locations instead of one when modeling a location that can be both virtual & location.
- for licensed states, an alternative data model was proposed to use PractitionerRole.location instead of modeling multiple states directly in location as licensedStates extension. However, in doing the modeling, the concepts likely should be a bit more coupled as slot discovery clients would want to filter on a state, but also whether or not that location is virtual. Suggestion to keep on Location. Options thus are:
  - Option 1: keep existing licensedStates extension on Location. Slot discovery clients can use that to filter on states, but also the visit modaility to further filter on whether a slot is virtual or physical or both
  - Option 2: model multiple states on PractitionerRole.location[]. Slot discovery clients will need to reconcile PractitionerRole.location[] with Schedule.location[] to determine which slots are available in which states and what modalilities. We could also use the same location A in that PractitionerRole.locationA and Schedule.locationA to make that easier. 
  
  Discussed 8/13/26 - internally w/ stakeholders. We agreed to remove the licensed state extension, which also allows us to remove the virtual location sub profile, given that this is a universal realm (UV) FHIR IG. Licensed state is a US-centric concept. We discussed an extension that may be more applicable like licensedJurisdiction, but ultimately landed on removing it entirely and considering a future US-centric SMART Scheduling Links FHIR IG to profile the extension against a state-specific binding like the US Core 2-letter state value set. In the interim, we'll defer constraints to US-centric groups that are working on scheduling to define an extension that can be used to represent US-states. 
