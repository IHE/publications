Options that may be selected for each actor in this profile, if any, are listed in Table 38.2-1. Dependencies between options when applicable are specified in notes.

**Table 38.2-1: Patient Demographics Query for Mobile - Actors and Options**

Actor	| Option Name |	Reference
---|---|---
Patient Demographics Consumer |	Pediatric Demographics Option |	Section 1:38.2.1
Patient Demographics Supplier |	Pediatric Demographics Option |	Section 1:38.2.1
{:.grid}

### 1:38.2.1 Pediatric Demographics Option <a name="peddemoopt"> </a>
The experience of immunization registries and other public health population databases has shown that retrieving patient records for an individual person in environments with large proportions of pediatric records requires additional demographic data.

Information about the mother of the patient or a household telephone number is helpful in retrieving records in large population databases where data quality may be uneven.

Certain other demographics fields are important to include in the query response as they may be used by the Patient Demographics Consumer in verifying the identity of the patient; in particular, they aid in distinguishing records for twins, triplets, and so forth.

Pediatric Demographics makes use of the following four additional demographic fields to aid record matching in databases with many pediatric records.

Field |	Reason for Inclusion |	Value
---|---|---
Mother’s Maiden Name |	Any information about the mother is helpful in making a match	| Helps creates true positive matches
Patient Home Telephone | A telecom helps match into the right household | Helps create true positive matches
Patient Multiple Birth Indicator | Indicates this person is a multiple – twin, triplet, etc. | Helps avoid false positive matches of multiples
Patient Birth Order | Distinguishes among those multiples. | Helps avoid false positive matches of multiples
{:.grid}

Note that PDQ Profile includes support for Last Update Date/Time, Last Update Facility. These elements are not included in PDQm as they are elements of the Visit/Encounter which is not in scope for PDQm.

Patient Demographics Supplier which support the Pediatric Demographics Option shall support all the Patient elements specified and query parameters specified including Mother’s Maiden Name.

Patient Demographics Consumers which support the Pediatric Demographics Option shall be able to provide the below listed Pediatric Demographics query parameter fields in the Patient Demographics Query [ITI-78] transaction and shall be able to receive and process any values returned for the fields identified as Pediatric Demographics.

Pediatric Demographics query parameter fields are:  
*	Mother’s Maiden Name

Pediatric Demographics fields are defined as the following:  
*	Mother’s Maiden Name
*	Patient Home Telephone
*	Patient Multiple Birth Indicator
*	Patient Birth Order

Note that the Pediatric Demographics Option relies on STU extensions.

