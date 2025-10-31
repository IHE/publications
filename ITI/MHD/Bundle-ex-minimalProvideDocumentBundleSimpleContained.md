# Provide Document Bundle with Minimal metadata of one document with sourcePatientInfo - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Provide Document Bundle with Minimal metadata of one document with sourcePatientInfo**

## Example Bundle: Provide Document Bundle with Minimal metadata of one document with sourcePatientInfo

Example of a minimal Provide Document Bundle for a push to an email intended recipient.

* The bundle contains 
* SubmissionSet - identifies to whom this is going and one documentReference
* DocumentReference - One DocumentReference
* Binary - the document
* the Patient is contained in the DocumentReference. This would be more classic XDR/XDM model. Note there is no mention of the patient in the SubmissionSet in this case (hence minimal metadata), and if multiple documents were sent they would implicitly be the same patient, presumably with the same contained Patient; but given it is a contained Patinet there is no way to computably prove this beyond exact comparison of the contained object.
 

Response [example](Bundle-ex-response-minimalProvideDocumentBundleSimpleContained.md)

Profile: [MHD Minimal Provide Document Bundle](StructureDefinition-IHE.MHD.Minimal.ProvideBundle.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

Bundle ex-minimalProvideDocumentBundleSimpleContained of type transaction

-------

Entry 1 - fullUrl = urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00222200001

Resource List:

> SubmissionSet with Patient

Request:

```
POST List

```

-------

Entry 2 - fullUrl = urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00222200002

Resource DocumentReference:

> 

Profile: [MHD DocumentReference Minimal](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**identifier**:[Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.3.0/NamingSystem-uri.html)/urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012 (use: usual, )**status**: Current
> **content**

### Attachments

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Url** | **Size** | **Hash** |
| * | text/plain | [Binary: text/plain (16 bytes base64)](Bundle-ex-minimalProvideDocumentBundleSimpleContained.md#urn-uuid-aaaaaaaa-bbbb-cccc-dddd-e00222200003) | 11 | `MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA==` |


-------

> Dee Schmidt (no stated gender), DoB Unknown
-------


Request:

```
POST DocumentReference

```

-------

Entry 3 - fullUrl = urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00222200003

Resource Binary:

> 

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**contentType**: text/plain**data**:`SGVsbG8gV29ybGQ=`

Request:

```
POST Binary

```



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-minimalProvideDocumentBundleSimpleContained",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.ProvideBundle"
    ],
    "security" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
        "code" : "HTEST"
      }
    ]
  },
  "type" : "transaction",
  "timestamp" : "2004-10-25T23:50:50-05:00",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00222200001",
      "resource" : {
        "resourceType" : "List",
        "id" : "aaaaaaaa-bbbb-cccc-dddd-e00222200001",
        "meta" : {
          "profile" : [
            "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.SubmissionSet"
          ],
          "security" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
              "code" : "HTEST"
            }
          ]
        },
        "text" : {
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_aaaaaaaa-bbbb-cccc-dddd-e00222200001\"> </a>SubmissionSet with Patient</div>"
        },
        "contained" : [
          {
            "resourceType" : "Practitioner",
            "id" : "in-practitioner",
            "telecom" : [
              {
                "system" : "email",
                "value" : "JohnMoehrke@gmail.com"
              }
            ]
          }
        ],
        "extension" : [
          {
            "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId",
            "valueIdentifier" : {
              "value" : "urn:oid:1.2.3.4"
            }
          },
          {
            "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-intendedRecipient",
            "valueReference" : {
              "reference" : "#in-practitioner"
            }
          }
        ],
        "identifier" : [
          {
            "use" : "usual",
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46344"
          }
        ],
        "status" : "current",
        "mode" : "working",
        "code" : {
          "coding" : [
            {
              "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes",
              "code" : "submissionset"
            }
          ]
        },
        "date" : "2004-10-25T23:50:50-05:00",
        "entry" : [
          {
            "item" : {
              "reference" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00222200002"
            }
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "List"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00222200002",
      "resource" : {
        "resourceType" : "DocumentReference",
        "id" : "aaaaaaaa-bbbb-cccc-dddd-e00222200002",
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DocumentReference_aaaaaaaa-bbbb-cccc-dddd-e00222200002\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DocumentReference aaaaaaaa-bbbb-cccc-dddd-e00222200002</b></p><a name=\"aaaaaaaa-bbbb-cccc-dddd-e00222200002\"> </a><a name=\"hcaaaaaaaa-bbbb-cccc-dddd-e00222200002\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHE.MHD.Minimal.DocumentReference.html\">MHD DocumentReference Minimal</a></p><p style=\"margin-bottom: 0px\">Security Label: test health data (Details: ActReason code HTEST = 'test health data')</p></div><p><b>masterIdentifier</b>: <a href=\"http://terminology.hl7.org/6.3.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012 (use: usual, )</p><p><b>status</b>: Current</p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ContentType</b></td><td><b>Url</b></td><td><b>Size</b></td><td><b>Hash</b></td></tr><tr><td style=\"display: none\">*</td><td>text/plain</td><td><a href=\"Bundle-ex-minimalProvideDocumentBundleSimpleContained.html#urn-uuid-aaaaaaaa-bbbb-cccc-dddd-e00222200003\">Binary: text/plain (16 bytes base64)</a></td><td>11</td><td><code>MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA==</code></td></tr></table><p><b>format</b>: <a href=\"https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/CodeSystem-formatcode.html#formatcode-urn.58ihe.58iti.58xds-sd.58text.582008\">IHE Format Code set for use with Document Sharing: urn:ihe:iti:xds-sd:text:2008</a> (ITI XDS-SD TEXT)</p></blockquote><h3>Contexts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>SourcePatientInfo</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"#hcaaaaaaaa-bbbb-cccc-dddd-e00222200002/aaaaaaaa-bbbb-cccc-dddd-e00222200004\">Dee Schmidt  (no stated gender), DoB Unknown</a></td></tr></table><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Patient #aaaaaaaa-bbbb-cccc-dddd-e00222200004</b></p><a name=\"aaaaaaaa-bbbb-cccc-dddd-e00222200002/aaaaaaaa-bbbb-cccc-dddd-e00222200004\"> </a><a name=\"hcaaaaaaaa-bbbb-cccc-dddd-e00222200002/aaaaaaaa-bbbb-cccc-dddd-e00222200004\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Dee Schmidt  (no stated gender), DoB Unknown</p><hr/></blockquote></div>"
        },
        "contained" : [
          {
            "resourceType" : "Patient",
            "id" : "aaaaaaaa-bbbb-cccc-dddd-e00222200004",
            "name" : [
              {
                "family" : "Schmidt",
                "given" : ["Dee"]
              }
            ]
          }
        ],
        "masterIdentifier" : {
          "use" : "usual",
          "system" : "urn:ietf:rfc:3986",
          "value" : "urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012"
        },
        "status" : "current",
        "content" : [
          {
            "attachment" : {
              "contentType" : "text/plain",
              "url" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00222200003",
              "size" : 11,
              "hash" : "MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA=="
            },
            "format" : {
              "system" : "http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode",
              "code" : "urn:ihe:iti:xds-sd:text:2008"
            }
          }
        ],
        "context" : {
          "sourcePatientInfo" : {
            "reference" : "#aaaaaaaa-bbbb-cccc-dddd-e00222200004"
          }
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "DocumentReference"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00222200003",
      "resource" : {
        "resourceType" : "Binary",
        "id" : "aaaaaaaa-bbbb-cccc-dddd-e00222200003",
        "meta" : {
          "security" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-ActReason",
              "code" : "HTEST"
            }
          ]
        },
        "contentType" : "text/plain",
        "data" : "SGVsbG8gV29ybGQ="
      },
      "request" : {
        "method" : "POST",
        "url" : "Binary"
      }
    }
  ]
}

```
