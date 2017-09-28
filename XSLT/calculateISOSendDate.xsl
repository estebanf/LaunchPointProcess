<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0" xmlns:diag="http://bpms.everteam.com/Processes/Core/GenerateISOData"
	xmlns:tns="http://everteam.com/xvar/example" xmlns:Launchpoint="http://www.example.org/Launchpoint"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:this="http://bpms.everteam.com/Processes/Core/GenerateISOData/ISO"
	xmlns:Case_Manager="http://bpms.everteam.com/Processes/Core/GenerateISOData/Case_Manager">
	<!--XSL Skeleton generated on Thu Sep 28 09:22:24 MDT 2017 for F/LaunchPointProcess/Processes/Core/GenerateISOData.bpm 
		pool:ISO activity: Timer_Intermediate_Event Complete doXslTransform: bpel:doXslTransform("../../XSLT/calculateISOSendDate.xsl", 
		$iSOEventStartMessageRequest1.body, "delayDuration", $delayDuration) Input 
		document as defined in the mapper: $iSOEventStartMessageRequest1.body -->
	<xsl:output />
	<xsl:param name="delayDuration" />
	<xsl:template match="/this:Receive_ISORequest">
		<xsl:copy>
			<xsl:value-of
				select="xs:dateTime(Launchpoint:AccidentDate) + xs:dayTimeDuration($delayDuration)" />
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
