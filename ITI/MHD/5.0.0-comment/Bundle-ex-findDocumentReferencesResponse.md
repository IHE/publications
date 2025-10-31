# Example of a Find Document References Response Message - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of a Find Document References Response Message**

## Example Bundle: Example of a Find Document References Response Message

Profile: [MHD Find Document References Response message](StructureDefinition-IHE.MHD.FindDocumentReferencesResponseMessage.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

Bundle ex-findDocumentReferencesResponse of type searchset

-------

Entry 1 - fullUrl = http://example.org/DocumentReference/in-DocumentReferenceMinimal

Resource DocumentReference:

> 

Profile: [MHD DocumentReference Minimal](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**identifier**:[Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.5.0/NamingSystem-uri.html)/urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012 (use: usual, ),[Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.5.0/NamingSystem-uri.html)/urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d (use: official, )**status**: Current
> **content**

### Attachments

| | | |
| :--- | :--- | :--- |
| - | **ContentType** | **Url** |
| * | text/plain | [http://example.com/nowhere.txt](http://example.com/nowhere.txt) |





## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-findDocumentReferencesResponse",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferencesResponseMessage"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "type" : "searchset",
  "timestamp" : "2021-04-16T11:32:24Z",
  "total" : 1,
  "link" : [
    {
      "relation" : "self",
      "url" : "fhir.example.com/fhir/DocumentReference?patient=9876&status=current"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "http://example.org/DocumentReference/in-DocumentReferenceMinimal",
      "resource" : {
        "resourceType" : "DocumentReference",
        "id" : "in-DocumentReferenceMinimal",
        "meta" : {
          "profile" : [
            "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference"
          ],
          "security" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
              "code" : "HTEST"
            }
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DocumentReference_in-DocumentReferenceMinimal\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DocumentReference in-DocumentReferenceMinimal</b></p><a name=\"in-DocumentReferenceMinimal\"> </a><a name=\"hcin-DocumentReferenceMinimal\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHE.MHD.Minimal.DocumentReference.html\">MHD DocumentReference Minimal</a></p><p style=\"margin-bottom: 0px\">Security Label: test health data (Details: ActReason code HTEST = 'test health data')</p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/6.5.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012 (use: usual, ), <a href=\"http://terminology.hl7.org/6.5.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d (use: official, )</p><p><b>status</b>: Current</p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ContentType</b></td><td><b>Url</b></td></tr><tr><td style=\"display: none\">*</td><td>text/plain</td><td><a href=\"http://example.com/nowhere.txt\">http://example.com/nowhere.txt</a></td></tr></table></blockquote></div>"
        },
        "identifier" : [
          {
            "use" : "usual",
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
          },
          {
            "use" : "official",
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d"
          }
        ],
        "status" : "current",
        "content" : [
          {
            "attachment" : {
              "contentType" : "text/plain",
              "url" : "http://example.com/nowhere.txt"
            }
          }
        ]
      }
    }
  ]
}

```
