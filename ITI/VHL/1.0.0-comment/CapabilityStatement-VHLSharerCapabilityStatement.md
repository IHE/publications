# VHL Sharer Server Capability Statement - Verifiable Health Links v1.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VHL Sharer Server Capability Statement**

## CapabilityStatement: VHL Sharer Server Capability Statement 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/VHL/CapabilityStatement/VHLSharerCapabilityStatement | *Version*:1.0.0-comment |
| Active as of 2024-12-31 | *Computable Name*:VHLSharerCapabilityStatement |

 
Capability Statement for a VHL Sharer implementing the Retrieve Manifest [ITI-YY5] transaction as a server. This server supports FHIR search on List resources with _include parameter to retrieve document manifests authorized by Verified Health Links. 

 [Raw OpenAPI-Swagger Definition file](VHLSharerCapabilityStatement.openapi.json) | [Download](VHLSharerCapabilityStatement.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "VHLSharerCapabilityStatement",
  "url" : "https://profiles.ihe.net/ITI/VHL/CapabilityStatement/VHLSharerCapabilityStatement",
  "version" : "1.0.0-comment",
  "name" : "VHLSharerCapabilityStatement",
  "title" : "VHL Sharer Server Capability Statement",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-12-31",
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
  "description" : "Capability Statement for a VHL Sharer implementing the Retrieve Manifest [ITI-YY5] transaction as a server. This server supports FHIR search on List resources with _include parameter to retrieve document manifests authorized by Verified Health Links.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
      "code" : "001"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+json", "application/fhir+xml"],
  "rest" : [{
    "mode" : "server",
    "documentation" : "VHL Sharer provides access to document manifests (List resources) and references (DocumentReference resources) authorized by Verified Health Links (VHLs). Authorization is based on validated VHL tokens containing manifest URLs with folder IDs.",
    "security" : {
      "description" : "Implementations SHALL support ATNA Authenticate Node [ITI-19] for mutual TLS authentication. VHL-based authorization is required (folder ID in _id parameter), optionally supplemented by OAuth 2.0 or other token-based authentication."
    },
    "resource" : [{
      "type" : "List",
      "profile" : "http://hl7.org/fhir/StructureDefinition/List",
      "documentation" : "The List resource represents a folder or collection of documents authorized by a VHL. The List.id (folder ID) has 256-bit entropy and serves as the authorization token. List.entry.item contains references to DocumentReference resources.",
      "interaction" : [{
        "code" : "search-type",
        "documentation" : "Search for List resources by folder ID, identifier, patient, code, or status. Used to retrieve document manifests authorized by VHLs. This transaction uses HTTP POST to the _search endpoint to securely transmit authorization parameters."
      }],
      "searchInclude" : ["List:item"],
      "searchParam" : [{
        "name" : "_id",
        "definition" : "http://hl7.org/fhir/SearchParameter/Resource-id",
        "type" : "token",
        "documentation" : "Folder ID with 256-bit entropy from the VHL. This is the primary authorization mechanism. SHALL be supported."
      },
      {
        "name" : "identifier",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-identifier",
        "type" : "token",
        "documentation" : "Business identifier for the List/folder. SHOULD be supported."
      },
      {
        "name" : "patient",
        "definition" : "http://hl7.org/fhir/SearchParameter/clinical-patient",
        "type" : "reference",
        "documentation" : "The patient whose documents are referenced in the List. SHOULD be supported. The VHL Sharer SHALL accept chained searches on patient.identifier (e.g., patient.identifier=system|value) for List searches."
      },
      {
        "name" : "code",
        "type" : "token",
        "documentation" : "The type of List, typically 'folder' from MHD CodeSystem. SHOULD be supported."
      },
      {
        "name" : "status",
        "definition" : "http://hl7.org/fhir/SearchParameter/List-status",
        "type" : "token",
        "documentation" : "The status of the List (current, retired, etc.). SHOULD be supported."
      }]
    },
    {
      "type" : "DocumentReference",
      "profile" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
      "documentation" : "DocumentReference resources are included in search results via the _include parameter. They are not directly searchable in this transaction but are returned as part of the List search response.",
      "interaction" : [{
        "code" : "read",
        "documentation" : "Read DocumentReference by ID. May be used after Retrieve Manifest to get updated metadata."
      }]
    }]
  }]
}

```
