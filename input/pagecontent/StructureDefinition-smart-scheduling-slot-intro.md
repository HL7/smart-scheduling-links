**Example Usage Scenarios**

The following are example usage scenarios for the SMART Scheduling Links Slot profile:
- Find course-grained (e.g. 9a - 6p) slots for a given schedule
- Find fine-grained slots for a given schedule
- Filter available slots for whether they accept new and/or existing patients

### Mandatory and Must Support Data Elements
The following data elements must always be present or must be supported if the data is present in the sending system. They are presented below in a simple human-readable explanation. Profile specific guidance and examples are provided as well. The Formal Views below provides the formal summary, definitions, and terminology requirements.

**Each Slot Must Have:**
- id
- schedule
- status
- start
- end

**Each Slot Must Support:**
- booking deep link
- booking phone number
- patient type

**Profile Specific Implementation Guidance:**

A Slot published with `"status": "free"` is expected to be available for booking under the publisher's current business rules. Where a provider requires prerequisites to be met before an appointment can be booked — such as referrals, prior authorization, or specific patient eligibility criteria — a slot that does not satisfy those requirements is not a good candidate for publication as available. See [Graceful Handling of Slot Invalidity](specification.html#graceful-handling-of-slot-invalidity) in the specification for the normative expectations placed on _Slot Publishers_ and _Provider Booking Portals_.
