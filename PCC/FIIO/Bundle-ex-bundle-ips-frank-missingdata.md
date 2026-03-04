# ex-Bundle-IPS-Frank-MissingData - FHIR International Patient Summary v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ex-Bundle-IPS-Frank-MissingData**

## Example Bundle: ex-Bundle-IPS-Frank-MissingData



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ex-bundle-ips-frank-missingdata",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips"]
  },
  "identifier" : {
    "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
    "value" : "IHEPCCIPSMISSINGDATA-EX20260205"
  },
  "type" : "document",
  "timestamp" : "2026-02-05T12:13:00-05:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:567f7a70-6f0d-49c5-a6ca-20eff88e7c8e",
    "resource" : {
      "resourceType" : "Composition",
      "id" : "567f7a70-6f0d-49c5-a6ca-20eff88e7c8e",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Composition-uv-ips",
        "https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.Complete.Option.Composition"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_567f7a70-6f0d-49c5-a6ca-20eff88e7c8e\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition 567f7a70-6f0d-49c5-a6ca-20eff88e7c8e</b></p><a name=\"567f7a70-6f0d-49c5-a6ca-20eff88e7c8e\"> </a><a name=\"hc567f7a70-6f0d-49c5-a6ca-20eff88e7c8e\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Composition-uv-ips.html\">Composition (IPS)</a>, <a href=\"StructureDefinition-IHE.FIPS.IO.Complete.Option.Composition.html\">FHIR International Patient Summary Implementation Options - Complete Option Composition</a></p></div><p><b>status</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 60591-5}\">Patient summary Document</span></p><p><b>date</b>: 2026-02-06</p><p><b>author</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-1b953334-140c-4b02-b162-cb9f337e6e5e\">Practitioner Jakob Leitner</a></p><p><b>title</b>: Patient Summary of Frank MissingData</p><p><b>confidentiality</b>: normal</p><p><b>custodian</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-8353925b-4e3e-4885-8330-01600699e428\">Organization IHE International PCC</a></p></div>"
      },
      "status" : "final",
      "type" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "60591-5",
          "display" : "Patient summary Document"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:4aaab9e4-44e1-4a35-98ac-093fa22c87d4"
      },
      "date" : "2026-02-06",
      "author" : [{
        "reference" : "urn:uuid:1b953334-140c-4b02-b162-cb9f337e6e5e"
      }],
      "title" : "Patient Summary of Frank MissingData",
      "confidentiality" : "N",
      "custodian" : {
        "reference" : "urn:uuid:8353925b-4e3e-4885-8330-01600699e428"
      },
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>[2007-04-27] - Attention deficit hyperactivity disorder</li><li>[2012-07-16] - Substance abuse</li><li>[2017-04-26] - Tonsillitis</li><li>[2007-01-26] - Decreased hearing</li></ul></div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:7eddf451-857a-41cc-bce8-5147ebf99961"
        },
        {
          "reference" : "urn:uuid:24ed68db-6665-4272-8157-d1e71fb5a1f1"
        },
        {
          "reference" : "urn:uuid:de5ad976-ddc8-4293-b676-d84d17fa8f9d"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Severe Peanut Allergy</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:bd89d6c4-f82c-42f7-ae22-f97caa69fc1e",
          "display" : "Severe Peanut Allergy"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>[2018] - Methylphenidate 5mg chewable tablet - 2 tablets per day</li><li>[2018] - Diazepam product</li></ul></div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:9c494b70-41b2-46f4-955b-b9e8114dfb41",
          "display" : "No known medications"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div><ul><li>[2013-02-09] - Diphtheria + tetanus + poliomyelitis vaccine</li><li>[2013-07-08] - Hepatitis B virus vaccine</li><li>[2025-10-17] - COVID-19 antigen vaccine</li></ul></div></div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:ccf288c9-6557-48b8-a18d-df9b84b856b5",
          "display" : "No Known Immunization"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">substance use therapy</div>"
        },
        "emptyReason" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
            "code" : "not-applicable",
            "display" : "Not Applicable"
          }]
        }
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
        "emptyReason" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/data-absent-reason",
            "code" : "not-applicable",
            "display" : "Not Applicable"
          }]
        }
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">No known device use</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:22f72d34-723c-485d-aa49-6cfaf55e0d22",
          "display" : "No known device use"
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
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:4aaab9e4-44e1-4a35-98ac-093fa22c87d4",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "4aaab9e4-44e1-4a35-98ac-093fa22c87d4",
      "meta" : {
        "lastUpdated" : "2026-02-05T13:51:24-05:00",
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_4aaab9e4-44e1-4a35-98ac-093fa22c87d4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient 4aaab9e4-44e1-4a35-98ac-093fa22c87d4</b></p><a name=\"4aaab9e4-44e1-4a35-98ac-093fa22c87d4\"> </a><a name=\"hc4aaab9e4-44e1-4a35-98ac-093fa22c87d4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Last updated: 2026-02-05 13:51:24-0500</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Patient-uv-ips.html\">Patient (IPS)</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Frank MissingData(official) Male, DoB: 2007-04-24 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Ids (see the one above)\">Other Ids:</td><td colspan=\"3\"><ul><li>Passport number/M98143662M (use: official, period: 2020-10-16 --&gt; (ongoing))</li><li>Medical record number/IHEPCC-26020610 (use: official, period: 2025-09-21 --&gt; (ongoing))</li><li>Subscriber Number/IHEPCCPayer-26020510 (use: official, period: 2020-02-23 --&gt; (ongoing))</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li><a href=\"tel:+395449150748\">+39 5449150748</a></li><li>61 Viale Europa, Naples, Campania 80121, Italy(home)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Language spoken\">Language:</td><td colspan=\"3\"><span title=\"Codes:{http://tools.ietf.org/html/bcp47 it}\">Italian</span> (preferred)</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Patient Links\">Links:</td><td colspan=\"3\"><ul><li>General Practitioner: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-a9075331-0512-4bf9-aefc-ef188d58be31\">Practitioner Dr. Mary PCC Deonne</a></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The patient's legal status as citizen of a country.\">Patient Citizenship:</td><td colspan=\"3\"><ul><li>code: <span title=\"Codes:{urn:iso:std:iso:3166 IT}\">Italy</span></li></ul></td></tr></table></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "urn:iso:std:iso:3166",
              "code" : "IT",
              "display" : "Italy"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
      }],
      "identifier" : [{
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PPN",
            "display" : "Passport number"
          }]
        },
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "M98143662M",
        "period" : {
          "start" : "2020-10-16"
        }
      },
      {
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MR",
            "display" : "Medical record number"
          }]
        },
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "IHEPCC-26020610",
        "period" : {
          "start" : "2025-09-21"
        }
      },
      {
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "SN",
            "display" : "Subscriber Number"
          }]
        },
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "IHEPCCPayer-26020510",
        "period" : {
          "start" : "2020-02-23"
        }
      },
      {
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "DL",
            "display" : "Driver's license number"
          }]
        },
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "781886151",
        "period" : {
          "start" : "2014-11-09"
        }
      }],
      "active" : true,
      "name" : [{
        "use" : "official",
        "text" : "Frank MissingData",
        "family" : "MissingData",
        "given" : ["Frank"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+39 5449150748",
        "use" : "mobile"
      }],
      "gender" : "male",
      "birthDate" : "2007-04-24",
      "address" : [{
        "use" : "home",
        "type" : "both",
        "text" : "61 Viale Europa, Naples, Campania 80121, Italy",
        "line" : ["61 Viale Europa"],
        "city" : "Naples",
        "state" : "Campania",
        "postalCode" : "80121",
        "country" : "Italy"
      }],
      "communication" : [{
        "language" : {
          "coding" : [{
            "system" : "http://tools.ietf.org/html/bcp47",
            "code" : "it",
            "display" : "Italian"
          }]
        },
        "preferred" : true
      }],
      "generalPractitioner" : [{
        "reference" : "urn:uuid:a9075331-0512-4bf9-aefc-ef188d58be31"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:8353925b-4e3e-4885-8330-01600699e428",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "8353925b-4e3e-4885-8330-01600699e428",
      "meta" : {
        "lastUpdated" : "2026-02-05T13:51:24+02:00",
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_8353925b-4e3e-4885-8330-01600699e428\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization 8353925b-4e3e-4885-8330-01600699e428</b></p><a name=\"8353925b-4e3e-4885-8330-01600699e428\"> </a><a name=\"hc8353925b-4e3e-4885-8330-01600699e428\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Last updated: 2026-02-05 13:51:24+0200</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Organization-uv-ips.html\">Organization (IPS)</a></p></div><p><b>identifier</b>: Unspecified identifier/IHEPCC260207 (use: official, )</p><p><b>active</b>: true</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type cg}\">Community Group</span></p><p><b>name</b>: IHE International PCC</p><p><b>alias</b>: IHE PCC Domain</p><p><b>telecom</b>: <a href=\"tel:+16305712670\">+1 6305712670</a></p><p><b>address</b>: 820 Jorie Blvd, Oakbrook, IL 60523, United States</p></div>"
      },
      "identifier" : [{
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "U",
            "display" : "Unspecified identifier"
          }]
        },
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "IHEPCC260207"
      }],
      "active" : true,
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "cg",
          "display" : "Community Group"
        }]
      }],
      "name" : "IHE International PCC",
      "alias" : ["IHE PCC Domain"],
      "telecom" : [{
        "system" : "phone",
        "value" : "+1 6305712670"
      }],
      "address" : [{
        "type" : "both",
        "text" : "820 Jorie Blvd, Oakbrook, IL 60523, United States",
        "line" : ["820 Jorie Blvd"],
        "city" : "Oakbrook",
        "state" : "IL",
        "postalCode" : "60523",
        "country" : "United States"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:a9075331-0512-4bf9-aefc-ef188d58be31",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "a9075331-0512-4bf9-aefc-ef188d58be31",
      "meta" : {
        "lastUpdated" : "2026-02-05T13:51:24+02:00",
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_a9075331-0512-4bf9-aefc-ef188d58be31\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner a9075331-0512-4bf9-aefc-ef188d58be31</b></p><a name=\"a9075331-0512-4bf9-aefc-ef188d58be31\"> </a><a name=\"hca9075331-0512-4bf9-aefc-ef188d58be31\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Last updated: 2026-02-05 13:51:24+0200</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Practitioner-uv-ips.html\">Practitioner (IPS)</a></p></div><p><b>identifier</b>: Provider number/56789012 (use: official, period: 2020-01-10 --&gt; (ongoing)), Medical License number/87654321 (use: official, period: 2020-01-03 --&gt; (ongoing)), Passport number/608-469-957 (use: secondary, period: 2012-01-22 --&gt; (ongoing))</p><p><b>active</b>: true</p><p><b>name</b>: Dr. Mary PCC Deonne</p><p><b>telecom</b>: <a href=\"tel:+33253848811\">+33 253848811</a>, <a href=\"tel:+33346082142\">+33 346082142</a>, <a href=\"mailto:IhePcc@example.com\">IhePcc@example.com</a></p><p><b>address</b>: </p><ul><li>511 Rue Victor Hugo, Cayenne, French Guiana 97300, France(work)</li><li>298 Quai de la Tournelle, Amiens, Picardy 80090, France(home)</li></ul><p><b>gender</b>: Female</p><p><b>birthDate</b>: 1990-10-13</p><blockquote><p><b>qualification</b></p><blockquote><p><b>id</b></p>IHEPCCPR01Degree01</blockquote><p><b>identifier</b>: IHEPCCPR01Degree01</p><p><b>code</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0360 BN}\">Bachelor of Nursing</span></p><p><b>period</b>: 2012-06-08 --&gt; (ongoing)</p><p><b>issuer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-8353925b-4e3e-4885-8330-01600699e428\">Organization IHE International PCC</a></p></blockquote><blockquote><p><b>qualification</b></p><blockquote><p><b>id</b></p>IHEPCCPR01Degree02</blockquote><p><b>identifier</b>: IHEPCCPR01Degree02</p><p><b>code</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0360 MD}\">Doctor of Medicine</span></p><p><b>period</b>: 2019-12-17 --&gt; (ongoing)</p><p><b>issuer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-8353925b-4e3e-4885-8330-01600699e428\">Organization IHE International PCC</a></p></blockquote><blockquote><p><b>qualification</b></p><blockquote><p><b>id</b></p>IHEPCCPR01License01</blockquote><p><b>identifier</b>: IHEPCCPR01License01</p><p><b>code</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0360 EMTP}\">Emergency Medical Technician - Paramedic</span></p><p><b>period</b>: 2015-04-25 --&gt; (ongoing)</p><p><b>issuer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-8353925b-4e3e-4885-8330-01600699e428\">Organization IHE International PCC</a></p></blockquote><p><b>communication</b>: <span title=\"Codes:{urn:ietf:bcp:47 en}\">English</span>, <span title=\"Codes:{urn:ietf:bcp:47 fr}\">French</span>, <span title=\"Codes:{urn:ietf:bcp:47 es}\">Spanish</span></p></div>"
      },
      "identifier" : [{
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PRN",
            "display" : "Provider number"
          }]
        },
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "56789012",
        "period" : {
          "start" : "2020-01-10"
        },
        "assigner" : {
          "reference" : "urn:uuid:8353925b-4e3e-4885-8330-01600699e428"
        }
      },
      {
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MD",
            "display" : "Medical License number"
          }]
        },
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "87654321",
        "period" : {
          "start" : "2020-01-03"
        },
        "assigner" : {
          "reference" : "urn:uuid:8353925b-4e3e-4885-8330-01600699e428"
        }
      },
      {
        "use" : "secondary",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PPN",
            "display" : "Passport number"
          }]
        },
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "608-469-957",
        "period" : {
          "start" : "2012-01-22"
        },
        "assigner" : {
          "reference" : "urn:uuid:8353925b-4e3e-4885-8330-01600699e428"
        }
      }],
      "active" : true,
      "name" : [{
        "use" : "usual",
        "text" : "Dr. Mary PCC Deonne",
        "family" : "Deonne",
        "given" : ["PCC"],
        "prefix" : ["Dr."]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+33 253848811",
        "use" : "work"
      },
      {
        "system" : "phone",
        "value" : "+33 346082142",
        "use" : "mobile"
      },
      {
        "system" : "email",
        "value" : "IhePcc@example.com",
        "use" : "work"
      }],
      "address" : [{
        "use" : "work",
        "type" : "physical",
        "text" : "511 Rue Victor Hugo, Cayenne, French Guiana 97300, France",
        "line" : ["511 Rue Victor Hugo"],
        "city" : "Cayenne",
        "state" : "French Guiana",
        "postalCode" : "97300",
        "country" : "France"
      },
      {
        "use" : "home",
        "type" : "both",
        "text" : "298 Quai de la Tournelle, Amiens, Picardy 80090, France",
        "line" : ["298 Quai de la Tournelle"],
        "city" : "Amiens",
        "state" : "Picardy",
        "postalCode" : "80090",
        "country" : "France"
      }],
      "gender" : "female",
      "birthDate" : "1990-10-13",
      "qualification" : [{
        "id" : "IHEPCCPR01Degree01",
        "identifier" : [{
          "value" : "IHEPCCPR01Degree01"
        }],
        "code" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0360",
            "code" : "BN",
            "display" : "Bachelor of Nursing"
          }]
        },
        "period" : {
          "start" : "2012-06-08"
        },
        "issuer" : {
          "reference" : "urn:uuid:8353925b-4e3e-4885-8330-01600699e428"
        }
      },
      {
        "id" : "IHEPCCPR01Degree02",
        "identifier" : [{
          "value" : "IHEPCCPR01Degree02"
        }],
        "code" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0360",
            "code" : "MD",
            "display" : "Doctor of Medicine"
          }]
        },
        "period" : {
          "start" : "2019-12-17"
        },
        "issuer" : {
          "reference" : "urn:uuid:8353925b-4e3e-4885-8330-01600699e428"
        }
      },
      {
        "id" : "IHEPCCPR01License01",
        "identifier" : [{
          "value" : "IHEPCCPR01License01"
        }],
        "code" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0360",
            "code" : "EMTP",
            "display" : "Emergency Medical Technician - Paramedic"
          }]
        },
        "period" : {
          "start" : "2015-04-25"
        },
        "issuer" : {
          "reference" : "urn:uuid:8353925b-4e3e-4885-8330-01600699e428"
        }
      }],
      "communication" : [{
        "coding" : [{
          "system" : "urn:ietf:bcp:47",
          "code" : "en",
          "display" : "English"
        }]
      },
      {
        "coding" : [{
          "system" : "urn:ietf:bcp:47",
          "code" : "fr",
          "display" : "French"
        }]
      },
      {
        "coding" : [{
          "system" : "urn:ietf:bcp:47",
          "code" : "es",
          "display" : "Spanish"
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:1b953334-140c-4b02-b162-cb9f337e6e5e",
    "resource" : {
      "resourceType" : "Practitioner",
      "id" : "1b953334-140c-4b02-b162-cb9f337e6e5e",
      "meta" : {
        "lastUpdated" : "2026-02-05T13:51:24+02:00",
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_1b953334-140c-4b02-b162-cb9f337e6e5e\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner 1b953334-140c-4b02-b162-cb9f337e6e5e</b></p><a name=\"1b953334-140c-4b02-b162-cb9f337e6e5e\"> </a><a name=\"hc1b953334-140c-4b02-b162-cb9f337e6e5e\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Last updated: 2026-02-05 13:51:24+0200</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Practitioner-uv-ips.html\">Practitioner (IPS)</a></p></div><p><b>identifier</b>: Provider number/5678901336 (use: official, period: 2014-09-06 --&gt; (ongoing)), Medical License number/25786544421 (use: official, period: 2014-04-21 --&gt; (ongoing)), Passport number/635-442-867 (use: secondary, period: 2008-08-15 --&gt; (ongoing))</p><p><b>active</b>: true</p><p><b>name</b>: Jakob Leitner</p><p><b>telecom</b>: <a href=\"tel:+43054376846\">+43 054376846</a>, <a href=\"tel:+43190840858\">+43 190840858</a>, <a href=\"mailto:IhePcc@example.com\">IhePcc@example.com</a></p><p><b>address</b>: </p><ul><li>58 Church Street, Klagenfurt, Carinthia 9020, Austria(work)</li><li>248 Station Street, Bregenz, Vorarlberg 6900, Austria(home)</li></ul><p><b>gender</b>: Male</p><p><b>birthDate</b>: 1982-06-10</p><blockquote><p><b>qualification</b></p><blockquote><p><b>id</b></p>IHEPCCPR02Degree01</blockquote><p><b>identifier</b>: IHEPCCPR01Degree01</p><p><b>code</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0360 CNP}\">Certified Nurse Practitioner</span></p><p><b>period</b>: 2012-06-08 --&gt; (ongoing)</p><p><b>issuer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-8353925b-4e3e-4885-8330-01600699e428\">Organization IHE International PCC</a></p></blockquote><blockquote><p><b>qualification</b></p><blockquote><p><b>id</b></p>IHEPCCPR02License01</blockquote><p><b>identifier</b>: IHEPCCPR02License01</p><p><b>code</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0360 RN}\">Registered Nurse</span></p><p><b>period</b>: 2015-04-25 --&gt; (ongoing)</p><p><b>issuer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-8353925b-4e3e-4885-8330-01600699e428\">Organization IHE International PCC</a></p></blockquote><p><b>communication</b>: <span title=\"Codes:{urn:ietf:bcp:47 en}\">English</span>, <span title=\"Codes:{urn:ietf:bcp:47 nl}\">Dutch</span></p></div>"
      },
      "identifier" : [{
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PRN",
            "display" : "Provider number"
          }]
        },
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "5678901336",
        "period" : {
          "start" : "2014-09-06"
        },
        "assigner" : {
          "reference" : "urn:uuid:8353925b-4e3e-4885-8330-01600699e428"
        }
      },
      {
        "use" : "official",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MD",
            "display" : "Medical License number"
          }]
        },
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "25786544421",
        "period" : {
          "start" : "2014-04-21"
        },
        "assigner" : {
          "reference" : "urn:uuid:8353925b-4e3e-4885-8330-01600699e428"
        }
      },
      {
        "use" : "secondary",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PPN",
            "display" : "Passport number"
          }]
        },
        "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
        "value" : "635-442-867",
        "period" : {
          "start" : "2008-08-15"
        },
        "assigner" : {
          "reference" : "urn:uuid:8353925b-4e3e-4885-8330-01600699e428"
        }
      }],
      "active" : true,
      "name" : [{
        "use" : "usual",
        "text" : "Jakob Leitner",
        "family" : "Leitner",
        "given" : ["Jakob"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+43 054376846",
        "use" : "work"
      },
      {
        "system" : "phone",
        "value" : "+43 190840858",
        "use" : "mobile"
      },
      {
        "system" : "email",
        "value" : "IhePcc@example.com",
        "use" : "work"
      }],
      "address" : [{
        "use" : "work",
        "type" : "physical",
        "text" : "58 Church Street, Klagenfurt, Carinthia 9020, Austria",
        "line" : ["58 Church Street"],
        "city" : "Klagenfurt",
        "state" : "Carinthia",
        "postalCode" : "9020",
        "country" : "Austria"
      },
      {
        "use" : "home",
        "type" : "both",
        "text" : "248 Station Street, Bregenz, Vorarlberg 6900, Austria",
        "line" : ["248 Station Street"],
        "city" : "Bregenz",
        "state" : "Vorarlberg",
        "postalCode" : "6900",
        "country" : "Austria"
      }],
      "gender" : "male",
      "birthDate" : "1982-06-10",
      "qualification" : [{
        "id" : "IHEPCCPR02Degree01",
        "identifier" : [{
          "value" : "IHEPCCPR01Degree01"
        }],
        "code" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0360",
            "code" : "CNP",
            "display" : "Certified Nurse Practitioner"
          }]
        },
        "period" : {
          "start" : "2012-06-08"
        },
        "issuer" : {
          "reference" : "urn:uuid:8353925b-4e3e-4885-8330-01600699e428"
        }
      },
      {
        "id" : "IHEPCCPR02License01",
        "identifier" : [{
          "value" : "IHEPCCPR02License01"
        }],
        "code" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0360",
            "code" : "RN",
            "display" : "Registered Nurse"
          }]
        },
        "period" : {
          "start" : "2015-04-25"
        },
        "issuer" : {
          "reference" : "urn:uuid:8353925b-4e3e-4885-8330-01600699e428"
        }
      }],
      "communication" : [{
        "coding" : [{
          "system" : "urn:ietf:bcp:47",
          "code" : "en",
          "display" : "English"
        }]
      },
      {
        "coding" : [{
          "system" : "urn:ietf:bcp:47",
          "code" : "nl",
          "display" : "Dutch"
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:bd89d6c4-f82c-42f7-ae22-f97caa69fc1e",
    "resource" : {
      "resourceType" : "AllergyIntolerance",
      "id" : "bd89d6c4-f82c-42f7-ae22-f97caa69fc1e",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/AllergyIntolerance-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"AllergyIntolerance_bd89d6c4-f82c-42f7-ae22-f97caa69fc1e\"> </a><p class=\"res-header-id\"><b>Generated Narrative: AllergyIntolerance bd89d6c4-f82c-42f7-ae22-f97caa69fc1e</b></p><a name=\"bd89d6c4-f82c-42f7-ae22-f97caa69fc1e\"> </a><a name=\"hcbd89d6c4-f82c-42f7-ae22-f97caa69fc1e\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-AllergyIntolerance-uv-ips.html\">AllergyIntolerance (IPS)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-verification confirmed}\">Confirmed</span></p><p><b>type</b>: Allergy</p><p><b>category</b>: Food</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 91935009}\">Allergy to peanut</span></p><p><b>patient</b>: <a href=\"Bundle-ex-bundle-ips-frank-missingdata.html#urn-uuid-4aaab9e4-44e1-4a35-98ac-093fa22c87d4\">Frank MissingData(official) Male, DoB: 2007-04-24 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>onset</b>: 2010-07-09</p><p><b>lastOccurrence</b>: 2017-04-15</p><blockquote><p><b>reaction</b></p><p><b>manifestation</b>: <span title=\"Codes:{http://snomed.info/sct 80257001}\">Acute bronchitis with bronchospasm</span>, <span title=\"Codes:{http://snomed.info/sct 49727002}\">Cough</span>, <span title=\"Codes:{http://snomed.info/sct 418363000}\">Itching of skin</span>, <span title=\"Codes:{http://snomed.info/sct 195967001}\">Airway hyperreactivity</span></p><p><b>severity</b>: Severe</p></blockquote></div>"
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
      "category" : ["food"],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "91935009",
          "display" : "Allergy to peanut"
        }]
      },
      "patient" : {
        "reference" : "urn:uuid:4aaab9e4-44e1-4a35-98ac-093fa22c87d4"
      },
      "onsetDateTime" : "2010-07-09",
      "lastOccurrence" : "2017-04-15",
      "reaction" : [{
        "manifestation" : [{
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "80257001",
            "display" : "Acute bronchitis with bronchospasm"
          }]
        },
        {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "49727002",
            "display" : "Cough"
          }]
        },
        {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "418363000",
            "display" : "Itching of skin"
          }]
        },
        {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "195967001",
            "display" : "Airway hyperreactivity"
          }]
        }],
        "severity" : "severe"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:7eddf451-857a-41cc-bce8-5147ebf99961",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "7eddf451-857a-41cc-bce8-5147ebf99961",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_7eddf451-857a-41cc-bce8-5147ebf99961\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition 7eddf451-857a-41cc-bce8-5147ebf99961</b></p><a name=\"7eddf451-857a-41cc-bce8-5147ebf99961\"> </a><a name=\"hc7eddf451-857a-41cc-bce8-5147ebf99961\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Condition-uv-ips.html\">Condition (IPS)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>severity</b>: <span title=\"Codes:{http://snomed.info/sct 6736007}\">Moderate severity</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 31996006}\">Vasculitis</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-ips-frank-missingdata.html#urn-uuid-4aaab9e4-44e1-4a35-98ac-093fa22c87d4\">Frank MissingData(official) Male, DoB: 2007-04-24 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>onset</b>: 2021-12-09</p><p><b>asserter</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-a9075331-0512-4bf9-aefc-ef188d58be31\">Practitioner Dr. Mary PCC Deonne</a></p></div>"
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
          "code" : "problem-list-item"
        }]
      }],
      "severity" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "6736007",
          "display" : "Moderate severity"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "31996006",
          "display" : "Vasculitis"
        }],
        "text" : "Vasculitis"
      },
      "subject" : {
        "reference" : "urn:uuid:4aaab9e4-44e1-4a35-98ac-093fa22c87d4"
      },
      "onsetDateTime" : "2021-12-09",
      "asserter" : {
        "reference" : "urn:uuid:a9075331-0512-4bf9-aefc-ef188d58be31"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:24ed68db-6665-4272-8157-d1e71fb5a1f1",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "24ed68db-6665-4272-8157-d1e71fb5a1f1",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_24ed68db-6665-4272-8157-d1e71fb5a1f1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition 24ed68db-6665-4272-8157-d1e71fb5a1f1</b></p><a name=\"24ed68db-6665-4272-8157-d1e71fb5a1f1\"> </a><a name=\"hc24ed68db-6665-4272-8157-d1e71fb5a1f1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Condition-uv-ips.html\">Condition (IPS)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>severity</b>: <span title=\"Codes:{http://snomed.info/sct 6736007}\">Moderate severity</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 31996006}\">Vasculitis</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-ips-frank-missingdata.html#urn-uuid-4aaab9e4-44e1-4a35-98ac-093fa22c87d4\">Frank MissingData(official) Male, DoB: 2007-04-24 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>onset</b>: 2024-12-09</p><p><b>asserter</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-a9075331-0512-4bf9-aefc-ef188d58be31\">Practitioner Dr. Mary PCC Deonne</a></p></div>"
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
          "code" : "problem-list-item"
        }]
      }],
      "severity" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "6736007",
          "display" : "Moderate severity"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "31996006",
          "display" : "Vasculitis"
        }],
        "text" : "Vasculitis"
      },
      "subject" : {
        "reference" : "urn:uuid:4aaab9e4-44e1-4a35-98ac-093fa22c87d4"
      },
      "onsetDateTime" : "2024-12-09",
      "asserter" : {
        "reference" : "urn:uuid:a9075331-0512-4bf9-aefc-ef188d58be31"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:de5ad976-ddc8-4293-b676-d84d17fa8f9d",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "de5ad976-ddc8-4293-b676-d84d17fa8f9d",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_de5ad976-ddc8-4293-b676-d84d17fa8f9d\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition de5ad976-ddc8-4293-b676-d84d17fa8f9d</b></p><a name=\"de5ad976-ddc8-4293-b676-d84d17fa8f9d\"> </a><a name=\"hcde5ad976-ddc8-4293-b676-d84d17fa8f9d\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Condition-uv-ips.html\">Condition (IPS)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>severity</b>: <span title=\"Codes:{http://snomed.info/sct 24484000}\">Severe</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 43116000}\">Severe Eczema</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-ips-frank-missingdata.html#urn-uuid-4aaab9e4-44e1-4a35-98ac-093fa22c87d4\">Frank MissingData(official) Male, DoB: 2007-04-24 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>onset</b>: 2023-07-19</p><p><b>asserter</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-a9075331-0512-4bf9-aefc-ef188d58be31\">Practitioner Dr. Mary PCC Deonne</a></p></div>"
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
          "code" : "problem-list-item"
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
          "code" : "43116000",
          "display" : "Eczema"
        }],
        "text" : "Severe Eczema"
      },
      "subject" : {
        "reference" : "urn:uuid:4aaab9e4-44e1-4a35-98ac-093fa22c87d4"
      },
      "onsetDateTime" : "2023-07-19",
      "asserter" : {
        "reference" : "urn:uuid:a9075331-0512-4bf9-aefc-ef188d58be31"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:ccf288c9-6557-48b8-a18d-df9b84b856b5",
    "resource" : {
      "resourceType" : "Immunization",
      "id" : "ccf288c9-6557-48b8-a18d-df9b84b856b5",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Immunization_ccf288c9-6557-48b8-a18d-df9b84b856b5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Immunization ccf288c9-6557-48b8-a18d-df9b84b856b5</b></p><a name=\"ccf288c9-6557-48b8-a18d-df9b84b856b5\"> </a><a name=\"hcccf288c9-6557-48b8-a18d-df9b84b856b5\"> </a><p><b>status</b>: Completed</p><p><b>vaccineCode</b>: <span title=\"Codes:{http://snomed.info/sct 787482006}\">No known immunizations</span></p><p><b>patient</b>: <a href=\"Bundle-ex-bundle-ips-frank-missingdata.html#urn-uuid-4aaab9e4-44e1-4a35-98ac-093fa22c87d4\">Frank MissingData(official) Male, DoB: 2007-04-24 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>occurrence</b>: 2026-02-06</p></div>"
      },
      "status" : "completed",
      "vaccineCode" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "787482006",
          "display" : "No known immunizations"
        }]
      },
      "patient" : {
        "reference" : "urn:uuid:4aaab9e4-44e1-4a35-98ac-093fa22c87d4"
      },
      "occurrenceDateTime" : "2026-02-06"
    }
  },
  {
    "fullUrl" : "urn:uuid:9c494b70-41b2-46f4-955b-b9e8114dfb41",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "9c494b70-41b2-46f4-955b-b9e8114dfb41",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_9c494b70-41b2-46f4-955b-b9e8114dfb41\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement 9c494b70-41b2-46f4-955b-b9e8114dfb41</b></p><a name=\"9c494b70-41b2-46f4-955b-b9e8114dfb41\"> </a><a name=\"hc9c494b70-41b2-46f4-955b-b9e8114dfb41\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-MedicationStatement-uv-ips.html\">MedicationStatement (IPS)</a></p></div><p><b>status</b>: Active</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category outpatient}\">Outpatient</span></p><p><b>medication</b>: <span title=\"Codes:{http://snomed.info/sct 787481004}\">No known medications</span></p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-ips-frank-missingdata.html#urn-uuid-4aaab9e4-44e1-4a35-98ac-093fa22c87d4\">Frank MissingData(official) Male, DoB: 2007-04-24 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>effective</b>: 2023-07-19 --&gt; (ongoing)</p><p><b>dateAsserted</b>: 2023-07-19</p><p><b>informationSource</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-a9075331-0512-4bf9-aefc-ef188d58be31\">Practitioner Dr. Mary PCC Deonne</a></p></div>"
      },
      "status" : "active",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
          "code" : "outpatient",
          "display" : "Outpatient"
        }]
      },
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "787481004",
          "display" : "No known medications"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:4aaab9e4-44e1-4a35-98ac-093fa22c87d4"
      },
      "effectivePeriod" : {
        "start" : "2023-07-19"
      },
      "dateAsserted" : "2023-07-19",
      "informationSource" : {
        "reference" : "urn:uuid:a9075331-0512-4bf9-aefc-ef188d58be31"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:22f72d34-723c-485d-aa49-6cfaf55e0d22",
    "resource" : {
      "resourceType" : "DeviceUseStatement",
      "id" : "22f72d34-723c-485d-aa49-6cfaf55e0d22",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DeviceUseStatement_22f72d34-723c-485d-aa49-6cfaf55e0d22\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DeviceUseStatement 22f72d34-723c-485d-aa49-6cfaf55e0d22</b></p><a name=\"22f72d34-723c-485d-aa49-6cfaf55e0d22\"> </a><a name=\"hc22f72d34-723c-485d-aa49-6cfaf55e0d22\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-DeviceUseStatement-uv-ips.html\">DeviceUseStatement (IPS)</a></p></div><p><b>status</b>: Completed</p><p><b>subject</b>: <a href=\"Bundle-ex-bundle-ips-frank-missingdata.html#urn-uuid-4aaab9e4-44e1-4a35-98ac-093fa22c87d4\">Frank MissingData(official) Male, DoB: 2007-04-24 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>timing</b>: 2026-05-26 13:30:00+0200</p><p><b>device</b>: <a href=\"Bundle-ex-bundle-ips-frank-missingdata.html#urn-uuid-89558156-be8e-45e2-92e1-c206e445db6c\">Device: type = No known device use</a></p></div>"
      },
      "status" : "completed",
      "subject" : {
        "reference" : "urn:uuid:4aaab9e4-44e1-4a35-98ac-093fa22c87d4"
      },
      "timingDateTime" : "2026-05-26T13:30:00+02:00",
      "device" : {
        "reference" : "urn:uuid:89558156-be8e-45e2-92e1-c206e445db6c"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:89558156-be8e-45e2-92e1-c206e445db6c",
    "resource" : {
      "resourceType" : "Device",
      "id" : "89558156-be8e-45e2-92e1-c206e445db6c",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_89558156-be8e-45e2-92e1-c206e445db6c\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device 89558156-be8e-45e2-92e1-c206e445db6c</b></p><a name=\"89558156-be8e-45e2-92e1-c206e445db6c\"> </a><a name=\"hc89558156-be8e-45e2-92e1-c206e445db6c\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Device-uv-ips.html\">Device (IPS)</a></p></div><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 787483001}\">No known device use</span></p></div>"
      },
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "787483001",
          "display" : "No known device use"
        }]
      }
    }
  }]
}

```
