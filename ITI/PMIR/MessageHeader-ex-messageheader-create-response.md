# PMIR example MessageHeader for create - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR example MessageHeader for create**

## Example MessageHeader: PMIR example MessageHeader for create

Profile: [IHE Patient Master Identity Registry MessageHeader Response](StructureDefinition-IHE.PMIR.MessageHeader.Response.md)

**event**: urn:ihe:iti:pmir:2019:patient-feed-response

### Sources

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [http://example.com/patientEndpoint](http://example.com/patientEndpoint) |

### Responses

| | | |
| :--- | :--- | :--- |
| - | **Identifier** | **Code** |
| * | ex-messageheader-create | OK |



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "ex-messageheader-create-response",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader.Response"
    ]
  },
  "eventUri" : "urn:ihe:iti:pmir:2019:patient-feed-response",
  "source" : {
    "endpoint" : "http://example.com/patientEndpoint"
  },
  "response" : {
    "identifier" : "ex-messageheader-create",
    "code" : "ok"
  }
}

```
