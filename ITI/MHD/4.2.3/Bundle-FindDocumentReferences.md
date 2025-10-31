# Example of a FindDocumentReferences Response Bundle - Mobile access to Health Documents (MHD) v4.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example of a FindDocumentReferences Response Bundle**

## Example Bundle: Example of a FindDocumentReferences Response Bundle

Last updated: 2020-10-14 07:56:23+0000

Profile: [MHD Find Document References Comprehensive Response message](StructureDefinition-IHE.MHD.FindDocumentReferencesComprehensiveResponseMessage.md)

Bundle FindDocumentReferences of type searchset

-------

Entry 1 - fullUrl = urn:uuid:50383ae5-49e5-4dea-b0e6-660cb9e7b91f

Resource DocumentReference:

> 

Profile: [MHD DocumentReference Comprehensive](StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.md)

**identifier**:[Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.3.0/NamingSystem-uri.html)/urn:oid:1.3.6.1.4.1.12559.11.13.2.1.2951 (use: usual, ),[Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.3.0/NamingSystem-uri.html)/urn:uuid:50383ae5-49e5-4dea-b0e6-660cb9e7b91f (use: official, )**status**: Current**type**:Medication summary document (record artifact)**category**:Summary clinical document (record artifact)**subject**:[http://example.org/Patient/FranzMusterNeedsAbsoluteUrl](http://example.org/Patient/FranzMusterNeedsAbsoluteUrl)**date**: 2020-06-29 11:58:00+0000**description**:

2-7-MedicationCard

**securityLabel**:normal
> **content**

### Attachments

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| - | **ContentType** | **Language** | **Url** | **Creation** |
| * | text/xml | de-CH | [http://example.com/xdsretrieve?uniqueId=urn:uuid:413eb0f7-aa72-4405-86a4-7793a23fcc27&repositoryUniqueId=2.999.756.42.1](http://example.com/xdsretrieve?uniqueId=urn:uuid:413eb0f7-aa72-4405-86a4-7793a23fcc27&repositoryUniqueId=2.999.756.42.1) | 2020-06-29 11:58:00+0000 |


-------

> Anonymous Patient (no stated gender), DoB Unknown ( Medical record number (use: usual, ))
-------




## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "FindDocumentReferences",
  "meta" : {
    "lastUpdated" : "2020-10-14T07:56:23.916+00:00",
    "profile" : [
      "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.FindDocumentReferencesComprehensiveResponseMessage"
    ]
  },
  "type" : "searchset",
  "total" : 1,
  "link" : [
    {
      "relation" : "self",
      "url" : "http://example.com/DocumentReference?patient.identifier=urn:oid:2.999|11111111&status=current"
    }
  ],
  "entry" : [
    {
      "fullUrl" : "urn:uuid:50383ae5-49e5-4dea-b0e6-660cb9e7b91f",
      "resource" : {
        "resourceType" : "DocumentReference",
        "id" : "50383ae5-49e5-4dea-b0e6-660cb9e7b91f",
        "meta" : {
          "profile" : [
            "https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Comprehensive.DocumentReference"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"DocumentReference_50383ae5-49e5-4dea-b0e6-660cb9e7b91f\"> </a><p class=\"res-header-id\"><b>Generated Narrative: DocumentReference 50383ae5-49e5-4dea-b0e6-660cb9e7b91f</b></p><a name=\"50383ae5-49e5-4dea-b0e6-660cb9e7b91f\"> </a><a name=\"hc50383ae5-49e5-4dea-b0e6-660cb9e7b91f\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-IHE.MHD.Comprehensive.DocumentReference.html\">MHD DocumentReference Comprehensive</a></p></div><p><b>masterIdentifier</b>: <a href=\"http://terminology.hl7.org/6.3.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:oid:1.3.6.1.4.1.12559.11.13.2.1.2951 (use: usual, )</p><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/6.3.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:uuid:50383ae5-49e5-4dea-b0e6-660cb9e7b91f (use: official, )</p><p><b>status</b>: Current</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 721912009}\">Medication summary document (record artifact)</span></p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 422735006}\">Summary clinical document (record artifact)</span></p><p><b>subject</b>: <a href=\"http://example.org/Patient/FranzMusterNeedsAbsoluteUrl\">http://example.org/Patient/FranzMusterNeedsAbsoluteUrl</a></p><p><b>date</b>: 2020-06-29 11:58:00+0000</p><p><b>description</b>: 2-7-MedicationCard</p><p><b>securityLabel</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-Confidentiality N}\">normal</span></p><blockquote><p><b>content</b></p><h3>Attachments</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ContentType</b></td><td><b>Language</b></td><td><b>Url</b></td><td><b>Creation</b></td></tr><tr><td style=\"display: none\">*</td><td>text/xml</td><td>German (Region=Switzerland)</td><td><a href=\"http://example.com/xdsretrieve?uniqueId=urn:uuid:413eb0f7-aa72-4405-86a4-7793a23fcc27&amp;repositoryUniqueId=2.999.756.42.1\">http://example.com/xdsretrieve?uniqueId=urn:uuid:413eb0f7-aa72-4405-86a4-7793a23fcc27&amp;repositoryUniqueId=2.999.756.42.1</a></td><td>2020-06-29 11:58:00+0000</td></tr></table><p><b>format</b>: <a href=\"https://profiles.ihe.net/fhir/ihe.formatcode.fhir/1.4.0/CodeSystem-formatcode.html#formatcode-urn.58ihe.58pharm.58pml.582013\">IHE Format Code set for use with Document Sharing: urn:ihe:pharm:pml:2013</a> (Pharmacy PML)</p></blockquote><h3>Contexts</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>FacilityType</b></td><td><b>PracticeSetting</b></td><td><b>SourcePatientInfo</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{http://snomed.info/sct 264358009}\">General practice premises (environment)</span></td><td><span title=\"Codes:{http://snomed.info/sct 394802001}\">General medicine (qualifier value)</span></td><td><a href=\"#hc50383ae5-49e5-4dea-b0e6-660cb9e7b91f/findP1\">Anonymous Patient (no stated gender), DoB Unknown ( Medical record number (use: usual, ))</a></td></tr></table><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Patient #findP1</b></p><a name=\"50383ae5-49e5-4dea-b0e6-660cb9e7b91f/findP1\"> </a><a name=\"hc50383ae5-49e5-4dea-b0e6-660cb9e7b91f/findP1\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Anonymous Patient (no stated gender), DoB Unknown ( Medical record number (use: usual, ))</p><hr/></blockquote></div>"
        },
        "contained" : [
          {
            "resourceType" : "Patient",
            "id" : "findP1",
            "identifier" : [
              {
                "use" : "usual",
                "type" : {
                  "coding" : [
                    {
                      "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                      "code" : "MR"
                    }
                  ]
                },
                "system" : "urn:oid:2.16.756.888888.3.1",
                "value" : "8734"
              }
            ]
          }
        ],
        "masterIdentifier" : {
          "use" : "usual",
          "system" : "urn:ietf:rfc:3986",
          "value" : "urn:oid:1.3.6.1.4.1.12559.11.13.2.1.2951"
        },
        "identifier" : [
          {
            "use" : "official",
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:uuid:50383ae5-49e5-4dea-b0e6-660cb9e7b91f"
          }
        ],
        "status" : "current",
        "type" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "721912009",
              "display" : "Medication summary document (record artifact)"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "422735006",
                "display" : "Summary clinical document (record artifact)"
              }
            ]
          }
        ],
        "subject" : {
          "reference" : "http://example.org/Patient/FranzMusterNeedsAbsoluteUrl"
        },
        "date" : "2020-06-29T11:58:00.000+00:00",
        "description" : "2-7-MedicationCard",
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
              "contentType" : "text/xml",
              "language" : "de-CH",
              "url" : "http://example.com/xdsretrieve?uniqueId=urn:uuid:413eb0f7-aa72-4405-86a4-7793a23fcc27&repositoryUniqueId=2.999.756.42.1",
              "creation" : "2020-06-29T11:58:00+00:00"
            },
            "format" : {
              "system" : "http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode",
              "code" : "urn:ihe:pharm:pml:2013"
            }
          }
        ],
        "context" : {
          "facilityType" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "264358009",
                "display" : "General practice premises (environment)"
              }
            ]
          },
          "practiceSetting" : {
            "coding" : [
              {
                "system" : "http://snomed.info/sct",
                "code" : "394802001",
                "display" : "General medicine (qualifier value)"
              }
            ]
          },
          "sourcePatientInfo" : {
            "reference" : "#findP1"
          }
        }
      }
    }
  ]
}

```
