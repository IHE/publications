<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile MinimalDocumentReference
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:DocumentReference</sch:title>
    <sch:rule context="f:DocumentReference">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/documentreference-sourcepatient']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/documentreference-sourcepatient': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:category) &gt;= 1">category: minimum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:subject) &gt;= 1">subject: minimum cardinality of 'subject' is 1</sch:assert>
      <sch:assert test="count(f:facilityType) &gt;= 1">facilityType: minimum cardinality of 'facilityType' is 1</sch:assert>
      <sch:assert test="count(f:practiceSetting) &gt;= 1">practiceSetting: minimum cardinality of 'practiceSetting' is 1</sch:assert>
      <sch:assert test="count(f:securityLabel) &gt;= 1">securityLabel: minimum cardinality of 'securityLabel' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DocumentReference/f:content</sch:title>
    <sch:rule context="f:DocumentReference/f:content">
      <sch:assert test="count(f:profile) &gt;= 1">profile: minimum cardinality of 'profile' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:DocumentReference/f:content/f:attachment</sch:title>
    <sch:rule context="f:DocumentReference/f:content/f:attachment">
      <sch:assert test="count(f:language) &gt;= 1">language: minimum cardinality of 'language' is 1</sch:assert>
      <sch:assert test="count(f:creation) &gt;= 1">creation: minimum cardinality of 'creation' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
