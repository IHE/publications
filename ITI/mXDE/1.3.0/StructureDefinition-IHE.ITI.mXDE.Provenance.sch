<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Provenance
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Provenance</sch:title>
    <sch:rule context="f:Provenance">
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:policy) &gt;= 1">policy: minimum cardinality of 'policy' is 1</sch:assert>
      <sch:assert test="count(f:policy) &lt;= 1">policy: maximum cardinality of 'policy' is 1</sch:assert>
      <sch:assert test="count(f:activity) &gt;= 1">activity: minimum cardinality of 'activity' is 1</sch:assert>
      <sch:assert test="count(f:entity) &gt;= 1">entity: minimum cardinality of 'entity' is 1</sch:assert>
      <sch:assert test="count(f:entity) &lt;= 1">entity: maximum cardinality of 'entity' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Provenance/f:agent</sch:title>
    <sch:rule context="f:Provenance/f:agent">
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Provenance/f:entity</sch:title>
    <sch:rule context="f:Provenance/f:entity">
      <sch:assert test="count(f:agent) &lt;= 0">agent: maximum cardinality of 'agent' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
