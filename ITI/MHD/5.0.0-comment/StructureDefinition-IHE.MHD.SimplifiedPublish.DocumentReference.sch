<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile DocumentReference
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:DocumentReference</sch:title>
    <sch:rule context="f:DocumentReference">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/documentreference-sourcepatient']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/documentreference-sourcepatient': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:docStatus) &lt;= 0">docStatus: maximum cardinality of 'docStatus' is 0</sch:assert>
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:attester) &lt;= 1">attester: maximum cardinality of 'attester' is 1</sch:assert>
      <sch:assert test="count(f:content) &lt;= 1">content: maximum cardinality of 'content' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DocumentReference/f:identifier</sch:title>
    <sch:rule context="f:DocumentReference/f:identifier">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &gt;= 1">use: minimum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:system) &gt;= 1">system: minimum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:system) &lt;= 1">system: maximum cardinality of 'system' is 1</sch:assert>
      <sch:assert test="count(f:value) &gt;= 1">value: minimum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
      <sch:assert test="count(f:assigner) &lt;= 1">assigner: maximum cardinality of 'assigner' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DocumentReference/f:event</sch:title>
    <sch:rule context="f:DocumentReference/f:event">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:concept) &gt;= 1">concept: minimum cardinality of 'concept' is 1</sch:assert>
      <sch:assert test="count(f:concept) &lt;= 1">concept: maximum cardinality of 'concept' is 1</sch:assert>
      <sch:assert test="count(f:reference) &lt;= 1">reference: maximum cardinality of 'reference' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DocumentReference/f:attester</sch:title>
    <sch:rule context="f:DocumentReference/f:attester">
      <sch:assert test="count(f:party) &gt;= 1">party: minimum cardinality of 'party' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DocumentReference/f:content</sch:title>
    <sch:rule context="f:DocumentReference/f:content">
      <sch:assert test="count(f:profile) &lt;= 1">profile: maximum cardinality of 'profile' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DocumentReference/f:content/f:attachment</sch:title>
    <sch:rule context="f:DocumentReference/f:content/f:attachment">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:contentType) &gt;= 1">contentType: minimum cardinality of 'contentType' is 1</sch:assert>
      <sch:assert test="count(f:contentType) &lt;= 1">contentType: maximum cardinality of 'contentType' is 1</sch:assert>
      <sch:assert test="count(f:language) &lt;= 1">language: maximum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:data) &gt;= 1">data: minimum cardinality of 'data' is 1</sch:assert>
      <sch:assert test="count(f:data) &lt;= 1">data: maximum cardinality of 'data' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 0">url: maximum cardinality of 'url' is 0</sch:assert>
      <sch:assert test="count(f:size) &lt;= 1">size: maximum cardinality of 'size' is 1</sch:assert>
      <sch:assert test="count(f:hash) &lt;= 1">hash: maximum cardinality of 'hash' is 1</sch:assert>
      <sch:assert test="count(f:title) &lt;= 1">title: maximum cardinality of 'title' is 1</sch:assert>
      <sch:assert test="count(f:creation) &lt;= 1">creation: maximum cardinality of 'creation' is 1</sch:assert>
      <sch:assert test="count(f:height) &lt;= 1">height: maximum cardinality of 'height' is 1</sch:assert>
      <sch:assert test="count(f:width) &lt;= 1">width: maximum cardinality of 'width' is 1</sch:assert>
      <sch:assert test="count(f:frames) &lt;= 1">frames: maximum cardinality of 'frames' is 1</sch:assert>
      <sch:assert test="count(f:duration) &lt;= 1">duration: maximum cardinality of 'duration' is 1</sch:assert>
      <sch:assert test="count(f:pages) &lt;= 1">pages: maximum cardinality of 'pages' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
