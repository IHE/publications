# Medication Overview Responder - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Overview Responder**

## CapabilityStatement: Medication Overview Responder 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MEOW/CapabilityStatement/MedicationOverviewResponder | *Version*:1.0.0-preview |
| Active as of 2025-01-01 | *Computable Name*:MedicationOverviewResponder |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
CapabilityStatement for the Medication Overview Responder actor in the IHE PHARM MEOW profile. 
The Responder is a server that stores and/or assembles medication overview data for patients and serves it in response to Consumer requests. It supports PHARM-11 (Query Medication Resources) as a required capability, and optionally PHARM-12 (Retrieve Medication Document) when the Document Option is declared. 
How the Responder obtains its data (continuous store, on-demand aggregation, document assembly) is an implementation concern outside the scope of this profile. 

 [Raw OpenAPI-Swagger Definition file](MedicationOverviewResponder.openapi.json) | [Download](MedicationOverviewResponder.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "MedicationOverviewResponder",
  "url" : "https://profiles.ihe.net/PHARM/MEOW/CapabilityStatement/MedicationOverviewResponder",
  "version" : "1.0.0-preview",
  "name" : "MedicationOverviewResponder",
  "title" : "Medication Overview Responder",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-01-01",
  "publisher" : "Integrating the Healthcare Enterprise (IHE)",
  "contact" : [{
    "name" : "Integrating the Healthcare Enterprise (IHE)",
    "telecom" : [{
      "system" : "url",
      "value" : "http://ihe.net"
    },
    {
      "system" : "email",
      "value" : "secretary@ihe.net"
    }]
  },
  {
    "name" : "Jose Costa Teixeira",
    "telecom" : [{
      "system" : "email",
      "value" : "jose.a.teixeira@gmail.com",
      "use" : "work"
    }]
  }],
  "description" : "CapabilityStatement for the Medication Overview Responder actor in the IHE PHARM MEOW profile.\n\nThe Responder is a server that stores and/or assembles medication overview data for patients\nand serves it in response to Consumer requests. It supports PHARM-11 (Query Medication\nResources) as a required capability, and optionally PHARM-12 (Retrieve Medication Document)\nwhen the Document Option is declared.\n\nHow the Responder obtains its data (continuous store, on-demand aggregation, document\nassembly) is an implementation concern outside the scope of this profile.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "copyright" : "IHE http://www.ihe.net/Governance/#Intellectual_Property",
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+json", "application/fhir+xml"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "The Responder responds to PHARM-11 search queries with searchset Bundles containing\nMedicationTreatmentLine resources. With the Document Option, it also responds to\nPHARM-12 requests with MedicationOverviewBundle documents.",
    "resource" : [{
      "type" : "MedicationStatement",
      "supportedProfile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatmentLine"],
      "documentation" : "The Repository SHALL support search on MedicationStatement using the defined\nsearch parameters. The patient parameter is required on all searches.",
      "interaction" : [{
        "code" : "search-type"
      },
      {
        "code" : "read"
      }],
      "searchInclude" : ["MedicationStatement:medication",
      "MedicationStatement:derivedFrom",
      "MedicationStatement:partOf"],
      "searchRevInclude" : ["MedicationDispense:prescription",
      "MedicationAdministration:request"],
      "searchParam" : [{
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Required. Patient whose treatment lines are requested."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Filter by treatment line status."
      },
      {
        "name" : "effective",
        "type" : "date",
        "documentation" : "Filter by effective period."
      },
      {
        "name" : "category",
        "type" : "token",
        "documentation" : "Filter by list category / type."
      },
      {
        "name" : "_lastUpdated",
        "type" : "date",
        "documentation" : "Filter by last update time (incremental sync support)."
      }]
    },
    {
      "type" : "CarePlan",
      "supportedProfile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatment"],
      "documentation" : "Returned as an _include of MedicationStatement:partOf when MedicationTreatment grouping is present.",
      "interaction" : [{
        "code" : "read"
      }]
    },
    {
      "type" : "MedicationRequest",
      "documentation" : "Optionally returned as _include of MedicationStatement:derivedFrom (prescriptions).",
      "interaction" : [{
        "code" : "read"
      }]
    },
    {
      "type" : "MedicationDispense",
      "documentation" : "Optionally returned as _revinclude of MedicationDispense:prescription.",
      "interaction" : [{
        "code" : "read"
      }]
    },
    {
      "type" : "MedicationAdministration",
      "documentation" : "Optionally returned as _revinclude of MedicationAdministration:request.",
      "interaction" : [{
        "code" : "read"
      }]
    },
    {
      "type" : "Medication",
      "supportedProfile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/IHEMedication"],
      "documentation" : "Optionally returned as _include of MedicationStatement:medication.",
      "interaction" : [{
        "code" : "read"
      }]
    },
    {
      "type" : "Bundle",
      "supportedProfile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationOverview"],
      "documentation" : "Document Option (PHARM-12). The Repository stores and serves MedicationOverviewBundle\ndocuments. Supports retrieval by logical id and by patient/type/date search.",
      "interaction" : [{
        "code" : "read"
      },
      {
        "code" : "search-type"
      }],
      "searchParam" : [{
        "name" : "type",
        "type" : "token",
        "documentation" : "Filter by document type / medication list category."
      },
      {
        "name" : "patient",
        "type" : "reference",
        "documentation" : "Required for patient-scoped document search."
      },
      {
        "name" : "date",
        "type" : "date",
        "documentation" : "Filter by document creation date."
      }]
    }]
  }]
}

```
