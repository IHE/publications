# ex-Bundle-secondaryUse-pandemnicIPS-Patricia-Jordana - FHIR International Patient Summary v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ex-Bundle-secondaryUse-pandemnicIPS-Patricia-Jordana**

## Example Bundle: ex-Bundle-secondaryUse-pandemnicIPS-Patricia-Jordana



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-bundle-secondaryUse-pandemnicips-patricia-jordana",
  "meta" : {
    "lastUpdated" : "2026-02-05T13:51:24-05:00",
    "profile" : ["https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.Complete.Option.Bundle"]
  },
  "identifier" : {
    "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
    "value" : "IHEPCCIPSVRDR-EX2026020611"
  },
  "type" : "document",
  "timestamp" : "2026-02-05T10:30:00-05:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:313df1ad-9094-4a93-a0cc-64ee25d3d327",
    "resource" : {
      "resourceType" : "Composition",
      "id" : "313df1ad-9094-4a93-a0cc-64ee25d3d327",
      "meta" : {
        "profile" : ["https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.Complete.Option.Composition"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_313df1ad-9094-4a93-a0cc-64ee25d3d327\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition 313df1ad-9094-4a93-a0cc-64ee25d3d327</b></p><a name=\"313df1ad-9094-4a93-a0cc-64ee25d3d327\"> </a><a name=\"hc313df1ad-9094-4a93-a0cc-64ee25d3d327\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHE.FIPS.IO.Complete.Option.Composition.html\">FHIR International Patient Summary Implementation Options - Complete Option Composition</a></p></div><p><b>status</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 60591-5}\">Patient summary Document</span></p><p><b>date</b>: 2024-07-01 00:00:00+0000</p><p><b>author</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee\">Practitioner Heps Simone MD(official)</a></p><p><b>title</b>: International Patient Summary</p><p><b>confidentiality</b>: normal</p><p><b>custodian</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-5bc0c003-a3cd-44f2-b3be-8cb256d0e83a\">Organization World Health Organization</a></p><h3>Events</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Period</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ActClass PCPR}\">care provision</span></td><td>2024-07-01 00:00:00+0000 --&gt; 2024-07-01 00:00:00+0000</td></tr></table></div>"
      },
      "status" : "final",
      "type" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "60591-5"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "date" : "2024-07-01T00:00:00Z",
      "author" : [{
        "reference" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
      }],
      "title" : "International Patient Summary",
      "confidentiality" : "N",
      "custodian" : {
        "reference" : "urn:uuid:5bc0c003-a3cd-44f2-b3be-8cb256d0e83a"
      },
      "event" : [{
        "code" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-ActClass",
            "code" : "PCPR"
          }]
        }],
        "period" : {
          "start" : "2024-07-01T00:00:00Z",
          "end" : "2024-07-01T00:00:00Z"
        }
      }],
      "section" : [{
        "title" : "Problem List",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "11450-4",
            "display" : "Problem list - Reported"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Problem list section</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:f2acb378-5c29-4541-b0c0-953b53d61d05"
        },
        {
          "reference" : "urn:uuid:fab09f14-d6b9-4bd4-a03b-836568f9706a"
        }]
      },
      {
        "title" : "Allergies and Intolerances",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "48765-2",
            "display" : "Allergies and adverse reactions Document"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Allergies and intolerances section</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:b06be658-3d84-4b1b-be48-6fac0e5427c6"
        }]
      },
      {
        "title" : "Medication List",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "10160-0",
            "display" : "History of Medication use Narrative"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Medication section</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:dffca459-b71b-41ec-a0a2-077310d64d92"
        }]
      },
      {
        "title" : "Past Problems",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "11348-0",
            "display" : "History of Past illness note"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">History of Past Problems Section</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:22f96a81-b119-4150-bfd2-ffe8ea48cdbb"
        }]
      },
      {
        "title" : "History of Immunizations",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "11369-6",
            "display" : "History of Immunization note"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Immunizations section</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:7925d1b8-f0b2-49d8-b4a0-68f1b9ae238a"
        }]
      },
      {
        "title" : "History of Procedures",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "47519-4",
            "display" : "History of Procedures Document"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">History of Procedures section</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:402afc3f-318f-4a48-9d79-0cab913d7efd"
        }]
      },
      {
        "title" : "Diagnostic Results",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "30954-2",
            "display" : "Relevant diagnostic tests/laboratory data note"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results section</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:e4040d7c-03f5-4e2e-9cfe-3618899aa777"
        }]
      },
      {
        "title" : "Social History",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "29762-2",
            "display" : "Social history note"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Social History</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:50a342f1-e715-43f9-bf43-30f219e77560"
        }]
      },
      {
        "title" : "Pregnancy History",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "10162-6",
            "display" : "History of Pregnancies Narrative"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pregnancy section</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:525840ed-762d-44c5-a0bf-bac7a275ad80"
        }]
      },
      {
        "title" : "Medical Devices",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "46264-8",
            "display" : "History of Medical Device Use"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Results section</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:8064d9f4-4b5f-4719-9189-00ec8ef59ec6"
        }]
      },
      {
        "title" : "Vital Signs",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "8716-3",
            "display" : "Vital signs note"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Vital Signs Section</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:0ce67e34-6c8f-4a69-9bb1-1c721635bb84"
        }]
      },
      {
        "title" : "Plan of Care",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "18776-5",
            "display" : "Plan of care note"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Plan of Care Section</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:176ae1b5-0e8f-415f-8ea9-a58221f4fbee"
        }]
      },
      {
        "title" : "Advance Directives",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "42348-3",
            "display" : "Advance healthcare directives"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">No Advanced Directives</div>"
        }
      },
      {
        "title" : "Alerts",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "104605-1",
            "display" : "Alert"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Alerts Section</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:f44c6b4b-53f4-49bb-a251-521379991ce0"
        }]
      },
      {
        "title" : "Functional Status",
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "47420-5",
            "display" : "Functional status assessment note"
          }]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Functional Status Section</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:3c297c4b-019a-4284-b667-cfd8666d6aeb"
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:5bc0c003-a3cd-44f2-b3be-8cb256d0e83a",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "5bc0c003-a3cd-44f2-b3be-8cb256d0e83a",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_5bc0c003-a3cd-44f2-b3be-8cb256d0e83a\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization 5bc0c003-a3cd-44f2-b3be-8cb256d0e83a</b></p><a name=\"5bc0c003-a3cd-44f2-b3be-8cb256d0e83a\"> </a><a name=\"hc5bc0c003-a3cd-44f2-b3be-8cb256d0e83a\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Organization-uv-ips.html\">Organization (IPS)</a></p></div><p><b>identifier</b>: <code>urn:oid:1.3.6.1.4.1.19376.1.5.4</code>/WHO-CX</p><p><b>name</b>: World Health Organization</p></div>"
      },
      "identifier" : [{
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "WHO-CX"
      }],
      "name" : "World Health Organization"
    }
  },
  {
    "fullUrl" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "0963fc69-9112-440e-b69d-c96fad05861a",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_0963fc69-9112-440e-b69d-c96fad05861a\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient 0963fc69-9112-440e-b69d-c96fad05861a</b></p><a name=\"0963fc69-9112-440e-b69d-c96fad05861a\"> </a><a name=\"hc0963fc69-9112-440e-b69d-c96fad05861a\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Patient-uv-ips.html\">Patient (IPS)</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td>true</td><td style=\"background-color: #f3f5da\" title=\"Known status of Patient\">Deceased:</td><td colspan=\"3\">2024-06-30</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\">ph: 07 850 9900(Mobile)</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Patient Links\">Links:</td><td colspan=\"3\"><ul><li>General Practitioner: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-9e57d970-d0ae-4a36-908f-1cad06f94f28\">Yaser, Joseph</a></li></ul></td></tr></table></div>"
      },
      "identifier" : [{
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "IHEPCCEX-33159992"
      }],
      "active" : true,
      "name" : [{
        "text" : "Patricia Jordana",
        "family" : "Jordana",
        "given" : ["Patricia"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "07 850 9900",
        "use" : "mobile"
      }],
      "gender" : "female",
      "birthDate" : "1996-05-01",
      "deceasedDateTime" : "2024-06-30",
      "generalPractitioner" : [{
        "reference" : "urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28",
        "display" : "Yaser, Joseph"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "fd584c2f-5814-425d-9b00-0a5b1a6effee",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_fd584c2f-5814-425d-9b00-0a5b1a6effee\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner fd584c2f-5814-425d-9b00-0a5b1a6effee</b></p><a name=\"fd584c2f-5814-425d-9b00-0a5b1a6effee\"> </a><a name=\"hcfd584c2f-5814-425d-9b00-0a5b1a6effee\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Practitioner-uv-ips.html\">Practitioner (IPS)</a></p></div><p><b>identifier</b>: <code>urn:oid:1.3.6.1.4.1.19376.1.5.4</code>/874635264 (use: official, ), <code>urn:oid:2.16.840.1.113883.2.4.6.3</code>/567IUI51C154 (use: usual, )</p><p><b>name</b>: Heps Simone MD(Official)</p><p><b>address</b>: Galapagosweg 91 Den Burg 9105 PZ NLD (work)</p><p><b>gender</b>: Female</p><p><b>birthDate</b>: 1971-11-07</p></div>"
      },
      "identifier" : [{
        "use" : "official",
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "874635264"
      },
      {
        "use" : "usual",
        "system" : "urn:oid:2.16.840.1.113883.2.4.6.3",
        "value" : "567IUI51C154"
      }],
      "name" : [{
        "use" : "official",
        "text" : "Heps Simone MD",
        "family" : "Heps",
        "given" : ["Simone"],
        "suffix" : ["MD"]
      }],
      "address" : [{
        "use" : "work",
        "line" : ["Galapagosweg 91"],
        "city" : "Den Burg",
        "postalCode" : "9105 PZ",
        "country" : "NLD"
      }],
      "gender" : "female",
      "birthDate" : "1971-11-07"
    }
  },
  {
    "fullUrl" : "urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "9e57d970-d0ae-4a36-908f-1cad06f94f28",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_9e57d970-d0ae-4a36-908f-1cad06f94f28\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner 9e57d970-d0ae-4a36-908f-1cad06f94f28</b></p><a name=\"9e57d970-d0ae-4a36-908f-1cad06f94f28\"> </a><a name=\"hc9e57d970-d0ae-4a36-908f-1cad06f94f28\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Practitioner-uv-ips.html\">Practitioner (IPS)</a></p></div><p><b>name</b>: Joseph Yaser</p></div>"
      },
      "name" : [{
        "text" : "Joseph Yaser",
        "family" : "Joseph",
        "given" : ["Yaser"]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:dffca459-b71b-41ec-a0a2-077310d64d92",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "dffca459-b71b-41ec-a0a2-077310d64d92",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_dffca459-b71b-41ec-a0a2-077310d64d92\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement dffca459-b71b-41ec-a0a2-077310d64d92</b></p><a name=\"dffca459-b71b-41ec-a0a2-077310d64d92\"> </a><a name=\"hcdffca459-b71b-41ec-a0a2-077310d64d92\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-MedicationStatement-uv-ips.html\">MedicationStatement (IPS)</a></p></div><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://snomed.info/sct 116113006}\">Oseltamivir phosphate (substance)</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>effective</b>: 2024-06-16</p><p><b>dateAsserted</b>: 2024-06-16</p></div>"
      },
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "116113006",
          "display" : "Oseltamivir phosphate (substance)"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "effectiveDateTime" : "2024-06-16",
      "dateAsserted" : "2024-06-16"
    }
  },
  {
    "fullUrl" : "urn:uuid:f2acb378-5c29-4541-b0c0-953b53d61d05",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "f2acb378-5c29-4541-b0c0-953b53d61d05",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_f2acb378-5c29-4541-b0c0-953b53d61d05\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition f2acb378-5c29-4541-b0c0-953b53d61d05</b></p><a name=\"f2acb378-5c29-4541-b0c0-953b53d61d05\"> </a><a name=\"hcf2acb378-5c29-4541-b0c0-953b53d61d05\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Condition-uv-ips.html\">Condition (IPS)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>severity</b>: <span title=\"Codes:{http://snomed.info/sct 24484000}\">Severe</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 719865001}\">Influenza caused by pandemic influenza virus (disorder)</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>onset</b>: 2024-06-15</p><p><b>asserter</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-9e57d970-d0ae-4a36-908f-1cad06f94f28\">Practitioner Joseph Yaser</a></p></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item",
          "display" : "Problem List Item"
        }]
      }],
      "severity" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "24484000",
          "display" : "Severe"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "719865001",
          "display" : "Influenza caused by pandemic influenza virus (disorder)"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "onsetDateTime" : "2024-06-15",
      "asserter" : {
        "reference" : "urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:fab09f14-d6b9-4bd4-a03b-836568f9706a",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "fab09f14-d6b9-4bd4-a03b-836568f9706a",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_fab09f14-d6b9-4bd4-a03b-836568f9706a\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition fab09f14-d6b9-4bd4-a03b-836568f9706a</b></p><a name=\"fab09f14-d6b9-4bd4-a03b-836568f9706a\"> </a><a name=\"hcfab09f14-d6b9-4bd4-a03b-836568f9706a\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Condition-uv-ips.html\">Condition (IPS)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>severity</b>: <span title=\"Codes:{http://snomed.info/sct 24484000}\">Severe</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 370221004}\">Severe asthma (disorder)</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>onset</b>: 2006-01-03</p><p><b>asserter</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-9e57d970-d0ae-4a36-908f-1cad06f94f28\">Practitioner Joseph Yaser</a></p></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "problem-list-item",
          "display" : "Problem List Item"
        }]
      }],
      "severity" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "24484000",
          "display" : "Severe"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "370221004",
          "display" : "Severe asthma (disorder)"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "onsetDateTime" : "2006-01-03",
      "asserter" : {
        "reference" : "urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:22f96a81-b119-4150-bfd2-ffe8ea48cdbb",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "22f96a81-b119-4150-bfd2-ffe8ea48cdbb",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_22f96a81-b119-4150-bfd2-ffe8ea48cdbb\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition 22f96a81-b119-4150-bfd2-ffe8ea48cdbb</b></p><a name=\"22f96a81-b119-4150-bfd2-ffe8ea48cdbb\"> </a><a name=\"hc22f96a81-b119-4150-bfd2-ffe8ea48cdbb\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Condition-uv-ips.html\">Condition (IPS)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical resolved}\">Resolved</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Encounter Diagnosis</span></p><p><b>severity</b>: <span title=\"Codes:{http://snomed.info/sct 24484000}\">Severe</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 71620000}\">Fracture of femur (disorder)</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 61396006}\">Structure of left thigh (body structure)</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>onset</b>: 2023-11-16</p><p><b>asserter</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-9e57d970-d0ae-4a36-908f-1cad06f94f28\">Practitioner Joseph Yaser</a></p></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "resolved"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis",
          "display" : "Encounter Diagnosis"
        }]
      }],
      "severity" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "24484000",
          "display" : "Severe"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "71620000",
          "display" : "Fracture of femur (disorder)"
        }]
      },
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "61396006",
          "display" : "Structure of left thigh (body structure)"
        }]
      }],
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "onsetDateTime" : "2023-11-16",
      "asserter" : {
        "reference" : "urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:402afc3f-318f-4a48-9d79-0cab913d7efd",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "402afc3f-318f-4a48-9d79-0cab913d7efd",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_402afc3f-318f-4a48-9d79-0cab913d7efd\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure 402afc3f-318f-4a48-9d79-0cab913d7efd</b></p><a name=\"402afc3f-318f-4a48-9d79-0cab913d7efd\"> </a><a name=\"hc402afc3f-318f-4a48-9d79-0cab913d7efd\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Procedure-uv-ips.html\">Procedure (IPS)</a></p></div><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 480571000146108}\">Laparoscopic appendectomy</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>performed</b>: 2024-06-25</p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 39607008}\">Lung structure</span></p><p><b>note</b>: </p><blockquote><div><p>Artificial ventilation using ventilaton performed</p>\n</div></blockquote></div>"
      },
      "status" : "completed",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "480571000146108",
          "display" : "Artificial ventilation using ventilator (regime/therapy)"
        }],
        "text" : "Laparoscopic appendectomy"
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "performedDateTime" : "2024-06-25",
      "bodySite" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "39607008",
          "display" : "Lung structure"
        }]
      }],
      "note" : [{
        "text" : "Artificial ventilation using ventilaton performed"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:b06be658-3d84-4b1b-be48-6fac0e5427c6",
    "resource" : {
      "resourceType" : "AllergyIntolerance",
      "id" : "b06be658-3d84-4b1b-be48-6fac0e5427c6",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"AllergyIntolerance_b06be658-3d84-4b1b-be48-6fac0e5427c6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: AllergyIntolerance b06be658-3d84-4b1b-be48-6fac0e5427c6</b></p><a name=\"b06be658-3d84-4b1b-be48-6fac0e5427c6\"> </a><a name=\"hcb06be658-3d84-4b1b-be48-6fac0e5427c6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-AllergyIntolerance-uv-ips.html\">AllergyIntolerance (IPS)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-verification confirmed}\">Confirmed</span></p><p><b>type</b>: Allergy</p><p><b>category</b>: Medication</p><p><b>criticality</b>: High Risk</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 294647003}\">Allergy to component of vaccine product containing Influenza virus antigen (finding)</span></p><p><b>patient</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>onset</b>: 2020-10-01</p><p><b>lastOccurrence</b>: 2020-10-01</p><h3>Reactions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Manifestation</b></td><td><b>Severity</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 271807003}\">Rash</span></td><td>Moderate</td></tr></table></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
          "code" : "confirmed"
        }]
      },
      "type" : "allergy",
      "category" : ["medication"],
      "criticality" : "high",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "294647003",
          "display" : "Allergy to component of vaccine product containing Influenza virus antigen (finding)"
        }]
      },
      "patient" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "onsetDateTime" : "2020-10-01",
      "lastOccurrence" : "2020-10-01",
      "reaction" : [{
        "manifestation" : [{
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "271807003",
            "display" : "Rash"
          }]
        }],
        "severity" : "moderate"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:e4040d7c-03f5-4e2e-9cfe-3618899aa777",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "e4040d7c-03f5-4e2e-9cfe-3618899aa777",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-results-laboratory-pathology-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_e4040d7c-03f5-4e2e-9cfe-3618899aa777\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation e4040d7c-03f5-4e2e-9cfe-3618899aa777</b></p><a name=\"e4040d7c-03f5-4e2e-9cfe-3618899aa777\"> </a><a name=\"hce4040d7c-03f5-4e2e-9cfe-3618899aa777\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Observation-results-laboratory-pathology-uv-ips.html\">Observation Results - Laboratory/Pathology (IPS)</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 109691-6}\">Influenza virus A Ag [Measurement] in Nasopharynx</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>effective</b>: 2024-06-15</p><p><b>performer</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee\">Practitioner Heps Simone MD(official)</a></p><p><b>value</b>: 13.2 g/dL</p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p><p><b>note</b>: </p><blockquote><div><p>Positive for Influenza A</p>\n</div></blockquote></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "laboratory"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "109691-6",
          "display" : "Influenza virus A Ag [Measurement] in Nasopharynx"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "effectiveDateTime" : "2024-06-15",
      "performer" : [{
        "reference" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
      }],
      "valueQuantity" : {
        "value" : 13.2,
        "unit" : "g/dL"
      },
      "interpretation" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
          "code" : "H",
          "display" : "High"
        }]
      }],
      "note" : [{
        "text" : "Positive for Influenza A"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:7925d1b8-f0b2-49d8-b4a0-68f1b9ae238a",
    "resource" : {
      "resourceType" : "Immunization",
      "id" : "7925d1b8-f0b2-49d8-b4a0-68f1b9ae238a",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Immunization_7925d1b8-f0b2-49d8-b4a0-68f1b9ae238a\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Immunization 7925d1b8-f0b2-49d8-b4a0-68f1b9ae238a</b></p><a name=\"7925d1b8-f0b2-49d8-b4a0-68f1b9ae238a\"> </a><a name=\"hc7925d1b8-f0b2-49d8-b4a0-68f1b9ae238a\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Immunization-uv-ips.html\">Immunization (IPS)</a></p></div><p><b>status</b>: Completed</p><p><b>vaccineCode</b>: <span title=\"Codes:{http://snomed.info/sct 1181000221105}\">Invluenza Vaccination</span></p><p><b>patient</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>occurrence</b>: 2024-05-01</p><p><b>site</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ActSite LA}\">left arm</span></p><p><b>route</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration IM}\">Injection, intramuscular</span></p><p><b>doseQuantity</b>: 0.5 mL</p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Function</b></td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0443 OP}\">Ordering Provider</span></td><td><a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-9e57d970-d0ae-4a36-908f-1cad06f94f28\">Practitioner Joseph Yaser</a></td></tr></table><h3>ProtocolApplieds</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>TargetDisease</b></td><td><b>DoseNumber[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 719865001}\">Influenza caused by pandemic influenza virus (disorder)</span></td><td>2</td></tr></table></div>"
      },
      "status" : "completed",
      "vaccineCode" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1181000221105",
          "display" : "Vaccine product containing only Influenza virus antigen (medicinal product)"
        }],
        "text" : "Invluenza Vaccination"
      },
      "patient" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "occurrenceDateTime" : "2024-05-01",
      "site" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ActSite",
          "code" : "LA",
          "display" : "left arm"
        }]
      },
      "route" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-RouteOfAdministration",
          "code" : "IM",
          "display" : "Injection, intramuscular"
        }]
      },
      "doseQuantity" : {
        "value" : 0.5,
        "unit" : "mL"
      },
      "performer" : [{
        "function" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0443",
            "code" : "OP"
          }]
        },
        "actor" : {
          "reference" : "urn:uuid:9e57d970-d0ae-4a36-908f-1cad06f94f28"
        }
      }],
      "protocolApplied" : [{
        "targetDisease" : [{
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "719865001",
            "display" : "Influenza caused by pandemic influenza virus (disorder)"
          }]
        }],
        "doseNumberPositiveInt" : 2
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:50a342f1-e715-43f9-bf43-30f219e77560",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "50a342f1-e715-43f9-bf43-30f219e77560",
      "meta" : {
        "profile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-PastOrPresentJob"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_50a342f1-e715-43f9-bf43-30f219e77560\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 50a342f1-e715-43f9-bf43-30f219e77560</b></p><a name=\"50a342f1-e715-43f9-bf43-30f219e77560\"> </a><a name=\"hc50a342f1-e715-43f9-bf43-30f219e77560\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://profiles.ihe.net/PCC/ODH/1.0.0/StructureDefinition-odh-PastOrPresentJob.html\">Past Or Present Job</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category social-history}\">Social History</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11341-5}\">History of Occupation</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>effective</b>: 2016-03-10 --&gt; 2020-04-14</p><p><b>issued</b>: 2024-06-06 13:28:53+0200</p><p><b>performer</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee\">Practitioner Heps Simone MD(official)</a></p><p><b>value</b>: <span title=\"Codes:{https://profiles.ihe.net/PCC/ODH/CodeSystem/ISCO08 5321}\">Health Care Assistants</span></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://loinc.org 86188-0}\">History of Occupation Industry</span></td><td><span title=\"Codes:{https://profiles.ihe.net/PCC/ODH/CodeSystem/ISICRev4 871}\">Residential nursing care facilities</span></td></tr></table></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history",
          "display" : "Social History"
        }],
        "text" : "Social History"
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11341-5",
          "display" : "History of Occupation"
        }],
        "text" : "History of Occupation"
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "effectivePeriod" : {
        "start" : "2016-03-10",
        "end" : "2020-04-14"
      },
      "issued" : "2024-06-06T13:28:53+02:00",
      "performer" : [{
        "reference" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://profiles.ihe.net/PCC/ODH/CodeSystem/ISCO08",
          "code" : "5321",
          "display" : "Health Care Assistants"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "86188-0",
            "display" : "History of Occupation Industry"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://profiles.ihe.net/PCC/ODH/CodeSystem/ISICRev4",
            "code" : "871",
            "display" : "Residential nursing care facilities"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:525840ed-762d-44c5-a0bf-bac7a275ad80",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "525840ed-762d-44c5-a0bf-bac7a275ad80",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_525840ed-762d-44c5-a0bf-bac7a275ad80\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 525840ed-762d-44c5-a0bf-bac7a275ad80</b></p><a name=\"525840ed-762d-44c5-a0bf-bac7a275ad80\"> </a><a name=\"hc525840ed-762d-44c5-a0bf-bac7a275ad80\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Observation-pregnancy-status-uv-ips.html\">Observation Pregnancy - Status (IPS)</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 82810-3}\">Pregnancy status</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>effective</b>: 2014-02-01</p><p><b>performer</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee\">Practitioner Heps Simone MD(official)</a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 77386006}\">Pregnant</span></p><p><b>hasMember</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-b8b80efb-eb42-4eeb-b308-86a465d0ab7a\">Observation Delivery date Estimated</a></p></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "82810-3",
          "display" : "Pregnancy status"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "effectiveDateTime" : "2014-02-01",
      "performer" : [{
        "reference" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "77386006",
          "display" : "Pregnant"
        }]
      },
      "hasMember" : [{
        "reference" : "urn:uuid:b8b80efb-eb42-4eeb-b308-86a465d0ab7a"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:b8b80efb-eb42-4eeb-b308-86a465d0ab7a",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "b8b80efb-eb42-4eeb-b308-86a465d0ab7a",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-edd-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_b8b80efb-eb42-4eeb-b308-86a465d0ab7a\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation b8b80efb-eb42-4eeb-b308-86a465d0ab7a</b></p><a name=\"b8b80efb-eb42-4eeb-b308-86a465d0ab7a\"> </a><a name=\"hcb8b80efb-eb42-4eeb-b308-86a465d0ab7a\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Observation-pregnancy-edd-uv-ips.html\">Observation Pregnancy - Expected Delivery Date (IPS)</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11778-8}\">Delivery date Estimated</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>effective</b>: 2024-06-02</p><p><b>performer</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee\">Practitioner Heps Simone MD(official)</a></p><p><b>value</b>: 2024-12-01</p></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11778-8",
          "display" : "Delivery date Estimated"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "effectiveDateTime" : "2024-06-02",
      "performer" : [{
        "reference" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
      }],
      "valueDateTime" : "2024-12-01"
    }
  },
  {
    "fullUrl" : "urn:uuid:8064d9f4-4b5f-4719-9189-00ec8ef59ec6",
    "resource" : {
      "resourceType" : "DeviceUseStatement",
      "id" : "8064d9f4-4b5f-4719-9189-00ec8ef59ec6",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DeviceUseStatement_8064d9f4-4b5f-4719-9189-00ec8ef59ec6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DeviceUseStatement 8064d9f4-4b5f-4719-9189-00ec8ef59ec6</b></p><a name=\"8064d9f4-4b5f-4719-9189-00ec8ef59ec6\"> </a><a name=\"hc8064d9f4-4b5f-4719-9189-00ec8ef59ec6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-DeviceUseStatement-uv-ips.html\">DeviceUseStatement (IPS)</a></p></div><p><b>status</b>: Completed</p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>timing</b>: 2014-02-01</p><p><b>device</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-25a63f47-1f87-42f6-ba4c-c6887f4db418\">Device: type = No known device use</a></p><p><b>note</b>: </p><blockquote><div><p>Device data required</p>\n</div></blockquote></div>"
      },
      "status" : "completed",
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "timingDateTime" : "2014-02-01",
      "device" : {
        "reference" : "urn:uuid:25a63f47-1f87-42f6-ba4c-c6887f4db418"
      },
      "note" : [{
        "text" : "Device data required"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:25a63f47-1f87-42f6-ba4c-c6887f4db418",
    "resource" : {
      "resourceType" : "Device",
      "id" : "25a63f47-1f87-42f6-ba4c-c6887f4db418",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_25a63f47-1f87-42f6-ba4c-c6887f4db418\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device 25a63f47-1f87-42f6-ba4c-c6887f4db418</b></p><a name=\"25a63f47-1f87-42f6-ba4c-c6887f4db418\"> </a><a name=\"hc25a63f47-1f87-42f6-ba4c-c6887f4db418\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Device-uv-ips.html\">Device (IPS)</a></p></div><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 787483001}\">No known device use</span></p><p><b>patient</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p></div>"
      },
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "787483001",
          "display" : "No known device use"
        }]
      },
      "patient" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:0ce67e34-6c8f-4a69-9bb1-1c721635bb84",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "0ce67e34-6c8f-4a69-9bb1-1c721635bb84",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/StructureDefinition/vitalsigns"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_0ce67e34-6c8f-4a69-9bb1-1c721635bb84\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 0ce67e34-6c8f-4a69-9bb1-1c721635bb84</b></p><a name=\"0ce67e34-6c8f-4a69-9bb1-1c721635bb84\"> </a><a name=\"hc0ce67e34-6c8f-4a69-9bb1-1c721635bb84\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/R4/vitalsigns.html\">Vital Signs Profile</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85353-1}\">Vital signs, weight, height, head circumference, oxygen saturation and BMI panel</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>effective</b>: 2024-06-15 09:44:00+0600</p><p><b>performer</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee\">Practitioner Heps Simone MD(official)</a></p><p><b>hasMember</b>: </p><ul><li><a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-049158b0-6710-41b0-a15c-2cc28038abc3\">Observation Body height</a></li><li><a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-9f58e228-e3e5-49cb-ba99-e4b82c25b4f5\">Observation Body weight</a></li><li><a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-f14feb6c-a4df-4460-8b4b-a6acbc6242c5\">Observation Body mass index (BMI) [Ratio]</a></li><li><a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-82a522bc-c5f9-44a8-aa94-cd6c2336cdd1\">Observation Blood pressure panel with all children optional</a></li><li><a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-07d7b510-d13b-4298-9e7c-b0ed736a25b8\">Observation Heart rate</a></li><li><a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-706ba889-679c-425e-b117-060c0ffc01e6\">Observation Oxygen saturation in Arterial blood</a></li></ul></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85353-1"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "effectiveDateTime" : "2024-06-15T09:44:00+06:00",
      "performer" : [{
        "reference" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
      }],
      "hasMember" : [{
        "reference" : "urn:uuid:049158b0-6710-41b0-a15c-2cc28038abc3"
      },
      {
        "reference" : "urn:uuid:9f58e228-e3e5-49cb-ba99-e4b82c25b4f5"
      },
      {
        "reference" : "urn:uuid:f14feb6c-a4df-4460-8b4b-a6acbc6242c5"
      },
      {
        "reference" : "urn:uuid:82a522bc-c5f9-44a8-aa94-cd6c2336cdd1"
      },
      {
        "reference" : "urn:uuid:07d7b510-d13b-4298-9e7c-b0ed736a25b8"
      },
      {
        "reference" : "urn:uuid:706ba889-679c-425e-b117-060c0ffc01e6"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:049158b0-6710-41b0-a15c-2cc28038abc3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "049158b0-6710-41b0-a15c-2cc28038abc3",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/StructureDefinition/vitalsigns"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_049158b0-6710-41b0-a15c-2cc28038abc3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 049158b0-6710-41b0-a15c-2cc28038abc3</b></p><a name=\"049158b0-6710-41b0-a15c-2cc28038abc3\"> </a><a name=\"hc049158b0-6710-41b0-a15c-2cc28038abc3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/R4/vitalsigns.html\">Vital Signs Profile</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8302-2}\">Body height</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>effective</b>: 2024-06-15 09:44:00+0600</p><p><b>performer</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee\">Practitioner Heps Simone MD(official)</a></p><p><b>value</b>: 71 in_i<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[in_i] = '[in_i]')</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8302-2",
          "display" : "Body height"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "effectiveDateTime" : "2024-06-15T09:44:00+06:00",
      "performer" : [{
        "reference" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
      }],
      "valueQuantity" : {
        "value" : 71,
        "unit" : "in_i",
        "system" : "http://unitsofmeasure.org",
        "code" : "[in_i]"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:9f58e228-e3e5-49cb-ba99-e4b82c25b4f5",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "9f58e228-e3e5-49cb-ba99-e4b82c25b4f5",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/StructureDefinition/vitalsigns"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_9f58e228-e3e5-49cb-ba99-e4b82c25b4f5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 9f58e228-e3e5-49cb-ba99-e4b82c25b4f5</b></p><a name=\"9f58e228-e3e5-49cb-ba99-e4b82c25b4f5\"> </a><a name=\"hc9f58e228-e3e5-49cb-ba99-e4b82c25b4f5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/R4/vitalsigns.html\">Vital Signs Profile</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 29463-7}\">Body weight</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>effective</b>: 2024-06-15 09:44:00+0600</p><p><b>performer</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee\">Practitioner Heps Simone MD(official)</a></p><p><b>value</b>: 230 lbs<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code[lb_av] = '[lb_av]')</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "29463-7",
          "display" : "Body weight"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "effectiveDateTime" : "2024-06-15T09:44:00+06:00",
      "performer" : [{
        "reference" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
      }],
      "valueQuantity" : {
        "value" : 230,
        "unit" : "lbs",
        "system" : "http://unitsofmeasure.org",
        "code" : "[lb_av]"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:f14feb6c-a4df-4460-8b4b-a6acbc6242c5",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "f14feb6c-a4df-4460-8b4b-a6acbc6242c5",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/StructureDefinition/vitalsigns"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_f14feb6c-a4df-4460-8b4b-a6acbc6242c5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation f14feb6c-a4df-4460-8b4b-a6acbc6242c5</b></p><a name=\"f14feb6c-a4df-4460-8b4b-a6acbc6242c5\"> </a><a name=\"hcf14feb6c-a4df-4460-8b4b-a6acbc6242c5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/R4/vitalsigns.html\">Vital Signs Profile</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 39156-5}\">Body mass index (BMI) [Ratio]</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>effective</b>: 2024-06-15 09:44:00+0600</p><p><b>performer</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee\">Practitioner Heps Simone MD(official)</a></p><p><b>value</b>: 32.1 kg/m2<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codekg/m2 = 'kg/m2')</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "39156-5",
          "display" : "Body mass index (BMI) [Ratio]"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "effectiveDateTime" : "2024-06-15T09:44:00+06:00",
      "performer" : [{
        "reference" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
      }],
      "valueQuantity" : {
        "value" : 32.1,
        "unit" : "kg/m2",
        "system" : "http://unitsofmeasure.org",
        "code" : "kg/m2"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:82a522bc-c5f9-44a8-aa94-cd6c2336cdd1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "82a522bc-c5f9-44a8-aa94-cd6c2336cdd1",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/StructureDefinition/vitalsigns"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_82a522bc-c5f9-44a8-aa94-cd6c2336cdd1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 82a522bc-c5f9-44a8-aa94-cd6c2336cdd1</b></p><a name=\"82a522bc-c5f9-44a8-aa94-cd6c2336cdd1\"> </a><a name=\"hc82a522bc-c5f9-44a8-aa94-cd6c2336cdd1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/R4/vitalsigns.html\">Vital Signs Profile</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85354-9}\">Blood pressure panel with all children optional</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>effective</b>: 2024-06-15 09:44:00+0600</p><p><b>performer</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee\">Practitioner Heps Simone MD(official)</a></p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8480-6}\">Systolic blood pressure</span></p><p><b>value</b>: 80 mm[Hg]<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8462-4}\">Diastolic blood pressure</span></p><p><b>value</b>: 130 mm[Hg]<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p></blockquote></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85354-9",
          "display" : "Blood pressure panel with all children optional"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "effectiveDateTime" : "2024-06-15T09:44:00+06:00",
      "performer" : [{
        "reference" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
      }],
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "8480-6",
            "display" : "Systolic blood pressure"
          }]
        },
        "valueQuantity" : {
          "value" : 80,
          "unit" : "mm[Hg]",
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        }
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "8462-4",
            "display" : "Diastolic blood pressure"
          }]
        },
        "valueQuantity" : {
          "value" : 130,
          "unit" : "mm[Hg]",
          "system" : "http://unitsofmeasure.org",
          "code" : "mm[Hg]"
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:07d7b510-d13b-4298-9e7c-b0ed736a25b8",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "07d7b510-d13b-4298-9e7c-b0ed736a25b8",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/StructureDefinition/vitalsigns"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_07d7b510-d13b-4298-9e7c-b0ed736a25b8\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 07d7b510-d13b-4298-9e7c-b0ed736a25b8</b></p><a name=\"07d7b510-d13b-4298-9e7c-b0ed736a25b8\"> </a><a name=\"hc07d7b510-d13b-4298-9e7c-b0ed736a25b8\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/R4/vitalsigns.html\">Vital Signs Profile</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8867-4}\">Heart rate</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>effective</b>: 2024-06-15 09:44:00+0600</p><p><b>performer</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee\">Practitioner Heps Simone MD(official)</a></p><p><b>value</b>: 80 /min<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/min = '/min')</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "8867-4",
          "display" : "Heart rate"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "effectiveDateTime" : "2024-06-15T09:44:00+06:00",
      "performer" : [{
        "reference" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
      }],
      "valueQuantity" : {
        "value" : 80,
        "unit" : "/min",
        "system" : "http://unitsofmeasure.org",
        "code" : "/min"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:706ba889-679c-425e-b117-060c0ffc01e6",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "706ba889-679c-425e-b117-060c0ffc01e6",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/StructureDefinition/vitalsigns"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_706ba889-679c-425e-b117-060c0ffc01e6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 706ba889-679c-425e-b117-060c0ffc01e6</b></p><a name=\"706ba889-679c-425e-b117-060c0ffc01e6\"> </a><a name=\"hc706ba889-679c-425e-b117-060c0ffc01e6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/R4/vitalsigns.html\">Vital Signs Profile</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2708-6}\">Oxygen saturation in Arterial blood</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>effective</b>: 2024-06-15 09:44:00+0600</p><p><b>performer</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee\">Practitioner Heps Simone MD(official)</a></p><p><b>value</b>: 85 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span></p></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "2708-6",
          "display" : "Oxygen saturation in Arterial blood"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "effectiveDateTime" : "2024-06-15T09:44:00+06:00",
      "performer" : [{
        "reference" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
      }],
      "valueQuantity" : {
        "value" : 85,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:176ae1b5-0e8f-415f-8ea9-a58221f4fbee",
    "resource" : {
      "resourceType" : "CarePlan",
      "id" : "176ae1b5-0e8f-415f-8ea9-a58221f4fbee",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"CarePlan_176ae1b5-0e8f-415f-8ea9-a58221f4fbee\"> </a><p class=\"res-header-id\"><b>Generated Narrative: CarePlan 176ae1b5-0e8f-415f-8ea9-a58221f4fbee</b></p><a name=\"176ae1b5-0e8f-415f-8ea9-a58221f4fbee\"> </a><a name=\"hc176ae1b5-0e8f-415f-8ea9-a58221f4fbee\"> </a><p><b>status</b>: Completed</p><p><b>intent</b>: Order</p><p><b>title</b>: Plan of Care</p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>period</b>: 2024-06-16 --&gt; (ongoing)</p><p><b>created</b>: 2024-06-16</p><p><b>note</b>: , </p><blockquote><div><p>Treat with antiviral medication for 5 days</p>\n</div></blockquote><blockquote><div><p>Provide Assisted Breathing on Ventilator</p>\n</div></blockquote></div>"
      },
      "status" : "completed",
      "intent" : "order",
      "title" : "Plan of Care",
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "period" : {
        "start" : "2024-06-16"
      },
      "created" : "2024-06-16",
      "note" : [{
        "text" : "Treat with antiviral medication for 5 days"
      },
      {
        "text" : "Provide Assisted Breathing on Ventilator"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:f44c6b4b-53f4-49bb-a251-521379991ce0",
    "resource" : {
      "resourceType" : "Flag",
      "id" : "f44c6b4b-53f4-49bb-a251-521379991ce0",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Flag-alert-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Flag_f44c6b4b-53f4-49bb-a251-521379991ce0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Flag f44c6b4b-53f4-49bb-a251-521379991ce0</b></p><a name=\"f44c6b4b-53f4-49bb-a251-521379991ce0\"> </a><a name=\"hcf44c6b4b-53f4-49bb-a251-521379991ce0\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Flag-alert-uv-ips.html\">Flag - Alert (IPS)</a></p></div><p><b>status</b>: Active</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/flag-category clinical}\">Clinical</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 370221004}\">Severe asthma (disorder)</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p></div>"
      },
      "status" : "active",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/flag-category",
          "code" : "clinical"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "370221004",
          "display" : "Severe asthma (disorder)"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:3c297c4b-019a-4284-b667-cfd8666d6aeb",
    "resource" : {
      "resourceType" : "ClinicalImpression",
      "id" : "3c297c4b-019a-4284-b667-cfd8666d6aeb",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/StructureDefinition/ClinicalImpression"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ClinicalImpression_3c297c4b-019a-4284-b667-cfd8666d6aeb\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ClinicalImpression 3c297c4b-019a-4284-b667-cfd8666d6aeb</b></p><a name=\"3c297c4b-019a-4284-b667-cfd8666d6aeb\"> </a><a name=\"hc3c297c4b-019a-4284-b667-cfd8666d6aeb\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/R4/clinicalimpression.html\">ClinicalImpression</a></p></div><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 105721009}\">General problem AND/OR complaint (finding)</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-0963fc69-9112-440e-b69d-c96fad05861a\">Patricia Jordana Female, DoB: 1996-05-01 ( urn:oid:1.3.6.1.4.1.19376.1.5.4#IHEPCCEX-33159992)</a></p><p><b>effective</b>: 2024-06-16</p><p><b>date</b>: 2024-06-16</p><p><b>assessor</b>: <a href=\"Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.html#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee\">Practitioner Heps Simone MD(official)</a></p><h3>Findings</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ItemCodeableConcept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 365112008}\">Finding of walking aid use (finding)</span></td></tr></table></div>"
      },
      "status" : "completed",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "105721009",
          "display" : "General problem AND/OR complaint (finding)"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:0963fc69-9112-440e-b69d-c96fad05861a"
      },
      "effectiveDateTime" : "2024-06-16",
      "date" : "2024-06-16",
      "assessor" : {
        "reference" : "urn:uuid:fd584c2f-5814-425d-9b00-0a5b1a6effee"
      },
      "finding" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "365112008",
            "display" : "Finding of walking aid use (finding)"
          }]
        }
      }]
    }
  }]
}

```
