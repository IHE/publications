# Full-Text Search Match Total Hits - Mobile access to Health Documents (MHD) v4.2.5-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Full-Text Search Match Total Hits**

## Extension: Full-Text Search Match Total Hits 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-total-hits | *Version*:4.2.5-comment |
| Active as of 2026-06-16 | *Computable Name*:FullTextSearchMatchTotalHits |

This extension contains the total number of full-text search matches found within a document (e.g. a PDF).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MHD Find Document References Response message with Full-Text Search Option](StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch.md)
* Examples for this Extension: [Bundle/ex-findDocumentReferencesResponseFullTextSearch](Bundle-ex-findDocumentReferencesResponseFullTextSearch.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.iti.mhd|current/StructureDefinition/StructureDefinition-ihe-full-text-search-match-total-hits.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-full-text-search-match-total-hits.csv), [Excel](StructureDefinition-ihe-full-text-search-match-total-hits.xlsx), [Schematron](StructureDefinition-ihe-full-text-search-match-total-hits.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-full-text-search-match-total-hits",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-total-hits",
  "version" : "4.2.5-comment",
  "name" : "FullTextSearchMatchTotalHits",
  "title" : "Full-Text Search Match Total Hits",
  "status" : "active",
  "date" : "2026-06-16T19:21:44-05:00",
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
  "description" : "This extension contains the total number of full-text search matches found within a document (e.g. a PDF).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Bundle.entry.search"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Full-Text Search Match Total Hits",
      "definition" : "This extension contains the total number of full-text search matches found within a document (e.g. a PDF)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-total-hits"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Total number of matches found within this document.",
      "definition" : "Indicates the total number of matches identified by a full-text search within this document.",
      "min" : 1,
      "type" : [{
        "code" : "integer"
      }]
    }]
  }
}

```
