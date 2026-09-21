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

When publishing a Slot with `"status": "free"`, Publishers should ensure that the Slot is in fact available for booking, given current business rules. For example, if a provider requires certain prerequisites to be met before an appoinmtnet can be booked (such as referrals, prior authorization, or specific patient elgibility criteria), then the provider SHOULD NOT advertise the slot as available unless those requirements are satisfied.
