# Full-Text Search Match Snippet - Mobile access to Health Documents (MHD) v4.2.5-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Full-Text Search Match Snippet**

## Extension: Full-Text Search Match Snippet 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-snippet | *Version*:4.2.5-comment |
| Active as of 2026-06-16 | *Computable Name*:FullTextSearchMatchSnippet |

This extension contains a text snippet describing the context of a full-text search match. It highlights relevant content that corresponds to the provided search terms and provides a concise preview of the search result.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MHD Find Document References Response message with Full-Text Search Option](StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch.md)
* Examples for this Extension: [Bundle/ex-findDocumentReferencesResponseFullTextSearch](Bundle-ex-findDocumentReferencesResponseFullTextSearch.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.iti.mhd|current/StructureDefinition/StructureDefinition-ihe-full-text-search-match-snippet.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-full-text-search-match-snippet.csv), [Excel](StructureDefinition-ihe-full-text-search-match-snippet.xlsx), [Schematron](StructureDefinition-ihe-full-text-search-match-snippet.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-full-text-search-match-snippet",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-snippet",
  "version" : "4.2.5-comment",
  "name" : "FullTextSearchMatchSnippet",
  "title" : "Full-Text Search Match Snippet",
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
  "description" : "This extension contains a text snippet describing the context of a full-text search match. It highlights relevant content that corresponds to the provided search terms and provides a concise preview of the search result.",
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
      "short" : "Full-Text Search Match Snippet",
      "definition" : "This extension contains a text snippet describing the context of a full-text search match. It highlights relevant content that corresponds to the provided search terms and provides a concise preview of the search result."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "description" : "Extensions are always sliced by (at least) url",
        "rules" : "closed"
      }
    },
    {
      "id" : "Extension.extension:snippet",
      "path" : "Extension.extension",
      "sliceName" : "snippet",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:snippet.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:snippet.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "snippet"
    },
    {
      "id" : "Extension.extension:snippet.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "Human-readable text snippet describing the context of the search match.",
      "definition" : "This value contains a short, human-readable text snippet that describes the context of the search match. It enables quick orientation by presenting relevant content from the identified document or resource.",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:pageNumber",
      "path" : "Extension.extension",
      "sliceName" : "pageNumber",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:pageNumber.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:pageNumber.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "pageNumber"
    },
    {
      "id" : "Extension.extension:pageNumber.value[x]",
      "path" : "Extension.extension.value[x]",
      "short" : "For paginated documents (e.g. PDF), indicates the page on which the full-text search match was found.",
      "definition" : "For documents with pagination, such as PDF files, this element may be used to indicate the specific page on which the full-text search identified a match.",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-snippet"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
