# IHE Patient Master Identity Registry Bundle Message - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **IHE Patient Master Identity Registry Bundle Message**

## Resource Profile: IHE Patient Master Identity Registry Bundle Message 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History | *Version*:1.6.0 |
| Active as of 2025-11-04 | *Computable Name*:PMIRBundleHistory |

 
StructureDefinition for Bundle resource constraints for messages in the IHE PMIR Profile. 

**Usages:**

* Use this Profile: [IHE Patient Master Identity Registry Message Bundle](StructureDefinition-IHE.PMIR.Bundle.md)
* Refer to this Profile: [IHE Patient Master Identity Registry MessageHeader](StructureDefinition-IHE.PMIR.MessageHeader.md)
* Examples for this Profile: [Bundle/ex-bundle-history-create](Bundle-ex-bundle-history-create.md), [Bundle/ex-bundle-history-delete](Bundle-ex-bundle-history-delete.md), [Bundle/ex-bundle-history-merge](Bundle-ex-bundle-history-merge.md) and [Bundle/ex-bundle-history-update](Bundle-ex-bundle-history-update.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pmir|current/StructureDefinition/IHE.PMIR.Bundle.History)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PMIR.Bundle.History.csv), [Excel](StructureDefinition-IHE.PMIR.Bundle.History.xlsx), [Schematron](StructureDefinition-IHE.PMIR.Bundle.History.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PMIR.Bundle.History",
  "url" : "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Bundle.History",
  "version" : "1.6.0",
  "name" : "PMIRBundleHistory",
  "title" : "IHE Patient Master Identity Registry Bundle Message",
  "status" : "active",
  "date" : "2025-11-04T15:17:55-06:00",
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
  "description" : "StructureDefinition for Bundle resource constraints for messages in the IHE PMIR Profile.",
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
        "patternCode" : "history"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "request.method"
            }
          ],
          "rules" : "closed"
        },
        "min" : 1
      },
      {
        "id" : "Bundle.entry:PMIREntryCreate",
        "path" : "Bundle.entry",
        "sliceName" : "PMIREntryCreate",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:PMIREntryCreate.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient"
          }
        ]
      },
      {
        "id" : "Bundle.entry:PMIREntryCreate.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:PMIREntryCreate.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "POST"
      },
      {
        "id" : "Bundle.entry:PMIREntryCreate.response",
        "path" : "Bundle.entry.response",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:PMIREntryUpdate",
        "path" : "Bundle.entry",
        "sliceName" : "PMIREntryUpdate",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:PMIREntryUpdate.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient"
          }
        ]
      },
      {
        "id" : "Bundle.entry:PMIREntryUpdate.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:PMIREntryUpdate.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "PUT"
      },
      {
        "id" : "Bundle.entry:PMIREntryUpdate.response",
        "path" : "Bundle.entry.response",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:PMIREntryDelete",
        "path" : "Bundle.entry",
        "sliceName" : "PMIREntryDelete",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:PMIREntryDelete.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Patient"
          }
        ]
      },
      {
        "id" : "Bundle.entry:PMIREntryDelete.request",
        "path" : "Bundle.entry.request",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:PMIREntryDelete.request.method",
        "path" : "Bundle.entry.request.method",
        "patternCode" : "DELETE"
      },
      {
        "id" : "Bundle.entry:PMIREntryDelete.response",
        "path" : "Bundle.entry.response",
        "min" : 1
      }
    ]
  }
}

```
