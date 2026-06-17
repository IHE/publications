# 2:3.67 Find Document References [ITI-67] - Mobile access to Health Documents (MHD) v4.2.5-comment

* [**Table of Contents**](toc.md)
* **2:3.67 Find Document References [ITI-67]**

## 2:3.67 Find Document References [ITI-67]

This section corresponds to transaction [ITI-67] of the IHE Technical Framework. Transaction [ITI-67] is used by the Document Consumer and Document Responder Actors.

### 2:3.67.1 Scope

The Find Document References transaction is used to find DocumentReference Resources that satisfy a set of parameters. It is equivalent to the FindDocuments and FindDocumentsByReferenceId queries from the Registry Stored Query [ITI-18] transaction. The result of the query is a FHIR Bundle containing DocumentReference Resources that match the query parameters.

### 2:3.67.2 Actors Roles

**Table 2:3.67.2-1: Actor Roles**

| | |
| :--- | :--- |
| [Document Consumer](1331_actors_and_transactions.md#133112-document-consumer) | Requests a list of DocumentReference Resources, matching the supplied set of criteria, from the Document Responder |
| [Document Responder](1331_actors_and_transactions.md#133114-document-responder) | Returns DocumentReference Resources that match the search criteria provided by the Document Consumer |

### 2:3.67.3 Referenced Standards

**HL7 FHIR** Revision 4.0.1 found at [http://hl7.org/fhir/R4/](http://hl7.org/fhir/R4/)

### 2:3.67.4 Messages

**Figure 2:3.67.4-1: Find Document References Interactions**

#### 2:3.67.4.1 Find Document References Request Message

This message uses the search method parameterized query to obtain DocumentReference Resources from the Document Responder.

##### 2:3.67.4.1.1 Trigger Events

When the Document Consumer needs to discover DocumentReference Resources matching various metadata parameters, it issues a Find Document References message.

##### 2:3.67.4.1.2 Message Semantics

The Document Consumer executes an HTTP search against the Document Responders DocumentReference URL. The search target follows the FHIR HTTP specification, addressing the DocumentReference Resource [FHIR http.html](http://hl7.org/fhir/R4/http.html):

```
[base]/DocumentReference?<query>

```

This URL is configurable by the Document Responder and is subject to the following constraints:

The `<query>` represents a series of encoded name-value pairs representing the filter for the query, as specified in Section [Query Search Parameters](#23674121-query-search-parameters), as well as control parameters to modify the behavior of the Document Responder such as response format, or pagination.

The Document Consumer may use GET or POST based searches. The Document Responder shall support both GET and POST based searches [FHIR http.html#search](http://hl7.org/fhir/R4/http.html#search).

###### 2:3.67.4.1.2.1 Query Search Parameters

The Document Consumer may supply, and the Document Responder shall be capable of processing, all query parameters listed below. All query parameter values shall be appropriately encoded per RFC3986 “percent” encoding rules. Note that percent encoding does restrict the character set to a subset of ASCII characters which is used for encoding all other characters used in the URL.

The Document Consumer shall include search parameter `patient` or `patient.identifier`, and `status`. The other parameters described below are optional. The Document Responder must implement the parameters described below. The Document Responder may choose to support additional query parameters beyond the subset listed below. Any additional query parameters supported shall be supported according to the core FHIR specification. Such additional parameters are considered out of scope for this transaction. Any additional parameters not supported should be ignored. See [FHIR search.html#errors](http://hl7.org/fhir/R4/search.html#errors).

**author.given** and **author.family**: These parameters, of type string, specify the name parts of the author person, which is associated with the DocumentReference Resource, or in Document Sharing nomenclature, the author of the Document Entry. See [ITI TF-2x: Appendix Z.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for use of the string data type. This use of **author.given** and **author.family** follows the [FHIR Chaining Parameters](http://hl7.org/fhir/search.html#chaining) search methodology.

**category**: This parameter, of type token, specifies the general classification of the DocumentReference Resource, or in Document Sharing nomenclature, the classCode of the Document Entry. See [ITI TF-2x: Appendix Z.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for additional constraints on the use of the token search parameter type.

**creation**: This IHE defined parameter defined as [DocumentReference-Creation](SearchParameter-DocumentReference-Creation.md), of type dateTime, specifies a search against the DocumentReference.content.attachment.creation. See FHIR [FHIR search.html#date](http://hl7.org/fhir/R4/search.html#date) for use of the date search type.

**date**: This parameter, of type date, specifies the time when the DocumentReference was created. See FHIR [FHIR search.html#date](http://hl7.org/fhir/R4/search.html#date) for use of the date search type.

**event**: This parameter, of type token, specifies the main clinical acts documented by the DocumentReference Resource, or in Document Sharing nomenclature, the eventCodeList of the Document Entry. See [ITI TF-2x: Appendix Z.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for additional constraints on the use of the token search parameter type.

**facility**: This parameter, of type token, specifies the kind of facility found in DocumentReference.context.facilityType, or in Document Sharing nomenclature, the healthcareFacilityTypeCode of the Document Entry. See [ITI TF-2x: Appendix Z.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for additional constraints on the use of the token search parameter type.

**format**: This parameter, of type token, specifies the format of the DocumentReference Resource, or in Document Sharing nomenclature, the formatCode of the Document Entry. See [ITI TF-2x: Appendix Z.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for additional constraints on the use of the token search parameter type.

**identifier**: This parameter, of type token, specifies an identifier for this DocumentReference and/or the contained document. The search results represent the results of a search on DocumentReference.masterIdentifier and DocumentReference.identifier. See [ITI TF-2x: Appendix Z.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for additional constraints on the use of the token search parameter type.

**patient**: This parameter is of type Reference(Patient). The Document Consumer may get this reference using the [PDQm](https://profiles.ihe.net/ITI/TF/Volume1/ch-38.html) or [PIXm](https://profiles.ihe.net/ITI/TF/Volume1/ch-41.html) Profile. When the patient parameter is used, the Patient reference would need to be accessible to both the Document Consumer and the Document Responder.

**patient.identifier**: This parameter, of type token, specifies an identifier associated with the patient to which the DocumentReference Resource is assigned. See [ITI TF-2x: Appendix Z.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for additional constraints on the use of the token search parameter type. This use of **patient.identifier** follows the [FHIR Chaining Parameters](http://hl7.org/fhir/search.html#chaining) search methodology.

**period**: This parameter, of type date, represents the time of service that is being documented by the DocumentReference. The period search parameter specifies an interval which the time of service overlaps. In Document Sharing nomenclature, this query parameter represents from/to parameters for the serviceStartTime and serviceStopTime of the Document Entry. See FHIR [FHIR search.html#date](http://hl7.org/fhir/R4/search.html#date) for use of the date search type.

**related**: This parameter, of type reference, represents other identifiers associated with the DocumentReference Resource, or in Document Sharing nomenclature, the referenceIdList of the Document Entry.

**security-label**: This parameter, of type token, specifies the security labels of the document referenced by DocumentReference Resource, or in Document Sharing nomenclature, the confidentialityCode of the Document Entry. See [ITI TF-2x: Appendix Z.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for additional constraints on the use of the token search parameter type.

**setting**: This parameter, of type token, specifies the specific practice setting of the DocumentReference Resource, or in Document Sharing nomenclature, the practiceSettingCode of the Document Entry. See [ITI TF-2x: Appendix Z.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for additional constraints on the use of the token search parameter type.

**status**: This parameter, of type token, specifies the status of the DocumentReference Resource, or in Document Sharing nomenclature, the availabilityStatus of the Document Entry. The Document Consumer shall populate the identifier portion of the token using one of the short codes in Table 2:3.67.4.1.2.1-1. The system portion of the token shall not be populated.

**targetCommunityIdList**: This IHE extension on parameters defined as [IHE-TargetCommunityIdList](SearchParameter-IHE-TargetCommunityIdList.md), of type uri, specifies the homeCommunityId value supplied in the DocumentReference Resource. This parameter will only function when the [Target Communities Option](1332_actor_options.md#13327-target-communities-option) is declared, and where the backend also supports it (e.g., [XCA Target Communities](https://profiles.ihe.net/ITI/TF/Volume1/ch-18.html#18.2.6).)

**type**: This parameter, of type token, specifies the specific type of the DocumentReference resource or in Document Sharing nomenclature, the typeCode of the Document Entry. See [ITI TF-2x: Appendix Z.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.2-query-parameters) for additional constraints on the use of the token search parameter type.

Section on new full text search option.

###### 2:3.67.4.1.2.1.1 Full-Text Search Option

If the Full-Text Search Option is supported, the Document Consumer must be able to make use of the **_content** parameter that specifies terms or phrases that are used to search document content in the documents managed by the Document Responder. The Document Responder must match the full-text search parameters in combination with any metadata-based search parameters defined in the same query (i.e. only if a document matches the filter from **_content** query and the meta-data based filter parameters, the document is considered a match).

The Document Responder shall support the semantics of the logical operators OR, AND defined in [ODATA Search](https://docs.oasis-open.org/odata/odata/v4.0/cs01/part1-protocol/odata-v4.0-cs01-part1-protocol.html#_The_$search_System), amended by the following rules:

* All search terms are encoded as a single string (search string).
* Each search term may include any uppercase and lowercase letters, digits and hyphens.
* Each search term (and the entire search string) is encoded in UTF-8 (any escaping required for transmission is not included here).
* Search terms are matched case-insensitively, i.e., the Document Responder shall ignore case differences.
* Search terms are found at any position within a word (beginning, middle, end).
* Instead of a single search term, multiple search terms can be combined as a so-called "phrase" by enclosing them in double quotation marks (") and separating them with spaces. If a document contains the search terms in the phrase in the same order and spelling (also separated by spaces), the document is considered a match. The content of a phrase is also searched case-insensitively.
* Search terms (including entire phrases) can be combined into a logical expression using the Boolean operators (and keywords) *AND* and *OR*, and can be negated with *NOT* if needed: 
* *AND*: Both search terms/phrases must be found in a document for it to be considered a match.
* *OR*: At least one of the two search terms/phrases must be found in a document for it to be considered a match.
* *NOT*: Any search term/phrase can be negated by prefixing it with *NOT*; the document is considered a match if the search term/phrase cannot be found in the document. This also applies to individual terms not combined with *AND*/*OR*.
* Boolean keywords within phrases are treated as regular search terms. Phrases can be combined as a whole with the mentioned Boolean operators, just like individual search terms.
* The precedence of the Boolean operators is as follows: *NOT* (highest) > *AND* > *OR* (lowest).
* Simple round brackets "(" and ")" can be used to adjust the evaluation order (precedence) of individual search terms/phrases in a Boolean expression. Nested parentheses are not allowed.
 
* Multiple search terms/phrases must always be combined using *AND* or *OR*.

The Document Consumer must support at least a subset of the capabilities described above and may utilize metadata-based and content-based search parameters either independently or in combination.

The MHD profile does not prescribe how the Document Responder should implement full-text search. In many cases, the Document Responder maintains a search index that is updated with each new, updated or deleted document. Alternatively, full-text search may be performed ad hoc or delegated to a specialized system.

**Valid Query Examples**

* **Single terms**: 
* `diabetes`: Searches for words in the document that contain the sequence "diabetes" (case-insensitive, possible matches include 'diabetes', 'Prediabetes').
* `hypertension`: Searches for words containing "hypertension" (case-insensitive, e.g., 'hypertension', 'Hypertension').
* `pain`: Searches for words containing "pain" (case-insensitive, e.g., 'pain', 'painful', but also 'Spain').
 
* **Phrases with quotation marks**: 
* `"diabetes"`: Searches for the exact word "diabetes" (case-insensitive, matches 'diabetes' and 'Diabetes').
* `"chronic pain"`: Searches for the exact phrase "chronic pain", including the space (case-insensitive).
* `"cardiovascular disease"`: Searches for the exact phrase "cardiovascular disease" (case-insensitive).
 
* **Use of Boolean operators**: 
* `diabetes AND hypertension`: Searches for documents containing both "diabetes" and "hypertension" (case-insensitive).
* `asthma OR "chronic pain"`: Searches for documents containing either "asthma" or the phrase "chronic pain" (both case-insensitive).
* `NOT cancer`: Searches for documents that do not contain the word or word part "cancer" (case-insensitive).
 
* **Use of parentheses to adjust evaluation order**: 
* `(diabetes OR hypertension) AND asthma`: Forces the "OR" to be evaluated before the "AND".
* `("chronic pain" OR asthma) AND NOT cancer`: Another example using parentheses and multiple boolean operators.
 
* **Query without parentheses, relying on operator precedence**: 
* `NOT diabetes AND asthma OR hypertension`
* **Explanation**: 
* The `NOT` operator has the highest precedence and is evaluated first, so it checks that "diabetes" is not present.
* The `AND` operator is next, so the query evaluation would ensure that "asthma" is present and "diabetes" is not.
* The `OR` operator is evaluated last. A document matches if it contains "asthma" and not "diabetes", or if it contains "hypertension".
* An equivalent query would be: `(NOT diabetes AND asthma) OR hypertension`
 
 

**Invalid Query Examples**

* **Invalid use of operators**: 
* `diabetes AND OR hypertension` 
**Reason**: Combining `AND` and `OR` without a search term in between is not allowed.
 
* **Missing quotation marks for phrases**: 
* `chronic pain AND asthma` 
**Reason**: A phrase like "chronic pain" must be enclosed in quotation marks to be recognized as a single term. Otherwise, the search would return an error.
 
* **Disallowed nested parentheses**: 
* `(diabetes OR (hypertension AND asthma))` 
**Reason**: Nested parentheses are not allowed. Only one level of parentheses is permitted.
 
* **Incomplete logical expressions**: 
* `NOT AND diabetes` 
**Reason**: `NOT` must precede a specific search term or phrase, not another operator.
 
* **Incorrect placement of parentheses**: 
* `diabetes OR )hypertension AND asthma(` 
**Reason**: Parentheses are incorrectly placed. Parentheses must be properly opened and closed.
 

###### 2:3.67.4.1.2.2 Populating Expected Response Format

The FHIR standard provides encodings for responses as either XML or JSON. The Document Responder shall support both message encodings, whilst the Document Consumer shall support one and may support both.

See [ITI TF-2x: Appendix Z.6](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.6-populating-the-expected-response-format) for details.

###### 2:3.67.4.1.2.3 Example DocumentReference Search

For example given:

* FHIR server root is `http://test.fhir.org/R4/fhir`
* Patient reference id is `9876`
* status of current
* with clinical code from loinc of `1234-5`
* examples do not include all http headers such as the security headers

###### 2:3.67.4.1.2.3.1 Example GET

```
GET test.fhir.net/R4/fhir/DocumentReference?patient=9876&status=current&type=http://loinc.org|1234-5

```

###### 2:3.67.4.1.2.3.2 Example POST

```
POST test.fhir.net/R4/fhir/DocumentReference/_search?patient=9876&status=current&type=http://loinc.org|1234-5

```

###### 2:3.67.4.1.2.3.3 Example POST Body

```
POST test.fhir.net/R4/fhir/DocumentReference/_search
Host test.fhir.net
Content-Type: application/x-www-form-urlencoded
Accept: application/fhir+json; fhirVersion=4.0

patient=9876&status=current&type=http://loinc.org|1234-5

```

##### 2:3.67.4.1.3 Expected Actions

The Document Responder shall process the query to discover the DocumentReference entries that match the search parameters given.

###### 2:3.67.4.1.3.1 XDS on FHIR Option

The Document Responder is grouped with an XDS Document Consumer when it supports the [XDS on FHIR](1332_actor_options.md#13322-xds-on-fhir-option) Option. The Document Responder shall map the query parameters as listed in Table 2:3.67.4.1.3.1-1 and shall execute a Registry Stored Query [ITI-18] for FindDocuments or FindDocumentsByReferenceIdList (see [ITI TF-2: 3.18.4.1.2.3.7.1](https://profiles.ihe.net/ITI/TF/Volume2/ITI-18.html#3.18.4.1.2.3.7.1) and [3.18.4.1.2.3.7.14](https://profiles.ihe.net/ITI/TF/Volume2/ITI-18.html#3.18.4.1.2.3.7.14) ). All of the query parameters in Table 3.67.4.1.3-1 shall be supported by the Document Responder. No additional query parameters as defined in FHIR are required of the Document Responder, but they may be offered.

**Table 2:3.67.4.1.3.1-1: ITI-18 FindDocuments Query Parameter Mapping**

| | |
| :--- | :--- |
| patient or patient.identifier | $XDSDocumentEntryPatientId |
| creation (Note 1) (Note 5) | $XDSDocumentEntryCreationTimeFrom |
| creation (Note 2) (Note 5) | $XDSDocumentEntryCreationTimeTo |
| author.given / author.family | $XDSDocumentEntryAuthorPerson |
| status | $XDSDocumentEntryStatus |
| (Not supported) (Note 3) | $XDSDocumentEntryType |
| category | $XDSDocumentEntryClassCode |
| type | $XDSDocumentEntryTypeCode |
| setting | $XDSDocumentEntryPracticeSettingCode |
| period (Note 1) | $XDSDocumentEntryServiceStartTimeFrom |
| period (Note 2) | $XDSDocumentEntryServiceStartTimeTo |
| period (Note 1) | $XDSDocumentEntryServiceStopTimeFrom |
| period (Note 2) | $XDSDocumentEntryServiceStopTimeTo |
| facility | $XDSDocumentEntryHealthcareFacilityTypeCode |
| event | $XDSDocumentEntryEventCodeList |
| security-label | $XDSDocumentEntryConfidentialityCode |
| format | $XDSDocumentEntryFormatCode |
| related (Note 4) | $XDSDocumentEntryReferenceIdList |
| targetCommunityIdList | $targetCommunityIdList |

Note 1: This FindDocuments parameter is used when the greater or equal to (`ge`) parameter modifier is used on the given parameter.

Note 2: This FindDocuments parameter is used when the less than (`lt`) parameter modifier is used on the given parameter.

Note 3: The $XDSDocumentEntryType is not a supported query parameter in HL7 FHIR.

Note 4: The $XDSDocumentEntryReferenceIdList can only be mapped when using the XDS FindDocumentsByReferenceId query. This parameter support requires XDS [Reference ID Option](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html#10.2.6).

Note 5: The FHIR R4 DocumentReference does not yet have a `.attachment.creation` query parameter, it has only a date element which is the creation date/time of the DocumentReference. MHD adds the search parameter `DocumentReference-Creation`, to provide the functionality of search against the document creation date/time.

**Table 2:3.67.4.1.3.1-2: Values for code for status of DocumentReference**

The following table is also available in a [concept map](ConceptMap-FhirStatusVsStatusCode.md) artifact.

| | |
| :--- | :--- |
| current | urn:oasis:names:tc:ebxml-regrep:StatusType:Approved |
| superseded | urn:oasis:names:tc:ebxml-regrep:StatusType:Deprecated |

#### 2:3.67.4.2 Find Document References Response Message

The Document Responder returns a HTTP Status code appropriate to the processing as well as a Bundle of the matching DocumentReference Resources.

##### 2:3.67.4.2.1 Trigger Events

The Document Responder completed processing of the Find Document Reference Request message.

##### 2:3.67.4.2.2 Message Semantics

Based on the query results, the Document Responder will either return an error or success. Guidance on handling Access Denied related to use of 200, 403 and 404 can be found in [ITI TF-2x: Appendix Z.7](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.8-mobile-security-considerations).

When the Document Responder needs to report an error, it shall use HTTP error response codes and should include a FHIR OperationOutcome with more details on the failure. See FHIR [FHIR http.html](http://hl7.org/fhir/R4/http.html) and [FHIR operationoutcome.html](http://hl7.org/fhir/R4/operationoutcome.html).

If the Find Document References message is processed successfully, whether or not any DocumentReference Resources are found, the HTTP status code shall be 200. The Find Document References Response message shall be a Bundle Resource containing zero or more DocumentReference Resources. If the Document Responder is sending warnings, the Bundle Resource shall also contain an OperationOutcome Resource that contains those warnings.

The response shall adhere to the FHIR Bundle constraints specified in [ITI TF-2x: Appendix Z.1](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.1-resource-bundles). The response bundle for a MHD Find Document References Comprehensive Response [is defined here](StructureDefinition-IHE.MHD.FindDocumentReferencesComprehensiveResponseMessage.md), with an [example](StructureDefinition-IHE.MHD.FindDocumentReferencesComprehensiveResponseMessage-examples.md).

###### 2:3.67.4.2.2.1 DocumentReference Resource Contents

The DocumentReference Resources returned shall be compliant with the FHIR specification [FHIR documentreference.html](http://hl7.org/fhir/R4/documentreference.html).

The DocumentReference Resources returned should be compliant with the [MHD metadata](32_fhir_maps.md) for the IHE restrictions on DocumentReference Resource and with the [mapping to DocumentEntry](32_fhir_maps.md#documentEntry) from IHE Document Sharing profiles (e.g., XDS) to FHIR.

###### 2:3.67.4.2.2.1.1 Document Location

The Document Responder shall place into the DocumentReference.content.attachment.url element a full URL that can be used by the Document Consumer to retrieve the document using the Retrieve Document [[ITI-68]](ITI-68.md) transaction. IHE does not specify the format of the URL. There are many ways to encode this URL that allow for easy processing on a [Retrieve Document](ITI-68.md) transaction. Some examples are to encode homeCommunityId, repositoryUniqueId, uniqueId, and patientId into the URL. This could be done in many ways including using character separators or directory separators. In this way, the Document Responder can support many communities, and/or many repositories.

###### 2:3.67.4.2.2.1.2 Support for On-Demand Documents

[XDS](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html) introduced the concept of a [On-Demand Document Option](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html#10.2.7), and is explained in the [Use Cases Summary](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html#10.4.11.3). The use of On-Demand Documents allows for documents that would be produced for a specific patient with content assembled at the time of processing the document consumer retrieve request.

On-Demand Documents are indicated in the DocumentReference by the DocumentReference.content.attachment with an absent .hash and .size element. For more background on [On-Demand Documents](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html#10.2.7). There is no need to declare an On-Demand Documents Option in MHD.

Informative note: When the Document Consumer retrieves the document using the Document location, then the retrieved document might exist as an [IsSnapshotOf Association according to XDS [ITI-43]](https://profiles.ihe.net/ITI/TF/Volume2/ITI-43.html#3.43.4.2.3). The IsSnapshotOf Association is identified as a new DocumentReference with relatesTo.code of `transforms`.

###### 2:3.67.4.2.2.1.3 Support for Delayed Document Assembly

[XDS](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html) introduced the concept of [Delayed Document Assembly Option](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html#10.2.10), and is explained in the [Use Cases Summary](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html#10.4.11.3). The use of Delayed Document Assembly allows source systems to register the existence of stable document content but defer actually assembling the document content only if and when it is retrieved.

Delayed Document Assembly is distinct from On-Demand Documents in that Delayed Document Assembly is a Documents that are static, clinician attested documents and the content of the document is identified prior to registration of the Document Entry. On-Demand Documents allows the content of the document to be identified at the time of receipt of the retrieval request (e.g., summary, or current). Delayed Document Assembly has been designed to be as transparent as possible to Document Consumer Actors. Document Consumers Actors may easily support Stable Documents whose assembly has been delayed just as if they were a regular Stable Document since the only constraint on Document Consumers brought by this Delayed Document Assembly Option is to support responses to queries with the presence of Stable Document Entries that have zero size and hash values.

Delayed Document Assembly are indicated in the DocumentReference by the DocumentReference.content.attachment with an .size element of `0` (zero), and a .hash element with the fixed value `2jmj7l5rSw0yVb/vlWAYkK/YBwk=` (SHA1 hash of a zero length file). For more background on the [Delayed Document Assembly](https://profiles.ihe.net/ITI/TF/Volume1/ch-10.html#10.2.10). There is no need to declare a Delayed Document Assembly in MHD.

Informative note: When the Document Consumer retrieves the document using the Document location, then the retrieved document actual size and hash is updated in the DocumentReference. In this way the Document Consumer may retrieve the updated DocumentReference after successful retrieval of the document to find the size and hash for content integrity validation.

###### 2:3.67.4.2.2.1.4 XDS Associations

Where the DocumentReference Resource being returned has an XDS Association, this shall be represented in the DocumentReference.relatesTo element. Where the DocumentReference.relatesTo.target element holds the Reference to the other DocumentReference Resource, and the DocumentReference.relatesTo.code element holds the relationship type translated using the [AssociationType vs RelatesTo ConceptMap](ConceptMap-AssociationTypeVsRelatesTo.md).

###### 2:3.67.4.2.2.1.5 XDS Identifiers to Resource References

Where the DocumentReference Resource being returned is being translated from an XDS DocumentEntry, there will be identifiers in the DocumentEntry (e.g., ReferenceIdList) that may be represented in the DocumentReference as Resource References. The Document Responder is not required to convert identifiers into Resource References, but it is allowed to do this conversion. For example an identifier in ReferenceIdList may simply be copied into DocumentReference.content.related.identifier. Alternatively the ReferenceIdList may be resolved to a Resource Reference and that reference be placed into DocumentReference.content.related.reference.

Identifiers in XDS are encoded using the [Document Sharing CXi Metadata datatype](https://profiles.ihe.net/ITI/TF/Volume3/ch-4.2.html#4.2.3.1.7), which will indicate the kind of identifier. This kind of identifier shall be used when mapping values into DocumentReference elements (See [Appendix Z.9.1.2](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.9.1.2-xds-cxi-mapped-to-fhir-identifier-type) ). Specifically the `CXi` Identifier Type Code of `urn:ihe:iti:xds:2015:encounterId` would indicate the Identifier value be mapped into DocumentReference.encounter.

###### 2:3.67.4.2.2.1.6 Target Communities Option

The Document Responder SHOULD populate the **homeCommunityId** extension when a value is available and policy allows it to be populated. The population of this element is identified in the [Target Communities Option](1332_actor_options.md#13327-target-communities-option).

The Document Responder declaring the **Target Communities Option** shall support the [targetCommunityIdList](SearchParameter-IHE-TargetCommunityIdList.md) search parameter, and shall return an error when the homeCommunityId can not be fulfilled, See [XCA Target Communities Option](https://profiles.ihe.net/ITI/TF/Volume1/ch-18.html#18.2.6). The Document Consumer declaring the **Target Communities Option** MAY use this search parameter. Actors not declaring the **Target Communities Option** may support the search parameter. Support for the Search parameter shall be declared in the product/implementation CapabilityStatement.

Section on new full text search option.

###### 2:3.67.4.2.2.1.6 Full-Text Search Option

The [Full-Text Search Match Snippet](./StructureDefinition-ihe-full-text-search-match-snippet.md) and the [Full-Text Search Match Total Hits](./StructureDefinition-ihe-full-text-search-match-total-hits.md) extensions are used in the context of the Full-Text Search Option to provide a more detailed representation of search results.

The Match Snippet extension is intended to extract relevant text excerpts (snippets) from a document that contain the searched term. These snippets are provided in the extension’s value element and highlight the matched term using the *<mark> </mark>* tag. In addition, the page number of the document on which the match was found is indicated. A Document Responder shall return a snippet for each match found within a document. If the number of identified snippets exceeds ten, the Document Responder may return only the first ten snippets.

The Match Total Hits extension provides an aggregated overview of the search results within a document. It indicates the total number of matches found across the entire document based on the full-text search. A Document Responder shall populate the Match Total Hits extension within the search element of each entry in the Bundle representing the full-text search result set. The Match Total Hits extension shall specify the total number of matches found within the document as an integer value. This value reflects the total number of matches across the entire document and is not limited to the number of returned snippets.

**Full-Text Search Match Example**

```
"search": {
  "extension": [
    {
      "url": "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-snippet",
      "extension": [
        {
          "url": "snippet",
          "valueString": "The patient was diagnosed with <mark>hypertension</mark> and started on antihypertensive therapy."
        },
        {
          "url": "pageNumber",
          "valueString": "1"
        }
      ]
    },
    {
      "url": "https://profiles.ihe.net/ITI/MHD/StructureDefinition/ihe-full-text-search-match-total-hits",
      "valueInteger": 1
    }
  ],
  "mode": "match",
  "score": 0.9
}

```

###### 2:3.67.4.2.2.2 Resource Bundling

Resource Bundling shall comply with the guidelines in [ITI TF-2x: Appendix Z.1](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.1-resource-bundles).

#### 2:3.67.4.2.3 Expected Actions

The Document Consumer shall process the results according to application-defined rules. The Document Consumer should be robust as the response may contain DocumentReference Resources that match the query parameters but are not compliant with the DocumentReference constraints defined here.

#### 2:3.67.4.3 CapabilityStatement Resource

Document Responders implementing this transaction shall provide a CapabilityStatement Resource as described in [ITI TF-2x: Appendix Z.3](https://profiles.ihe.net/ITI/TF/Volume2/ch-Z.html#z.3-capabilitystatement-resource) indicating the transaction has been implemented.

* Requirements CapabilityStatement for [Document Consumer](CapabilityStatement-IHE.MHD.DocumentConsumer.md)
* Requirements CapabilityStatement for [Document Responder](CapabilityStatement-IHE.MHD.DocumentResponder.md)
* Requirements CapabilityStatement for [Document Consumer with Full-Text Search Option](CapabilityStatement-IHE.MHD.DocumentConsumer.FullTextSearch.md)
* Requirements CapabilityStatement for [Document Responder with Full-Text Search Option](CapabilityStatement-IHE.MHD.DocumentResponder.FullTextSearch.md)

### 2:3.67.5 Security Considerations

See [MHD Security Considerations](1335_security_considerations.md).

This transaction should not return information that the Document Consumer is not authorized to access. Where authorization here is inclusive of system, app, and user according to local policy, patient consents, and security layering. However, the transaction may return DocumentReference resources that have Reference elements that the Document Consumer may not have access to. This is to say that the authorization need only be to the content returned in the Bundle. There may be references (URLs) for which the content is not authorized. This is considered proper as the Document Consumer would need to retrieve the content pointed to by those references, and at that time the proper authorization decision would be made on that context and content. In this way it is possible for a Document Consumer to get DocumentReference resources that are pointing at data that the Document Consumer is not authorized to retrieve. Thus, the URLs used must be carefully crafted so as to not expose sensitive data in the URL value.

Given that the Document Responder is responsible for the URL placed into DocumentReference.content.attachment.url, care must be taken to assure that manipulation of this URL prior to a Retrieve Document transaction does not expose resources the Document Consumer should not have access to.

#### 2:3.67.5.1 Security Audit Considerations

The security audit criteria are similar to those for the Registry Stored Query [[ITI-18]](https://profiles.ihe.net/ITI/TF/Volume2/ITI-18.html#3.18.5) transaction.

##### 2:3.67.5.1.1 Document Consumer Audit

The Document Consumer when grouped with ATNA Secure Node or Secure Application Actor shall be able to record a [Find Document References Consumer Audit Event Log](StructureDefinition-IHE.MHD.FindDocumentReferences.Audit.Consumer.md). [Audit Example for a Find Document References transaction from consumer perspective](AuditEvent-ex-auditFindDocumentReferences-consumer.md).

##### 2:3.67.5.1.2 Document Responder Audit

The Document Responder when grouped with ATNA Secure Node or Secure Application Actor shall be able to record a [Find Document References Responder Audit Event Log](StructureDefinition-IHE.MHD.FindDocumentReferences.Audit.Responder.md). [Audit Example for a Find Document Lists Transaction from responder perspective](AuditEvent-ex-auditFindDocumentReferences-responder.md).

