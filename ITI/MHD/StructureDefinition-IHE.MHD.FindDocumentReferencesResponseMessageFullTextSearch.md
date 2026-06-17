# MHD Find Document References Response message with Full-Text Search Option - Mobile access to Health Documents (MHD) v4.2.5-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MHD Find Document References Response message with Full-Text Search Option**

## Resource Profile: MHD Find Document References Response message with Full-Text Search Option 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch | *Version*:4.2.5-comment |
| Active as of 2026-06-16 | *Computable Name*:FindDocumentReferencesResponseFullTextSearch |

 
A profile on the Find Document References Response message for ITI-67 with Full-Text Search Option 

**Usages:**

* Examples for this Profile: [Bundle/ex-findDocumentReferencesResponseFullTextSearch](Bundle-ex-findDocumentReferencesResponseFullTextSearch.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.iti.mhd|current/StructureDefinition/StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch.csv), [Excel](StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch.xlsx), [Schematron](StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch",
  "version" : "4.2.5-comment",
  "name" : "FindDocumentReferencesResponseFullTextSearch",
  "title" : "MHD Find Document References Response message with Full-Text Search Option",
  "status" : "active",
  "date" : "2026-06-16T19:25:56-05:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [{
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
    }]
  },
  {
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  },
  {
    "name" : "IHE IT Infrastructure Technical Committee",
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  }],
  "description" : "A profile on the Find Document References Response message for ITI-67 with Full-Text Search Option",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "fixedCode" : "searchset"
    },
    {
      "id" : "Bundle.total",
      "path" : "Bundle.total",
      "min" : 1
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "profile",
          "path" : "resource"
        }],
        "rules" : "open"
      }
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DocumentReference",
      "path" : "Bundle.entry",
      "sliceName" : "DocumentReference",
      "short" : "DocumentReference",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:DocumentReference.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "DocumentReference",
        "profile" : ["https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference"]
      }]
    },
    {
      "id" : "Bundle.entry:DocumentReference.search",
      "path" : "Bundle.entry.search",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DocumentReference.search.extension",
      "path" : "Bundle.entry.search.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Bundle.entry:DocumentReference.search.extension:matchSnippet",
      "path" : "Bundle.entry.search.extension",
      "sliceName" : "matchSnippet",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-snippet"]
      }]
    },
    {
      "id" : "Bundle.entry:DocumentReference.search.extension:totalHits",
      "path" : "Bundle.entry.search.extension",
      "sliceName" : "totalHits",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-total-hits"]
      }]
    },
    {
      "id" : "Bundle.entry:DocumentReference.search.mode",
      "path" : "Bundle.entry.search.mode",
      "short" : "Indicates how a document was included in the full-text search result (i.e. as a direct match, by relationship, or as supplementary information).",
      "definition" : "This element describes how a document identified during a full-text search was included in the search result. It indicates whether the document directly satisfies the search criteria or was included for other contextual reasons.\n\nIn the context of full-text search on documents, the following values are used:\n* match: The document contains content that directly matches the specified search criteria and is considered a relevant hit.\n* include: The document was included in the result due to a relationship with another relevant document or contextual linkage.\n* outcome: The document provides additional information related to the search request, such as indications about result completeness or technical metadata.",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:DocumentReference.search.score",
      "path" : "Bundle.entry.search.score",
      "short" : "Represents the relevance of a document to the search query based on a calculated relevance value.",
      "definition" : "The score element indicates the relevance value of a document in the context of a full-text search. This value is calculated based on the degree of correspondence between the search query and the document content. A higher score indicates a stronger relevance to the specified search criteria.",
      "min" : 1
    }]
  }
}

```
