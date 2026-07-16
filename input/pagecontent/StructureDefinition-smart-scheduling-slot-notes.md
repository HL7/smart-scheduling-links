Discussed extensively in [February 2026 as captured in these confluence notes](https://confluence.hl7.org/spaces/PA/pages/413256942/New+vs.+Existing+Patients), but also during the 2026 CMS Connectathon in July. General options included:
- being very opionated about modeling patient type in a new extension that is required
- using an extension that is inspired by the 'characteristic' data element in R6/continuous build. This would function like a patient badge of sorts. We'd then slice on characteristic to model patient type.

In all scenarios discussed, the group agreed that slot.appointmentType was not ideal given the 0..1 cardinality and the fact that patient type is orothogonal to appointmentType as it could represent a variety of other things. 