**Example Usage Scenarios**

The following are example usage scenarios for the SMART Scheduling Links Location profile:
- Find locations where appointments are available

### Mandatory and Must Support Data Elements
The following data elements must always be present or must be supported if the data is present in the sending system. They are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well. The Formal Views below provides the formal summary, definitions, and terminology requirements.

**Each Location Must Have:**
- id
- name
- telecom
- address line, city, state, and postalCode

**Each Location Must Support:**
- status
- description
- address use and district
- position

**Profile Specific Implementation Guidance:**

Each `identifier` object includes a `system` and a `value`
- If a PractitionerRole or Location is associated with organization-specific identifiers (such as facility numbers, site codes, or store numbers), publishers SHOULD include these. The `system` should be a URL that identifies the identifier system, preferably a page on the publisher's web site (e.g. `{"system": "https://healthsystem.example.com/facility-directory", "value": "FAC-123"})`
- If a Location participates in external registry programs that assign location identifiers, publishers MAY include these identifiers using the appropriate system URL for the registry
- Additional identifiers: Any number of additioanl identifiers MAY be included. Each should populate `system` and `value` as appropriate, following FHIR identifier conventions.