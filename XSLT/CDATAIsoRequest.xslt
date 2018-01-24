<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0" 
	xmlns:Launchpoint="http://www.example.org/Launchpoint"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:ns0="http://tempuri.org/"
	xmlns:this="http://bpms.everteam.com/Processes/Integrations/sendToISO/process">
	<xsl:output method="xml" omit-xml-declaration="yes" standalone="yes" cdata-section-elements="ns0:xml" />
	<xsl:template match="/this:Receive_requestRequest">
		<ns0:SubmitToISO>
			<ns0:xml>
  				<xsl:copy>
    				<xsl:text disable-output-escaping="yes">&lt;![CDATA[</xsl:text>
    				<xsl:copy-of select="Launchpoint:Content/node()"/>    
    				<xsl:text disable-output-escaping="yes">]]&gt;</xsl:text>
  				</xsl:copy>			
			</ns0:xml>
		</ns0:SubmitToISO>
	</xsl:template>
</xsl:stylesheet>
