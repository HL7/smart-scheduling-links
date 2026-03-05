ValueSet: AppointmentTypeAndReasonsVS
Id: appointment-type-and-reasons-vs
Title: "Appointment Type and Reasons"
Description: """
A value set that combines the preferred and required codes from slot.appointmentType and NDH new patient extension, respectively
"""

// this value set aligns with NDH & DaVinci
// Specifically, NDH's new patient extension: https://build.fhir.org/ig/HL7/fhir-us-ndh/StructureDefinition-base-ext-newpatients.html
// and DaVinci's modeling of accepting new patients: https://build.fhir.org/ig/HL7/davinci-pdex-plan-net/StructureDefinition-newpatients.html
* include codes from system http://terminology.hl7.org/CodeSystem/accepting-patients // this is what NDH uses in their New Patients extension https://build.fhir.org/ig/HL7/fhir-us-ndh/StructureDefinition-base-ext-newpatients.html

// aligns with the preferred valueset binding for appointmentType in both appointment & slot: https://hl7.org/fhir/R4/v2/0276/index.html
* include codes from system http://terminology.hl7.org/CodeSystem/v2-0276

// note that there are
// multiple E&M codes that align with both of these 'billing' concepts - which would not be ideal to include here
// multiple SNOMED CT codes that align, but not ideally used - could investigate further. 
// Overall, the value sets above likely represent the best option for modeling new vs. existing patients
