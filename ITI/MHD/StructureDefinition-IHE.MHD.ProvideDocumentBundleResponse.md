# MHD Provide Document Bundle Response - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD Provide Document Bundle Response**

## Resource Profile: MHD Provide Document Bundle Response 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideDocumentBundleResponse | *Version*:4.2.3 |
| Active as of 2025-10-31 | *Computable Name*:ProvideDocumentBundleResponse |

 
A profile on the Bundle transaction-response for ITI-65 Provide Document Bundle response. 
* shall be a transaction response
* shall have at least 1 entry for each entry in the request, in the same order as received in the request 
* entry response location must be indicated
 
 

**Usages:**

* Examples for this Profile: [Bundle/ex-response-comprehensiveProvideDocumentBundleComplete](Bundle-ex-response-comprehensiveProvideDocumentBundleComplete.md), [Bundle/ex-response-comprehensiveProvideDocumentBundleMultiple](Bundle-ex-response-comprehensiveProvideDocumentBundleMultiple.md), [Bundle/ex-response-comprehensiveProvideDocumentBundleSimple](Bundle-ex-response-comprehensiveProvideDocumentBundleSimple.md), [Bundle/ex-response-minimalProvideDocumentBundleSimple](Bundle-ex-response-minimalProvideDocumentBundleSimple.md)...Show 2 more,[Bundle/ex-response-minimalProvideDocumentBundleSimpleContained](Bundle-ex-response-minimalProvideDocumentBundleSimpleContained.md)and[Bundle/ex-response-unContainedComprehensiveProvideDocumentBundleCompt](Bundle-ex-response-unContainedComprehensiveProvideDocumentBundleCompt.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.mhd|current/StructureDefinition/IHE.MHD.ProvideDocumentBundleResponse)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.ProvideDocumentBundleResponse.csv), [Excel](StructureDefinition-IHE.MHD.ProvideDocumentBundleResponse.xlsx), [Schematron](StructureDefinition-IHE.MHD.ProvideDocumentBundleResponse.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.ProvideDocumentBundleResponse",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.ProvideDocumentBundleResponse",
  "version" : "4.2.3",
  "name" : "ProvideDocumentBundleResponse",
  "title" : "MHD Provide Document Bundle Response",
  "status" : "active",
  "date" : "2025-10-31T14:38:46-05:00",
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
  "description" : "A profile on the Bundle transaction-response for ITI-65 Provide Document Bundle response.\n\n- shall be a transaction response\n- shall have at least 1 entry for each entry in the request, in the same order as received in the request\n  - entry response location must be indicated",
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
        "patternCode" : "transaction-response"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "short" : "One entry for each entry in the request, in the same order as received",
        "min" : 1
      },
      {
        "id" : "Bundle.entry.response",
        "path" : "Bundle.entry.response",
        "short" : "Indicating the results of processing the entry",
        "min" : 1
      },
      {
        "id" : "Bundle.entry.response.location",
        "path" : "Bundle.entry.response.location",
        "min" : 1
      }
    ]
  }
}

```
