# Example of a FHIR-Document Bundle - Mobile access to Health Documents (MHD) v5.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of a FHIR-Document Bundle**

## Example Bundle: Example of a FHIR-Document Bundle

**Document Details**

Last updated: 2013-05-28 22:12:21+0000

Final Document at 2013-02-01 12:30:02+0000 by [Practitioner Adam Careful](Bundle-ex-fhir-document-bundle.md#Practitioner_fdoc-practitioner) for [Eve Everywoman Female, DoB: 1955-01-06](Bundle-ex-fhir-document-bundle.md#Patient_fdoc-patient) in encounter [Encounter: identifier = http://www.example.org/encounters#S100; status = completed; class = inpatient encounter; type = ; actualPeriod = 2013-01-20 12:30:02+0000 --> 2013-02-01 12:30:02+0000](Bundle-ex-fhir-document-bundle.md#Encounter_fdoc-encounter)

-------

**Document Subject**

Eve Everywoman Female, DoB: 1955-01-06

-------

-------

**Document Content**

## Reason for admission

| | |
| :--- | :--- |
| Details |  |
| Acute Asthmatic attack. Was wheezing for days prior to admission. |  |

## Medications on Discharge

| | | |
| :--- | :--- | :--- |
| Medication | Last Change | Last ChangeReason |
| Theophylline 200mg BD after meals | continued | |
| Ventolin Inhaler | stopped | Getting side effect of tremor |

## Known allergies

| | |
| :--- | :--- |
| Allergen | Reaction |
| Doxycycline | Hives |

-------

## Additional Resources Included in Document

-------

Entry 2 - fullUrl = http://example.org/fhir/Practitioner/fdoc-practitioner

Resource Practitioner:

> **identifier**:`http://www.acme.org/practitioners`/23**name**: Adam Careful

-------

Entry 3 - fullUrl = http://example.org/fhir/Patient/fdoc-patient

Resource Patient:

> Eve Everywoman Female, DoB: 1955-01-06
-------

-------

Entry 4 - fullUrl = http://example.org/fhir/Encounter/fdoc-encounter

Resource Encounter:

> **identifier**:`http://www.example.org/encounters`/S100**status**: Completed**class**:inpatient encounter**type**:Orthopedic Admission**subject**:[Eve Everywoman Female, DoB: 1955-01-06](Bundle-ex-fhir-document-bundle.md#Patient_fdoc-patient)**actualPeriod**: 2013-01-20 12:30:02+0000 --> 2013-02-01 12:30:02+0000

### Admissions

| | |
| :--- | :--- |
| - | **DischargeDisposition** |
| * | Discharged to care of GP |


-------

Entry 5 - fullUrl = http://example.org/fhir/Observation/fdoc-observation

Resource Observation:

> **status**: Final**code**:Reason for admission**subject**:[Eve Everywoman Female, DoB: 1955-01-06](Bundle-ex-fhir-document-bundle.md#Patient_fdoc-patient)**encounter**:[Encounter: identifier = http://www.example.org/encounters#S100; status = completed; class = inpatient encounter; type = ; actualPeriod = 2013-01-20 12:30:02+0000 --> 2013-02-01 12:30:02+0000](Bundle-ex-fhir-document-bundle.md#Encounter_fdoc-encounter)**value**: Acute Asthmatic attack. Was wheezing for days prior to admission.

-------

Entry 6 - fullUrl = http://example.org/fhir/MedicationRequest/fdoc-medicationrequest

Resource MedicationRequest:

> **status**: Unknown**intent**: Order

### Medications

| | |
| :--- | :--- |
| - | **Concept** |
| * | Theophylline 200mg |

**subject**:[Eve Everywoman Female, DoB: 1955-01-06](Bundle-ex-fhir-document-bundle.md#Patient_fdoc-patient)**requester**:[Practitioner Adam Careful](Bundle-ex-fhir-document-bundle.md#Practitioner_fdoc-practitioner)

### Reasons

| | |
| :--- | :--- |
| - | **Concept** |
| * | Management of Asthma |

> **dosageInstruction****additionalInstruction**:Take with Food**timing**: 2 per 1 day**route**:oral administration of treatment

### DoseAndRates

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Dose[x]** |
| * | Ordered | 1 tablet(Details: Orderable Drug Form codeTAB = 'Tablet') |



-------

Entry 7 - fullUrl = http://example.org/fhir/MedicationStatement/fdoc-medicationstatement

Resource MedicationStatement:

> **status**: Recorded

### Medications

| | |
| :--- | :--- |
| - | **Concept** |
| * | Ventolin Inhaler |

**subject**:[Eve Everywoman Female, DoB: 1955-01-06](Bundle-ex-fhir-document-bundle.md#Patient_fdoc-patient)**dateAsserted**: 2013-05-05 16:13:03+0000

### Reasons

| | |
| :--- | :--- |
| - | **Concept** |
| * | Management of Asthma |


-------

Entry 8 - fullUrl = http://example.org/fhir/AllergyIntolerance/fdoc-allergyintolerance

Resource AllergyIntolerance:

> **clinicalStatus**:Active**verificationStatus**:Confirmed**type**:Allergy**criticality**: High Risk**code**:Doxycycline**patient**:[Eve Everywoman Female, DoB: 1955-01-06](Bundle-ex-fhir-document-bundle.md#Patient_fdoc-patient)**recordedDate**: 2012-09-17
> **reaction**

### Manifestations

| | |
| :--- | :--- |
| - | **Concept** |
| * | Hives |





## Resource Content

```json
{
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_180f219f-97a8-486d-99d9-ed631fe4fc57\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition 180f219f-97a8-486d-99d9-ed631fe4fc57</b></p><a name=\"180f219f-97a8-486d-99d9-ed631fe4fc57\"> </a><a name=\"hc180f219f-97a8-486d-99d9-ed631fe4fc57\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Last updated: 2013-05-28 22:12:21+0000</p></div><p><b>status</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 28655-9}\">Discharge Summary from Responsible Clinician</span></p><p><b>encounter</b>: <a href=\"Bundle-ex-fhir-document-bundle.html#Encounter_fdoc-encounter\">Encounter: identifier = http://www.example.org/encounters#S100; status = completed; class = inpatient encounter; type = ; actualPeriod = 2013-01-20 12:30:02+0000 --&gt; 2013-02-01 12:30:02+0000</a></p><p><b>date</b>: 2013-02-01 12:30:02+0000</p><p><b>author</b>: <a href=\"Bundle-ex-fhir-document-bundle.html#Practitioner_fdoc-practitioner\">Practitioner Adam Careful </a></p><p><b>title</b>: Discharge Summary</p></div>"
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_fdoc-practitioner\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner fdoc-practitioner</b></p><a name=\"fdoc-practitioner\"> </a><a name=\"hcfdoc-practitioner\"> </a><p><b>identifier</b>: <code>http://www.acme.org/practitioners</code>/23</p><p><b>name</b>: Adam Careful </p></div>"
        },
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_fdoc-patient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient fdoc-patient</b></p><a name=\"fdoc-patient\"> </a><a name=\"hcfdoc-patient\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Eve Everywoman Female, DoB: 1955-01-06</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Record is active\">Active:</td><td colspan=\"3\">true</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li>ph: 555-555-2003(Work)</li><li>2222 Home Street (home)</li></ul></td></tr></table></div>"
        },
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Encounter_fdoc-encounter\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter fdoc-encounter</b></p><a name=\"fdoc-encounter\"> </a><a name=\"hcfdoc-encounter\"> </a><p><b>identifier</b>: <code>http://www.example.org/encounters</code>/S100</p><p><b>status</b>: Completed</p><p><b>class</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ActCode IMP}\">inpatient encounter</span></p><p><b>type</b>: <span title=\"Codes:\">Orthopedic Admission</span></p><p><b>subject</b>: <a href=\"Bundle-ex-fhir-document-bundle.html#Patient_fdoc-patient\">Eve Everywoman Female, DoB: 1955-01-06</a></p><p><b>actualPeriod</b>: 2013-01-20 12:30:02+0000 --&gt; 2013-02-01 12:30:02+0000</p><h3>Admissions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>DischargeDisposition</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">Discharged to care of GP</span></td></tr></table></div>"
        },
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_fdoc-observation\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation fdoc-observation</b></p><a name=\"fdoc-observation\"> </a><a name=\"hcfdoc-observation\"> </a><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 46241-6}\">Reason for admission</span></p><p><b>subject</b>: <a href=\"Bundle-ex-fhir-document-bundle.html#Patient_fdoc-patient\">Eve Everywoman Female, DoB: 1955-01-06</a></p><p><b>encounter</b>: <a href=\"Bundle-ex-fhir-document-bundle.html#Encounter_fdoc-encounter\">Encounter: identifier = http://www.example.org/encounters#S100; status = completed; class = inpatient encounter; type = ; actualPeriod = 2013-01-20 12:30:02+0000 --&gt; 2013-02-01 12:30:02+0000</a></p><p><b>value</b>: Acute Asthmatic attack. Was wheezing for days prior to admission.</p></div>"
        },
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_fdoc-medicationrequest\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest fdoc-medicationrequest</b></p><a name=\"fdoc-medicationrequest\"> </a><a name=\"hcfdoc-medicationrequest\"> </a><p><b>status</b>: Unknown</p><p><b>intent</b>: Order</p><h3>Medications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Concept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 66493003}\">Theophylline 200mg</span></td></tr></table><p><b>subject</b>: <a href=\"Bundle-ex-fhir-document-bundle.html#Patient_fdoc-patient\">Eve Everywoman Female, DoB: 1955-01-06</a></p><p><b>requester</b>: <a href=\"Bundle-ex-fhir-document-bundle.html#Practitioner_fdoc-practitioner\">Practitioner Adam Careful </a></p><h3>Reasons</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Concept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">Management of Asthma</span></td></tr></table><blockquote><p><b>dosageInstruction</b></p><p><b>additionalInstruction</b>: <span title=\"Codes:\">Take with Food</span></p><p><b>timing</b>: 2 per 1 day</p><p><b>route</b>: <span title=\"Codes:{http://snomed.info/sct 394899003}\">oral administration of treatment</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Type</b></td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/dose-rate-type ordered}\">Ordered</span></td><td>1 tablet<span style=\"background: LightGoldenRodYellow\"> (Details: Orderable Drug Form  codeTAB = 'Tablet')</span></td></tr></table></blockquote></div>"
        },
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_fdoc-medicationstatement\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement fdoc-medicationstatement</b></p><a name=\"fdoc-medicationstatement\"> </a><a name=\"hcfdoc-medicationstatement\"> </a><p><b>status</b>: Recorded</p><h3>Medications</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Concept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">Ventolin Inhaler</span></td></tr></table><p><b>subject</b>: <a href=\"Bundle-ex-fhir-document-bundle.html#Patient_fdoc-patient\">Eve Everywoman Female, DoB: 1955-01-06</a></p><p><b>dateAsserted</b>: 2013-05-05 16:13:03+0000</p><h3>Reasons</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Concept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">Management of Asthma</span></td></tr></table></div>"
        },
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
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"AllergyIntolerance_fdoc-allergyintolerance\"> </a><p class=\"res-header-id\"><b>Generated Narrative: AllergyIntolerance fdoc-allergyintolerance</b></p><a name=\"fdoc-allergyintolerance\"> </a><a name=\"hcfdoc-allergyintolerance\"> </a><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-verification confirmed}\">Confirmed</span></p><p><b>type</b>: <span title=\"Codes:{http://hl7.org/fhir/allergy-intolerance-type allergy}\">Allergy</span></p><p><b>criticality</b>: High Risk</p><p><b>code</b>: <span title=\"Codes:\">Doxycycline</span></p><p><b>patient</b>: <a href=\"Bundle-ex-fhir-document-bundle.html#Patient_fdoc-patient\">Eve Everywoman Female, DoB: 1955-01-06</a></p><p><b>recordedDate</b>: 2012-09-17</p><blockquote><p><b>reaction</b></p><h3>Manifestations</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Concept</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:\">Hives</span></td></tr></table></blockquote></div>"
        },
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
}

```
