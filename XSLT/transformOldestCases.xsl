<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0"
	xmlns:diag="http://bpms.everteam.com/Processes/Integrations/getOldestQueuedCases"
	xmlns:getOldestCases="urn:intalio.com:connectors:database:launchpointprocess:getoldestcasesservice"
	xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/getOldestQueuedCases/processimplicitPartner"
	xmlns:client="http://bpms.everteam.com/Processes/Integrations/getOldestQueuedCases/client"
	xmlns:this="http://bpms.everteam.com/Processes/Integrations/getOldestQueuedCases/process"
	xmlns:tns="http://everteam.com/xvar/example" xmlns:Launchpoint="http://www.example.org/Launchpoint"
	xmlns:ProcessIQCase-Queue_Monitor="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Queue_Monitor"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<!--XSL Skeleton generated on Sat Dec 02 19:53:40 MST 2017 for F/LaunchPointProcess/Processes/Integrations/getOldestQueuedCases.bpm 
		pool:process activity: Send case Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformOldestCases.xsl", 
		$nsGetCaseQueuedResponse2Msg.parameters) Input document as defined in the 
		mapper: $nsGetCaseQueuedResponse2Msg.parameters -->
	<xsl:output />
	 <xsl:param name="pid"></xsl:param>


	<xsl:key name="groups"
		match="/getOldestCases:getOldestCasesResultSet/getOldestCases:rows/getOldestCases:row"
		use="getOldestCases:clientid" />

	<xsl:template match="/getOldestCases:getOldestCasesResultSet">
		<ProcessIQCase-Queue_Monitor:Get_resultsRequest>
			<Launchpoint:pid><xsl:value-of select="$pid"/></Launchpoint:pid>
			<xsl:apply-templates
				select="getOldestCases:rows/getOldestCases:row[generate-id() = generate-id(key('groups', getOldestCases:clientid)[1])]" />
		</ProcessIQCase-Queue_Monitor:Get_resultsRequest>
	</xsl:template>

	<xsl:template match="getOldestCases:rows">
		<xsl:apply-templates />
	</xsl:template>

	<xsl:template match="getOldestCases:row">
		<xsl:variable name="currentGroup" select="getOldestCases:clientid" />
		<Launchpoint:batches>
			<Launchpoint:clientId>
				<xsl:value-of select="getOldestCases:clientid" />
			</Launchpoint:clientId>
				<xsl:for-each select="key('groups', $currentGroup)">
					<Launchpoint:cases>
						<Launchpoint:id><xsl:value-of select="getOldestCases:id"/></Launchpoint:id>
						<Launchpoint:Case>
							<Launchpoint:CaseId><xsl:value-of select="getOldestCases:caseid"/></Launchpoint:CaseId>
							<Launchpoint:ClientId><xsl:value-of select="getOldestCases:clientid" /></Launchpoint:ClientId>
							<Launchpoint:EnvironmentId><xsl:value-of select="getOldestCases:environmentid"/></Launchpoint:EnvironmentId>
							<Launchpoint:BatchId><xsl:value-of select="getOldestCases:batchid"/></Launchpoint:BatchId>
						</Launchpoint:Case>
						<Launchpoint:letter><xsl:value-of select="getOldestCases:letter"/></Launchpoint:letter>
					</Launchpoint:cases>
				</xsl:for-each>
		</Launchpoint:batches>
	</xsl:template>

</xsl:stylesheet>
