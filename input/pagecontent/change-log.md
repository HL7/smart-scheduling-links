Below is a log of changes to the HL7 SMART Scheduling Links FHIR IG.

### 1.0.0 (STU 1)

This release incorporates the reconciliation of comments raised against the May 2026 ballot (1.0.0-ballot), the immediately preceding published release.

At a high level, this release adds support for publishing visit modality through the Location profile and a new extension for distinguishing availability to new versus existing patients; constrains profile references to the profiles defined by this guide; replaces the inline JSON formerly carried in the specification narrative with the profiled FHIR artifacts; and changes the datatype of the booking phone extension, which is not backwards compatible. A required cardinality constraint incorrectly applied to the Location identifier has been removed. The remaining changes are editorial: conformance statement markup, corrections to wording, typographical errors, links, diagrams and page rendering.

Changes are classified following the TSC [Change Log Requirements for Specification Releases](https://confluence.hl7.org/spaces/TSC/pages/453917511/Change+Log+Requirements+for+Specification+Releases).

#### Non-Substantive

- [FHIR-56794](https://jira.hl7.org/browse/FHIR-56794) — Corrected the misspellings of "questions" and "parsimonious" in the Introduction.
- [FHIR-56795](https://jira.hl7.org/browse/FHIR-56795) — Reworded the opening paragraphs of the Introduction to remove redundancy and to describe the guide as a specification rather than a work in progress.
- [FHIR-56796](https://jira.hl7.org/browse/FHIR-56796) — Converted the Scope and Purpose steps to a numbered list and expanded "spec" to "specification".
- [FHIR-56905](https://jira.hl7.org/browse/FHIR-56905) — Clarified that the bulk manifest is a logical model rather than a FHIR resource.
- [FHIR-56907](https://jira.hl7.org/browse/FHIR-56907) — Updated the specification to reference the Bulk Data publish pattern rather than restating it.
- [FHIR-57088](https://jira.hl7.org/browse/FHIR-57088) — Removed the reference to the Inferno SMART Scheduling Links Test Kit, which tests an earlier draft of the specification.
- [FHIR-57221](https://jira.hl7.org/browse/FHIR-57221) — Corrected the broken link to the Bulk Data Access specification.
- [FHIR-57223](https://jira.hl7.org/browse/FHIR-57223) — Removed the Inferno URL that was rendering as plain text rather than as a link, resolved together with FHIR-57088.
- [FHIR-57226](https://jira.hl7.org/browse/FHIR-57226) — Corrected the malformed QA report reference on the Downloads page.
- [FHIR-57227](https://jira.hl7.org/browse/FHIR-57227) — Corrected the heading numbering on the Downloads page.
- [FHIR-57391](https://jira.hl7.org/browse/FHIR-57391) — Corrected the misspelling of "questions" in Scope and Purpose.
- [FHIR-57392](https://jira.hl7.org/browse/FHIR-57392) — Added guidance on slot invalidity, describing the sources of invalidity beyond publication staleness and the expectation that Provider Booking Portals handle invalid slots gracefully.
- [FHIR-57393](https://jira.hl7.org/browse/FHIR-57393) — Clarified the architectural diagram and aligned its terminology with the Roles and Responsibilities section.
- [FHIR-57394](https://jira.hl7.org/browse/FHIR-57394) — Aligned the diagram in Scheduling Architecture at a High Level with the entities described in that section.
- [FHIR-57395](https://jira.hl7.org/browse/FHIR-57395) — Corrected "scheduled" to "Schedule" in the list of published file types.
- [FHIR-57897](https://jira.hl7.org/browse/FHIR-57897) — Removed text in the Find, Hold and Book section that had been carried over from an earlier branch in error.
- [FHIR-59257](https://jira.hl7.org/browse/FHIR-59257) — Added a plain-language description of the guide to the HL7 plain-language repository.
- [FHIR-59258](https://jira.hl7.org/browse/FHIR-59258) — Adopted the IG Publisher conformance statement markup and added a Conformance page listing every conformance statement in the guide.
- [FHIR-59259](https://jira.hl7.org/browse/FHIR-59259) — Corrected heading levels, code fences, quote characters and table rendering on the Specification page.
- [FHIR-59260](https://jira.hl7.org/browse/FHIR-59260) — Pinned the terminology version used by the location physical type value set and repaired stale QA suppression entries.
- [FHIR-59261](https://jira.hl7.org/browse/FHIR-59261) — Updated the publication request for the STU 1 publication, removing ballot-specific values.
- [FHIR-59264](https://jira.hl7.org/browse/FHIR-59264) — Rebuilt this change log from the Jira tickets resolved since the ballot, classified per TSC policy.

#### Compatible, Substantive

- [FHIR-57250](https://jira.hl7.org/browse/FHIR-57250) — Profile references now point at the profiles defined by this guide rather than at the base FHIR resources.
- [FHIR-57321](https://jira.hl7.org/browse/FHIR-57321) — Added support for publishing visit modality. `Location.physicalType` is now must-support and bound to a value set carrying both physical and virtual codes, so a Schedule conveys whether its Slots are virtual through its Location reference. Raised as a request for a Slot-level property; resolved on Location.
- [FHIR-57322](https://jira.hl7.org/browse/FHIR-57322) — Added the `patient-type` extension so that a Slot can indicate availability to new patients, existing patients, or both. Raised as a request for general-purpose "badges"; resolved as a patient type extension only, with language availability handled by the existing HealthcareService element.
- [FHIR-57396](https://jira.hl7.org/browse/FHIR-57396) — Replaced the inline JSON structures in the specification narrative with the profiled FHIR artifacts, and promoted the Schedule specialty example into a `schedule-specialty` extension.
- [FHIR-58064](https://jira.hl7.org/browse/FHIR-58064) — Removed the required cardinality constraint incorrectly applied to `Location.identifier`, which is now optional.
- [FHIR-59256](https://jira.hl7.org/browse/FHIR-59256) — Resolved the conformance language carried on the informative home page. Statements stated elsewhere in the guide were removed from the home page, and those retained were marked up as conformance clauses so that the home page no longer carries unmarked conformance requirements.

#### Not-Compatible

- [FHIR-57224](https://jira.hl7.org/browse/FHIR-57224) — The `booking-phone` extension now carries a `ContactPoint` instead of a `string`.

### 1.0.0-ballot

This publication represents the initial release of the specification.
