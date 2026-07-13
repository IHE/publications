# Medication Concepts - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Volume 1 Overview**](volume1.md)
* **Medication Concepts**

## Medication Concepts

#### Medication Treatment (MT)

A set of 1..n medication treatment lines and associated information, somehow related together (e.g. one same purpose, or one same entry by a professional)

* 1..* Medication treatment line (this relation should not exist. should be the other way around. MTL → MT)
* 0..* Advice 
* Advice content
* Advice issuer, date, etc.
* Topic (link to treatment OR Link to treatment line OR overview)
 
* 0..* Comment 
* Comment content
* Comment issuer, date, etc.
* Topic (link to treatment OR Link to treatment line OR overview)
 

#### Medication Treatment Line (MTL)

An entry representing one single medicinal product (or type of product) that is planned, or ordered, or dispensed, or actually reported taken by the patient.

* 1..1 Medication: an identification or sufficient description of the product (code / composition / …) 
* Dose form
 
* 1..1 Status
* 0..1 Route of administration (not 0..* - if there are changes, will be an update)
* 0..1 Dosage (strength, amount…) 
* may be a complex model e.g. one dosage for odd days and one for even days.
 
* 0..1 Frequency (dose units, timing, etc)
* 0..1 Effective time (duration, start+duration, start+end…)
* 0..* reason / indication
* 0..* Instructions 
* Preparation
* Usage
* (may be a link to an external request)
 
* Metadata (reporter, reporting date, etc.)
* 0..* Information sources: other data objects that this line is derived from (Order, Dispense, Line)
* 0..* category category of a medication line
* 0..* treatmentGroup (an explicit attribute that serves to associate 2 or more lines, in addition to the grouping that may be obtained from the other existing data elements)

#### Medication Treatment Plan (MTP)

Medication Treatment line that hasn’t been executed yet. A medication treatment line MAY have status “planned” (or no “actionable” status) but it’s still a line.

Subtype of Order, that hasn’t been executed yet and is not yet actionable.

For this reason, we will no longer use “Medication Treatment Plan” expression and concept in our specifications.

