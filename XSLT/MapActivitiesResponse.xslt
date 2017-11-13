<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0"
	xmlns:getOpenIqs="urn:intalio.com:connectors:database:launchpointprocess:getopeniqsservice"
	xmlns:IQ="http://www.example.org/IQ" xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessIQCase/IQ_Response_monitor"
	xmlns:IQ_Response_monitorimplicitPartner="http://bpms.everteam.com/Processes/Core/ProcessIQCase/IQ_Response_monitorimplicitPartner"
	xmlns:diag="http://bpms.everteam.com/Processes/Core/ProcessIQCase"
	xmlns:GetActivityService="http://bpms.everteam.com/Services/REST/GetActivityService.rest"
	xmlns:tns="http://everteam.com/xvar/example" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:ns="http://bpms.everteam.com/LaunchPointProcess"
	xmlns:GetActivity="__project:///Schemas/GetActivity.xsd"
	xmlns:Process_IQ_Case="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Process_IQ_Case">
	<!--XSL Skeleton generated on Mon Nov 13 09:03:09 MST 2017 for F/LaunchPointProcess/Processes/Core/ProcessIQCase.bpm 
		pool:IQ Response monitor activity: Empty_Intermediate_Event Complete doXslTransform: 
		bpel:doXslTransform("../../XSLT/MapActivitiesResponse.xslt", $getActivityServiceGET_ActivitiesResponse1Msg.response) 
		Input document as defined in the mapper: $getActivityServiceGET_ActivitiesResponse1Msg.response -->
	<xsl:output />
	<!--No parameters are currently passed to doXslTransform. -->
	<xsl:template match="/iob_response_root">
		<IQ:Activities>
			<xsl:for-each select="iob_element">
				<IQ:ClientId><xsl:value-of select="ClientId"/></IQ:ClientId>
				<IQ:CaseId><xsl:value-of select="CaseId"/></IQ:CaseId>
				<IQ:ActivityType><xsl:value-of select="ActivityType"/></IQ:ActivityType>
				<IQ:ActivityCode><xsl:value-of select="ActivityCode"/></IQ:ActivityCode>
				<IQ:Description><xsl:value-of select="Description"/></IQ:Description>
			</xsl:for-each>
		</IQ:Activities>
	</xsl:template>
</xsl:stylesheet>
