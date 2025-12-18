# Example Provide Bundle with a FHIR-Document - Mobile access to Health Documents (MHD) v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Provide Bundle with a FHIR-Document**

## Example Bundle: Example Provide Bundle with a FHIR-Document



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-comprehensiveProvideDocumentBundleDocument",
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
      "fullUrl" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00888800001",
      "resource" : {
        "resourceType" : "List",
        "id" : "aaaaaaaa-bbbb-cccc-dddd-e00888800001",
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
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_aaaaaaaa-bbbb-cccc-dddd-e00888800001\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List aaaaaaaa-bbbb-cccc-dddd-e00888800001</b></p><a name=\"aaaaaaaa-bbbb-cccc-dddd-e00888800001\"> </a><a name=\"hcaaaaaaaa-bbbb-cccc-dddd-e00888800001\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHE.MHD.Comprehensive.SubmissionSet.html\">MHD SubmissionSet Comprehensive</a></p><p style=\"margin-bottom: 0px\">Security Label: test health data (Details: ActReason code HTEST = 'test health data')</p></div><table class=\"clstu\"><tr><td>Date: 2004-10-25 23:50:50-0500 </td><td>Mode: Working List </td><td>Status: Current </td><td>Code: SubmissionSet as a FHIR List </td></tr><tr><td>Subject: <a href=\"Bundle-ex-fhir-document-bundle.html#http-//example.org/fhir/Patient/fdoc-patient\">Eve Everywoman Female, DoB: 1955-01-06</a></td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td></tr><tr><td><a href=\"Bundle-ex-comprehensiveProvideDocumentBundleDocument.html#urn-uuid-aaaaaaaa-bbbb-cccc-dddd-e00888800002\">DocumentReference: extension = -&gt;Dee Schmidt  (no stated gender), DoB Unknown ( http://example.org/patients#mrn-1234); identifier = UUID:0c3151bd-1cbf-4d64-b04d-cd9187a4c6e0 (use: usual, ),UUID:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d (use: official, ); status = current; type = Attending Discharge summary; category = History of Immunization note; facilityType = Children's hospital; practiceSetting = Adult mental illness - specialty (qualifier value); date = 2020-02-01 23:50:50-0500; securityLabel = normal</a></td></tr></table></div>"
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
            "use" : "official",
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:uuid:5d3d3a7d-82a6-4fe0-8d87-ee2cb87fa219"
          },
          {
            "use" : "usual",
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:oid:1.2.129.6.58.92.88337.1"
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
        "subject" : [
          {
            "reference" : "http://example.org/fhir/Patient/fdoc-patient"
          }
        ],
        "date" : "2004-10-25T23:50:50-05:00",
        "entry" : [
          {
            "item" : {
              "reference" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00888800002"
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
      "fullUrl" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00888800002",
      "resource" : {
        "resourceType" : "DocumentReference",
        "id" : "aaaaaaaa-bbbb-cccc-dddd-e00888800002",
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
          "status" : "extensions",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DocumentReference_aaaaaaaa-bbbb-cccc-dddd-e00888800002\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DocumentReference aaaaaaaa-bbbb-cccc-dddd-e00888800002</b></p><a name=\"aaaaaaaa-bbbb-cccc-dddd-e00888800002\"> </a><a name=\"hcaaaaaaaa-bbbb-cccc-dddd-e00888800002\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.html\">MHD DocumentReference Comprehensive</a></p><p style=\"margin-bottom: 0px\">Security Label: test health data (Details: ActReason code HTEST = 'test health data')</p></div><p><b>DocumentReference Source Patient</b>: <a href=\"#hcaaaaaaaa-bbbb-cccc-dddd-e00888800002/aaaaaaaa-bbbb-cccc-dddd-e00888800004\">Dee Schmidt  (no stated gender), DoB Unknown ( http://example.org/patients#mrn-1234)</a></p><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/7.0.1/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:0c3151bd-1cbf-4d64-b04d-cd9187a4c6e0 (use: usual, ), <a href=\"http://terminology.hl7.org/7.0.1/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d (use: official, )</p><p><b>status</b>: Current</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 28655-9}\">Attending Discharge summary</span></p><p><b>category</b>: <span title=\"Codes:{http://loinc.org 11369-6}\">History of Immunization note</span></p><p><b>subject</b>: <a href=\"Bundle-ex-fhir-document-bundle.html#http-//example.org/fhir/Patient/fdoc-patient\">Eve Everywoman Female, DoB: 1955-01-06</a></p><p><b>context</b>: Identifier: <code>https://www.example.org/encounters</code>/S100</p><p><b>facilityType</b>: <span title=\"Codes:{http://snomed.info/sct 82242000}\">Children's hospital</span></p><p><b>practiceSetting</b>: <span title=\"Codes:{http://snomed.info/sct 408467006}\">Adult mental illness - specialty (qualifier value)</span></p><p><b>date</b>: 2020-02-01 23:50:50-0500</p><p><b>author</b>: <a href=\"#hcaaaaaaaa-bbbb-cccc-dddd-e00888800002/fdoc-practitioner\">Practitioner Adam Careful </a></p><p><b>securityLabel</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-Confidentiality N}\">normal</span></p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ContentType</b></td><td><b>Language</b></td><td><b>Url</b></td><td><b>Title</b></td><td><b>Creation</b></td></tr><tr><td style=\"display: none\">*</td><td>application/fhir+json</td><td>English</td><td><a href=\"Bundle-ex-comprehensiveProvideDocumentBundleDocument.html#urn-uuid-aaaaaaaa-bbbb-cccc-dddd-e00888800003\">Bundle: identifier = UUID:0c3151bd-1cbf-4d64-b04d-cd9187a4c6e0; type = document; timestamp = 2013-05-28 22:12:21+0000</a></td><td>Discharge Summary from Responsible Clinician</td><td>2013-05-28 22:12:21+0000</td></tr></table><h3>Profiles</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"http://tx.fhir.org/r5/ValueSet/formatcode#formatcode-urn.58ihe.58iti.58xds.582017.58mimeTypeSufficient\">IHE Format Code set for use with Document Sharing: urn:ihe:iti:xds:2017:mimeTypeSufficient</a> (mimeType Sufficient)</td></tr></table></blockquote><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Practitioner #fdoc-practitioner</b></p><a name=\"aaaaaaaa-bbbb-cccc-dddd-e00888800002/fdoc-practitioner\"> </a><a name=\"hcaaaaaaaa-bbbb-cccc-dddd-e00888800002/fdoc-practitioner\"> </a><p><b>identifier</b>: <code>http://www.acme.org/practitioners</code>/23</p><p><b>name</b>: Adam Careful </p></blockquote><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Patient #aaaaaaaa-bbbb-cccc-dddd-e00888800004</b></p><a name=\"aaaaaaaa-bbbb-cccc-dddd-e00888800002/aaaaaaaa-bbbb-cccc-dddd-e00888800004\"> </a><a name=\"hcaaaaaaaa-bbbb-cccc-dddd-e00888800002/aaaaaaaa-bbbb-cccc-dddd-e00888800004\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Dee Schmidt  (no stated gender), DoB Unknown ( http://example.org/patients#mrn-1234)</p><hr/></blockquote></div>"
        },
        "contained" : [
          {
            "resourceType" : "Practitioner",
            "id" : "fdoc-practitioner",
            "identifier" : [
              {
                "system" : "http://www.acme.org/practitioners",
                "value" : "23"
              }
            ],
            "name" : [
              {
                "family" : "Careful",
                "given" : ["Adam"],
                "prefix" : ["Dr"]
              }
            ]
          },
          {
            "resourceType" : "Patient",
            "id" : "aaaaaaaa-bbbb-cccc-dddd-e00888800004",
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
        "extension" : [
          {
            "url" : "http://hl7.org/fhir/StructureDefinition/documentreference-sourcepatient",
            "valueReference" : {
              "reference" : "#aaaaaaaa-bbbb-cccc-dddd-e00888800004"
            }
          }
        ],
        "identifier" : [
          {
            "use" : "usual",
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:uuid:0c3151bd-1cbf-4d64-b04d-cd9187a4c6e0"
          },
          {
            "use" : "official",
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:uuid:7d5bb8ac-68ee-4926-85e7-b8aac8e1f09d"
          }
        ],
        "status" : "current",
        "type" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "28655-9"
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
          "reference" : "http://example.org/fhir/Patient/fdoc-patient"
        },
        "context" : [
          {
            "identifier" : {
              "system" : "https://www.example.org/encounters",
              "value" : "S100"
            }
          }
        ],
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
        "date" : "2020-02-01T23:50:50-05:00",
        "author" : [
          {
            "reference" : "#fdoc-practitioner"
          }
        ],
        "securityLabel" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/v3-Confidentiality",
                "code" : "N",
                "display" : "normal"
              }
            ]
          }
        ],
        "content" : [
          {
            "attachment" : {
              "contentType" : "application/fhir+json",
              "language" : "en",
              "url" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00888800003",
              "title" : "Discharge Summary from Responsible Clinician",
              "creation" : "2013-05-28T22:12:21Z"
            },
            "profile" : [
              {
                "valueCoding" : {
                  "system" : "http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode",
                  "code" : "urn:ihe:iti:xds:2017:mimeTypeSufficient"
                }
              }
            ]
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "DocumentReference"
      }
    },
    {
      "fullUrl" : "urn:uuid:aaaaaaaa-bbbb-cccc-dddd-e00888800003",
      "resource" : {
        "resourceType" : "Bundle",
        "id" : "ex-fhir-document-bundle",
        "meta" : {
          "lastUpdated" : "2013-05-28T22:12:21Z"
        },
        "identifier" : {
          "system" : "urn:ietf:rfc:3986",
          "value" : "urn:uuid:0c3151bd-1cbf-4d64-b04d-cd9187a4c6e0"
        },
        "type" : "document",
        "timestamp" : "2013-05-28T22:12:21Z",
        "entry" : [
          {
            "fullUrl" : "http://example.org/fhir/Composition/180f219f-97a8-486d-99d9-ed631fe4fc57",
            "resource" : {
              "resourceType" : "Composition",
              "id" : "180f219f-97a8-486d-99d9-ed631fe4fc57",
              "meta" : {
                "lastUpdated" : "2013-05-28T22:12:21Z"
              },
              "status" : "final",
              "type" : {
                "coding" : [
                  {
                    "system" : "http://loinc.org",
                    "code" : "28655-9"
                  }
                ],
                "text" : "Discharge Summary from Responsible Clinician"
              },
              "subject" : [
                {
                  "reference" : "Patient/fdoc-patient"
                }
              ],
              "encounter" : {
                "reference" : "Encounter/fdoc-encounter"
              },
              "date" : "2013-02-01T12:30:02Z",
              "author" : [
                {
                  "reference" : "Practitioner/fdoc-practitioner"
                }
              ],
              "title" : "Discharge Summary",
              "section" : [
                {
                  "title" : "Reason for admission",
                  "code" : {
                    "coding" : [
                      {
                        "system" : "http://loinc.org",
                        "code" : "29299-5",
                        "display" : "Reason for visit Narrative"
                      }
                    ]
                  },
                  "text" : {
                    "status" : "additional",
                    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><thead><tr><td>Details</td><td/></tr></thead><tbody><tr><td>Acute Asthmatic attack. Was wheezing for days prior to admission.</td><td/></tr></tbody></table></div>"
                  },
                  "entry" : [
                    {
                      "reference" : "Observation/fdoc-observation"
                    }
                  ]
                },
                {
                  "title" : "Medications on Discharge",
                  "code" : {
                    "coding" : [
                      {
                        "system" : "http://loinc.org",
                        "code" : "10183-2",
                        "display" : "Hospital discharge medications Narrative"
                      }
                    ]
                  },
                  "text" : {
                    "status" : "additional",
                    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><thead><tr><td>Medication</td><td>Last Change</td><td>Last ChangeReason</td></tr></thead><tbody><tr><td>Theophylline 200mg BD after meals</td><td>continued</td></tr><tr><td>Ventolin Inhaler</td><td>stopped</td><td>Getting side effect of tremor</td></tr></tbody></table></div>"
                  },
                  "entry" : [
                    {
                      "reference" : "MedicationRequest/fdoc-medicationrequest"
                    },
                    {
                      "reference" : "MedicationStatement/fdoc-medicationstatement"
                    }
                  ]
                },
                {
                  "title" : "Known allergies",
                  "code" : {
                    "coding" : [
                      {
                        "system" : "http://loinc.org",
                        "code" : "48765-2",
                        "display" : "Allergies and adverse reactions Document"
                      }
                    ]
                  },
                  "text" : {
                    "status" : "additional",
                    "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><thead><tr><td>Allergen</td><td>Reaction</td></tr></thead><tbody><tr><td>Doxycycline</td><td>Hives</td></tr></tbody></table></div>"
                  },
                  "entry" : [
                    {
                      "reference" : "AllergyIntolerance/fdoc-allergyintolerance"
                    }
                  ]
                }
              ]
            }
          },
          {
            "fullUrl" : "http://example.org/fhir/Practitioner/fdoc-practitioner",
            "resource" : {
              "resourceType" : "Practitioner",
              "id" : "fdoc-practitioner",
              "identifier" : [
                {
                  "system" : "http://www.acme.org/practitioners",
                  "value" : "23"
                }
              ],
              "name" : [
                {
                  "family" : "Careful",
                  "given" : ["Adam"],
                  "prefix" : ["Dr"]
                }
              ]
            }
          },
          {
            "fullUrl" : "http://example.org/fhir/Patient/fdoc-patient",
            "resource" : {
              "resourceType" : "Patient",
              "id" : "fdoc-patient",
              "active" : true,
              "name" : [
                {
                  "text" : "Eve Everywoman",
                  "family" : "Everywoman1",
                  "given" : ["Eve"]
                }
              ],
              "telecom" : [
                {
                  "system" : "phone",
                  "value" : "555-555-2003",
                  "use" : "work"
                }
              ],
              "gender" : "female",
              "birthDate" : "1955-01-06",
              "address" : [
                {
                  "use" : "home",
                  "line" : ["2222 Home Street"]
                }
              ]
            }
          },
          {
            "fullUrl" : "http://example.org/fhir/Encounter/fdoc-encounter",
            "resource" : {
              "resourceType" : "Encounter",
              "id" : "fdoc-encounter",
              "identifier" : [
                {
                  "system" : "http://www.example.org/encounters",
                  "value" : "S100"
                }
              ],
              "status" : "completed",
              "class" : [
                {
                  "coding" : [
                    {
                      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
                      "code" : "IMP",
                      "display" : "inpatient encounter"
                    }
                  ]
                }
              ],
              "type" : [
                {
                  "text" : "Orthopedic Admission"
                }
              ],
              "subject" : {
                "reference" : "Patient/fdoc-patient"
              },
              "actualPeriod" : {
                "start" : "2013-01-20T12:30:02Z",
                "end" : "2013-02-01T12:30:02Z"
              },
              "admission" : {
                "dischargeDisposition" : {
                  "text" : "Discharged to care of GP"
                }
              }
            }
          },
          {
            "fullUrl" : "http://example.org/fhir/Observation/fdoc-observation",
            "resource" : {
              "resourceType" : "Observation",
              "id" : "fdoc-observation",
              "status" : "final",
              "code" : {
                "coding" : [
                  {
                    "system" : "http://loinc.org",
                    "code" : "46241-6"
                  }
                ],
                "text" : "Reason for admission"
              },
              "subject" : {
                "reference" : "Patient/fdoc-patient"
              },
              "encounter" : {
                "reference" : "Encounter/fdoc-encounter"
              },
              "valueString" : "Acute Asthmatic attack. Was wheezing for days prior to admission."
            }
          },
          {
            "fullUrl" : "http://example.org/fhir/MedicationRequest/fdoc-medicationrequest",
            "resource" : {
              "resourceType" : "MedicationRequest",
              "id" : "fdoc-medicationrequest",
              "status" : "unknown",
              "intent" : "order",
              "medication" : {
                "concept" : {
                  "coding" : [
                    {
                      "system" : "http://snomed.info/sct",
                      "code" : "66493003"
                    }
                  ],
                  "text" : "Theophylline 200mg"
                }
              },
              "subject" : {
                "reference" : "Patient/fdoc-patient"
              },
              "requester" : {
                "reference" : "Practitioner/fdoc-practitioner"
              },
              "reason" : [
                {
                  "concept" : {
                    "text" : "Management of Asthma"
                  }
                }
              ],
              "dosageInstruction" : [
                {
                  "additionalInstruction" : [
                    {
                      "text" : "Take with Food"
                    }
                  ],
                  "timing" : {
                    "repeat" : {
                      "frequency" : 2,
                      "period" : 1,
                      "periodUnit" : "d"
                    }
                  },
                  "route" : {
                    "coding" : [
                      {
                        "system" : "http://snomed.info/sct",
                        "code" : "394899003",
                        "display" : "oral administration of treatment"
                      }
                    ]
                  },
                  "doseAndRate" : [
                    {
                      "type" : {
                        "coding" : [
                          {
                            "system" : "http://terminology.hl7.org/CodeSystem/dose-rate-type",
                            "code" : "ordered",
                            "display" : "Ordered"
                          }
                        ]
                      },
                      "doseQuantity" : {
                        "value" : 1,
                        "unit" : "tablet",
                        "system" : "http://terminology.hl7.org/CodeSystem/v3-orderableDrugForm",
                        "code" : "TAB"
                      }
                    }
                  ]
                }
              ]
            }
          },
          {
            "fullUrl" : "http://example.org/fhir/MedicationStatement/fdoc-medicationstatement",
            "resource" : {
              "resourceType" : "MedicationStatement",
              "id" : "fdoc-medicationstatement",
              "status" : "recorded",
              "medication" : {
                "concept" : {
                  "text" : "Ventolin Inhaler"
                }
              },
              "subject" : {
                "reference" : "Patient/fdoc-patient"
              },
              "dateAsserted" : "2013-05-05T16:13:03Z",
              "reason" : [
                {
                  "concept" : {
                    "text" : "Management of Asthma"
                  }
                }
              ]
            }
          },
          {
            "fullUrl" : "http://example.org/fhir/AllergyIntolerance/fdoc-allergyintolerance",
            "resource" : {
              "resourceType" : "AllergyIntolerance",
              "id" : "fdoc-allergyintolerance",
              "clinicalStatus" : {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
                    "code" : "active",
                    "display" : "Active"
                  }
                ]
              },
              "verificationStatus" : {
                "coding" : [
                  {
                    "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
                    "code" : "confirmed",
                    "display" : "Confirmed"
                  }
                ]
              },
              "type" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/allergy-intolerance-type",
                    "code" : "allergy"
                  }
                ]
              },
              "criticality" : "high",
              "code" : {
                "text" : "Doxycycline"
              },
              "patient" : {
                "reference" : "Patient/fdoc-patient"
              },
              "recordedDate" : "2012-09-17",
              "reaction" : [
                {
                  "manifestation" : [
                    {
                      "concept" : {
                        "text" : "Hives"
                      }
                    }
                  ]
                }
              ]
            }
          }
        ]
      },
      "request" : {
        "method" : "POST",
        "url" : "Bundle"
      }
    }
  ]
}

```
