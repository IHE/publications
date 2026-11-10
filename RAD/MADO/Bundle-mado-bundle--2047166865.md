# mado-bundle--2047166865 - Manifest-based Access to DICOM Objects (MADO) v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **mado-bundle--2047166865**

## Bundle: mado-bundle--2047166865



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mado-bundle--2047166865",
  "meta" : {
    "profile" : ["https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoFhirBundle#0.1.0"]
  },
  "identifier" : {
    "system" : "http://example.org/fhir/document-ids",
    "value" : "mado-bundle--2047166865"
  },
  "type" : "document",
  "timestamp" : "2026-06-19T17:00:57.834+02:00",
  "entry" : [{
    "fullUrl" : "urn:Composition/mado-comp-1814516964",
    "resource" : {
      "resourceType" : "Composition",
      "id" : "mado-comp-1814516964",
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_mado-comp-1814516964\"> </a><h1>Head CT on CT of Head, KO</h1><table><tbody><tr><td><b>Study Instance UID</b></td><td>1.2.250.1.59.40211.22756022.2.1.102</td></tr><tr><td><b>Subject</b></td><td><span>John DOE<span> </span></span></td></tr><tr><td><b>Author</b></td><td><span>IHEeu imaging converter<span> </span></span></td></tr><tr><td><b>Author</b></td><td><span>Example Hospital<span> </span></span></td></tr><tr><td><b>Created</b></td><td>Fri Jun 19 17:00:57 CEST 2026</td></tr><tr><td><b>Type</b></td><td>Diagnostic imaging Study</td></tr><tr><td><b>Category</b></td><td>Medical-Imaging</td></tr><tr><td><b>Study Start</b></td><td>Mon Aug 22 08:31:17 CEST 2022</td></tr><tr><td><b>Modalities</b></td><td>CT, KO</td></tr><tr><td><b>Anatomical region</b></td><td>Structure of head and/or neck, Entire body as a whole</td></tr><tr><td><b>Accession number</b></td><td>http://example.org/fhir/ris-ids | 8529258169397744 </td></tr><tr><td><b>Procedure</b></td><td>Head CT</td></tr><tr><td><b>Number of series</b></td><td>2</td></tr></tbody></table></div>"
      },
      "identifier" : {
        "system" : "http://example.org/fhir/document-ids",
        "value" : "mado-bundle--2047166865"
      },
      "status" : "final",
      "type" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "18748-4",
          "display" : "Diagnostic imaging Study"
        }]
      },
      "category" : [{
        "coding" : [{
          "system" : "http://hl7.eu/fhir/eu-health-data-api/CodeSystem/eehrxf-document-priority-category-cs",
          "code" : "Medical-Imaging",
          "display" : "Medical-Imaging"
        }]
      }],
      "subject" : {
        "reference" : "urn:Patient/pat-mrn--1097192655",
        "type" : "Patient",
        "display" : "John DOE"
      },
      "date" : "2026-06-19T17:00:57+02:00",
      "author" : [{
        "reference" : "urn:Device/creator-device",
        "type" : "Device",
        "display" : "IHEeu imaging converter"
      },
      {
        "reference" : "urn:Organization/creator-organization",
        "type" : "Organization",
        "display" : "Example Hospital"
      }],
      "title" : "Head CT on CT of Head, KO",
      "event" : [{
        "detail" : [{
          "reference" : "urn:ImagingStudy/1.2.250.1.59.40211.22756022.2.1.102",
          "type" : "ImagingStudy",
          "display" : "Study B"
        }]
      }],
      "section" : [{
        "title" : "Series 1",
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr><td><b>Series Id</b></td><td>1.2.250.1.59.40211.22756022.2.2.102.201</td></tr><tr><td><b>Modality</b></td><td>CT</td></tr><tr><td><b>Bodysite</b></td><td>Head</td></tr><tr><td><b>Started</b></td><td>Mon Aug 22 16:47:58 CEST 2022</td></tr><tr><td><b>Description</b></td><td>Series B1</td></tr><tr><td><b>Number of Instances</b></td><td>20</td></tr><tr><td><b>Endpoint</b></td><td>WADO endpoint: http://example.com/wado</td></tr></tbody></table></div>"
        },
        "entry" : [{
          "reference" : "urn:Endpoint/wado-url-endpoint--271104327",
          "type" : "Endpoint",
          "display" : "WADO endpoint"
        }]
      },
      {
        "title" : "Series 59",
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><table><tbody><tr><td><b>Series Id</b></td><td>1.2.250.1.59.40211.22756022.2.2.102.202</td></tr><tr><td><b>Modality</b></td><td>KO</td></tr><tr><td><b>Number of Instances</b></td><td>1</td></tr><tr><td><b>Endpoint</b></td><td>WADO endpoint: http://example.com/wado</td></tr></tbody></table></div>"
        },
        "entry" : [{
          "reference" : "urn:Endpoint/wado-url-endpoint--271104327",
          "type" : "Endpoint",
          "display" : "WADO endpoint"
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:ImagingStudy/1.2.250.1.59.40211.22756022.2.1.102",
    "resource" : {
      "resourceType" : "ImagingStudy",
      "id" : "1.2.250.1.59.40211.22756022.2.1.102",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ImagingStudy_1.2.250.1.59.40211.22756022.2.1.102\"> </a><table class=\".border-bottom\"><tbody><tr><td><b>id</b></td><td>ImagingStudy/1.2.250.1.59.40211.22756022.2.1.102</td></tr><tr><td><b>extension</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>url</b></td><td>https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoAnatomicalRegionExtension</td></tr><tr><td><b>value[x]</b></td><td>Structure of head and/or neck</td></tr></tbody></table></div></td></tr><tr><td><b>extension</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>url</b></td><td>https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoAnatomicalRegionExtension</td></tr><tr><td><b>value[x]</b></td><td>Entire body as a whole</td></tr></tbody></table></div></td></tr><tr><td><b>identifier</b></td><td><span><b>Study Instance UID: </b>urn:oid:1.2.250.1.59.40211.22756022.2.1.102 [urn:dicom:uid]</span></td></tr><tr><td><b>status</b></td><td>available</td></tr><tr><td><b>modality</b></td><td>CT (http://dicom.nema.org/resources/ontology/DCM)</td></tr><tr><td><b>modality</b></td><td>KO (http://dicom.nema.org/resources/ontology/DCM)</td></tr><tr><td><b>subject</b></td><td><span>John DOE<span> </span></span></td></tr><tr><td><b>started</b></td><td>2022-08-22T08:31:17+02:00</td></tr><tr><td><b>basedOn</b></td><td><span>Requested Procedure: 8529258169397744<span> </span></span></td></tr><tr><td><b>numberOfSeries</b></td><td>2</td></tr><tr><td><b>numberOfInstances</b></td><td>21</td></tr><tr><td><b>procedureCode</b></td><td>Head CT</td></tr><tr><td><b>description</b></td><td>Study B</td></tr><tr><td><b>series</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.2.102.201</td></tr><tr><td><b>number</b></td><td>1</td></tr><tr><td><b>modality</b></td><td>CT (http://dicom.nema.org/resources/ontology/DCM)</td></tr><tr><td><b>description</b></td><td>Series B1</td></tr><tr><td><b>numberOfInstances</b></td><td>20</td></tr><tr><td><b>endpoint</b></td><td><span>WADO endpoint<span> </span></span></td></tr><tr><td><b>bodySite</b></td><td>Head</td></tr><tr><td><b>started</b></td><td>2022-08-22T16:47:58+02:00</td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.39</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>9</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.37</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>7</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.38</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>8</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.35</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>5</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.36</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>6</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.33</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>3</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.34</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>4</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.313</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>13</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.31</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>1</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.312</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>12</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.32</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>2</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.315</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>15</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.314</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>14</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.320</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>20</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.311</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>11</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.310</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>10</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.317</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>17</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.316</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>16</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.319</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>19</td></tr></tbody></table></div></td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.201.318</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.2 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>18</td></tr></tbody></table></div></td></tr></tbody></table></div></td></tr><tr><td><b>series</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.2.102.202</td></tr><tr><td><b>number</b></td><td>59</td></tr><tr><td><b>modality</b></td><td>KO (http://dicom.nema.org/resources/ontology/DCM)</td></tr><tr><td><b>numberOfInstances</b></td><td>1</td></tr><tr><td><b>endpoint</b></td><td><span>WADO endpoint<span> </span></span></td></tr><tr><td><b>bodySite</b></td><td>-</td></tr><tr><td><b>instance</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>extension</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>url</b></td><td>https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoKeyObjectDocumentTitle</td></tr><tr><td><b>value[x]</b></td><td>Of Interest</td></tr></tbody></table></div></td></tr><tr><td><b>uid</b></td><td>1.2.250.1.59.40211.22756022.2.3.102.202.31</td></tr><tr><td><b>sopClass</b></td><td>urn:oid:1.2.840.10008.5.1.4.1.1.88.59 (http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs)</td></tr><tr><td><b>number</b></td><td>1</td></tr><tr><td><b>title</b></td><td>Significant DICOM Instances</td></tr></tbody></table></div></td></tr></tbody></table></div></td></tr></tbody></table></div>"
      },
      "extension" : [{
        "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoAnatomicalRegionExtension",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "774007",
            "display" : "Structure of head and/or neck"
          }]
        }
      },
      {
        "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoAnatomicalRegionExtension",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "38266002",
            "display" : "Entire body as a whole"
          }]
        }
      }],
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://dicom.nema.org/resources/ontology/DCM",
            "code" : "110180",
            "display" : "Study Instance UID"
          }]
        },
        "system" : "urn:dicom:uid",
        "value" : "urn:oid:1.2.250.1.59.40211.22756022.2.1.102"
      }],
      "status" : "available",
      "modality" : [{
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "CT"
      },
      {
        "system" : "http://dicom.nema.org/resources/ontology/DCM",
        "code" : "KO"
      }],
      "subject" : {
        "reference" : "urn:Patient/pat-mrn--1097192655",
        "type" : "Patient",
        "display" : "John DOE"
      },
      "started" : "2022-08-22T08:31:17+02:00",
      "basedOn" : [{
        "reference" : "urn:ServiceRequest/reqproc-591403905",
        "type" : "ServiceRequest",
        "identifier" : {
          "type" : {
            "coding" : [{
              "system" : "http://dicom.nema.org/resources/ontology/DCM",
              "code" : "121022",
              "display" : "Accession Number"
            },
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
              "code" : "ACSN",
              "display" : "Accession Id"
            }]
          },
          "system" : "http://example.org/fhir/ris-ids",
          "value" : "8529258169397744"
        },
        "display" : "Requested Procedure: 8529258169397744"
      }],
      "numberOfSeries" : 2,
      "numberOfInstances" : 21,
      "procedureCode" : [{
        "text" : "Head CT"
      }],
      "description" : "Study B",
      "series" : [{
        "uid" : "1.2.250.1.59.40211.22756022.2.2.102.201",
        "number" : 1,
        "modality" : {
          "system" : "http://dicom.nema.org/resources/ontology/DCM",
          "code" : "CT"
        },
        "description" : "Series B1",
        "numberOfInstances" : 20,
        "endpoint" : [{
          "reference" : "urn:Endpoint/wado-url-endpoint--271104327",
          "type" : "Endpoint",
          "display" : "WADO endpoint"
        }],
        "bodySite" : {
          "system" : "http://snomed.info/sct",
          "code" : "69536005",
          "display" : "Head"
        },
        "started" : "2022-08-22T16:47:58+02:00",
        "instance" : [{
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.39",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 9
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.37",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 7
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.38",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 8
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.35",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 5
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.36",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 6
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.33",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 3
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.34",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 4
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.313",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 13
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.31",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 1
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.312",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 12
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.32",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 2
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.315",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 15
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.314",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 14
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.320",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 20
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.311",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 11
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.310",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 10
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.317",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 17
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.316",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 16
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.319",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 19
        },
        {
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.201.318",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
          },
          "number" : 18
        }]
      },
      {
        "uid" : "1.2.250.1.59.40211.22756022.2.2.102.202",
        "number" : 59,
        "modality" : {
          "system" : "http://dicom.nema.org/resources/ontology/DCM",
          "code" : "KO"
        },
        "numberOfInstances" : 1,
        "endpoint" : [{
          "reference" : "urn:Endpoint/wado-url-endpoint--271104327",
          "type" : "Endpoint",
          "display" : "WADO endpoint"
        }],
        "instance" : [{
          "extension" : [{
            "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoKeyObjectDocumentTitle",
            "valueCodeableConcept" : {
              "coding" : [{
                "system" : "http://dicom.nema.org/resources/ontology/DCM",
                "code" : "113000",
                "display" : "Of Interest"
              }]
            }
          }],
          "uid" : "1.2.250.1.59.40211.22756022.2.3.102.202.31",
          "sopClass" : {
            "system" : "http://dicom.nema.org/resources/CodeSystem/DICOM_UIDs",
            "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.88.59"
          },
          "number" : 1,
          "title" : "Significant DICOM Instances"
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:Organization/creator-organization",
    "resource" : {
      "resourceType" : "Organization",
      "id" : "creator-organization",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_creator-organization\"> </a><table class=\".border-bottom\"><tbody><tr><td><b>id</b></td><td>Organization/creator-organization</td></tr><tr><td><b>identifier</b></td><td><span>akdjiefef [http://example.org/fhir/organization-ids]</span></td></tr><tr><td><b>name</b></td><td>Example Hospital</td></tr></tbody></table></div>"
      },
      "identifier" : [{
        "system" : "http://example.org/fhir/organization-ids",
        "value" : "akdjiefef"
      }],
      "name" : "Example Hospital"
    }
  },
  {
    "fullUrl" : "urn:Patient/pat-mrn--1097192655",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "pat-mrn--1097192655",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_pat-mrn--1097192655\"> </a><table class=\".border-bottom\"><tbody><tr><td><b>id</b></td><td>Patient/pat-mrn--1097192655</td></tr><tr><td><b>identifier</b></td><td><span><b>Usual: </b><b>Medical Record number: </b>UV59569735 [http://example.org/fhir/mrn-ids]</span></td></tr><tr><td><b>name</b></td><td>John DOE</td></tr><tr><td><b>gender</b></td><td>male</td></tr><tr><td><b>birthDate</b></td><td>1977-05-30</td></tr></tbody></table></div>"
      },
      "identifier" : [{
        "use" : "usual",
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "MR",
            "display" : "Medical Record number"
          }]
        },
        "system" : "http://example.org/fhir/mrn-ids",
        "value" : "UV59569735"
      }],
      "name" : [{
        "text" : "John DOE",
        "family" : "DOE",
        "given" : ["John"]
      }],
      "gender" : "male",
      "birthDate" : "1977-05-30"
    }
  },
  {
    "fullUrl" : "urn:Endpoint/wado-url-endpoint--271104327",
    "resource" : {
      "resourceType" : "Endpoint",
      "id" : "wado-url-endpoint--271104327",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Endpoint_wado-url-endpoint--271104327\"> </a><table class=\".border-bottom\"><tbody><tr><td><b>id</b></td><td>Endpoint/wado-url-endpoint--271104327</td></tr><tr><td><b>extension</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>url</b></td><td>https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoRetrieveLocationUIDExtension</td></tr><tr><td><b>value[x]</b></td><td>ACME</td></tr></tbody></table></div></td></tr><tr><td><b>status</b></td><td>active</td></tr><tr><td><b>connectionType</b></td><td>dicom-wado-rs (http://terminology.hl7.org/CodeSystem/endpoint-connection-type)</td></tr><tr><td><b>name</b></td><td>WADO endpoint</td></tr><tr><td><b>payloadType</b></td><td>DICOM WADO-RS</td></tr><tr><td><b>payloadMimeType</b></td><td>application/dicom</td></tr><tr><td><b>payloadMimeType</b></td><td>application/octet-stream</td></tr><tr><td><b>payloadMimeType</b></td><td>application/dicom+xml</td></tr><tr><td><b>payloadMimeType</b></td><td>application/dicom+json</td></tr><tr><td><b>payloadMimeType</b></td><td>image/jpg</td></tr><tr><td><b>payloadMimeType</b></td><td>image/gif</td></tr><tr><td><b>payloadMimeType</b></td><td>image/jp2</td></tr><tr><td><b>payloadMimeType</b></td><td>image/jph</td></tr><tr><td><b>payloadMimeType</b></td><td>image/jxl</td></tr><tr><td><b>payloadMimeType</b></td><td>video/mpeg</td></tr><tr><td><b>payloadMimeType</b></td><td>video/mp4</td></tr><tr><td><b>payloadMimeType</b></td><td>video/H265</td></tr><tr><td><b>payloadMimeType</b></td><td>text/html</td></tr><tr><td><b>payloadMimeType</b></td><td>text/rtf</td></tr><tr><td><b>payloadMimeType</b></td><td>application/pdf</td></tr><tr><td><b>address</b></td><td>http://example.com/wado</td></tr></tbody></table></div>"
      },
      "extension" : [{
        "url" : "https://profiles.ihe.net/RAD/MADO/StructureDefinition/MadoRetrieveLocationUIDExtension",
        "valueString" : "ACME"
      }],
      "status" : "active",
      "connectionType" : {
        "system" : "http://terminology.hl7.org/CodeSystem/endpoint-connection-type",
        "code" : "dicom-wado-rs"
      },
      "name" : "WADO endpoint",
      "payloadType" : [{
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/endpoint-payload-type",
          "code" : "none",
          "display" : "None"
        }],
        "text" : "DICOM WADO-RS"
      }],
      "payloadMimeType" : ["application/dicom",
      "application/octet-stream",
      "application/dicom+xml",
      "application/dicom+json",
      "image/jpg",
      "image/gif",
      "image/jp2",
      "image/jph",
      "image/jxl",
      "video/mpeg",
      "video/mp4",
      "video/H265",
      "text/html",
      "text/rtf",
      "application/pdf"],
      "address" : "http://example.com/wado"
    }
  },
  {
    "fullUrl" : "urn:Device/creator-device",
    "resource" : {
      "resourceType" : "Device",
      "id" : "creator-device",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_creator-device\"> </a><table class=\".border-bottom\"><tbody><tr><td><b>id</b></td><td>Device/creator-device</td></tr><tr><td><b>manufacturer</b></td><td>Philips IP&amp;S</td></tr><tr><td><b>manufactureDate</b></td><td>2026-03-17T00:00:00+01:00</td></tr><tr><td><b>deviceName</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>name</b></td><td>IHEeu imaging converter</td></tr><tr><td><b>type</b></td><td>user-friendly-name</td></tr></tbody></table></div></td></tr><tr><td><b>type</b></td><td>MADO Creator</td></tr><tr><td><b>owner</b></td><td><span>Example Hospital<span> </span></span></td></tr></tbody></table></div>"
      },
      "manufacturer" : "Philips IP&S",
      "manufactureDate" : "2026-03-17T00:00:00+01:00",
      "deviceName" : [{
        "name" : "IHEeu imaging converter",
        "type" : "user-friendly-name"
      }],
      "type" : {
        "coding" : [{
          "system" : "https://profiles.ihe.net/RAD/MADO/CodeSystem/MadoDeviceType",
          "code" : "mado-creator",
          "display" : "MADO Creator"
        }]
      },
      "owner" : {
        "reference" : "urn:Organization/creator-organization",
        "type" : "Organization",
        "display" : "Example Hospital"
      }
    }
  },
  {
    "fullUrl" : "urn:ServiceRequest/reqproc-591403905",
    "resource" : {
      "resourceType" : "ServiceRequest",
      "id" : "reqproc-591403905",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"ServiceRequest_reqproc-591403905\"> </a><table class=\".border-bottom\"><tbody><tr><td><b>id</b></td><td>ServiceRequest/reqproc-591403905</td></tr><tr><td><b>meta</b></td><td><div><table class=\".border-bottom\"><tbody><tr><td><b>tag</b></td><td>Requested Procedure</td></tr></tbody></table></div></td></tr><tr><td><b>identifier</b></td><td><span><b>Accession Number: </b>8529258169397744 [http://example.org/fhir/ris-ids]</span></td></tr><tr><td><b>status</b></td><td>completed</td></tr><tr><td><b>intent</b></td><td>order</td></tr><tr><td><b>category</b></td><td>Imaging</td></tr><tr><td><b>subject</b></td><td><span>John DOE<span> </span></span></td></tr></tbody></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://dicom.nema.org/resources/ontology/DCM",
            "code" : "121022",
            "display" : "Accession Number"
          },
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "ACSN",
            "display" : "Accession Id"
          }]
        },
        "system" : "http://example.org/fhir/ris-ids",
        "value" : "8529258169397744"
      }],
      "status" : "completed",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "363679005",
          "display" : "Imaging"
        }]
      }],
      "subject" : {
        "reference" : "urn:Patient/pat-mrn--1097192655",
        "type" : "Patient",
        "display" : "John DOE"
      }
    }
  }]
}

```
