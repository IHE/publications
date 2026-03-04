# ex-Bundle-IPS-ODH-Genny-Works - FHIR International Patient Summary v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ex-Bundle-IPS-ODH-Genny-Works**

## Example Bundle: ex-Bundle-IPS-ODH-Genny-Works



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "e0e8252a-4aab-4fab-ac8f-5734abbd1ec7",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.ODH.Option.Bundle"]
  },
  "identifier" : {
    "system" : "urn:oid:1.3.6.1.4.1.19376.1.5.4",
    "value" : "IHEPCCIPODH-EX20260206"
  },
  "type" : "document",
  "timestamp" : "2026-02-05T12:13:00-05:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:2a7a5f03-9581-4677-ba18-fbd3b221f601",
    "resource" : {
      "resourceType" : "Composition",
      "id" : "2a7a5f03-9581-4677-ba18-fbd3b221f601",
      "meta" : {
        "profile" : ["https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.ODH.Option.Composition",
        "https://profiles.ihe.net/PCC/FIIO/StructureDefinition/IHE.FIPS.IO.Complete.Option.Composition"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_2a7a5f03-9581-4677-ba18-fbd3b221f601\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition 2a7a5f03-9581-4677-ba18-fbd3b221f601</b></p><a name=\"2a7a5f03-9581-4677-ba18-fbd3b221f601\"> </a><a name=\"hc2a7a5f03-9581-4677-ba18-fbd3b221f601\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profiles: <a href=\"StructureDefinition-IHE.FIPS.IO.ODH.Option.Composition.html\">International Patient Summary Occupational Data For Health Implementation Option Composition</a>, <a href=\"StructureDefinition-IHE.FIPS.IO.Complete.Option.Composition.html\">FHIR International Patient Summary Implementation Options - Complete Option Composition</a></p></div><p><b>status</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 60591-5}\">Patient summary Document</span></p><p><b>date</b>: 2026-02-05 12:13:00-0500</p><p><b>author</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-1b953334-140c-4b02-b162-cb9f337e6e5e\">Practitioner Jakob Leitner</a></p><p><b>title</b>: Patient Summary of Genny Works</p><p><b>confidentiality</b>: normal</p><p><b>custodian</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-8353925b-4e3e-4885-8330-01600699e428\">Organization IHE International PCC</a></p></div>"
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
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "date" : "2026-02-05T12:13:00-05:00",
      "author" : [{
        "reference" : "urn:uuid:1b953334-140c-4b02-b162-cb9f337e6e5e"
      }],
      "title" : "Patient Summary of Genny Works",
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
          "reference" : "urn:uuid:7ab590c8-7aa8-4561-830d-dbf73cd5d14d",
          "display" : "[2007-04-27] - Attention deficit hyperactivity disorder"
        },
        {
          "reference" : "urn:uuid:c586d7a8-ea50-457b-9904-b3327c56a886",
          "display" : "[2012-07-16] - Substance abuse"
        },
        {
          "reference" : "urn:uuid:1273d49f-f8de-4e5c-9442-eb6fa3895569",
          "display" : "[2017-04-26] - Tonsillitis"
        },
        {
          "reference" : "urn:uuid:dbd46d98-d6fd-42a1-ba51-7394325f15cf",
          "display" : "[2007-01-26] - Decreased hearing"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">No known allergies</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:515d5611-074b-4c13-aabe-5fcb87bbc481",
          "display" : "No known allergies"
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
          "reference" : "urn:uuid:510549bd-1e92-4567-aab2-48126cc7addb",
          "display" : "[2018] - Methylphenidate 5mg chewable tablet - 2 tablets per day"
        },
        {
          "reference" : "urn:uuid:66feac59-356f-410b-9344-d3a9b4fed5d7",
          "display" : "[2018] - Diazepam product"
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
          "reference" : "urn:uuid:98cd77bd-4ef1-4d05-95d4-d7d301ec5199",
          "display" : "Diphtheria + tetanus + poliomyelitis vaccine"
        },
        {
          "reference" : "urn:uuid:f46eae07-753e-4fa9-9f1f-2df3ccf82a31",
          "display" : "Hepatitis B virus vaccine"
        },
        {
          "reference" : "urn:uuid:3ec71eb2-ec74-4f91-993b-4c50453ee86d",
          "display" : "COVID-19 antigen vaccine"
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
        "entry" : [{
          "reference" : "urn:uuid:e72697f5-2323-4ea3-8d70-af2363800ae4",
          "display" : "substance use therapy"
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
          "reference" : "urn:uuid:ac090ad2-2be4-4324-9018-ea85de87ba6a"
        },
        {
          "reference" : "urn:uuid:6c08db33-8f5f-487e-98fb-1e933c046bbe"
        },
        {
          "reference" : "urn:uuid:1541d2fd-2aee-40cd-8ced-162d2a0f92d3"
        },
        {
          "reference" : "urn:uuid:fb1a62be-9831-40c9-862f-48fd12faa913"
        },
        {
          "reference" : "urn:uuid:92ae1223-5a0f-4e0c-a835-91f943aa4e1d"
        },
        {
          "reference" : "urn:uuid:f2a5add3-95ff-4ceb-ad60-b31d61d8471c"
        },
        {
          "reference" : "urn:uuid:5f710c84-728a-4024-bf62-70d2798e992c"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Not Pregnant</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:af46b53c-6a51-4ec0-a1e5-e0eb4587b0f9",
          "display" : "Not Pregnant"
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">[2007-01-26] - Decreased hearing</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:dbd46d98-d6fd-42a1-ba51-7394325f15cf",
          "display" : "[2007-01-26] - Decreased hearing"
        },
        {
          "reference" : "urn:uuid:b2d1d43f-cc18-42ff-9129-42c4d99bae8f"
        }]
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
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">Misuse of medication</div>"
        },
        "entry" : [{
          "reference" : "urn:uuid:99c6a7f2-0661-4d22-955f-431314ecf2ce",
          "display" : "Misuse of medication"
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
          "reference" : "urn:uuid:2ba7ec69-c597-41ec-837c-5295b95452fd",
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
    "fullUrl" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "fb45133f-447a-49e8-ba3d-71fbcc7fdcc1",
      "meta" : {
        "lastUpdated" : "2026-02-05T13:51:24+02:00",
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient fb45133f-447a-49e8-ba3d-71fbcc7fdcc1</b></p><a name=\"fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\"> </a><a name=\"hcfb45133f-447a-49e8-ba3d-71fbcc7fdcc1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Last updated: 2026-02-05 13:51:24+0200</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Patient-uv-ips.html\">Patient (IPS)</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td>true</td><td style=\"background-color: #f3f5da\" title=\"Known Marital status of Patient\">Marital Status:</td><td colspan=\"3\"><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-MaritalStatus M}\">Married</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Ids (see the one above)\">Other Ids:</td><td colspan=\"3\"><ul><li>Passport number/D935074D (use: official, period: 2012-10-16 --&gt; (ongoing))</li><li>Medical record number/IHEPCC-260205 (use: official, period: 2015-08-06 --&gt; (ongoing))</li><li>Subscriber Number/IHEPCCPayer-260206 (use: official, period: 2025-10-01 --&gt; (ongoing))</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Alternate names (see the one above)\">Alt. Name:</td><td colspan=\"3\">Genny ODH Jobs(Name changed for Marriage)</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li><a href=\"tel:+310688632663\">+31 0688632663</a></li><li>134 Sunset Boulevard, Maastricht, Limburg 6211 EN, Netherlands(home)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Languages spoken\">Languages:</td><td colspan=\"3\"><ul><li><span title=\"Codes:{urn:ietf:bcp:47 en}\">English</span></li><li><span title=\"Codes:{urn:ietf:bcp:47 fr}\">French</span> (preferred)</li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Patient contact\">Contact:</td><td colspan=\"3\"><ul><li>Gábriel Works (Male)</li><li>Relationships:<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0131 C}\">Emergency Contact</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-RoleCode SPS}\">spouse</span></li><li>134 Sunset Boulevard, Maastricht, Limburg 6211 EN, Netherlands(home)</li><li><a href=\"tel:+310610543759\">+31 0610543759</a></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Patient contact\">Contact:</td><td colspan=\"3\"><ul><li>Judy Jobs (Female)</li><li>Relationships:<span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0131 N}\">Next-of-Kin</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-RoleCode SIS}\">sister</span></li><li>221 George Street, Middelburg, Zeeland 4331 AA, Netherlands(home)</li><li><a href=\"tel:+310610543759\">+31 0610543759</a></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Nominated Contact: Employer\">Employer:</td><td colspan=\"3\"><ul><li>Organization:<a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-ab27ea19-5a52-424c-852b-7b0111ffedba\">Organization Employer Company Name</a></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Patient Links\">Links:</td><td colspan=\"3\"><ul><li>General Practitioner: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-a9075331-0512-4bf9-aefc-ef188d58be31\">Practitioner Dr. Mary PCC Deonne</a></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The pronouns to use when referring to an individual in verbal or written communication.\">Individual Pronouns:</td><td colspan=\"3\"><ul><li>value: <span title=\"Codes:{http://loinc.org LA29519-8}\">she/her/her/hers/herself</span></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"An individual's personal sense of being a man, woman, boy, girl, nonbinary, or something else. This represents an individual’s identity, ascertained by asking them what that identity is. \n In the case where the gender identity is communicated by a third party, for example, if a spouse indicates the gender identity of their partner on an intake form, a Provenance resource can be used with a Provenance.target referring to the Patient, with a targetElement extension identifying the gender identity extension as the target element within the Patient resource.  When exchanging this concept, refer to the guidance in the [Gender Harmony Implementation Guide](http://hl7.org/xprod/ig/uv/gender-harmony/).\">Individual Gender Identity:</td><td colspan=\"3\"><ul><li>value: <span title=\"Codes:{http://snomed.info/sct 446141000124107}\">Female gender identity</span></li></ul></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"The patient's legal status as citizen of a country.\">Patient Citizenship:</td><td colspan=\"3\"><ul><li>code: <span title=\"Codes:{urn:iso:std:iso:3166 BE}\">Belgium</span></li></ul></td></tr></table></div>"
      },
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "urn:iso:std:iso:3166",
              "code" : "BE",
              "display" : "Belgium"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
      },
      {
        "extension" : [{
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://snomed.info/sct",
              "code" : "446141000124107",
              "display" : "Female gender identity"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity"
      },
      {
        "extension" : [{
          "url" : "value",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://loinc.org",
              "code" : "LA29519-8",
              "display" : "she/her/her/hers/herself"
            }]
          }
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/individual-pronouns"
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
        "value" : "D935074D",
        "period" : {
          "start" : "2012-10-16"
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
        "value" : "IHEPCC-260205",
        "period" : {
          "start" : "2015-08-06"
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
        "value" : "IHEPCCPayer-260206",
        "period" : {
          "start" : "2025-10-01"
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
        "text" : "Genny ODH Works",
        "family" : "Works",
        "given" : ["ODH"]
      },
      {
        "use" : "maiden",
        "text" : "Genny ODH Jobs",
        "family" : "Jobs",
        "given" : ["ODH"]
      }],
      "telecom" : [{
        "system" : "phone",
        "value" : "+31 0688632663",
        "use" : "mobile"
      }],
      "gender" : "female",
      "birthDate" : "1995-07-28",
      "address" : [{
        "use" : "home",
        "type" : "both",
        "text" : "134 Sunset Boulevard, Maastricht, Limburg 6211 EN, Netherlands",
        "line" : ["134 Sunset Boulevard"],
        "city" : "Maastricht",
        "state" : "Limburg",
        "postalCode" : "6211 EN",
        "country" : "Netherlands"
      }],
      "maritalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
          "code" : "M",
          "display" : "Married"
        }]
      },
      "contact" : [{
        "relationship" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
            "code" : "C",
            "display" : "Emergency Contact"
          }]
        },
        {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
            "code" : "SPS",
            "display" : "spouse"
          }]
        }],
        "name" : {
          "use" : "usual",
          "text" : "Gábriel Works",
          "family" : "Works",
          "given" : ["Gábriel"]
        },
        "telecom" : [{
          "system" : "phone",
          "value" : "+31 0610543759",
          "use" : "mobile"
        }],
        "address" : {
          "use" : "home",
          "type" : "both",
          "text" : "134 Sunset Boulevard, Maastricht, Limburg 6211 EN, Netherlands",
          "line" : ["134 Sunset Boulevard"],
          "city" : "Maastricht",
          "state" : "Limburg",
          "postalCode" : "6211 EN",
          "country" : "Netherlands"
        },
        "gender" : "male"
      },
      {
        "relationship" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
            "code" : "N",
            "display" : "Next-of-Kin"
          }]
        },
        {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
            "code" : "SIS",
            "display" : "sister"
          }]
        }],
        "name" : {
          "use" : "usual",
          "text" : "Judy Jobs",
          "family" : "Jobs",
          "given" : ["Judy"]
        },
        "telecom" : [{
          "system" : "phone",
          "value" : "+31 0610543759",
          "use" : "mobile"
        }],
        "address" : {
          "use" : "home",
          "type" : "both",
          "text" : "221 George Street, Middelburg, Zeeland 4331 AA, Netherlands",
          "line" : ["221 George Street"],
          "city" : "Middelburg",
          "state" : "Zeeland",
          "postalCode" : "4331 AA",
          "country" : "Netherlands"
        },
        "gender" : "female"
      },
      {
        "relationship" : [{
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
            "code" : "E",
            "display" : "Employer"
          }]
        }],
        "organization" : {
          "reference" : "urn:uuid:ab27ea19-5a52-424c-852b-7b0111ffedba"
        }
      }],
      "communication" : [{
        "language" : {
          "coding" : [{
            "system" : "urn:ietf:bcp:47",
            "code" : "en",
            "display" : "English"
          }]
        }
      },
      {
        "language" : {
          "coding" : [{
            "system" : "urn:ietf:bcp:47",
            "code" : "fr",
            "display" : "French"
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
    "fullUrl" : "urn:uuid:ab27ea19-5a52-424c-852b-7b0111ffedba",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "ab27ea19-5a52-424c-852b-7b0111ffedba",
      "meta" : {
        "lastUpdated" : "2026-02-05T13:51:24+02:00",
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_ab27ea19-5a52-424c-852b-7b0111ffedba\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization ab27ea19-5a52-424c-852b-7b0111ffedba</b></p><a name=\"ab27ea19-5a52-424c-852b-7b0111ffedba\"> </a><a name=\"hcab27ea19-5a52-424c-852b-7b0111ffedba\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Last updated: 2026-02-05 13:51:24+0200</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Organization-uv-ips.html\">Organization (IPS)</a></p></div><p><b>identifier</b>: Unspecified identifier/IHEEMPLOYER56789012 (use: official, )</p><p><b>active</b>: true</p><p><b>type</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/organization-type prov}\">Healthcare Provider</span></p><p><b>name</b>: Employer Company Name</p><p><b>alias</b>: IHE example Employer - Org 01</p><p><b>telecom</b>: <a href=\"tel:+310614656370\">+31 0614656370</a>, fax: (555) 123-4567</p><p><b>address</b>: 55 Market Street, Lelystad, Flevoland 8232 JE, Netherlands</p></div>"
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
        "value" : "IHEEMPLOYER56789012"
      }],
      "active" : true,
      "type" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "prov",
          "display" : "Healthcare Provider"
        }]
      }],
      "name" : "Employer Company Name",
      "alias" : ["IHE example Employer - Org 01"],
      "telecom" : [{
        "system" : "phone",
        "value" : "+31 0614656370"
      },
      {
        "system" : "fax",
        "value" : "(555) 123-4567"
      }],
      "address" : [{
        "type" : "both",
        "text" : "55 Market Street, Lelystad, Flevoland 8232 JE, Netherlands",
        "line" : ["55 Market Street"],
        "city" : "Lelystad",
        "state" : "Flevoland",
        "postalCode" : "8232 JE",
        "country" : "Netherlands"
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
    "fullUrl" : "urn:uuid:515d5611-074b-4c13-aabe-5fcb87bbc481",
    "resource" : {
      "resourceType" : "AllergyIntolerance",
      "id" : "515d5611-074b-4c13-aabe-5fcb87bbc481",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"AllergyIntolerance_515d5611-074b-4c13-aabe-5fcb87bbc481\"> </a><p class=\"res-header-id\"><b>Generated Narrative: AllergyIntolerance 515d5611-074b-4c13-aabe-5fcb87bbc481</b></p><a name=\"515d5611-074b-4c13-aabe-5fcb87bbc481\"> </a><a name=\"hc515d5611-074b-4c13-aabe-5fcb87bbc481\"> </a><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical active}\">Active</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 716186003}\">No known allergy</span></p><p><b>patient</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p></div>"
      },
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
          "code" : "active"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "716186003",
          "display" : "No known allergy"
        }]
      },
      "patient" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:7ab590c8-7aa8-4561-830d-dbf73cd5d14d",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "7ab590c8-7aa8-4561-830d-dbf73cd5d14d",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_7ab590c8-7aa8-4561-830d-dbf73cd5d14d\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition 7ab590c8-7aa8-4561-830d-dbf73cd5d14d</b></p><a name=\"7ab590c8-7aa8-4561-830d-dbf73cd5d14d\"> </a><a name=\"hc7ab590c8-7aa8-4561-830d-dbf73cd5d14d\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Condition-uv-ips.html\">Condition (IPS)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>severity</b>: <span title=\"Codes:{http://snomed.info/sct 6736007}\">Midgrade</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 406506008}\">Attention deficit hyperactivity disorder</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>onset</b>: 2007-04-27</p><p><b>asserter</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-a9075331-0512-4bf9-aefc-ef188d58be31\">Practitioner Dr. Mary PCC Deonne</a></p></div>"
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
          "display" : "Midgrade"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "406506008",
          "display" : "Attention deficit hyperactivity disorder"
        }],
        "text" : "Attention deficit hyperactivity disorder"
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "onsetDateTime" : "2007-04-27",
      "asserter" : {
        "reference" : "urn:uuid:a9075331-0512-4bf9-aefc-ef188d58be31"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:c586d7a8-ea50-457b-9904-b3327c56a886",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "c586d7a8-ea50-457b-9904-b3327c56a886",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_c586d7a8-ea50-457b-9904-b3327c56a886\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition c586d7a8-ea50-457b-9904-b3327c56a886</b></p><a name=\"c586d7a8-ea50-457b-9904-b3327c56a886\"> </a><a name=\"hcc586d7a8-ea50-457b-9904-b3327c56a886\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Condition-uv-ips.html\">Condition (IPS)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>severity</b>: <span title=\"Codes:{http://snomed.info/sct 6736007}\">Midgrade</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 66214007}\">Substance abuse</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>onset</b>: 2012-07-16</p><p><b>asserter</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-a9075331-0512-4bf9-aefc-ef188d58be31\">Practitioner Dr. Mary PCC Deonne</a></p></div>"
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
      "severity" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "6736007",
          "display" : "Midgrade"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "66214007",
          "display" : "Substance abuse"
        }],
        "text" : "Substance abuse"
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "onsetDateTime" : "2012-07-16",
      "asserter" : {
        "reference" : "urn:uuid:a9075331-0512-4bf9-aefc-ef188d58be31"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:1273d49f-f8de-4e5c-9442-eb6fa3895569",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "1273d49f-f8de-4e5c-9442-eb6fa3895569",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_1273d49f-f8de-4e5c-9442-eb6fa3895569\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition 1273d49f-f8de-4e5c-9442-eb6fa3895569</b></p><a name=\"1273d49f-f8de-4e5c-9442-eb6fa3895569\"> </a><a name=\"hc1273d49f-f8de-4e5c-9442-eb6fa3895569\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Condition-uv-ips.html\">Condition (IPS)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>severity</b>: <span title=\"Codes:{http://snomed.info/sct 255604002}\">Mild</span></p><p><b>code</b>: <span title=\"Codes:{http://hl7.org/fhir/sid/icd-10-cm J35.0}\">Tonsillitis</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>onset</b>: 2017-04-26</p><p><b>asserter</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-1b953334-140c-4b02-b162-cb9f337e6e5e\">Practitioner Jakob Leitner</a></p></div>"
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
      "severity" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "255604002",
          "display" : "Mild"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/sid/icd-10-cm",
          "code" : "J35.0",
          "display" : "Chronic tonsillitis and adenoiditis"
        }],
        "text" : "Tonsillitis"
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "onsetDateTime" : "2017-04-26",
      "asserter" : {
        "reference" : "urn:uuid:1b953334-140c-4b02-b162-cb9f337e6e5e"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:dbd46d98-d6fd-42a1-ba51-7394325f15cf",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "dbd46d98-d6fd-42a1-ba51-7394325f15cf",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Condition-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_dbd46d98-d6fd-42a1-ba51-7394325f15cf\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition dbd46d98-d6fd-42a1-ba51-7394325f15cf</b></p><a name=\"dbd46d98-d6fd-42a1-ba51-7394325f15cf\"> </a><a name=\"hcdbd46d98-d6fd-42a1-ba51-7394325f15cf\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Condition-uv-ips.html\">Condition (IPS)</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 103276001}\">Decreased hearing</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>onset</b>: 2007-01-26</p><p><b>asserter</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-1b953334-140c-4b02-b162-cb9f337e6e5e\">Practitioner Jakob Leitner</a></p></div>"
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
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "103276001",
          "display" : "Decreased hearing"
        }],
        "text" : "Decreased hearing"
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "onsetDateTime" : "2007-01-26",
      "asserter" : {
        "reference" : "urn:uuid:1b953334-140c-4b02-b162-cb9f337e6e5e"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:98cd77bd-4ef1-4d05-95d4-d7d301ec5199",
    "resource" : {
      "resourceType" : "Immunization",
      "id" : "98cd77bd-4ef1-4d05-95d4-d7d301ec5199",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Immunization_98cd77bd-4ef1-4d05-95d4-d7d301ec5199\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Immunization 98cd77bd-4ef1-4d05-95d4-d7d301ec5199</b></p><a name=\"98cd77bd-4ef1-4d05-95d4-d7d301ec5199\"> </a><a name=\"hc98cd77bd-4ef1-4d05-95d4-d7d301ec5199\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Immunization-uv-ips.html\">Immunization (IPS)</a></p></div><p><b>status</b>: Completed</p><p><b>vaccineCode</b>: <span title=\"Codes:{http://snomed.info/sct 414006007}\">Diphtheria + tetanus + poliomyelitis vaccine</span></p><p><b>patient</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>occurrence</b>: 1995</p></div>"
      },
      "status" : "completed",
      "vaccineCode" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "414006007",
          "display" : "Diphtheria + tetanus + poliomyelitis vaccine"
        }],
        "text" : "Diphtheria + tetanus + poliomyelitis vaccine"
      },
      "patient" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "occurrenceDateTime" : "1995"
    }
  },
  {
    "fullUrl" : "urn:uuid:f46eae07-753e-4fa9-9f1f-2df3ccf82a31",
    "resource" : {
      "resourceType" : "Immunization",
      "id" : "f46eae07-753e-4fa9-9f1f-2df3ccf82a31",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Immunization_f46eae07-753e-4fa9-9f1f-2df3ccf82a31\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Immunization f46eae07-753e-4fa9-9f1f-2df3ccf82a31</b></p><a name=\"f46eae07-753e-4fa9-9f1f-2df3ccf82a31\"> </a><a name=\"hcf46eae07-753e-4fa9-9f1f-2df3ccf82a31\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Immunization-uv-ips.html\">Immunization (IPS)</a></p></div><p><b>status</b>: Completed</p><p><b>vaccineCode</b>: <span title=\"Codes:{http://snomed.info/sct 871822003}\">Hepatitis B virus vaccine</span></p><p><b>patient</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>occurrence</b>: 2005</p></div>"
      },
      "status" : "completed",
      "vaccineCode" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "871822003",
          "display" : "Hepatitis B virus antigen only vaccine product"
        }],
        "text" : "Hepatitis B virus vaccine"
      },
      "patient" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "occurrenceDateTime" : "2005"
    }
  },
  {
    "fullUrl" : "urn:uuid:3ec71eb2-ec74-4f91-993b-4c50453ee86d",
    "resource" : {
      "resourceType" : "Immunization",
      "id" : "3ec71eb2-ec74-4f91-993b-4c50453ee86d",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Immunization-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Immunization_3ec71eb2-ec74-4f91-993b-4c50453ee86d\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Immunization 3ec71eb2-ec74-4f91-993b-4c50453ee86d</b></p><a name=\"3ec71eb2-ec74-4f91-993b-4c50453ee86d\"> </a><a name=\"hc3ec71eb2-ec74-4f91-993b-4c50453ee86d\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Immunization-uv-ips.html\">Immunization (IPS)</a></p></div><p><b>status</b>: Completed</p><p><b>vaccineCode</b>: <span title=\"Codes:{http://snomed.info/sct 1119305005}\">COVID-19 antigen vaccine</span></p><p><b>patient</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>occurrence</b>: 2025-10-17</p><p><b>lotNumber</b>: G10180720</p><p><b>expirationDate</b>: 2026-02-08</p><p><b>site</b>: <span title=\"Codes:{http://snomed.info/sct 113187007}\">Subcutaneous tissue structure of deltoid region</span></p><p><b>route</b>: <span title=\"Codes:{http://snomed.info/sct 45890007}\">Transdermal use</span></p><p><b>doseQuantity</b>: 0.25 mL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemL = 'mL')</span></p><h3>Performers</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Function</b></td><td><b>Actor</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v2-0443 AP}\">Administering Provider</span></td><td><a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-1b953334-140c-4b02-b162-cb9f337e6e5e\">Practitioner Jakob Leitner</a></td></tr></table><p><b>reasonCode</b>: <span title=\"Codes:{http://snomed.info/sct 429060002}\">Procedure to meet occupational requirement</span></p><h3>ProtocolApplieds</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>TargetDisease</b></td><td><b>DoseNumber[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 186747009}\">Coronavirus infection</span></td><td>5</td></tr></table></div>"
      },
      "status" : "completed",
      "vaccineCode" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1119305005",
          "display" : "COVID-19 antigen vaccine"
        }],
        "text" : "COVID-19 antigen vaccine"
      },
      "patient" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "occurrenceDateTime" : "2025-10-17",
      "lotNumber" : "G10180720",
      "expirationDate" : "2026-02-08",
      "site" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "113187007",
          "display" : "Subcutaneous tissue structure of deltoid region"
        }]
      },
      "route" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "45890007",
          "display" : "Transdermal use"
        }]
      },
      "doseQuantity" : {
        "value" : 0.25,
        "unit" : "mL",
        "system" : "http://unitsofmeasure.org",
        "code" : "mL"
      },
      "performer" : [{
        "function" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0443",
            "code" : "AP",
            "display" : "Administering Provider"
          }]
        },
        "actor" : {
          "reference" : "urn:uuid:1b953334-140c-4b02-b162-cb9f337e6e5e"
        }
      }],
      "reasonCode" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "429060002",
          "display" : "Procedure to meet occupational requirement"
        }]
      }],
      "protocolApplied" : [{
        "targetDisease" : [{
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "186747009",
            "display" : "Coronavirus infection"
          }]
        }],
        "doseNumberPositiveInt" : 5
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:510549bd-1e92-4567-aab2-48126cc7addb",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "510549bd-1e92-4567-aab2-48126cc7addb",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_510549bd-1e92-4567-aab2-48126cc7addb\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement 510549bd-1e92-4567-aab2-48126cc7addb</b></p><a name=\"510549bd-1e92-4567-aab2-48126cc7addb\"> </a><a name=\"hc510549bd-1e92-4567-aab2-48126cc7addb\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-MedicationStatement-uv-ips.html\">MedicationStatement (IPS)</a></p></div><p><b>status</b>: Active</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category outpatient}\">Outpatient</span></p><p><b>medication</b>: <span title=\"Codes:{http://snomed.info/sct 785126002}\">Methylphenidate hydrochloride 5 mg chewable tablet</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>effective</b>: 2018-10-01 10:15:22+0200 --&gt; (ongoing)</p><p><b>dateAsserted</b>: 2018-10-01 10:15:22+0200</p><p><b>informationSource</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>reasonReference</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-7ab590c8-7aa8-4561-830d-dbf73cd5d14d\">Condition Attention deficit hyperactivity disorder</a></p><blockquote><p><b>dosage</b></p><p><b>text</b>: Take 1 tablet by mouth every day as needed for ADHD</p><p><b>timing</b>: 2 per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://snomed.info/sct 26643006}\">Oral use</span></p><p><b>method</b>: <span title=\"Codes:{http://snomed.info/sct 419652001}\">Take</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Dose[x]</b></td><td><b>Rate[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/dose-rate-type ordered}\">Ordered</span></td><td>5 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td><td>1 /d<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/d = '/d')</span></td></tr></table></blockquote></div>"
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
          "code" : "785126002",
          "display" : "Methylphenidate hydrochloride 5 mg chewable tablet"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "effectivePeriod" : {
        "start" : "2018-10-01T10:15:22+02:00"
      },
      "dateAsserted" : "2018-10-01T10:15:22+02:00",
      "informationSource" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "reasonReference" : [{
        "reference" : "urn:uuid:7ab590c8-7aa8-4561-830d-dbf73cd5d14d"
      }],
      "dosage" : [{
        "text" : "Take 1 tablet by mouth every day as needed for ADHD",
        "timing" : {
          "repeat" : {
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d"
          }
        },
        "route" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "26643006",
            "display" : "Oral use"
          }]
        },
        "method" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "419652001",
            "display" : "Take"
          }]
        },
        "doseAndRate" : [{
          "type" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/dose-rate-type",
              "code" : "ordered",
              "display" : "Ordered"
            }]
          },
          "doseQuantity" : {
            "value" : 5,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          },
          "rateQuantity" : {
            "value" : 1,
            "unit" : "/d",
            "system" : "http://unitsofmeasure.org",
            "code" : "/d"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:66feac59-356f-410b-9344-d3a9b4fed5d7",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "66feac59-356f-410b-9344-d3a9b4fed5d7",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_66feac59-356f-410b-9344-d3a9b4fed5d7\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement 66feac59-356f-410b-9344-d3a9b4fed5d7</b></p><a name=\"66feac59-356f-410b-9344-d3a9b4fed5d7\"> </a><a name=\"hc66feac59-356f-410b-9344-d3a9b4fed5d7\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-MedicationStatement-uv-ips.html\">MedicationStatement (IPS)</a></p></div><p><b>status</b>: Active</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medication-statement-category outpatient}\">Outpatient</span></p><p><b>medication</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-4dd53436-eea2-46e2-a1b2-9d89771de5d2\">Diazepam product</a></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>effective</b>: 2018-10-01 10:15:22+0200 --&gt; (ongoing)</p><p><b>dateAsserted</b>: 2018-10-01 10:15:22+0200</p><p><b>informationSource</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td><td><b>AsNeeded[x]</b></td><td><b>Route</b></td></tr><tr><td style=\"display: none\">*</td><td>as required</td><td>true</td><td><span title=\"Codes:{http://snomed.info/sct 26643006}\">Oral use</span></td></tr></table></div>"
      },
      "status" : "active",
      "category" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medication-statement-category",
          "code" : "outpatient",
          "display" : "Outpatient"
        }]
      },
      "medicationReference" : {
        "reference" : "urn:uuid:4dd53436-eea2-46e2-a1b2-9d89771de5d2",
        "display" : "Diazepam product"
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "effectivePeriod" : {
        "start" : "2018-10-01T10:15:22+02:00"
      },
      "dateAsserted" : "2018-10-01T10:15:22+02:00",
      "informationSource" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "dosage" : [{
        "text" : "as required",
        "asNeededBoolean" : true,
        "route" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "26643006",
            "display" : "Oral use"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:4dd53436-eea2-46e2-a1b2-9d89771de5d2",
    "resource" : {
      "resourceType" : "Medication",
      "id" : "4dd53436-eea2-46e2-a1b2-9d89771de5d2",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Medication-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Medication_4dd53436-eea2-46e2-a1b2-9d89771de5d2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Medication 4dd53436-eea2-46e2-a1b2-9d89771de5d2</b></p><a name=\"4dd53436-eea2-46e2-a1b2-9d89771de5d2\"> </a><a name=\"hc4dd53436-eea2-46e2-a1b2-9d89771de5d2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Medication-uv-ips.html\">Medication (IPS)</a></p></div><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 48546005}\">Diazepam-containing product</span></p><p><b>status</b>: Active</p><p><b>form</b>: <span title=\"Codes:{http://snomed.info/sct 385049006}\">Capsule</span></p><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td><td><b>IsActive</b></td><td><b>Strength</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 387264003}\">Diazepam</span></td><td>true</td><td>5 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span>/15 mg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></div>"
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "48546005",
          "display" : "Diazepam-containing product"
        }]
      },
      "status" : "active",
      "form" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "385049006",
          "display" : "Capsule"
        }]
      },
      "ingredient" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "387264003",
            "display" : "Diazepam"
          }]
        },
        "isActive" : true,
        "strength" : {
          "numerator" : {
            "value" : 5,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          },
          "denominator" : {
            "value" : 15,
            "unit" : "mg",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:6c08db33-8f5f-487e-98fb-1e933c046bbe",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "6c08db33-8f5f-487e-98fb-1e933c046bbe",
      "meta" : {
        "profile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-EmploymentStatus"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_6c08db33-8f5f-487e-98fb-1e933c046bbe\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 6c08db33-8f5f-487e-98fb-1e933c046bbe</b></p><a name=\"6c08db33-8f5f-487e-98fb-1e933c046bbe\"> </a><a name=\"hc6c08db33-8f5f-487e-98fb-1e933c046bbe\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://profiles.ihe.net/PCC/ODH/1.0.0/StructureDefinition-odh-EmploymentStatus.html\">Employment Status</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 74165-2}\">History of employment status NIOSH</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>effective</b>: 2021-09-07 --&gt; (ongoing)</p><p><b>performer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-1b953334-140c-4b02-b162-cb9f337e6e5e\">Practitioner Jakob Leitner</a></p><p><b>value</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationValue Employed}\">Employed</span></p></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "74165-2",
          "display" : "History of employment status NIOSH"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "effectivePeriod" : {
        "start" : "2021-09-07"
      },
      "performer" : [{
        "reference" : "urn:uuid:1b953334-140c-4b02-b162-cb9f337e6e5e"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationValue",
          "code" : "Employed",
          "display" : "Employed"
        }]
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:1541d2fd-2aee-40cd-8ced-162d2a0f92d3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "1541d2fd-2aee-40cd-8ced-162d2a0f92d3",
      "meta" : {
        "profile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-PastOrPresentJob"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_1541d2fd-2aee-40cd-8ced-162d2a0f92d3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 1541d2fd-2aee-40cd-8ced-162d2a0f92d3</b></p><a name=\"1541d2fd-2aee-40cd-8ced-162d2a0f92d3\"> </a><a name=\"hc1541d2fd-2aee-40cd-8ced-162d2a0f92d3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://profiles.ihe.net/PCC/ODH/1.0.0/StructureDefinition-odh-PastOrPresentJob.html\">Past Or Present Job</a></p></div><p><b>Employer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-ab27ea19-5a52-424c-852b-7b0111ffedba\">Organization Employer Company Name</a></p><p><b>ODHIsCurrentJob-extension</b>: false</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11341-5}\">History of Occupation</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>effective</b>: 2021-09-07 --&gt; (ongoing)</p><p><b>performer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-1b953334-140c-4b02-b162-cb9f337e6e5e\">Practitioner Jakob Leitner</a></p><p><b>value</b>: <span title=\"Codes:{https://profiles.ihe.net/PCC/ODH/CodeSystem/ISCO08 2131}\">Biologists, botanists, zoologists and related professionals</span></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://loinc.org 86188-0}\">History of Occupation Industry</span></td><td><span title=\"Codes:{https://profiles.ihe.net/PCC/ODH/CodeSystem/ISICRev4 72}\">Scientific research and development</span></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-Employer-extension",
        "valueReference" : {
          "reference" : "urn:uuid:ab27ea19-5a52-424c-852b-7b0111ffedba"
        }
      },
      {
        "url" : "https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-isCurrentJob-extension",
        "valueBoolean" : false
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11341-5",
          "display" : "History of Occupation"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "effectivePeriod" : {
        "start" : "2021-09-07"
      },
      "performer" : [{
        "reference" : "urn:uuid:1b953334-140c-4b02-b162-cb9f337e6e5e"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://profiles.ihe.net/PCC/ODH/CodeSystem/ISCO08",
          "code" : "2131",
          "display" : "Biologists, botanists, zoologists and related professionals"
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
            "code" : "72",
            "display" : "Scientific research and development"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:fb1a62be-9831-40c9-862f-48fd12faa913",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "fb1a62be-9831-40c9-862f-48fd12faa913",
      "meta" : {
        "profile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-PastOrPresentJob"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_fb1a62be-9831-40c9-862f-48fd12faa913\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation fb1a62be-9831-40c9-862f-48fd12faa913</b></p><a name=\"fb1a62be-9831-40c9-862f-48fd12faa913\"> </a><a name=\"hcfb1a62be-9831-40c9-862f-48fd12faa913\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://profiles.ihe.net/PCC/ODH/1.0.0/StructureDefinition-odh-PastOrPresentJob.html\">Past Or Present Job</a></p></div><p><b>Employer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-ab27ea19-5a52-424c-852b-7b0111ffedba\">Organization Employer Company Name</a></p><p><b>ODHIsCurrentJob-extension</b>: true</p><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 11341-5}\">History of Occupation</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>effective</b>: 2016-03-10 --&gt; 2020-04-14</p><p><b>performer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-1b953334-140c-4b02-b162-cb9f337e6e5e\">Practitioner Jakob Leitner</a></p><p><b>value</b>: <span title=\"Codes:{https://profiles.ihe.net/PCC/ODH/CodeSystem/ISCO08 5321}\">Health care assistants</span></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://loinc.org 86188-0}\">History of Occupation Industry</span></td><td><span title=\"Codes:{https://profiles.ihe.net/PCC/ODH/CodeSystem/ISICRev4 871}\">Residential nursing care facilities</span></td></tr></table></div>"
      },
      "extension" : [{
        "url" : "https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-Employer-extension",
        "valueReference" : {
          "reference" : "urn:uuid:ab27ea19-5a52-424c-852b-7b0111ffedba"
        }
      },
      {
        "url" : "https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-isCurrentJob-extension",
        "valueBoolean" : true
      }],
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11341-5",
          "display" : "History of Occupation"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "effectivePeriod" : {
        "start" : "2016-03-10",
        "end" : "2020-04-14"
      },
      "performer" : [{
        "reference" : "urn:uuid:1b953334-140c-4b02-b162-cb9f337e6e5e"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://profiles.ihe.net/PCC/ODH/CodeSystem/ISCO08",
          "code" : "5321",
          "display" : "Health care assistants"
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
    "fullUrl" : "urn:uuid:f2a5add3-95ff-4ceb-ad60-b31d61d8471c",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "f2a5add3-95ff-4ceb-ad60-b31d61d8471c",
      "meta" : {
        "profile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-CombatZonePeriod"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_f2a5add3-95ff-4ceb-ad60-b31d61d8471c\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation f2a5add3-95ff-4ceb-ad60-b31d61d8471c</b></p><a name=\"f2a5add3-95ff-4ceb-ad60-b31d61d8471c\"> </a><a name=\"hcf2a5add3-95ff-4ceb-ad60-b31d61d8471c\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://profiles.ihe.net/PCC/ODH/1.0.0/StructureDefinition-odh-CombatZonePeriod.html\">Combat Zone Period</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 87511-2}\">Combat zone AndOr hazardous duty work dates</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>effective</b>: 2025-06-03</p><p><b>performer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-1b953334-140c-4b02-b162-cb9f337e6e5e\">Practitioner Jakob Leitner</a></p><p><b>value</b>: 2017-12-07 --&gt; 2018-02-04</p></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "87511-2",
          "display" : "Combat zone AndOr hazardous duty work dates"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "effectiveDateTime" : "2025-06-03",
      "performer" : [{
        "reference" : "urn:uuid:1b953334-140c-4b02-b162-cb9f337e6e5e"
      }],
      "valuePeriod" : {
        "start" : "2017-12-07",
        "end" : "2018-02-04"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:5f710c84-728a-4024-bf62-70d2798e992c",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "5f710c84-728a-4024-bf62-70d2798e992c",
      "meta" : {
        "profile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-RetirementDate"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_5f710c84-728a-4024-bf62-70d2798e992c\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 5f710c84-728a-4024-bf62-70d2798e992c</b></p><a name=\"5f710c84-728a-4024-bf62-70d2798e992c\"> </a><a name=\"hc5f710c84-728a-4024-bf62-70d2798e992c\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://profiles.ihe.net/PCC/ODH/1.0.0/StructureDefinition-odh-RetirementDate.html\">Retirement Date</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 87510-4}\">Date of Retirement</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>effective</b>: 2025-06-03</p><p><b>performer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-1b953334-140c-4b02-b162-cb9f337e6e5e\">Practitioner Jakob Leitner</a></p><p><b>value</b>: 2025-12-20</p></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "87510-4",
          "display" : "Date of Retirement"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "effectiveDateTime" : "2025-06-03",
      "performer" : [{
        "reference" : "urn:uuid:1b953334-140c-4b02-b162-cb9f337e6e5e"
      }],
      "valueDateTime" : "2025-12-20"
    }
  },
  {
    "fullUrl" : "urn:uuid:92ae1223-5a0f-4e0c-a835-91f943aa4e1d",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "92ae1223-5a0f-4e0c-a835-91f943aa4e1d",
      "meta" : {
        "profile" : ["https://profiles.ihe.net/PCC/ODH/StructureDefinition/odh-UsualWork"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_92ae1223-5a0f-4e0c-a835-91f943aa4e1d\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation 92ae1223-5a0f-4e0c-a835-91f943aa4e1d</b></p><a name=\"92ae1223-5a0f-4e0c-a835-91f943aa4e1d\"> </a><a name=\"hc92ae1223-5a0f-4e0c-a835-91f943aa4e1d\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"https://profiles.ihe.net/PCC/ODH/1.0.0/StructureDefinition-odh-UsualWork.html\">Usual Work</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 21843-8}\">History of Usual occupation</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>effective</b>: 2016-03-10 --&gt; (ongoing)</p><p><b>performer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-1b953334-140c-4b02-b162-cb9f337e6e5e\">Practitioner Jakob Leitner</a></p><p><b>value</b>: <span title=\"Codes:{https://profiles.ihe.net/PCC/ODH/CodeSystem/ISCO08 2221}\">Nursing professionals</span></p><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://loinc.org 21844-6}\">History of Usual industry</span></td><td><span title=\"Codes:{https://profiles.ihe.net/PCC/ODH/CodeSystem/ISICRev4 871}\">Residential nursing care facilities</span></td></tr></table></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "21843-8",
          "display" : "History of Usual occupation"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "effectivePeriod" : {
        "start" : "2016-03-10"
      },
      "performer" : [{
        "reference" : "urn:uuid:1b953334-140c-4b02-b162-cb9f337e6e5e"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://profiles.ihe.net/PCC/ODH/CodeSystem/ISCO08",
          "code" : "2221",
          "display" : "Nursing professionals"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "21844-6"
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
    "fullUrl" : "urn:uuid:af46b53c-6a51-4ec0-a1e5-e0eb4587b0f9",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "af46b53c-6a51-4ec0-a1e5-e0eb4587b0f9",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-pregnancy-status-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_af46b53c-6a51-4ec0-a1e5-e0eb4587b0f9\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation af46b53c-6a51-4ec0-a1e5-e0eb4587b0f9</b></p><a name=\"af46b53c-6a51-4ec0-a1e5-e0eb4587b0f9\"> </a><a name=\"hcaf46b53c-6a51-4ec0-a1e5-e0eb4587b0f9\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Observation-pregnancy-status-uv-ips.html\">Observation Pregnancy - Status (IPS)</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 82810-3}\">Pregnancy status</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>effective</b>: 2026-02-05 12:13:00+0200</p><p><b>performer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 60001007}\">Not pregnant</span></p></div>"
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
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "effectiveDateTime" : "2026-02-05T12:13:00+02:00",
      "performer" : [{
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "60001007",
          "display" : "Not pregnant"
        }]
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:e72697f5-2323-4ea3-8d70-af2363800ae4",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "e72697f5-2323-4ea3-8d70-af2363800ae4",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_e72697f5-2323-4ea3-8d70-af2363800ae4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure e72697f5-2323-4ea3-8d70-af2363800ae4</b></p><a name=\"e72697f5-2323-4ea3-8d70-af2363800ae4\"> </a><a name=\"hce72697f5-2323-4ea3-8d70-af2363800ae4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Procedure-uv-ips.html\">Procedure (IPS)</a></p></div><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 409063005}\">Counselling</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 385989002}\">Substance use therapy</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>performed</b>: 2018-07-02 --&gt; 2018-09-15</p></div>"
      },
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "409063005",
          "display" : "Counselling"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "385989002",
          "display" : "Substance use therapy"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "performedPeriod" : {
        "start" : "2018-07-02",
        "end" : "2018-09-15"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:ac090ad2-2be4-4324-9018-ea85de87ba6a",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "ac090ad2-2be4-4324-9018-ea85de87ba6a",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_ac090ad2-2be4-4324-9018-ea85de87ba6a\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation ac090ad2-2be4-4324-9018-ea85de87ba6a</b></p><a name=\"ac090ad2-2be4-4324-9018-ea85de87ba6a\"> </a><a name=\"hcac090ad2-2be4-4324-9018-ea85de87ba6a\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category social-history}\">Social History</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 363908000}\">Details of drug misuse behavior</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>effective</b>: 2018-07-02</p><p><b>performer</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-1b953334-140c-4b02-b162-cb9f337e6e5e\">Practitioner Jakob Leitner</a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 428659002}\">Amphetamine misuse</span></p><p><b>note</b>: </p><blockquote><div><p>Patient Indicates misuse of her perscribed Amphetamine medication, used to treat ADHD</p>\n</div></blockquote></div>"
      },
      "status" : "final",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "social-history",
          "display" : "Social History"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363908000",
          "display" : "Details of drug misuse behavior"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "effectiveDateTime" : "2018-07-02",
      "performer" : [{
        "reference" : "urn:uuid:1b953334-140c-4b02-b162-cb9f337e6e5e"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "428659002",
          "display" : "Amphetamine misuse"
        }]
      },
      "note" : [{
        "text" : "Patient Indicates misuse of her perscribed Amphetamine medication, used to treat ADHD"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:b2d1d43f-cc18-42ff-9129-42c4d99bae8f",
    "resource" : {
      "resourceType" : "ClinicalImpression",
      "id" : "b2d1d43f-cc18-42ff-9129-42c4d99bae8f",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ClinicalImpression_b2d1d43f-cc18-42ff-9129-42c4d99bae8f\"> </a><p class=\"res-header-id\"><b>Generated Narrative: ClinicalImpression b2d1d43f-cc18-42ff-9129-42c4d99bae8f</b></p><a name=\"b2d1d43f-cc18-42ff-9129-42c4d99bae8f\"> </a><a name=\"hcb2d1d43f-cc18-42ff-9129-42c4d99bae8f\"> </a><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 250887008}\">Audiological test finding</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>effective</b>: 2007-01-26 10:55:00+0200</p><p><b>date</b>: 2007-01-26 10:55:00+0200</p><p><b>assessor</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-a9075331-0512-4bf9-aefc-ef188d58be31\">Practitioner Dr. Mary PCC Deonne</a></p><p><b>problem</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-dbd46d98-d6fd-42a1-ba51-7394325f15cf\">Condition Decreased hearing</a></p><h3>Findings</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ItemCodeableConcept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 15188001}\">Hearing loss</span></td></tr></table></div>"
      },
      "status" : "completed",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "250887008",
          "display" : "Audiological test finding"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "effectiveDateTime" : "2007-01-26T10:55:00+02:00",
      "date" : "2007-01-26T10:55:00+02:00",
      "assessor" : {
        "reference" : "urn:uuid:a9075331-0512-4bf9-aefc-ef188d58be31"
      },
      "problem" : [{
        "reference" : "urn:uuid:dbd46d98-d6fd-42a1-ba51-7394325f15cf"
      }],
      "finding" : [{
        "itemCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "15188001",
            "display" : "Hearing loss"
          }]
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:99c6a7f2-0661-4d22-955f-431314ecf2ce",
    "resource" : {
      "resourceType" : "Flag",
      "id" : "99c6a7f2-0661-4d22-955f-431314ecf2ce",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Flag-alert-uv-ips"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Flag_99c6a7f2-0661-4d22-955f-431314ecf2ce\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Flag 99c6a7f2-0661-4d22-955f-431314ecf2ce</b></p><a name=\"99c6a7f2-0661-4d22-955f-431314ecf2ce\"> </a><a name=\"hc99c6a7f2-0661-4d22-955f-431314ecf2ce\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Flag-alert-uv-ips.html\">Flag - Alert (IPS)</a></p></div><p><b>Flag Priority</b>: <span title=\"Codes:{http://hl7.org/fhir/flag-priority-code PM}\">Medium priority</span></p><p><b>status</b>: Active</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/flag-category behavioral}\">Behavioral</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/flag-category clinical}\">Clinical</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 788165003}\">Misuse of medication</span></p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>period</b>: 2018-07-02 --&gt; (ongoing)</p></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/flag-priority",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/flag-priority-code",
            "code" : "PM",
            "display" : "Medium priority"
          }]
        }
      }],
      "status" : "active",
      "category" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/flag-category",
          "code" : "behavioral",
          "display" : "Behavioral"
        }]
      },
      {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/flag-category",
          "code" : "clinical",
          "display" : "Clinical"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "788165003",
          "display" : "Misuse of medication"
        }]
      },
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "period" : {
        "start" : "2018-07-02"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:2ba7ec69-c597-41ec-837c-5295b95452fd",
    "resource" : {
      "resourceType" : "DeviceUseStatement",
      "id" : "2ba7ec69-c597-41ec-837c-5295b95452fd",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/DeviceUseStatement-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DeviceUseStatement_2ba7ec69-c597-41ec-837c-5295b95452fd\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DeviceUseStatement 2ba7ec69-c597-41ec-837c-5295b95452fd</b></p><a name=\"2ba7ec69-c597-41ec-837c-5295b95452fd\"> </a><a name=\"hc2ba7ec69-c597-41ec-837c-5295b95452fd\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-DeviceUseStatement-uv-ips.html\">DeviceUseStatement (IPS)</a></p></div><p><b>status</b>: Completed</p><p><b>subject</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-fb45133f-447a-49e8-ba3d-71fbcc7fdcc1\">Genny ODH Works(official) Female, DoB: 1995-07-28 ( Driver's license number: 781886151 (use: official, period: 2014-11-09 --&gt; (ongoing)))</a></p><p><b>timing</b>: 2026-05-26 13:30:00+0200</p><p><b>device</b>: <a href=\"Bundle-e0e8252a-4aab-4fab-ac8f-5734abbd1ec7.html#urn-uuid-ec35801a-bc7b-41f0-bb42-2f98710bb8dd\">Device: type = No known device use</a></p></div>"
      },
      "status" : "completed",
      "subject" : {
        "reference" : "urn:uuid:fb45133f-447a-49e8-ba3d-71fbcc7fdcc1"
      },
      "timingDateTime" : "2026-05-26T13:30:00+02:00",
      "device" : {
        "reference" : "urn:uuid:ec35801a-bc7b-41f0-bb42-2f98710bb8dd"
      }
    }
  },
  {
    "fullUrl" : "urn:uuid:ec35801a-bc7b-41f0-bb42-2f98710bb8dd",
    "resource" : {
      "resourceType" : "Device",
      "id" : "ec35801a-bc7b-41f0-bb42-2f98710bb8dd",
      "meta" : {
        "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Device-uv-ips"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_ec35801a-bc7b-41f0-bb42-2f98710bb8dd\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Device ec35801a-bc7b-41f0-bb42-2f98710bb8dd</b></p><a name=\"ec35801a-bc7b-41f0-bb42-2f98710bb8dd\"> </a><a name=\"hcec35801a-bc7b-41f0-bb42-2f98710bb8dd\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Device-uv-ips.html\">Device (IPS)</a></p></div><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 787483001}\">No known device use</span></p></div>"
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
