# FormatCode ValueSet - IHE FormatCode Vocabulary v1.5.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FormatCode ValueSet**

## ValueSet: FormatCode ValueSet 

| | |
| :--- | :--- |
| *Official URL*:http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode | *Version*:1.5.0 |
| Active as of 2022-08-15 | *Computable Name*:IHE_FormatCode_vs |
| *Other Identifiers:*OID:1.3.6.1.4.1.19376.1.2.7.1 | |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
The IHE FormatCode Value set is defined to be the set of FormatCode(s) defined by IHE, DICOM and HL7. These codes are intended to be preferred. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "formatcode",
  "url" : "http://ihe.net/fhir/ihe.formatcode.fhir/ValueSet/formatcode",
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.3.6.1.4.1.19376.1.2.7.1"
  }],
  "version" : "1.5.0",
  "name" : "IHE_FormatCode_vs",
  "title" : "IHE ValueSet of Format Codes for use with Document Sharing",
  "status" : "active",
  "experimental" : false,
  "date" : "2022-08-15",
  "publisher" : "Integrating the Healthcare Enterprise (IHE)",
  "contact" : [{
    "name" : "IHE",
    "telecom" : [{
      "system" : "url",
      "value" : "http://ihe.net"
    }]
  },
  {
    "name" : "IHE Secretary",
    "telecom" : [{
      "system" : "email",
      "value" : "secretary@ihe.net"
    }]
  }],
  "description" : "The IHE FormatCode Value set is defined to be the set of FormatCode(s) defined by IHE, DICOM and HL7. These codes are intended to be preferred.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "immutable" : false,
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "compose" : {
    "inactive" : false,
    "include" : [{
      "system" : "http://ihe.net/fhir/ihe.formatcode.fhir/CodeSystem/formatcode"
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/v3-HL7DocumentFormatCodes"
    },
    {
      "system" : "http://dicom.nema.org/resources/ontology/DCMUID",
      "concept" : [{
        "code" : "1.2.840.10008.5.1.4.1.1.88.59",
        "display" : "Key Object Selection Document"
      }]
    },
    {
      "system" : "urn:ietf:rfc:3986",
      "concept" : [{
        "code" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips",
        "display" : "IPS (International Patient Summary)"
      }]
    }]
  }
}

```
