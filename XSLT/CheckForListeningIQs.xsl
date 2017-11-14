<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0"
	xmlns:getOpenIqs="urn:intalio.com:connectors:database:launchpointprocess:getopeniqsservice"
	xmlns:IQ="http://www.example.org/IQ" xmlns:Launchpoint="http://www.example.org/Launchpoint"
	xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessIQCase/IQ_Response_monitor"
	xmlns:IQ_Response_monitorimplicitPartner="http://bpms.everteam.com/Processes/Core/ProcessIQCase/IQ_Response_monitorimplicitPartner"
	xmlns:diag="http://bpms.everteam.com/Processes/Core/ProcessIQCase"
	xmlns:GetActivityService="http://bpms.everteam.com/Services/REST/GetActivityService.rest"
	xmlns:tns="http://everteam.com/xvar/example" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:ns="http://bpms.everteam.com/LaunchPointProcess"
	xmlns:GetActivity="__project:///Schemas/GetActivity.xsd"
	xmlns:checkForReceivingIQs="urn:intalio.com:connectors:database:launchpointprocess:checkforreceivingiqsservice"
	xmlns:Process_IQ_Case="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Process_IQ_Case">
	<!--XSL Skeleton generated on Mon Nov 13 22:03:04 MST 2017 for F/LaunchPointProcess/Processes/Core/ProcessIQCase.bpm 
		pool:IQ Response monitor activity: Exclusive_Data-Based_Gateway Complete 
		doXslTransform: bpel:doXslTransform("../../XSLT/CheckForListeningIQs.xsl", 
		$checkForReceivingIQsCheckForReceivingIQsResponse1Msg.parameters/checkForReceivingIQs:rows) 
		Input document as defined in the mapper: $checkForReceivingIQsCheckForReceivingIQsResponse1Msg.parameters/checkForReceivingIQs:rows -->
	<xsl:output />
	<!--No parameters are currently passed to doXslTransform. -->
	<xsl:template match="/checkForReceivingIQs:rows">
		<xsl:choose>
			<xsl:when
				test="checkForReceivingIQs:row[position() = 1]/checkForReceivingIQs:count &gt; 0">
				<xsl:value-of select="true()" />
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="false()" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
</xsl:stylesheet>
