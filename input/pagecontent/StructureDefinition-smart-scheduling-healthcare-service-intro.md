**Example Usage Scenarios**

The following are example usage scenarios for the SMART Scheduling Links HealthcareService profile:
- Query services provided by an organization at a location

### Mandatory and Must Support Data Elements
The following data elements must always be present or must be supported if the data is present in the sending system. They are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well. The Formal Views below provides the formal summary, definitions, and terminology requirements.

**Each HealthcareService Must Have:**
- id
- active
- type
- specialty
- location
- name

**Each HealthcareService Must Support:**
- providedBy
- category
- comment
- telecom
- serviceProvisionCode
- appointmentRequired
- availableTime
- notAvailable
