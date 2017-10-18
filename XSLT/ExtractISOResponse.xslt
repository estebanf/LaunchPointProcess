<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	version="2.0" 
	xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessISOResponse/ISO_Response_Manager" 
	xmlns:Launchpoint="http://www.example.org/Launchpoint" >
  <xsl:template match="/this:Receive_ISO_ResponseRequest">
    <Launchpoint:ISOResponseCanonical>
      <Launchpoint:requestId><xsl:value-of select="Launchpoint:content/ClaimInvestigationAddRs/RqUID" /></Launchpoint:requestId>
      <Launchpoint:caseId></Launchpoint:caseId>
      <Launchpoint:clientid></Launchpoint:clientid>
      <Launchpoint:batchId></Launchpoint:batchId>
      <Launchpoint:previousScore></Launchpoint:previousScore>
      <Launchpoint:content>
      	<xsl:copy-of select="Launchpoint:content/ClaimInvestigationAddRs" />
      </Launchpoint:content>
      <Launchpoint:status></Launchpoint:status>
      <Launchpoint:score></Launchpoint:score>
    </Launchpoint:ISOResponseCanonical>
  </xsl:template>
</xsl:stylesheet>
