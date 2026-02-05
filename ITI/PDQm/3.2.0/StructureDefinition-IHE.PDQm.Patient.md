# PDQm Patient Profile - Patient Demographics Query for Mobile (PDQm) v3.2.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PDQm Patient Profile**

## Resource Profile: PDQm Patient Profile 

| | |
| :--- | :--- |
| *Official URL*:https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient | *Version*:3.2.0 |
| Active as of 2025-11-04 | *Computable Name*:PDQmPatient |

 

#### Overview

 
The PDQm Patient Profile establiashes the following base requirements: 
* when any element in FHIR Core Patient are known, and when authorized to return the element, then all elements that are core to FHIR Patient SHOULD be returned
* forbids modifier extensions and implicit rules - so that all uses do not need to be concerned with changes to the meaning of the core elements of the Patient resource
* adds the `patient-mothersMaidenName` extension as an extension available to hold the mother's maiden name
 

#### Use of Business Identifiers

 
To facilitate working with and matching resources across specifications and servers,`Patient.identifier`is REQUIRED. Including business identifiers in`Patient.identifier`is important for allowing the Patient resource to maintain identity outside of the context of the FHIR server on which it resides. This would be the case when the resource is copied to another server, saved to a file, migrated to a new FHIR server, etc. 
`Patient.identifier`is typically populated with an identifier assigned by an assigning authority in the local patient identifier domain. Populating with identifiers issued by jurisdictional authorities, such as the patient's national identifier, drivers license number, jurisdictional healthcare identifier, etc., is also typical when policy allows for those identifiers to be disclosed to the client system. 
When no existing business identifier exists, the Patient Demographics Supplier might construct one in one of the following ways: 
**Option 1**: Populate`Patient.identifier.value`with the full URL for the Patient resource as it would be accessed by the client when doing a READ request. In this case, the corresponding value for`Patient.identifier.system`SHALL be`urn:ietf:rfc:3986`. 
**Option 2**: Populate`Patient.identifier.value`with a[Universally Unique Identifier](https://en.wikipedia.org/wiki/Universally_unique_identifier), including the`urn:uuid:`prefix. In this case, the corresponding value for`Patient.identifier.system`SHALL be`urn:ietf:rfc:3986`. The UUID SHOULD be persisted within the FHIR resource so that subsequent accesses return the same identifier, but it is not REQUIRED in environments where doing so is not possible. 

#### Handling of Patient.link

 
When multiple Patient Resources are used to represent the same Patient, Patient.link SHALL be used to describe the relationship between the resources. 
When returning Patient Resources, the Patient Demographics SHALL ensure that: 
* No more that one Patient Resource referencing a Patient Identity contains `active=true`
* When returning multiple Patient Resources for the same Patient, `Patient.link` SHALL be used to describe the relationship between each Patient Resource
* When one Patient Resource has become subsumed by another, the subsumed Patient SHALL use `Patient.link` to point at the surviving Patinet Resource and `Patient.link.type` SHALL be `replaced-by`.
 
Patient Demographics Consumers SHOULD be able to traverse Patient.link and use Patient.active to determine if a given Patient is currently active in the system. 

**Usages:**

* Use this Profile: [PDQm Match Output Bundle Profile](StructureDefinition-IHE.PDQm.MatchParametersOut.md) and [PDQm Query Patient Resource Response message](StructureDefinition-IHE.PDQm.QueryPatientResourceResponseMessage.md)
* Examples for this Profile: [Patient/ex-patient-mothers-maiden-name](Patient-ex-patient-mothers-maiden-name.md) and [Patient/ex-patient](Patient-ex-patient.md)
* CapabilityStatements using this Profile: [IHE PDQm Patient Demographics Consumer Implementing Match Operation Option](CapabilityStatement-IHE.PDQm.PatientDemographicsConsumerMatch.md), [IHE PDQm Patient Demographics Supplier](CapabilityStatement-IHE.PDQm.PatientDemographicsSupplier.md) and [IHE PDQm Patient Demographics Supplier Implementing Match Operation Option](CapabilityStatement-IHE.PDQm.PatientDemographicsSupplierMatch.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/ihe.iti.pdqm|current/StructureDefinition/IHE.PDQm.Patient)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-IHE.PDQm.Patient.csv), [Excel](StructureDefinition-IHE.PDQm.Patient.xlsx), [Schematron](StructureDefinition-IHE.PDQm.Patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "IHE.PDQm.Patient",
  "url" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient",
  "version" : "3.2.0",
  "name" : "PDQmPatient",
  "title" : "PDQm Patient Profile",
  "status" : "active",
  "date" : "2025-11-04T12:07:10-06:00",
  "publisher" : "IHE IT Infrastructure Technical Committee",
  "contact" : [
    {
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://www.ihe.net/ihe_domains/it_infrastructure/"
        }
      ]
    },
    {
      "telecom" : [
        {
          "system" : "email",
          "value" : "iti@ihe.net"
        }
      ]
    },
    {
      "name" : "IHE IT Infrastructure Technical Committee",
      "telecom" : [
        {
          "system" : "email",
          "value" : "iti@ihe.net"
        }
      ]
    }
  ],
  "description" : "#### Overview\n\nThe PDQm Patient Profile establiashes the following base requirements:\n- when any element in FHIR Core Patient are known, and when authorized to return the element, then all elements that are core to FHIR Patient SHOULD be returned\n- forbids modifier extensions and implicit rules - so that all uses do not need to be concerned with changes to the meaning of the core elements of the Patient resource\n- adds the `patient-mothersMaidenName` extension as an extension available to hold the mother's maiden name\n\n#### Use of Business Identifiers\n\nTo facilitate working with and matching resources across specifications and servers, `Patient.identifier` is REQUIRED. Including business identifiers in `Patient.identifier` is important for\nallowing the Patient resource to maintain identity outside of the context of the FHIR server on which it resides. \nThis would be the case when the resource is copied to another server, saved to a file, migrated to a new FHIR server, etc.\n\n`Patient.identifier` is typically populated with an identifier assigned by an assigning authority in the \nlocal patient identifier domain. Populating with identifiers issued by jurisdictional authorities, such as\nthe patient's national identifier, drivers license number, jurisdictional healthcare identifier, etc., is also \ntypical when policy allows for those identifiers to be disclosed to the client system. \n\nWhen no existing business identifier exists, the Patient Demographics Supplier might construct one in one of the \nfollowing ways:\n\n**Option 1**:  Populate `Patient.identifier.value` with the full URL for the Patient resource as it would be accessed by\nthe client when doing a READ request. In this case, the corresponding value for `Patient.identifier.system`\nSHALL be `urn:ietf:rfc:3986`.\n\n**Option 2**:  Populate `Patient.identifier.value` with a [Universally Unique Identifier](https://en.wikipedia.org/wiki/Universally_unique_identifier),\nincluding the `urn:uuid:` prefix. In this case, the corresponding value for `Patient.identifier.system` \nSHALL be `urn:ietf:rfc:3986`. The UUID SHOULD be persisted within the FHIR resource so that subsequent accesses \nreturn the same identifier, but it is not REQUIRED in environments where doing so is not possible. \n\n#### Handling of Patient.link\nWhen multiple Patient Resources are used to represent the same Patient, Patient.link SHALL be used to describe\nthe relationship between the resources. \n\nWhen returning Patient Resources, the Patient Demographics SHALL ensure that:\n* No more that one Patient Resource referencing a Patient Identity contains `active=true`\n* When returning multiple Patient Resources for the same Patient, `Patient.link` SHALL be used to describe the relationship between each Patient Resource\n* When one Patient Resource has become subsumed by another, the subsumed Patient SHALL use `Patient.link` to point at the surviving Patinet Resource and `Patient.link.type` SHALL be `replaced-by`.\n\nPatient Demographics Consumers SHOULD be able to traverse Patient.link and use Patient.active to determine if a given Patient is currently active in the system.",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "http://unstats.un.org/unsd/methods/m49/m49.htm",
          "code" : "001"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient",
        "constraint" : [
          {
            "key" : "iti-pdqm-linkstatus",
            "severity" : "error",
            "human" : "If Patient.link is present, then Patient.active SHALL be present",
            "expression" : "link.exists() implies active.exists()",
            "xpath" : "not(f:link) or f:active",
            "source" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient"
          }
        ]
      },
      {
        "id" : "Patient.implicitRules",
        "path" : "Patient.implicitRules",
        "max" : "0"
      },
      {
        "id" : "Patient.extension",
        "path" : "Patient.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Patient.extension:MothersMaidenName",
        "path" : "Patient.extension",
        "sliceName" : "MothersMaidenName",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/patient-mothersMaidenName|5.2.0"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:genderIdentity",
        "path" : "Patient.extension",
        "sliceName" : "genderIdentity",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/individual-genderIdentity"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:pronouns",
        "path" : "Patient.extension",
        "sliceName" : "pronouns",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/individual-pronouns"
            ]
          }
        ]
      },
      {
        "id" : "Patient.extension:recordedSexOrGender",
        "path" : "Patient.extension",
        "sliceName" : "recordedSexOrGender",
        "min" : 0,
        "max" : "*",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/individual-recordedSexOrGender"
            ]
          }
        ]
      },
      {
        "id" : "Patient.modifierExtension",
        "path" : "Patient.modifierExtension",
        "max" : "0"
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "min" : 1
      },
      {
        "id" : "Patient.identifier.system",
        "path" : "Patient.identifier.system",
        "short" : "Assigning Authority ID or other identifiation namespace",
        "definition" : "Establishes the namespace for the value - that is, a URL that describes a set values that are unique. If the identifier is issued by an Assigning Authority, then the system SHALL be set to the Assigning Authority ID in the format \"urn:oid:[AAID]\". If the identifier value is a URI then system SHALL be set to \"urn:ietf:rfc:3986\".",
        "min" : 1
      },
      {
        "id" : "Patient.identifier.value",
        "path" : "Patient.identifier.value",
        "min" : 1
      },
      {
        "id" : "Patient.active",
        "path" : "Patient.active",
        "condition" : ["iti-pdqm-linkstatus"],
        "mustSupport" : true
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "constraint" : [
          {
            "key" : "iti-pdqm-patname",
            "severity" : "error",
            "human" : "Either Patient.name.given and/or Patient.name.family and/or Patient.name.text SHALL be present or a Data Absent Reason Extension SHALL be present.",
            "expression" : "(family.exists() or given.exists() or text.exists()) xor extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()",
            "source" : "https://profiles.ihe.net/ITI/PDQm/StructureDefinition/IHE.PDQm.Patient"
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Patient.telecom",
        "path" : "Patient.telecom",
        "mustSupport" : true
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "mustSupport" : true
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "mustSupport" : true
      },
      {
        "id" : "Patient.link",
        "path" : "Patient.link",
        "condition" : ["iti-pdqm-linkstatus"],
        "mustSupport" : true
      },
      {
        "id" : "Patient.link.type",
        "path" : "Patient.link.type",
        "definition" : "The type of link between this patient resource and another patient resource. When this Patient Resource has been subsumed by another, the type SHALL be replaced-by."
      }
    ]
  }
}

```
