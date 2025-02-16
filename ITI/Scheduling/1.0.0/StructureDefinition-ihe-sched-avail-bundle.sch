<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Bundle
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Bundle</sch:title>
    <sch:rule context="f:Bundle">
      <sch:assert test="count(f:total) &gt;= 1">total: minimum cardinality of 'total' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Bundle/f:entry/f:search</sch:title>
    <sch:rule context="f:Bundle/f:entry/f:search">
      <sch:assert test="count(f:mode) &gt;= 1">mode: minimum cardinality of 'mode' is 1</sch:assert>
      <sch:assert test="count(f:mode) &gt;= 1">mode: minimum cardinality of 'mode' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
