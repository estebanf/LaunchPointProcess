<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
  version="2.0" 
  xmlns:Launchpoint="http://www.example.org/Launchpoint" >
  <xsl:template match="/Launchpoint:ISOCaseRequestACKFile">
    <Launchpoint:RqUID>
      <Launchpoint:value><xsl:value-of select="Launchpoint:content/Launchpoint:ACORD/Launchpoint:ClaimsSvcRs/Launchpoint:RqUID" /></Launchpoint:value>
    </Launchpoint:RqUID>
  </xsl:template>
</xsl:stylesheet>
