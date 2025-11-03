# FHIR status vs ebRIM Status Type Code - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FHIR status vs ebRIM Status Type Code**

## ConceptMap: FHIR status vs ebRIM Status Type Code 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/ConceptMap/FhirStatusVsStatusCode | *Version*:4.2.3 |
| Active as of 2022-05-05 | *Computable Name*:FhirStatusVsStatusCode |

 
map between XDS ebRIM Status Type Codes and MHD FHIR DocumentReference.status code. Table 2:3.67.4.1.3.1-2. Note that the codes given are used without a system in both FHIR and ebRIM. 

 
show the mapping between ebRIM Status Type Codes and FHIR .status code 

Mapping from (not specified) to (not specified)

**Group 1**Mapping from `urn:ietf:rfc:3986` to [DocumentReferenceStatus](http://hl7.org/fhir/R4/codesystem-document-reference-status.html)

* **Source Code**: urn:oasis:names:tc:ebxml-regrep:StatusType:Approved
  * **Relationship**: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Target Code**: current
* **Source Code**: urn:oasis:names:tc:ebxml-regrep:StatusType:Deprecated
  * **Relationship**: [is equal to](http://hl7.org/fhir/R5/codesystem-concept-map-relationship.html#equal)
  * **Target Code**: superseded



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "FhirStatusVsStatusCode",
  "url" : "https://profiles.ihe.net/ITI/MHD/ConceptMap/FhirStatusVsStatusCode",
  "version" : "4.2.3",
  "name" : "FhirStatusVsStatusCode",
  "title" : "FHIR status vs ebRIM Status Type Code",
  "status" : "active",
  "experimental" : false,
  "date" : "2022-05-05",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [
    {
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
        }
      ]
    },
    {
      "telecom" : [
        {
          "system" : "email",
          "value" : "iti@ihe.net"
        }
      ]
    },
    {
      "name" : "IHE IT Infrastructure Technical Committee",
      "telecom" : [
        {
          "system" : "email",
          "value" : "iti@ihe.net"
        }
      ]
    }
  ],
  "description" : "map between XDS ebRIM Status Type Codes and MHD FHIR DocumentReference.status code. Table 2:3.67.4.1.3.1-2. Note that the codes given are used without a system in both FHIR and ebRIM.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001",
          "display" : "World"
        }
      ]
    }
  ],
  "purpose" : "show the mapping between ebRIM Status Type Codes and FHIR .status code",
  "group" : [
    {
      "source" : "urn:ietf:rfc:3986",
      "target" : "http://hl7.org/fhir/document-reference-status",
      "element" : [
        {
          "code" : "urn:oasis:names:tc:ebxml-regrep:StatusType:Approved",
          "target" : [
            {
              "code" : "current",
              "equivalence" : "equal"
            }
          ]
        },
        {
          "code" : "urn:oasis:names:tc:ebxml-regrep:StatusType:Deprecated",
          "target" : [
            {
              "code" : "superseded",
              "equivalence" : "equal"
            }
          ]
        }
      ]
    }
  ]
}

```
