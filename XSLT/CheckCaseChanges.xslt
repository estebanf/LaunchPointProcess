<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" 
xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:ns="http://caseidentificationrule.rules.launchpointprocess" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ax286="http://caseidentificationrule.rules.launchpointprocess/bre" xmlns:Case_Management="http://bpms.everteam.com/Processes/BusinessRules/CaseDiscrimination/Case_Management" xmlns:checkCaseExistance="urn:intalio.com:connectors:database:launchpointprocess:checkcaseexistanceservice" xmlns:diag="http://bpms.everteam.com/Processes/BusinessRules/CaseDiscrimination" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/BusinessRules/CaseDiscrimination/processimplicitPartner" xmlns:this="http://bpms.everteam.com/Processes/BusinessRules/CaseDiscrimination/process" xmlns:tns="http://everteam.com/xvar/example" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ax285="http://caseidentificationrule.rules.launchpointprocess/xsd">
  <xsl:output method="xml" indent="yes"/>
  <xsl:param name="score" />
  <xsl:param name="status" />
  <xsl:template match="/checkCaseExistance:checkCaseExistanceResultSet">
	<xsl:element name="Launchpoint:CaseChangesTracker">
		<xsl:apply-templates />
		<xsl:element name="Launchpoint:previousQualification" />
		<xsl:element name="Launchpoint:currentQualification" />
		<xsl:element name="Launchpoint:previousStatus" />
	</xsl:element>
  </xsl:template>
  <xsl:template match="checkCaseExistance:rows">
  	<xsl:apply-templates />
  </xsl:template>
  <xsl:template match="checkCaseExistance:row">
  	<xsl:element name="Launchpoint:scoreChanged">
  		<xsl:value-of select="$score != checkCaseExistance:score" />
  	</xsl:element>
  	<xsl:element name="Launchpoint:statusChanged">
  		<xsl:value-of select="$status != checkCaseExistance:status" />
  	</xsl:element>
  	<xsl:element name="Launchpoint:hasChanges">
  		<xsl:value-of select="($status != checkCaseExistance:status) or ($score != checkCaseExistance:score)" />
  	</xsl:element>
  </xsl:template>  
</xsl:stylesheet>
