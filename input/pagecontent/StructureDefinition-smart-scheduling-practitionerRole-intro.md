**Example Usage Scenarios**

The following are example usage scenarios for the SMART Scheduling Links PractitionerRole profile:
- Identify specific roles that practitioners perform at organizations

### Mandatory and Must Support Data Elements
The following data elements must always be present or must be supported if the data is present in the sending system. They are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well. The Formal Views below provides the formal summary, definitions, and terminology requirements.

**Each PractitionerRole Must Have:**
- id

**Each PractitionerRole Must Support:**
- identifier
- active
- period start and end
- practitioner
- organization
- code
- specialty
- location
- healthcare service
- telecom

**Profile Specific Implementation Guidance:**

Each `identifier` object includes a `system` and a `value`. 

* If a PractitionerRole is associated with organization-specific identifiers (such as role-specific employee numbers, provider numbers, or location-specific identifiers), publishers SHOULD include these. The `system` should be a URL that identifies the identifier system, preferably a page on the publisher's web site (e.g. `{"system": "https://healthsystem.example.com/practitioner-role-directory", "value": "ROLE-123"}`)

* **National Provider Identifier (NPI)**: Publishers SHALL include the practitioner's NPI when available, using the system `"http://hl7.org/fhir/sid/us-npi"` and the 10-digit NPI number as the value (e.g. `{"system": "http://hl7.org/fhir/sid/us-npi", "value": "1234567890"}`)

* If a PractitionerRole participates in external registry programs that assign role-specific identifiers, publishers MAY include these identifiers using the appropriate system URL for the registry.

* Additional identifiers: Any number of additional identifiers MAY be included. Each should populate `system` and `value` as appropriate, following FHIR identifier conventions.