Below is a log of changes to the HL7 SMART Scheduling Links FHIR IG.

### 1.0.0 (STU 1)

This release reconciles the comments raised against the May 2026 ballot (1.0.0-ballot), the immediately preceding published release.

Two changes are not backwards compatible: the booking phone extension now carries a `ContactPoint` rather than a `string`, and the new patient type extension is mandatory on Slot. The release also adds virtual visit support on Location, replaces the inline JSON in the specification narrative with the profiled FHIR artifacts, points profile references at this guide's own profiles, and adopts formal conformance statements. The remainder are editorial corrections to wording, links, diagrams and page rendering.

Changes are classified following the TSC [Change Log Requirements for Specification Releases](https://confluence.hl7.org/spaces/TSC/pages/453917511/Change+Log+Requirements+for+Specification+Releases).

#### Non-Substantive

- [FHIR-56794](https://jira.hl7.org/browse/FHIR-56794) - Corrected typos in the Introduction
- [FHIR-56795](https://jira.hl7.org/browse/FHIR-56795) - Reworded the opening paragraphs of the Introduction
- [FHIR-56796](https://jira.hl7.org/browse/FHIR-56796) - Numbered the Scope and Purpose steps and expanded "spec" to "specification"
- [FHIR-56905](https://jira.hl7.org/browse/FHIR-56905) - Clarified that the bulk manifest is a logical model, not a FHIR resource
- [FHIR-56907](https://jira.hl7.org/browse/FHIR-56907) - Referenced the Bulk Data publish pattern rather than restating it
- [FHIR-57088](https://jira.hl7.org/browse/FHIR-57088) - Removed the outdated reference to the Inferno test kit
- [FHIR-57221](https://jira.hl7.org/browse/FHIR-57221) - Fixed the broken link to the Bulk Data Access specification
- [FHIR-57223](https://jira.hl7.org/browse/FHIR-57223) - Removed the Inferno URL that was rendering as plain text
- [FHIR-57226](https://jira.hl7.org/browse/FHIR-57226) - Fixed the malformed QA report reference on the Downloads page
- [FHIR-57227](https://jira.hl7.org/browse/FHIR-57227) - Fixed the heading numbering on the Downloads page
- [FHIR-57391](https://jira.hl7.org/browse/FHIR-57391) - Corrected the "quetsions" typo
- [FHIR-57392](https://jira.hl7.org/browse/FHIR-57392) - Added guidance on slot invalidity and graceful handling by booking portals
- [FHIR-57393](https://jira.hl7.org/browse/FHIR-57393) - Clarified the architectural diagram and aligned its terminology
- [FHIR-57394](https://jira.hl7.org/browse/FHIR-57394) - Aligned the Scheduling Architecture diagram with the entities described
- [FHIR-57395](https://jira.hl7.org/browse/FHIR-57395) - Corrected "scheduled" to "Schedule" in the published file list
- [FHIR-57897](https://jira.hl7.org/browse/FHIR-57897) - Removed text carried over in error into Find, Hold and Book
- [FHIR-59257](https://jira.hl7.org/browse/FHIR-59257) - Added a plain-language description in the HL7 plain-language repository
- [FHIR-59258](https://jira.hl7.org/browse/FHIR-59258) - Adopted conformance statement markup and added a Conformance page
- [FHIR-59259](https://jira.hl7.org/browse/FHIR-59259) - Fixed heading levels, code fences, quotes and table rendering in the specification
- [FHIR-59260](https://jira.hl7.org/browse/FHIR-59260) - Pinned the location physical type terminology version and repaired stale QA suppressions
- [FHIR-59261](https://jira.hl7.org/browse/FHIR-59261) - Updated the publication request for STU 1
- [FHIR-59264](https://jira.hl7.org/browse/FHIR-59264) - Rebuilt this change log from the Jira tickets resolved since the ballot

#### Compatible, Substantive

- [FHIR-57250](https://jira.hl7.org/browse/FHIR-57250) - Pointed profile references at this guide's profiles rather than the base resources
- [FHIR-57321](https://jira.hl7.org/browse/FHIR-57321) - Added virtual visit support by making `Location.physicalType` must-support and binding it to a value set carrying physical and virtual codes
- [FHIR-57396](https://jira.hl7.org/browse/FHIR-57396) - Replaced the inline JSON in the specification with the profiled artifacts and added the `schedule-specialty` extension
- [FHIR-58064](https://jira.hl7.org/browse/FHIR-58064) - Made `Location.identifier` optional
- [FHIR-59256](https://jira.hl7.org/browse/FHIR-59256) - Removed or marked up the conformance language on the informative home page

#### Not-Compatible

- [FHIR-57224](https://jira.hl7.org/browse/FHIR-57224) - Changed the `booking-phone` extension from `string` to `ContactPoint`
- [FHIR-57322](https://jira.hl7.org/browse/FHIR-57322) - Added a mandatory `patient-type` extension on Slot for new versus existing patient availability

### 1.0.0-ballot

This publication represents the initial release of the specification.
