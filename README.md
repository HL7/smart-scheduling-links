# SMART Scheduling Links 

What if booking clinical appointments looked more like booking airline tickets? This repo is currently a work-in-progress initiative to update the SMART Scheduling Links developed to book a vaccine appointment to be more generally applicable to patient scheduling and availability, leveraging a FHIR standards-based approach to finding and searching for appointments. The idea is simple: you can easily book a flight or hotel using a common portal. Leveraging the bulk publish specification for the creation of a directory of slots, there is the ability to search and book via a deep link a doctor's appointment without the complex friction of calling back and forth to your doctor's office to book an appointment. This is akin to a "Kayak" booking experience for consumers and Calendly-like control for providers. This leverages the previously tested approach of SMART Scheduling Links that previously allowed for a simple and easy way for patients to book vaccine appointments.  The current aim is to support vaccination appointments, scheduling with specific providers, arranging visits to walk-in clinics, finding and booking with the nearest available provider, and setting up online or virtual appointments. Future developments aim to integrate insurance networks, allowing for in-network appointment scheduling.  More complex scheduling needs, such as surgical procedures or diagnostic imaging appointments like MRIs are currently out of scope. In addition, this specification does not solve the backend scheduling needs for providers where multiple providers are necessary. This is intended to cover the publication of available slots when a provider chooses to make them available to consuming clients and slot aggregators.


* See [specification.md](specification.md) for API requirements and details
* See [publisher-advertising.md](publisher-advertising.md) for information on publicizing bulk publisher endpoints.
* Chat with us at [#smart/scheduling-links on chat.fhir.org](https://chat.fhir.org/#narrow/stream/281612-smart.2Fscheduling-links)

|Status|
|---|
|Draft proposal for discussion|


## Lightweight, scalable appointment booking API

"SMART Scheduling Links" is a standards-based specification enabling patients to:

1. **find appointment slots** using an appointment booking tool of their choice, searching by geography, specialty, health system, etc
2. **follow a deep link** into the provider's booking portal, to book a specific slot
3. **complete a booking**, e.g., by providing details, answering questions, or submitting referral documentation

We are parsimonious in our use of standards, so that:

* step 1 is standardized with **FHIR Slot Discovery**; then 
* step 2 is standardized with **HTTPS deep-linking conventions**; meanwhile
* step 3 **requires no standardization**, enabling flexible and provider-specific rules to govern the completion of the booking process.
(To be clear, many standards can facilitate step 3, but they're out of scope for SMART Scheduling Links.)

## Roles and responsibilities

This specification defines four functional roles:


* **Slot Publisher**: the API service offered by a healthcare provider, advertising available slots. A publisher should have an authoritative perspective on slot availability via direct access to the source of truth. Critically, advertising a slot should be low-risk, since the mere fact that a slot is advertised does *not* guarantee that any given patient will be allowed to book the slot; instead, sophisticated rules can be implemented by the slot publisher to determine which times of slots a provider, practice, or clinic would want to advertise for booking. 
* **Provider Booking Portal**: the UI service offered by a healthcare provider, enabling a user to book a selected slot. A booking portal should have the authority to directly book into the source of truth. This is the place where provider-specific rules can be implemented, e.g. to ensure that patients booking a specialty appointment are appropriate candidates for that specialist's care. (In many implementations, this UI will be housed within a general-purpose provider-hosted patient portal.)

*  **Slot Aggregator**: an API service offered by third parties, aggregating data from multiple _Slot Publishers_ or from other healthcare provider APIs. _Slot Aggregators_ otherwise act in a similar capacity to _Slot Publishers_ but are not themselves authoritative sources.

* **Slot Discovery Client**: the booking tool of a patient's choice. This system discovers appointment slots on a patient's behalf, and helps the patient choose the best slots to book (e.g., by evaluating trade-offs of travel distance or wait time).


## UX Limitations

Examining the SMART Scheduling Links workflow described above, there are some potential user-experience challenges:

* After the hand-off from a Slot Discovery Client into a healthcare provider's system, the user might have to sign
into the healthcare provider's system, or create a new account; and might have to answer all sorts of
provider-specific questions in order to complete a booking.  

* Appointment slot data might become stale, so that by the time a patient signs into the provider's system, the slot is already taken.
   
* Once an appointment booking is completed, the Slot Discovery Client might not have an easy way to learn about
the details of the booking (e.g., was it successful; what is the specific location and timing).

To gain traction and align with existing efforts, we seek to start with SMART scheduling tooling. This will allow for a methodology for patients to view available appointments across EHRs. Future versions of this IG will build an end-to-end experience where booking is done via API while maintaining client app experiences. SMART Scheduling Links provides a more loosely coupled user experience. But we have strong evidence that this is a viable UX trade-off, because it works just like a very familiar and highly successful booking system.

## Discovery Analogy: airline booking

Cross-industry standards analogies can sometimes be misleading -- but to build up an intuition, it's worth comparing the SMART Scheduling Links workflow with the consumer airline booking experience. Briefly: the Slot Discovery Client plays the same role as a travel booking tool like KAYAK or Hipmunk. These systems help their users search for relevant options across multiple service providers, and help users evaluate trade-offs among these options. Once the user makes a selection, a deep link takes them to a service provider to complete the workflow. The Provider Booking Portal plays the same role as an airline like United or Delta. These systems manage user accounts and enable a booking-completion workflow. They also serve as gatekeepers, e.g. to collect data about a user's background as well as identifiers such as a Known Traveler Number or redress number. They can "call off" the workflow at any point (e.g., if a user is unable to provide the required information, or if a previously-available slot has been booked by another user).  This pattern works well in airline booking, and could dramatically reduce the difficulty of healthcare appointment booking.

## Publisher Analogy: Calendly-like control

Another useful exemplar is Calendly, Microsoft Bookings, or a similar booking service. These tools remove the friction of back-and-forth emails to book an appointment. The end user exposes their calendar when and how they want while controlling what slots are exposed via a simple URL and booking experience. These tools save the calendar owner and end user the task of endless back-and-forth emails to make an appointment, while allowing the calendar owner to preserve the when, where, and what types of appointments they want to expose.

## Distribution Analogy: Reserve with Google

A directory of published, bookable slots might find itself in a situation where multiple publishers are advertising slots for the same provider or group of providers. Rather than advocating for tiebreaking or proposing a prioritization scheme, there's another analogy we lean on: [Reserve with Google](https://www.google.com/maps/reserve/partners). Similar to how a restaurant may participate in multiple food delivery apps, all of which are legitimate pathways to ordering food, a medical practice may participate in online booking via their EHR, their patient engagement software, or online marketplaces. This gives patients seeking care options to not only select the provider with the best fit, but to choose among options for the booking and patient engagement experience.
