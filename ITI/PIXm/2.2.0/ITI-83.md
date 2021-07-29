This section corresponds to transaction [ITI-83] of the IHE IT
Infrastructure Technical Framework.

### 2:3.83.1 Scope

This transaction is used by the Patient Identifier Cross-reference
Consumer to solicit information about patients whose Patient Identifiers
cross-match with a Patient Identifier it provides in the request message.
The request is received by the Patient Identifier
Cross-reference Manager. The Patient Identifier Cross-reference Manager
processes the request and returns a response that includes zero or more
Patient Identifiers for the matching patient.

### 2:3.83.2 Actor Roles

The roles in this transaction are defined in the following table and may
be played by the actors shown here:

**Table 2:3.83.2-1: Actor Roles**

| Actor | Role |
|-------------------+--------------------------|
| Patient Identifier Cross-reference Consumer   | Requests, from the Patient Identifier Cross-reference Manager, a list of patient identifiers matching the supplied Patient Identifier. |
| Patient Identifier Cross-reference Manager  | Returns Cross-referenced Patient Identifiers for the patient that cross-matches the Patient Identifier criteria provided by the Patient Identifier Cross-reference Consumer.  |
{: .grid}

### 2:3.83.3 Referenced Standards

**FHIR-R4** [HL7 FHIR Release 4.0](http://www.hl7.org/FHIR/R4)

### 2:3.83.4 Messages

<div>
{%include ITI-83-seq.svg%}
</div>
<div style="clear: left" />
**Figure 2:3.83.4-1: Interaction Diagram**

#### 2:3.83.4.1 Get Corresponding Identifiers message

This message is implemented as an HTTP GET operation from the Patient
Identifier Cross-reference Consumer to the Patient Identifier
Cross-reference Manager using the FHIR $ihe-pix operation described in
Section 2:3.83.4.1.2 Message Semantics.

##### 2:3.83.4.1.1 Trigger Events

A Patient Identifier Cross-reference Consumer needs to obtain, or
determine the existence of, alternate patient identifiers.

##### 2:3.83.4.1.2 Message Semantics

The Get Corresponding Identifiers message is a FHIR operation request as
defined in FHIR (<http://hl7.org/fhir/operations.html>) with the input
parameters shown in Table 2:3.83.4.1.2-1. Given that the parameters are
not complex types, the HTTP GET operation shall be used as defined in
FHIR (<http://hl7.org/fhir/operations.html#request>).

The name of the operation is `$ihe-pix`, and it is applied to FHIR Patient
Resource type.

The Get Corresponding Identifiers message is conducted by the Patient
Identifier Cross-reference Consumer by executing an HTTP GET against the
Patient Identifier Cross-reference Manager’s Patient Resource URL.

The URL for this operation is: `[base]/Patient/$ihe-pix`

Where **[base]** is the URL of Patient Identifier Cross-reference
Manager Service provider.

The Get Corresponding Identifiers message is performed by an HTTP GET
command shown below:

```
GET [base]/Patient/$ihe-pix?sourceIdentifier=[token]{&targetSystem=[uri]}{&_format=[token]}
```

**Table 2:3.83.4.1.2-1: $ihe-pix Message HTTP query Parameters**

| Query parameter Name | Cardinality | Search Type | Description                                                                                                                                                                                                      |
| -------------------- | ----------- | ----------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| sourceIdentifier     | \[1..1\]    | token       | The Patient Identifier that will be used by the Patient Identifier Cross-reference Manager to find cross matching identifiers associated with the Patient. See Section 2:3.83.4.1.2.1. |
| targetSystem         | \[0..\*\]   | uri         | The Assigning Authorities for the Patient Identifier Domains from which the returned identifiers shall be selected. See Section 2:3.83.4.1.2.2.                                                                    |
| \_format             | \[0..1\]    | token       | The requested format of the response from the mime-type value set. See [ITI TF-2x: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format)                  |
{: .grid }

###### 2:3.83.4.1.2.1 Source Patient Identifier Parameter

The required HTTP query parameter `sourceIdentifier` is a token that
specifies an identifier associated with the patient whose information is
being queried (i.e., a business identifier such as a local identifier or account identifier, or the Logical id of a FHIR Patient Resource). Its
value shall include both the Patient Identifier Domain (i.e., Assigning
Authority) and the identifier value, separated by a "|".

See [ITI TF-2x: Appendix Z.2.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for use of the `token` search parameter type for patient identifiers.

The Patient Identifier Cross-reference Consumer shall provide exactly one (1) instance of this parameter in the query.

For example, a query searching for all Patient Identifiers, for a patient with identifier IHERED-994 assigned by authority
“1.3.6.1.4.1.21367.13.20.1000” would be represented as:

```
sourceIdentifier=urn:oid:1.3.6.1.4.1.21367.13.20.1000|IHERED-994
```

For example, a query searching all Patient Identifiers, for a patient’s FHIR Patient Resource with a Logical id of "123" on the FHIR Server `http://fhir.mydomain.com` would be represented as:

```
sourceIdentifier=http://fhir.mydomain.com|Patient/123
```

###### 2:3.83.4.1.2.2 Requesting Patient Identifier Domains to be Returned

If the Patient Identifier Cross-reference Consumer wishes to select the
Patient Identifier Domain(s) from which to receive Patient Identifiers, it does
so by populating the `targetSystem` parameter with as many domains for
which it wants to receive Patient Identifiers. The Patient Identifier
Cross-reference Manager shall return the Patient Identifiers for each
requested domain if a value is known.

The targetSystem parameter uses this format:

```
targetSystem=<patient ID Assigning Authority domain>
```

Examples:

```
targetSystem=urn:oid:1.3.6.1.4.1.21367.13.20.3000
targetSystem=http://fhir.mydomain.com
```

##### 2:3.83.4.1.3 Expected Actions

The Patient Identifier Cross-reference Manager shall use the `sourceIdentifier` and the `targetSystem` to determine the Patient Identities that match, where Patient Identities include business identifier(s) and the Logical id(s) of FHIR Patient Resource(s).

Response returned encoding and semantics is defined in Section 2:3.83.4.2:

The Patient Identities returned may be a subset based on policies that might restrict access to some Patient Identities. For guidance on handling Access Denied, see [ITI TF-2x: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.7-guidance-on-access-denied-results).

#### 2:3.83.4.2 Response message

##### 2:3.83.4.2.1 Trigger Events

The Patient Identifier Cross-reference Manager needs to return failure, or success with zero to many results to the Patient Identifier Cross-reference Consumer.

##### 2:3.83.4.2.2 Message Semantics

See [ITI TF-2x: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for more details on response format handling.

The response message is a FHIR operation response
(<http://hl7.org/fhir/operations.html#response>)

On Failure, the response message is an HTTP status code of 4xx or 5xx
indicates an error, and an OperationOutcome Resource shall be returned
with details. See specific failure modes in Sections 2:3.83.4.2.2.2
through 2:3.83.4.2.2.4.

###### 2:3.83.4.2.2.1 Success

On Success, the response message is an HTTP status code of 200 with a
single Parameters Resource as shown in Table 2:3.83.4.2.2-1.

The Parameters Resource shall include:
- for each business identifier for the patient, one `parameter` element with `name="targetIdentifier"` and the `valueIdentifier` of the identifier. 
- for each matching Patient Resource, one `parameter` element with `name="targetId"` and the `valueReference` of the Patient Resource.  
 
The values may be returned in any order.
The identifier value given in the `sourceIdentifier` parameter in the
query shall not be included in the returned Response.

**Table 2:3.83.4.2.2.1-1: $ihe-pix Message Response**

| Parameter        | Card.     | Data Type          | Description                                                                                         |
| ---------------- | --------- | ------------------ | --------------------------------------------------------------------------------------------------- |
| targetIdentifier | \[0..\*\] | Identifier         | The business identifier found. Shall include the assigning authority as specified in [ITI TF-2x: Appendix E.3](https://www.ihe.net/uploadedFiles/Documents/ITI/IHE_ITI_Suppl_Appx-Z.pdf#page=16) |
| targetId         | \[0..\*\] | Reference(Patient) | The URL of the Patient Resource                                                                     |
{: .grid }

[example response](Parameters-pixm-response-mohralice-red-all.html) for [query](Parameters-pixm-request-mohralice-red-all.html):
```xml
<Parameters xmlns="http://hl7.org/fhir">
    <parameter>
        <name value="targetIdentifier"/>
        <valueIdentifier>
            <use value="official" />
            <system value="urn:oid:1.3.6.1.4.1.21367.13.20.3000" />
            <value value="IHEBLUE-994" />
        </valueIdentifier>
    </parameter>
    <parameter>
        <name value="targetIdentifier"/>
        <valueIdentifier>
            <use value="official" />
            <system value="urn:oid:1.3.6.1.4.1.21367.13.20.2000" />
            <value value="IHEGREEN-994" />
        </valueIdentifier>
    </parameter>
    <parameter>
      <name value="targetId"/>
        <valueReference>
          <reference value="Patient/Patient-MohrAlice-Blue"/>
        </valueReference>
    </parameter>
    <parameter>
      <name value="targetId"/>
        <valueReference>
          <reference value="Patient/Patient-MohrAlice-Green"/>
        </valueReference>
    </parameter>
</Parameters>
```

###### 2:3.83.4.2.2.2 Source Identifier not found

When the Patient Identifier Cross-reference Manager recognizes the
Patient Identifier Domain in the `sourceIdentifier` but the identifier is
not found, then the following failure shall be returned:

**HTTP 404** (Not Found) is returned as the HTTP status code.

An OperationOutcome Resource is returned indicating that the patient
identifier is not recognized in an issue having:

| Attribute   | Value                                           |
| ----------- | ----------------------------------------------- |
| severity    | error                                           |
| code        | [not-found](http://hl7.org/fhir/R4/codesystem-issue-type.html#not-found)                                       |
| diagnostics | “sourceIdentifier Patient Identifier not found” |
{: .grid }

[example](Parameters-pixm-response-error-not-found.html):
```xml
<Parameters xmlns="http://hl7.org/fhir">
  <parameter>
    <name value="error"/>
    <resource>
      <OperationOutcome>
        <issue>
          <severity value="error"/>
          <code value="not-found"/>
          <diagnostics value="sourceIdentifier Patient Identifier not found"/>
        </issue>
      </OperationOutcome>
    </resource>
  </parameter>
</Parameters>
```

###### 2:3.83.4.2.2.3 Source Domain not recognized

When the Patient Identifier Cross-reference Manager does not recognize
the Patient Identifier Domain in the `sourceIdentifier`, then the following
failure shall be returned:

**HTTP 400** (Bad Request) is returned as the HTTP status code.

An OperationOutcome Resource is returned indicating that the Patient
Assigning Authority domain is not recognized in an `issue` having:

| Attribute   | Value                                            |
| ----------- | ------------------------------------------------ |
| severity    | error                                            |
| code        | [code-invalid](http://hl7.org/fhir/R4/codesystem-issue-type.html#code-invalid)                                     |
| diagnostics | “sourceIdentifier Assigning Authority not found” |
{: .grid }


###### 2:3.83.4.2.2.4 Target Domain not recognized

When the Patient Identifier Cross-reference Manager does not recognize
the Patient Identifier Domain in the `targetSystem`, then the following
failure shall be returned:

**HTTP 403** (Forbidden) is returned as the HTTP status code.

An OperationOutcome Resource is returned indicating that the Patient
Identifier Domain is not recognized in an `issue` having:

| Attribute   | Value                    |
| ----------- | ------------------------ |
| severity    | error                    |
| code        | [code-invalid](http://hl7.org/fhir/R4/codesystem-issue-type.html#code-invalid)             |
| diagnostics | “targetSystem not found” |
{: .grid }


### 2:3.83.5 Security Considerations

See [ITI TF-2: Appendix Z.8 “Mobile Security Considerations”](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations), which includes guidance on the use of [ATNA](https://profiles.ihe.net/ITI/TF/Volume1/ch-9.html) and [IUA](https://profiles.ihe.net/ITI/TF/Volume1/ch-34.html) to protect the communication, access control, and audit logging.

#### 2:3.83.5.1 Security Audit Considerations

The Security audit criteria are similar to those for the [PIX Query
[ITI-9]](https://profiles.ihe.net/ITI/TF/Volume2/ITI-9.html) as this transaction discloses the same type of patient
information. 

##### 2:3.83.5.1.1 Patient Identifier Cross-reference Consumer Audit

The Patient Identifier Cross-reference Consumer when grouped with ATNA Secure Node or Secure Application actor shall be able to record a [PIXm Query Consumer Audit Event Log](StructureDefinition-IHE.PIXm.Query.Audit.Consumer.html). [Audit Example for a PIXm Query transaction from consumer perspective](AuditEvent-ex-auditPixmQuery-consumer.html).

##### 2:3.83.5.1.2 Patient Identifier Cross-reference Manager Audit

The Patient Identifier Cross-reference Manager when grouped with ATNA Secure Node or Secure Application actor shall be able to record a [PIXm Query Manager Audit Event Log](/StructureDefinition-IHE.PIXm.Query.Audit.Manager.html). [Audit Example for a PIXm Query transaction from manager perspective](AuditEvent-ex-auditPixmQuery-manager.html).
