# IHE Patient Master Identity Registry Message Bundle - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE Patient Master Identity Registry Message Bundle**

## Resource Profile: IHE Patient Master Identity Registry Message Bundle 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle | *Version*:1.6.0 |
| Active as of 2025-11-04 | *Computable Name*:PMIRBundle |

 
StructureDefinition for Bundle resource constraints in the IHE PMIR Profile. 

**Usages:**

* Examples for this Profile: [Bundle/30e285b5-a28c-444f-a898-a15159c82f38](Bundle-30e285b5-a28c-444f-a898-a15159c82f38.md), [Bundle/3594fe3c-31af-4695-b533-550e3bc0f1c9](Bundle-3594fe3c-31af-4695-b533-550e3bc0f1c9.md), [Bundle/72681afa-2bee-4422-bdf7-d0363e113b65](Bundle-72681afa-2bee-4422-bdf7-d0363e113b65.md), [Bundle/d97b9e33-4b48-4190-8622-0b4b5be9770d](Bundle-d97b9e33-4b48-4190-8622-0b4b5be9770d.md)...Show 4 more,[Bundle/ex-PMIRBundleCreate](Bundle-ex-PMIRBundleCreate.md),[Bundle/ex-PMIRBundleDelete](Bundle-ex-PMIRBundleDelete.md),[Bundle/ex-PMIRBundleMerge](Bundle-ex-PMIRBundleMerge.md)and[Bundle/ex-PMIRBundleUpdate](Bundle-ex-PMIRBundleUpdate.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pmir|current/StructureDefinition/IHE.PMIR.Bundle)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PMIR.Bundle.csv), [Excel](StructureDefinition-IHE.PMIR.Bundle.xlsx), [Schematron](StructureDefinition-IHE.PMIR.Bundle.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PMIR.Bundle",
  "url" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle",
  "version" : "1.6.0",
  "name" : "PMIRBundle",
  "title" : "IHE Patient Master Identity Registry Message Bundle",
  "status" : "active",
  "date" : "2025-11-04T15:20:37-06:00",
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
  "description" : "StructureDefinition for Bundle resource constraints in the IHE PMIR Profile.",
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
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.type",
        "path" : "Bundle.type",
        "patternCode" : "message"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "resource"
            }
          ],
          "ordered" : true,
          "rules" : "closed"
        },
        "min" : 2,
        "max" : "2"
      },
      {
        "id" : "Bundle.entry:PMIRMessageHeaderEntry",
        "path" : "Bundle.entry",
        "sliceName" : "PMIRMessageHeaderEntry",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:PMIRMessageHeaderEntry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:PMIRMessageHeaderEntry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "MessageHeader",
            "profile" : [
              "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:PMIRBundleHistoryEntry",
        "path" : "Bundle.entry",
        "sliceName" : "PMIRBundleHistoryEntry",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:PMIRBundleHistoryEntry.fullUrl",
        "path" : "Bundle.entry.fullUrl",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:PMIRBundleHistoryEntry.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Bundle",
            "profile" : [
              "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History"
            ]
          }
        ]
      }
    ]
  }
}

```
