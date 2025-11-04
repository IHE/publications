# PMIR example MessageHeader for delete - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR example MessageHeader for delete**

## Example MessageHeader: PMIR example MessageHeader for delete

Profile: [IHE Patient Master Identity Registry MessageHeader](StructureDefinition-IHE.PMIR.MessageHeader.md)

**event**: urn:ihe:iti:pmir:2019:patient-feed

### Destinations

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [http://example.com/patientEndpoint](http://example.com/patientEndpoint) |

### Sources

| | |
| :--- | :--- |
| - | **Endpoint** |
| * | [http://example.com/patientSource](http://example.com/patientSource) |

**focus**: [Bundle: type = history](Bundle-ex-bundle-history-delete.md)



## Resource Content

```json
{
  "resourceType" : "MessageHeader",
  "id" : "ex-messageheader-delete",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.MessageHeader"
    ]
  },
  "eventUri" : "urn:ihe:iti:pmir:2019:patient-feed",
  "destination" : [
    {
      "endpoint" : "http://example.com/patientEndpoint"
    }
  ],
  "source" : {
    "endpoint" : "http://example.com/patientSource"
  },
  "focus" : [
    {
      "reference" : "Bundle/ex-bundle-history-delete"
    }
  ]
}

```
