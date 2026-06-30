# Medication Overview Consumer - IHE Pharmacy Medication Overview v1.0.0-preview

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medication Overview Consumer**

## CapabilityStatement: Medication Overview Consumer 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/PHARM/MEOW/CapabilityStatement/MedicationOverviewConsumer | *Version*:1.0.0-preview |
| Active as of 2025-01-01 | *Computable Name*:MedicationOverviewConsumer |
| **Copyright/Legal**: IHE http://www.ihe.net/Governance/#Intellectual_Property | |

 
CapabilityStatement for the Medication Overview Consumer actor in the IHE PHARM MEOW profile. 
The Consumer is a client that queries a Medication Overview Repository or Creator to retrieve a patient's medication overview. It supports PHARM-11 (Query Medication Resources) as a required capability, and optionally PHARM-12 (Retrieve Medication Document) when the Document Option is declared. 

 [Raw OpenAPI-Swagger Definition file](MedicationOverviewConsumer.openapi.json) | [Download](MedicationOverviewConsumer.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "MedicationOverviewConsumer",
  "url" : "https://profiles.ihe.net/PHARM/MEOW/CapabilityStatement/MedicationOverviewConsumer",
  "version" : "1.0.0-preview",
  "name" : "MedicationOverviewConsumer",
  "title" : "Medication Overview Consumer",
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
  "description" : "CapabilityStatement for the Medication Overview Consumer actor in the IHE PHARM MEOW profile.\n\nThe Consumer is a client that queries a Medication Overview Repository or Creator to retrieve\na patient's medication overview. It supports PHARM-11 (Query Medication Resources) as a\nrequired capability, and optionally PHARM-12 (Retrieve Medication Document) when the\nDocument Option is declared.",
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
    "mode" : "client",
    "documentation" : "The Consumer initiates PHARM-11 queries to retrieve MedicationTreatmentLine resources\nand optionally related resources for a given patient.\nThe Consumer optionally initiates PHARM-12 requests to retrieve MedicationOverviewBundle\ndocuments (Document Option).",
    "resource" : [{
      "type" : "MedicationStatement",
      "supportedProfile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationTreatmentLine"],
      "documentation" : "The Consumer searches for MedicationTreatmentLine resources (PHARM-11).",
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
        "documentation" : "Required. The patient whose medication overview is requested."
      },
      {
        "name" : "status",
        "type" : "token",
        "documentation" : "Filter by treatment line status (e.g. active, completed, stopped)."
      },
      {
        "name" : "effective",
        "type" : "date",
        "documentation" : "Filter by effective period of the treatment line."
      },
      {
        "name" : "category",
        "type" : "token",
        "documentation" : "Filter by medication list category / list type."
      },
      {
        "name" : "_lastUpdated",
        "type" : "date",
        "documentation" : "Filter resources updated since a given instant (incremental sync)."
      }]
    },
    {
      "type" : "Bundle",
      "supportedProfile" : ["https://profiles.ihe.net/PHARM/MEOW/StructureDefinition/MedicationOverview"],
      "documentation" : "Document Option (PHARM-12). The Consumer retrieves MedicationOverviewBundle documents\nby logical id or by searching with patient, type, and date parameters.",
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
