# ex-Practitioner-IPS-SimoneHeps - De-Identification Handbook v2.0.0-comment

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ex-Practitioner-IPS-SimoneHeps**

## Example Practitioner: ex-Practitioner-IPS-SimoneHeps

Profile: [Practitioner (IPS)](http://hl7.org/fhir/uv/ips/STU2/StructureDefinition-Practitioner-uv-ips.html)

**identifier**: `urn:oid:2.16.528.1.1007.3.1`/874635264 (use: official, ), `urn:oid:2.16.840.1.113883.2.4.6.3`/567IUI51C154 (use: usual, )

**name**: Heps Simone MD(Official)

**address**: Galapagosweg 91 Den Burg 9105 PZ NLD (work)

**gender**: Female

**birthDate**: 1971-11-07



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ex-Practitioner-IPS-SimoneHeps",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"]
  },
  "identifier" : [{
    "use" : "official",
    "system" : "urn:oid:2.16.528.1.1007.3.1",
    "value" : "874635264"
  },
  {
    "use" : "usual",
    "system" : "urn:oid:2.16.840.1.113883.2.4.6.3",
    "value" : "567IUI51C154"
  }],
  "name" : [{
    "use" : "official",
    "text" : "Heps Simone MD",
    "family" : "Heps",
    "given" : ["Simone"],
    "suffix" : ["MD"]
  }],
  "address" : [{
    "use" : "work",
    "line" : ["Galapagosweg 91"],
    "city" : "Den Burg",
    "postalCode" : "9105 PZ",
    "country" : "NLD"
  }],
  "gender" : "female",
  "birthDate" : "1971-11-07"
}

```
