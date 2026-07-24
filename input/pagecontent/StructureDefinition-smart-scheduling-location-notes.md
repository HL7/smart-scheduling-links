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
