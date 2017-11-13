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
      	<xsl:if test="count(ns:row) > 0">
      		<xsl:value-of select="ns:row[1]/ns:score" />
      	</xsl:if>
      </Launchpoint:highestScore>    
    </Launchpoint:ISORuleInput>
  </xsl:template>
</xsl:stylesheet>
