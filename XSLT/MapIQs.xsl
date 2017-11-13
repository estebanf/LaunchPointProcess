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
	xmlns:Process_IQ_Case="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Process_IQ_Case">
	<!--XSL Skeleton generated on Sun Nov 12 22:34:06 MST 2017 for F/LaunchPointProcess/Processes/Core/ProcessIQCase.bpm 
		pool:IQ Response monitor activity: Empty_Intermediate_Event Complete doXslTransform: 
		bpel:doXslTransform("../../XSLT/MapIQs.xsl", $getOpenIqsGetOpenIqsResponse1Msg.parameters/getOpenIqs:rows) 
		Input document as defined in the mapper: $getOpenIqsGetOpenIqsResponse1Msg.parameters/getOpenIqs:rows -->
	<xsl:output />
	<!--No parameters are currently passed to doXslTransform. -->
	<xsl:template match="/getOpenIqs:rows">
		<IQ:IQs>
			<xsl:for-each select="getOpenIqs:row">
				<IQ:IQs>
					<IQ:CaseId>
						<xsl:value-of select="getOpenIqs:caseid" />
					</IQ:CaseId>
				</IQ:IQs>
			</xsl:for-each>
		</IQ:IQs>
	</xsl:template>
</xsl:stylesheet>
