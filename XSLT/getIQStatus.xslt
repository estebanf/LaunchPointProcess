<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
xmlns:Launchpoint="http://www.example.org/Launchpoint" 
xmlns:getIQStatus="urn:intalio.com:connectors:database:launchpointprocess:getiqstatusservice">
  <xsl:param name="tracking"  select="/.." />
  <xsl:template match="/Launchpoint:CaseChangesTracker">
	<Launchpoint:CaseChangesTracker>
      <Launchpoint:hasChanges><xsl:value-of select="Launchpoint:hasChanges" /></Launchpoint:hasChanges>
      <Launchpoint:scoreChanged><xsl:value-of select="Launchpoint:scoreChanged" /></Launchpoint:scoreChanged>
      <Launchpoint:statusChanged><xsl:value-of select="Launchpoint:statusChanged" /></Launchpoint:statusChanged>
      <Launchpoint:previousQualification>IQ</Launchpoint:previousQualification>
      <Launchpoint:currentQualification><xsl:value-of select="Launchpoint:currentQualification" /></Launchpoint:currentQualification>
      <Launchpoint:previousStatus>
      	<xsl:if test="count($tracking/getIQStatus:rows/getIQStatus:row) > 0">
      		<xsl:value-of select="$tracking/getIQStatus:rows/getIQStatus:row/getIQStatus:status" />
      	</xsl:if>
      </Launchpoint:previousStatus>
      <Launchpoint:returnMail>
      	<xsl:choose>
      		<xsl:when test="count($tracking/getIQStatus:rows/getIQStatus:row) = 0">false</xsl:when>
      		<xsl:otherwise>
      			<xsl:choose>
      			 <xsl:when test="$tracking/getIQStatus:rows/getIQStatus:row/getIQStatus:iqresponse = 'ReturnMail'">true</xsl:when>
      			 <xsl:otherwise>false</xsl:otherwise>
      			</xsl:choose>
      		</xsl:otherwise>
      	</xsl:choose>
      </Launchpoint:returnMail>
    </Launchpoint:CaseChangesTracker>
  </xsl:template>
</xsl:stylesheet>
