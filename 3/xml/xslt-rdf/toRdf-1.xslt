<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0"
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:xs="http://www.w3.org/2001/XMLSchema"
   xmlns:fn="http://www.w3.org/2005/xpath-functions"
   xmlns:u="http://example.org/xsd">
<xsl:output method="text" encoding="UTF-8" />

<xsl:template match="/u:universities">
# Existing prefixes
@prefix dcterms: &lt;http://purl.org/dc/terms/&gt; .
@prefix foaf: &lt;http://xmlns.com/foaf/0.1/&gt; .
@prefix rdf:  &lt;http://www.w3.org/1999/02/22-rdf-syntax-ns#&gt; .
@prefix rdfs: &lt;http://www.w3.org/2000/01/rdf-schema#&gt; .
@prefix xsd: &lt;http://www.w3.org/TR/xmlschema11-2/&gt; .
@prefix frapo: &lt;http://purl.org/cerif/frapo/&gt;.
@prefix crsw: &lt;http://courseware.rkbexplorer.com/ontologies/courseware/&gt;.

# Custom prefixes
@prefix ex: &lt;http://example.org/vocabulary/&gt; .

# ENTITY DEFINITION
# Person, Student, Teacher
ex:Student a rdfs:Class ;
    rdfs:label "Student"@en ; 
    rdfs:comment "Class representing a university student"@en ;
    rdfs:subClassOf foaf:Person .

ex:Teacher a rdfs:Class ;
    rdfs:label "Teacher"@en ; 
    rdfs:comment "Class representing a university teacher"@en ;
    rdfs:subClassOf foaf:Person .

# University
ex:universityName a rdf:Property ;
    rdfs:label "Name of the university"@en ;
    rdfs:domain frapo:University ;
    rdfs:range xsd:langString .
ex:universityWebsite a rdf:Property ;
    rdfs:label "Homepage of the university"@en ;
    rdfs:domain frapo:University ;
    rdfs:range foaf:Document .

# Faculty
ex:facultyName a rdf:Property ;
    rdfs:label "Name of the faculty"@en ;
    rdfs:domain frapo:Faculty ;
    rdfs:range xsd:langString .
ex:facultyWebsite a rdf:Property ;
    rdfs:label "Homepage of the faculty"@en ;
    rdfs:domain frapo:Faculty ;
    rdfs:range foaf:Document .

# Course
ex:courseName a rdf:Property ;
    rdfs:label "Name of the course"@en ;
    rdfs:domain crsw:Course ;
    rdfs:range xsd:langString .
ex:courseCode a rdf:Property ; 
    rdfs:label "Code of the course"@en ;
    rdfs:domain crsw:Course ;
    rdfs:range xsd:langString .
ex:courseWebsite a rdf:Property ;
    rdfs:label "Homepage of the course"@en ;
    rdfs:domain crsw:Course ;
    rdfs:range foaf:Document .

# RELACTIONS
# Faculty - University
ex:hasFaculty a rdf:Property ;
    rdfs:label "University has the faculty"@en ;
    rdfs:domain frapo:University ;
    rdfs:range frapo:Faculty.

# Course - Faculty
ex:taughtAt a rdf:Property ;
    rdfs:label "Course is taught at the faculty"@en ;
    rdfs:domain crsw:Course ;
    rdfs:range frapo:Faculty .

# Student - Faculty
ex:studiesAt a rdf:Property ;
    rdfs:label "Student studies at the faculty"@en ;
    rdfs:domain ex:Student ; 
    rdfs:range frapo:Faculty .

# Student - Course
ex:studies a rdf:Property ;
    rdfs:label "Student studies the course"@en ;
    rdfs:domain ex:Student ;
    rdfs:range crsw:Course .

# Teacher - Course
ex:teaches a rdf:Property ;
    rdfs:label "Teacher teaches the course"@en ;
    rdfs:domain ex:Teacher ;
    rdfs:range crsw:Course .

# Teacher - Faculty
ex:teachesAt a rdf:Property ;
    rdfs:label "Teacher teaches at the faculty"@en ;
    rdfs:domain ex:Teacher ; 
    rdfs:range frapo:Faculty .

# INSTANCES
# University

<xsl:for-each select="u:university">
ex:<xsl:value-of select="@id"/> a frapo:University ;
<xsl:for-each select="u:names/u:name">    ex:universityName "<xsl:value-of select="."/>"@<xsl:value-of select="@xml:lang" /> ;&#xa;</xsl:for-each>
<xsl:for-each select="u:websites/u:website[position() &lt; last()]">    ex:universityWebsite &lt;<xsl:value-of select="."/>&gt; ;&#xa;</xsl:for-each>
<xsl:for-each select="u:websites/u:website[position() = last()]">    ex:universityWebsite &lt;<xsl:value-of select="."/>&gt; .&#xa;</xsl:for-each>
</xsl:for-each>

# Students
<xsl:for-each select="//u:student[not(./@id = following::u:student/@id)]">
ex:<xsl:value-of select="@id"/> a ex:Student ;
    foaf:name "<xsl:value-of select="u:name"/>"@<xsl:value-of select="u:name/@xml:lang" /> ;
    frapo:hasBirthDate "<xsl:value-of select="u:birthday"/>"^^xsd:date .
</xsl:for-each>

# Faculty
<xsl:for-each select="u:university/u:faculties/u:faculty">
ex:<xsl:value-of select="@id"/> a frapo:Faculty ;
<xsl:for-each select="u:names/u:name">    ex:facultyName "<xsl:value-of select="."/>"@<xsl:value-of select="@xml:lang" /> ;&#xa;</xsl:for-each>
<xsl:for-each select="u:websites/u:website[position() &lt; last()]">    ex:facultyWebsite &lt;<xsl:value-of select="."/>&gt; ;&#xa;</xsl:for-each>
<xsl:for-each select="u:websites/u:website[position() = last()]">    ex:facultyWebsite &lt;<xsl:value-of select="."/>&gt; .&#xa;</xsl:for-each>
</xsl:for-each>

# Teacher
<xsl:for-each select="//u:teacher[not(./@id = following::u:teacher/@id)]">
ex:<xsl:value-of select="@id"/> a ex:Teacher ;
    foaf:name "<xsl:value-of select="u:name"/>"@<xsl:value-of select="u:name/@xml:lang" /> ;
    frapo:hasBirthDate "<xsl:value-of select="u:birthday"/>"^^xsd:date .
</xsl:for-each>

# Course
<xsl:for-each select="//u:course">
ex:<xsl:value-of select="@id"/> a crsw:Course ;
<xsl:for-each select="u:names/u:name">    ex:courseName "<xsl:value-of select="."/>"@<xsl:value-of select="@xml:lang" /> ;&#xa;</xsl:for-each>    
<xsl:for-each select="u:code">    ex:courseCode "<xsl:value-of select="."/>" ;&#xa;</xsl:for-each>  
<xsl:for-each select="u:websites/u:website[position() &lt; last()]">    ex:courseWebsite &lt;<xsl:value-of select="."/>&gt; ;&#xa;</xsl:for-each>
<xsl:for-each select="u:websites/u:website[position() = last()]">    ex:courseWebsite &lt;<xsl:value-of select="."/>&gt; .</xsl:for-each>
</xsl:for-each>

# ASSOCIATIONS

</xsl:template>
</xsl:stylesheet>
