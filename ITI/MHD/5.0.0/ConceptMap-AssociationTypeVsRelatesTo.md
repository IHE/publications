# AssociationType vs RelatesTo - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AssociationType vs RelatesTo**

## ConceptMap: AssociationType vs RelatesTo 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/ConceptMap/AssociationTypeVsRelatesTo | *Version*:5.0.0 |
| Active as of 2021-05-15 | *Computable Name*:AssociationTypeVsRelatesTo |

 
map between XDS Association Types and MHD FHIR DocumentReference relatesTo code. 
* Source Code - [XDS Association Types](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.2) are indicated as URN, they are here indicated as system and code
* Destination Code - [DocumentReference relatesTo code](http://hl7.org/fhir/valueset-document-relationship-type.html) are Required codes
 

 
show the mapping between Association Types and relatesTo code 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "AssociationTypeVsRelatesTo",
  "url" : "https://profiles.ihe.net/ITI/MHD/ConceptMap/AssociationTypeVsRelatesTo",
  "version" : "5.0.0",
  "name" : "AssociationTypeVsRelatesTo",
  "title" : "AssociationType vs RelatesTo",
  "status" : "active",
  "experimental" : false,
  "date" : "2021-05-15",
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
  "description" : "map between XDS Association Types and MHD FHIR DocumentReference relatesTo code.\r\n\r\n- Source Code - [XDS Association Types](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.2) are indicated as URN, they are here indicated as system and code\r\n- Destination Code - [DocumentReference relatesTo code](http://hl7.org/fhir/valueset-document-relationship-type.html) are Required codes",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001"
        }
      ]
    }
  ],
  "purpose" : "show the mapping between Association Types and relatesTo code",
  "group" : [
    {
      "source" : "urn:ihe:iti:2007:AssociationType",
      "target" : "http://hl7.org/fhir/document-relationship-type",
      "element" : [
        {
          "code" : "RPLC",
          "target" : [
            {
              "code" : "replaces",
              "relationship" : "equivalent"
            }
          ]
        },
        {
          "code" : "XFRM",
          "target" : [
            {
              "code" : "transforms",
              "relationship" : "source-is-narrower-than-target"
            }
          ]
        },
        {
          "code" : "APND",
          "target" : [
            {
              "code" : "appends",
              "relationship" : "equivalent"
            }
          ]
        },
        {
          "code" : "XFRM_RPLC",
          "target" : [
            {
              "code" : "replaces",
              "relationship" : "equivalent",
              "comment" : "An XDS Transform Replacement is both a document that replaces and transforms. The mapping here indicates Replace as that is the most specific change."
            }
          ]
        },
        {
          "code" : "signs",
          "target" : [
            {
              "code" : "signs",
              "relationship" : "equivalent"
            }
          ]
        },
        {
          "code" : "IsSnapshotOf",
          "target" : [
            {
              "code" : "transforms",
              "relationship" : "related-to",
              "comment" : "An XDS IsSnapshotOf is a new instance of what is defined in the parent DocumentEntry (DocumentReference), thus it is a transform in a manner, but is not exactly a transform of the parent document."
            }
          ]
        }
      ]
    }
  ]
}

```
