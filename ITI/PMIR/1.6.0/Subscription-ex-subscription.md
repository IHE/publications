# PMIR Example Subscription - Patient Master Identity Registry (PMIR) v1.6.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PMIR Example Subscription**

## Example Subscription: PMIR Example Subscription

Profile: [IHE Patient Master Identity Registry Subscription](StructureDefinition-IHE.PMIR.Subscription.md)

**status**: Active

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
  "id" : "ex-subscription",
  "meta" : {
    "profile" : [
      "https://profiles.ihe.net/ITI/PMIR/StructureDefinition/IHE.PMIR.Subscription"
    ]
  },
  "status" : "active",
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
