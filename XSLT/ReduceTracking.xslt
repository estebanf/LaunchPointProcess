<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0" xmlns:Logging="http://bpms.everteam.com/Services/REST/Logging.rest"
	xmlns:diag="http://bpms.everteam.com/Processes/Core/Logging"
	xmlns:Logging1="__project:///Schemas/Logging.xsd"
	xmlns:Log_and_TrackimplicitPartner="http://bpms.everteam.com/Processes/Core/Logging/Log_and_TrackimplicitPartner"
	xmlns:tns="http://everteam.com/xvar/example"
	xmlns:this="http://bpms.everteam.com/Processes/Core/Logging/Log_and_Track"
	xmlns:Caller="http://bpms.everteam.com/Processes/Core/Logging/Caller"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:Tracking="http://www.example.org/Tracking">
	<!--XSL Skeleton generated on Fri Oct 27 15:08:41 MDT 2017 for F/LaunchPointProcess/Processes/Core/Logging.bpm 
		pool:Log and Track activity: Reduce Metric Complete doXslTransform: bpel:doXslTransform("../../XSLT/ReduceTracking.xslt", 
		$thisTaskRequest1Msg.body) Input document as defined in the mapper: $thisTaskRequest1Msg.body -->
	<xsl:output />
	<!--No parameters are currently passed to doXslTransform. -->
	<xsl:template match="/this:Receive_LogRequest">
		<Tracking:Tracking>
			<xsl:call-template name="entry"/>
		</Tracking:Tracking>
	</xsl:template>

	<xsl:template name="entry">
		<xsl:for-each select="child::node()">
			<xsl:choose>
				<xsl:when test="*">
					<xsl:element name="{name()}">
						<xsl:call-template name="entry"/>
					</xsl:element>
				</xsl:when>
				<xsl:otherwise>
					<xsl:variable name="nItemName">
						<xsl:value-of select="name()" />
					</xsl:variable>
					<xsl:if test="text() != ''">
						<xsl:element name="{$nItemName}">
							<xsl:value-of select="text()" />
						</xsl:element>
					</xsl:if>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
