# PMIR Example Subscription Request - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR Example Subscription Request**

## Example Subscription: PMIR Example Subscription Request

Profile: [IHE Patient Master Identity Registry Subscription request](StructureDefinition-IHE.PMIR.Subscription.Request.md)

**status**: Requested

**contact**: [+1-555-555-1212](tel:+1-555-555-1212)

**reason**: To receive Patient changes.

**criteria**: Patient

### Channels

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Type** | **Endpoint** | **Payload** |
| * | Message | [http://example.org/pmir-message](http://example.org/pmir-message) | application/fhir+json |



## Resource Content

```json
{
  "resourceType" : "Subscription",
  "id" : "ex-subscription-request",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Subscription.Request"
    ]
  },
  "status" : "requested",
  "contact" : [
    {
      "system" : "phone",
      "value" : "+1-555-555-1212"
    }
  ],
  "reason" : "To receive Patient changes.",
  "criteria" : "Patient",
  "channel" : {
    "type" : "message",
    "endpoint" : "http://example.org/pmir-message",
    "payload" : "application/fhir+json"
  }
}

```
