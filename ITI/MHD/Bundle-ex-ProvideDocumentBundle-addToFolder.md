# Provide Document Bundle with one document to be added to an existing folder - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Provide Document Bundle with one document to be added to an existing folder**

## Example Bundle: Provide Document Bundle with one document to be added to an existing folder

Example of a comprehensive Provide Document Bundle for a publication and added to an existing folder.

* The bundle contains 
* SubmissionSet - identifies one documentReference
* Folder - existing Folder to be updated
* DocumentReference - One DocumentReference
* Binary - the document
* the Patient is contained in the DocumentReference
* the Patient is also a reference to a PIXm/PDQm retrieved Resource.
 

no response example is provided

Profile: [MHD Comprehensive Provide Document Bundle](StructureDefinition-IHE.MHD.Comprehensive.ProvideBundle.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

Bundle ex-ProvideDocumentBundle-addToFolder of type transaction

-------

Entry 1 - fullUrl = urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00777700001

Resource List:

> SubmissionSet with Patient

Request:

```
POST List

```

-------

Entry 2 - fullUrl = urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00777700002

Resource DocumentReference:

> 

Profile: [MHD DocumentReference Comprehensive](StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.md)

Security Label: test health data (Details: ActReason code HTEST = 'test health data')

**identifier**:[Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.3.0/NamingSystem-uri.html)/urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012 (use: usual, )**status**: Current**type**:Patient summary Document**category**:History of Immunization note**subject**:[John Schmidt Other, DoB: 1923-07-25](Patient-ex-patient.md)**date**: 2020-02-01 23:50:50-0500**securityLabel**:restricted
> **content**

### Attachments

| | | | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Language** | **Url** | **Size** | **Hash** | **Title** | **Creation** |
| * | text/plain | en | [Binary: text/plain (16 bytes base64)](Bundle-ex-ProvideDocumentBundle-addToFolder.md#urn-uuid-aaaaaaaa-bbbb-cccc-dddd-e00777700003) | 11 | `MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA==` | Hello World | 2020-02-01 23:50:50-0500 |


-------

> Dee Schmidt (no stated gender), DoB Unknown ( http://example.org/patients#mrn-1234)
-------


Request:

```
POST DocumentReference

```

-------

Entry 3 - fullUrl = urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00777700005

Resource List:

> Folder with Patient

Request:

```
PUT List

```

-------

Entry 4 - fullUrl = urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00777700003

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
  "id" : "ex-ProvideDocumentBundle-addToFolder",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.ProvideBundle"
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
      "fullUrl" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00777700001",
      "resource" : {
        "resourceType" : "List",
        "id" : "aaaaaaaa-bbbb-cccc-dddd-e00777700001",
        "meta" : {
          "profile" : [
            "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.SubmissionSet"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_aaaaaaaa-bbbb-cccc-dddd-e00777700001\"> </a>SubmissionSet with Patient</div>"
        },
        "extension" : [
          {
            "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "code" : "225728007"
                }
              ]
            }
          },
          {
            "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-sourceId",
            "valueIdentifier" : {
              "value" : "urn:oid:1.2.3.4"
            }
          }
        ],
        "identifier" : [
          {
            "use" : "usual",
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46352"
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
        "subject" : {
          "reference" : "Patient/ex-patient"
        },
        "date" : "2004-10-25T23:50:50-05:00",
        "entry" : [
          {
            "item" : {
              "reference" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00777700002"
            }
          },
          {
            "item" : {
              "reference" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00777700005"
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
      "fullUrl" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00777700002",
      "resource" : {
        "resourceType" : "DocumentReference",
        "id" : "aaaaaaaa-bbbb-cccc-dddd-e00777700002",
        "meta" : {
          "profile" : [
            "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DocumentReference_aaaaaaaa-bbbb-cccc-dddd-e00777700002\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DocumentReference aaaaaaaa-bbbb-cccc-dddd-e00777700002</b></p><a name=\"aaaaaaaa-bbbb-cccc-dddd-e00777700002\"> </a><a name=\"hcaaaaaaaa-bbbb-cccc-dddd-e00777700002\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.html\">MHD DocumentReference Comprehensive</a></p><p style=\"margin-bottom: 0px\">Security Label: test health data (Details: ActReason code HTEST = 'test health data')</p></div><p><b>masterIdentifier</b>: <a href=\"http://terminology.hl7.org/6.3.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:oid:1.2.840.113556.1.8000.2554.53432.348.12973.17740.34205.4355.50220.62012 (use: usual, )</p><p><b>status</b>: Current</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 60591-5}\">Patient summary Document</span></p><p><b>category</b>: <span title=\"Codes:{http://loinc.org 11369-6}\">History of Immunization note</span></p><p><b>subject</b>: <a href=\"Patient-ex-patient.html\">John Schmidt  Other, DoB: 1923-07-25</a></p><p><b>date</b>: 2020-02-01 23:50:50-0500</p><p><b>securityLabel</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-Confidentiality R}\">restricted</span></p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ContentType</b></td><td><b>Language</b></td><td><b>Url</b></td><td><b>Size</b></td><td><b>Hash</b></td><td><b>Title</b></td><td><b>Creation</b></td></tr><tr><td style=\"display: none\">*</td><td>text/plain</td><td>English</td><td><a href=\"Bundle-ex-ProvideDocumentBundle-addToFolder.html#urn-uuid-aaaaaaaa-bbbb-cccc-dddd-e00777700003\">Binary: text/plain (16 bytes base64)</a></td><td>11</td><td><code>MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA==</code></td><td>Hello World</td><td>2020-02-01 23:50:50-0500</td></tr></table><p><b>format</b>: <a href=\"https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/CodeSystem-formatcode.html#formatcode-urn.58ihe.58iti.58xds-sd.58text.582008\">IHE Format Code set for use with Document Sharing: urn:ihe:iti:xds-sd:text:2008</a> (ITI XDS-SD TEXT)</p></blockquote><h3>Contexts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>FacilityType</b></td><td><b>PracticeSetting</b></td><td><b>SourcePatientInfo</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 82242000}\">Children's hospital</span></td><td><span title=\"Codes:{http://snomed.info/sct 408467006}\">Adult mental illness - specialty (qualifier value)</span></td><td><a href=\"#hcaaaaaaaa-bbbb-cccc-dddd-e00777700002/aaaaaaaa-bbbb-cccc-dddd-e00777700004\">Dee Schmidt  (no stated gender), DoB Unknown ( http://example.org/patients#mrn-1234)</a></td></tr></table><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Patient #aaaaaaaa-bbbb-cccc-dddd-e00777700004</b></p><a name=\"aaaaaaaa-bbbb-cccc-dddd-e00777700002/aaaaaaaa-bbbb-cccc-dddd-e00777700004\"> </a><a name=\"hcaaaaaaaa-bbbb-cccc-dddd-e00777700002/aaaaaaaa-bbbb-cccc-dddd-e00777700004\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Dee Schmidt  (no stated gender), DoB Unknown ( http://example.org/patients#mrn-1234)</p><hr/></blockquote></div>"
        },
        "contained" : [
          {
            "resourceType" : "Patient",
            "id" : "aaaaaaaa-bbbb-cccc-dddd-e00777700004",
            "identifier" : [
              {
                "system" : "http://example.org/patients",
                "value" : "mrn-1234"
              }
            ],
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
        "type" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "60591-5"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://loinc.org",
                "code" : "11369-6"
              }
            ]
          }
        ],
        "subject" : {
          "reference" : "Patient/ex-patient"
        },
        "date" : "2020-02-01T23:50:50-05:00",
        "securityLabel" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
                "code" : "R"
              }
            ]
          }
        ],
        "content" : [
          {
            "attachment" : {
              "contentType" : "text/plain",
              "language" : "en",
              "url" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00777700003",
              "size" : 11,
              "hash" : "MGE0ZDU1YThkNzc4ZTUwMjJmYWI3MDE5NzdjNWQ4NDBiYmM0ODZkMA==",
              "title" : "Hello World",
              "creation" : "2020-02-01T23:50:50-05:00"
            },
            "format" : {
              "system" : "http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode",
              "code" : "urn:ihe:iti:xds-sd:text:2008"
            }
          }
        ],
        "context" : {
          "facilityType" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "82242000"
              }
            ]
          },
          "practiceSetting" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "408467006"
              }
            ]
          },
          "sourcePatientInfo" : {
            "reference" : "#aaaaaaaa-bbbb-cccc-dddd-e00777700004"
          }
        }
      },
      "request" : {
        "method" : "POST",
        "url" : "DocumentReference"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00777700005",
      "resource" : {
        "resourceType" : "List",
        "id" : "aaaaaaaa-bbbb-cccc-dddd-e00777700005",
        "meta" : {
          "profile" : [
            "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.Folder"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_aaaaaaaa-bbbb-cccc-dddd-e00777700005\"> </a>Folder with Patient</div>"
        },
        "extension" : [
          {
            "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "code" : "225728007"
                }
              ]
            }
          },
          {
            "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-designationType",
            "valueCodeableConcept" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "code" : "284548004"
                }
              ]
            }
          }
        ],
        "identifier" : [
          {
            "use" : "usual",
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:oid:1.2.840.113556.1.8000.2554.58783.21864.3474.19410.44358.58254.41281.46353"
          }
        ],
        "status" : "current",
        "mode" : "working",
        "title" : "Example Folder with comprehensive metadata",
        "code" : {
          "coding" : [
            {
              "system" : "https://profiles.ihe.net/ITI/MHD/CodeSystem/MHDlistTypes",
              "code" : "folder"
            }
          ]
        },
        "subject" : {
          "reference" : "Patient/ex-patient"
        },
        "date" : "2004-12-25T23:50:50-05:00",
        "note" : [
          {
            "text" : "Folder for submission"
          }
        ],
        "entry" : [
          {
            "item" : {
              "reference" : "DocumentReference/ex-DocumentReferenceComprehensive"
            }
          },
          {
            "item" : {
              "reference" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00777700002"
            }
          }
        ]
      },
      "request" : {
        "method" : "PUT",
        "url" : "List"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00777700003",
      "resource" : {
        "resourceType" : "Binary",
        "id" : "aaaaaaaa-bbbb-cccc-dddd-e00777700003",
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
