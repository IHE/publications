# PIXm Query with source identifier - Patient Identifier Cross-referencing for mobile (PIXm) v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PIXm Query with source identifier**

## Example Parameters: PIXm Query with source identifier

Query with source patient identifier of Mohr Alice in RED Domain:

```
GET [base]/Patient/$ihe-pix?sourceIdentifier=urn:oid:1.3.6.1.4.1.21367.13.20.1000|IHERED-994

```

Profile: [IHE PIXm Query Parameters In](StructureDefinition-IHE.PIXm.Query.Parameters.In.md)

## Parameters



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "pixm-request-mohralice-red-all",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PIXm/StructureDefinition/IHE.PIXm.Query.Parameters.In"
    ]
  },
  "parameter" : [
    {
      "name" : "sourceIdentifier",
      "valueString" : "urn:oid:1.3.6.1.4.1.21367.13.20.1000|IHERED-994"
    }
  ]
}

```
