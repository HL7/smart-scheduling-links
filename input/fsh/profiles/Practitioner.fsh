Profile: SmartSchedulingPractitioner
Parent: Practitioner
Id: smart-scheduling-practitioner
Title: "Practitioner"
Description: "This profile sets minimum expections for a Practitioner resource"
* id 1..1 MS 
* identifier 1..1 MS
  * use 0..1 MS
  * system 0..1 MS 
  * value 0..1 MS 
* active 0..1 MS
* name 0..* MS
  * use 0..1 MS 
  * text 0..1 MS 
  * family 0..1 MS 
  * given 0..* MS 
  * prefix 0..* MS 
  * suffix 0..* MS 
  * period 0..1 MS
* telecom 0..* MS
  * system 0..1 MS 
  * value 0..1 MS 
  * use 0..1 MS 
  * rank 0..1 MS 
  * period 0..1 MS
* address 0..* MS 
  * use 0..1 MS 
  * type 0..1 MS
  * text 0..1 MS  
  * line 0..* MS 
  * city 0..1 MS 
  * district 0..1 MS
  * state 0..1 MS 
  * postalCode 0..1 MS 
  * country 0..1 MS 
  * period 0..1 MS 
