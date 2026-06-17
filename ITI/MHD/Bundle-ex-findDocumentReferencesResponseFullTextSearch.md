# Example of a Find Document References Response Message with the Full-Text Search Option - Mobile access to Health Documents (MHD) v4.2.5-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of a Find Document References Response Message with the Full-Text Search Option**

## Example Bundle: Example of a Find Document References Response Message with the Full-Text Search Option



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-findDocumentReferencesResponseFullTextSearch",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferencesResponseMessageFullTextSearch"],
    "security" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
      "code" : "HTEST"
    }]
  },
  "type" : "searchset",
  "timestamp" : "2021-04-16T11:32:24Z",
  "total" : 1,
  "link" : [{
    "relation" : "self",
    "url" : "test.fhir.net/R4/fhir/DocumentReference?patient=9876&status=current"
  }],
  "entry" : [{
    "fullUrl" : "http://example.org/DocumentReference/in-DocumentReferenceMinimalFullTextSearchPDF",
    "resource" : {
      "resourceType" : "DocumentReference",
      "id" : "in-DocumentReferenceMinimalFullTextSearchPDF",
      "meta" : {
        "profile" : ["https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference"],
        "security" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
          "code" : "HTEST"
        }]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DocumentReference_in-DocumentReferenceMinimalFullTextSearchPDF\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DocumentReference in-DocumentReferenceMinimalFullTextSearchPDF</b></p><a name=\"in-DocumentReferenceMinimalFullTextSearchPDF\"> </a><a name=\"hcin-DocumentReferenceMinimalFullTextSearchPDF\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHE.MHD.Minimal.DocumentReference.html\">MHD DocumentReference Minimal</a></p><p style=\"margin-bottom: 0px\">Security Label: <a href=\"http://terminology.hl7.org/7.2.0/CodeSystem-v3-ActReason.html\">test health data (Details: ActReason code HTEST = 'test health data')</a></p></div><p><b>masterIdentifier</b>: Identifier type for XDS UniqueId/urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012</p><p><b>identifier</b>: Identifier type for XDS entryUUID/urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d (use: official, )</p><p><b>status</b>: Current</p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ContentType</b></td><td><b>Url</b></td></tr><tr><td style=\"display: none\">*</td><td>application/pdf</td><td><a href=\"http://example.com/nowhere.pdf\">http://example.com/nowhere.pdf</a></td></tr></table></blockquote></div>"
      },
      "masterIdentifier" : {
        "type" : {
          "coding" : [{
            "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/IHE.MHD.MHDIdentifierType",
            "code" : "uniqueId"
          }]
        },
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
      },
      "identifier" : [{
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/IHE.MHD.MHDIdentifierType",
            "code" : "entryUUID"
          }]
        },
        "system" : "urn:ietf:rfc:3986",
        "value" : "urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d"
      }],
      "status" : "current",
      "content" : [{
        "attachment" : {
          "contentType" : "application/pdf",
          "url" : "http://example.com/nowhere.pdf"
        }
      }]
    },
    "search" : {
      "extension" : [{
        "extension" : [{
          "url" : "snippet",
          "valueString" : "The patient was diagnosed with <mark>hypertension</mark> and started on antihypertensive therapy."
        },
        {
          "url" : "pageNumber",
          "valueString" : "1"
        }],
        "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-snippet"
      },
      {
        "extension" : [{
          "url" : "snippet",
          "valueString" : "A history of <mark>hypertension</mark> was noted during the previous hospital admission."
        },
        {
          "url" : "pageNumber",
          "valueString" : "23"
        }],
        "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-snippet"
      },
      {
        "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-total-hits",
        "valueInteger" : 2
      }],
      "mode" : "match",
      "score" : 0.9
    }
  }]
}

```
