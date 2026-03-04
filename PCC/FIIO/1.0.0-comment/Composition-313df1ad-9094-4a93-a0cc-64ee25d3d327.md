# International Patient Summary - FHIR International Patient Summary v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **International Patient Summary**

## Example Composition: International Patient Summary

Profile: [FHIR International Patient Summary Implementation Options - Complete Option Composition](StructureDefinition-IHE.FIPS.IO.Complete.Option.Composition.md)

**status**: Final

**type**: Patient summary Document

**date**: 2024-07-01 00:00:00+0000

**author**: [Practitioner Heps Simone MD(official)](Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.md#urn-uuid-fd584c2f-5814-425d-9b00-0a5b1a6effee)

**title**: International Patient Summary

**confidentiality**: normal

**custodian**: [Organization World Health Organization](Bundle-ex-bundle-secondaryUse-pandemnicips-patricia-jordana.md#urn-uuid-5bc0c003-a3cd-44f2-b3be-8cb256d0e83a)

### Events

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Period** |
| * | care provision | 2024-07-01 00:00:00+0000 --> 2024-07-01 00:00:00+0000 |



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "313df1ad-9094-4a93-a0cc-64ee25d3d327",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.Complete.Option.Composition"]
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

```
