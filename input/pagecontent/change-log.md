Below is a log of changes to the HL7 SMART Scheduling Links FHIR IG.

### 1.0.0 (STU 1)

This release reconciles the ballot comments raised against the May 2026 ballot (1.0.0-ballot). Changes are grouped following the TSC [Change Log Requirements for Specification Releases](https://confluence.hl7.org/spaces/TSC/pages/453917511/Change+Log+Requirements+for+Specification+Releases).

#### Non-Compatible Changes

- **FHIR-57224** — The `booking-phone` extension now carries a `ContactPoint` instead of a `string`.
- **FHIR-57250** — Profile references are now constrained to the SMART Scheduling Links profiles rather than to the base FHIR resources (for example, `HealthcareService.location` now references the Location profile defined by this guide).
- **FHIR-57322** — Removed the appointment type and reasons value set. New versus existing patient availability is now conveyed by the `patient-type` extension instead.

#### Substantive Changes

- **FHIR-57321** — Added support for virtual visit modalities to the Location profile, including a new location physical type code system and value set and the R5 `virtualService` cross-version extension.
- **FHIR-57322** — Added the `patient-type` extension so that a Slot can indicate whether it is open to new patients, existing patients, or both.
- **FHIR-57392** — Added guidance on slot validity, covering the sources of slot invalidity beyond publication staleness and the expectation that Provider Booking Portals handle invalid slots gracefully.
- **FHIR-57396**, **FHIR-56905** — Replaced the inline JSON in the specification narrative with the profiled FHIR artifacts, and promoted the Schedule specialty example into a `schedule-specialty` extension.

#### Compatible Changes

- **FHIR-58064** — Removed the required cardinality constraint on `Location.identifier`.

#### Non-Substantive Changes

- **FHIR-59258** — Adopted the IG Publisher conformance statement markup and added a Conformance page listing every conformance statement in the guide.
- **FHIR-59259** — Corrected code fences and other rendering defects in the specification.
- **FHIR-59260** — Resolved the value set version pinning message in the QA report and repaired stale QA suppression entries.
- **FHIR-57226**, **FHIR-57227** — Removed the duplicate QA report link and restructured the Downloads page.
- **FHIR-57221** — Updated the link to the Bulk Data Access IG.
- **FHIR-57088** — Removed an outdated link to Inferno.
- **FHIR-57392** — Updated the FHIR diagram and corrected its sizing for readability.
- **FHIR-57897** — Removed text carried over in error into the Find, Hold and Book section.
- **FHIR-56795** — Refined the wording of the Introduction.
- **FHIR-56796** — Numbered the Scope and Purpose steps and expanded "spec" to "specification".
- **FHIR-56794**, **FHIR-57391**, **FHIR-57395** — Corrected typographical errors.

### 1.0.0-ballot

This publication represents the initial release of the specification.
