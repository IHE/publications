# The homeCommunityId where the artifact resides - Mobile access to Health Documents (MHD) v4.2.5-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **The homeCommunityId where the artifact resides**

## Extension: The homeCommunityId where the artifact resides 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-HomeCommunityId | *Version*:4.2.5-comment |
| Active as of 2026-06-16 | *Computable Name*:HomeCommunityId |

The globally unique, immutable, identifier of the homeCommunityId entity where this artifact resides. The format of the value is an OID.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MHD common List with designationType](StructureDefinition-IHE.MHD.List.md) and [MHD DocumentReference Minimal](StructureDefinition-IHE.MHD.Minimal.DocumentReference.md)
* Examples for this Extension: [Bundle/ex-findDocumentReferencesResponse](Bundle-ex-findDocumentReferencesResponse.md)
* Search Parameters using this Extension: [TargetCommunityIdList](SearchParameter-IHE-TargetCommunityIdList.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/ihe.iti.mhd|current/StructureDefinition/StructureDefinition-ihe-HomeCommunityId.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-ihe-HomeCommunityId.csv), [Excel](StructureDefinition-ihe-HomeCommunityId.xlsx), [Schematron](StructureDefinition-ihe-HomeCommunityId.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "ihe-HomeCommunityId",
  "url" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-HomeCommunityId",
  "version" : "4.2.5-comment",
  "name" : "HomeCommunityId",
  "title" : "The homeCommunityId where the artifact resides",
  "status" : "active",
  "date" : "2026-06-16T19:25:56-05:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [{
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
    }]
  },
  {
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  },
  {
    "name" : "IHE IT Infrastructure Technical Committee",
    "telecom" : [{
      "system" : "email",
      "value" : "iti@ihe.net"
    }]
  }],
  "description" : "The globally unique, immutable, identifier of the homeCommunityId entity where this artifact resides. The format of the value is an OID.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001",
      "display" : "World"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "DocumentReference"
  },
  {
    "type" : "element",
    "expression" : "List"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "The homeCommunityId where the artifact resides",
      "definition" : "The globally unique, immutable, identifier of the homeCommunityId entity where this artifact resides. The format of the value is an OID."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-HomeCommunityId"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "oid"
      }]
    }]
  }
}

```
