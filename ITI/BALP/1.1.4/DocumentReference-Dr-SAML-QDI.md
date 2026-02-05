# SAML example from CareQuality - Basic Audit Log Patterns (BALP) v1.1.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SAML example from CareQuality**

## Example DocumentReference: SAML example from CareQuality

**status**: Current

> **content**
> **attachment**
> **id**ig-loader-QDI-SAML-20211210.txt
**contentType**: application/xml

### Contexts

| | |
| :--- | :--- |
| - | **Related** |
| * | [AuditEvent: type = Application Activity (DICOM#110100); subtype = Boredom poke (unknown#poke); action = R; recorded = 2021-12-03 09:49:00+0000; outcome = 0](AuditEvent-ex-auditPoke-SAML-QDI-Min.md) |



## Resource Content

```json
{
  "resourceType" : "DocumentReference",
  "id" : "Dr-SAML-QDI",
  "status" : "current",
  "content" : [
    {
      "attachment" : {
        "id" : "ig-loader-QDI-SAML-20211210.txt",
        "contentType" : "application/xml"
      }
    }
  ],
  "context" : {
    "related" : [
      {
        "reference" : "AuditEvent/ex-auditPoke-SAML-QDI-Min"
      }
    ]
  }
}

```
