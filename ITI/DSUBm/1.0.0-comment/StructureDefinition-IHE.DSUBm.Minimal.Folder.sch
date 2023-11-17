<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile DSUBmList
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:List</sch:title>
    <sch:rule context="f:List">
      <sch:assert test="count(f:encounter) &lt;= 0">encounter: maximum cardinality of 'encounter' is 0</sch:assert>
      <sch:assert test="count(f:source) &lt;= 0">source: maximum cardinality of 'source' is 0</sch:assert>
      <sch:assert test="count(f:orderedBy) &lt;= 0">orderedBy: maximum cardinality of 'orderedBy' is 0</sch:assert>
      <sch:assert test="count(f:note) &lt;= 1">note: maximum cardinality of 'note' is 1</sch:assert>
      <sch:assert test="count(f:emptyReason) &lt;= 0">emptyReason: maximum cardinality of 'emptyReason' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:List/f:entry</sch:title>
    <sch:rule context="f:List/f:entry">
      <sch:assert test="count(f:flag) &lt;= 0">flag: maximum cardinality of 'flag' is 0</sch:assert>
      <sch:assert test="count(f:deleted) &lt;= 0">deleted: maximum cardinality of 'deleted' is 0</sch:assert>
      <sch:assert test="count(f:date) &lt;= 0">date: maximum cardinality of 'date' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
