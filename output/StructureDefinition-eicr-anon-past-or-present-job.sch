<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile PastOrPresentJob
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Observation</sch:title>
    <sch:rule context="f:Observation">
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/odh-Employer-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/odh-Employer-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/us/odh/StructureDefinition/odh-isCurrentJob-extension']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/us/odh/StructureDefinition/odh-isCurrentJob-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:performer) &lt;= 0">performer: maximum cardinality of 'performer' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:text</sch:title>
    <sch:rule context="f:Observation/f:text">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason']) &gt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:status) &gt;= 1">status: minimum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:status) &lt;= 1">status: maximum cardinality of 'status' is 1</sch:assert>
      <sch:assert test="count(f:div) &gt;= 1">div: minimum cardinality of 'div' is 1</sch:assert>
      <sch:assert test="count(f:div) &lt;= 1">div: maximum cardinality of 'div' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:text/f:extension</sch:title>
    <sch:rule context="f:Observation/f:text/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:extension</sch:title>
    <sch:rule context="f:Observation/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:component</sch:title>
    <sch:rule context="f:Observation/f:component">
      <sch:assert test="count(f:interpretation) &lt;= 1">interpretation: maximum cardinality of 'interpretation' is 1</sch:assert>
      <sch:assert test="count(f:interpretation) &lt;= 1">interpretation: maximum cardinality of 'interpretation' is 1</sch:assert>
      <sch:assert test="count(f:interpretation) &lt;= 1">interpretation: maximum cardinality of 'interpretation' is 1</sch:assert>
      <sch:assert test="count(f:interpretation) &lt;= 1">interpretation: maximum cardinality of 'interpretation' is 1</sch:assert>
      <sch:assert test="count(f:interpretation) &lt;= 1">interpretation: maximum cardinality of 'interpretation' is 1</sch:assert>
      <sch:assert test="count(f:interpretation) &lt;= 1">interpretation: maximum cardinality of 'interpretation' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Observation/f:component/f:referenceRange</sch:title>
    <sch:rule context="f:Observation/f:component/f:referenceRange">
      <sch:assert test="count(f:appliesTo) &lt;= 1">appliesTo: maximum cardinality of 'appliesTo' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
