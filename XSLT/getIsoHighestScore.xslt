<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/BusinessRules/ISOScoring/processimplicitPartner" 
  xmlns:Launchpoint="http://www.example.org/Launchpoint" 
  xmlns:xs="http://www.w3.org/2001/XMLSchema" 
  xmlns:ProcessISOResponse="http://bpms.everteam.com/Processes/BusinessRules/ISOScoring/ProcessISOResponse" 
  xmlns:ns="urn:intalio.com:connectors:database:launchpointprocess:getisohighestscoreservice">
  <xsl:template match="/ns:getIsoHighestScoreResultSet/ns:rows">
    <Launchpoint:ISORuleInput>
      <Launchpoint:highestScore>
      	<xsl:choose>
      		<xsl:when test="count(ns:row) > 0"><xsl:value-of select="ns:row[1]/ns:score" /></xsl:when>
      		<xsl:otherwise>NONE</xsl:otherwise>
      	</xsl:choose>
      </Launchpoint:highestScore>
      <Launchpoint:daysSinceResponse>
      	<xsl:choose>
      		<xsl:when test="count(ns:row) > 0"><xsl:value-of select="ns:row[1]/ns:daysSinceResponse" /></xsl:when>
      		<xsl:otherwise><xsl:value-of select="0" /></xsl:otherwise>
      	</xsl:choose>      	
      </Launchpoint:daysSinceResponse> 
    </Launchpoint:ISORuleInput>
  </xsl:template>
</xsl:stylesheet>
