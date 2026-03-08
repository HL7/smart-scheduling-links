**Example Usage Scenarios**

Schedules can reference multiple actors in the actor array to provide more specific context about the healthcare service. Common patterns include:
- Location-only schedules: Reference only a Location resource, indicating that appointments are available at that location but not tied to a specific practitioner role.
- PractitionerRole-only schedules: Reference only a PractitionerRole resource, indicating appointments with that specific practitioner role regardless of location.
- Location and PractitionerRole schedules: Reference both Location and PractitionerRole resources, indicating appointments for a specific practitioner role at a specific location. This is useful for:
  - Multi-location practices where practitioner roles work at different sites
  - Specialty clinics where specific practitioner roles provide services at designated locations
  - Healthcare systems where practitioner role schedules vary by location

### Mandatory and Must Support Data Elements
The following data elements must always be present or must be supported if the data is present in the sending system. They are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well. The Formal Views below provides the formal summary, definitions, and terminology requirements.

**Each Schedule Must Have:**
- a serviceType
- at least one actor

**Each Schedule Must Support:**
- a display for the actor
