<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0"
	xmlns:Case_ManagerimplicitPartner="http://bpms.everteam.com/Processes/Core/CaseManagement/Case_ManagerimplicitPartner"
	xmlns:tns="http://www.example.org/Launchpoint" xmlns:ns="http://caseidentificationrule.rules.launchpointprocess"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ax210="http://caseidentificationrule.rules.launchpointprocess/bre"
	xmlns:Logging-Log_and_Track="http://bpms.everteam.com/Processes/Core/Logging/Log_and_Track"
	xmlns:this="http://bpms.everteam.com/Processes/Core/CaseManagement/Case_Manager"
	xmlns:ProcessIQCase-Process_IQ_Case="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Process_IQ_Case"
	xmlns:diag="http://bpms.everteam.com/Processes/Core/CaseManagement"
	xmlns:customVariable="http://everteam.com/xvar/example"
	xmlns:ProcessISOCase-Process_ISO_Case="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_Case"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:Tracking="http://www.example.org/Tracking"
	xmlns:Queue_Service="http://bpms.everteam.com/Processes/Core/CaseManagement/Queue_Service"
	xmlns:ax29="http://caseidentificationrule.rules.launchpointprocess/xsd">
	<!--XSL Skeleton generated on Mon Nov 13 12:32:16 MST 2017 for F/LaunchPointProcess/Processes/Core/CaseManagement.bpm 
		pool:Case Manager activity: Empty_Intermediate_Event Complete doXslTransform: 
		bpel:doXslTransform("../../XSLT/MapBatchCases.xsl", $case_ManagerRead_case_batchRequest1Msg.body) 
		Input document as defined in the mapper: $case_ManagerRead_case_batchRequest1Msg.body -->
	<xsl:output />
	<!--No parameters are currently passed to doXslTransform. -->
	<xsl:template match="/this:Read_case_batchRequest">
		<Tracking:BatchTracking>
			<Tracking:BatchId><xsl:value-of select="tns:BatchId" /></Tracking:BatchId>
			<Tracking:EnvironmentId><xsl:value-of select="tns:EnvironmentId" /></Tracking:EnvironmentId>
			<Tracking:ClientId><xsl:value-of select="tns:ClientId" /></Tracking:ClientId>
			
			<Tracking:TotalCaseCount><xsl:value-of select="tns:TotalCaseCount" /></Tracking:TotalCaseCount>
			<Tracking:BatchProcessingBegan></Tracking:BatchProcessingBegan>
			<Tracking:BatchProcessingEnded></Tracking:BatchProcessingEnded>
			<Tracking:BatchProcessingBeganAt></Tracking:BatchProcessingBeganAt>
			<Tracking:BatchProcessingEndedAt></Tracking:BatchProcessingEndedAt>
			<xsl:apply-templates />
		</Tracking:BatchTracking>
	</xsl:template>

	<xsl:template match="/this:Read_case_batchRequest/tns:Cases">
		<Tracking:Cases>	
			<Tracking:CaseId><xsl:value-of select="tns:CaseId"/></Tracking:CaseId>
			<Tracking:IsoIndicator><xsl:value-of select="tns:ISOIndicator"/></Tracking:IsoIndicator>
			<Tracking:Score><xsl:value-of select="tns:Score"/></Tracking:Score>
			<Tracking:AccidentDate><xsl:value-of select="tns:AccidentDate"/></Tracking:AccidentDate>
			<Tracking:BenefitAmount><xsl:value-of select="tns:BenefitAmount"/></Tracking:BenefitAmount>
			<Tracking:FundingSource><xsl:value-of select="tns:FundingSource"/></Tracking:FundingSource>
			<Tracking:LOB><xsl:value-of select="tns:LOB"/></Tracking:LOB>
			<Tracking:State><xsl:value-of select="tns:State"/></Tracking:State>
			<Tracking:WorkComp><xsl:value-of select="tns:WorkComp"/></Tracking:WorkComp>
			<Tracking:CaseStatus><xsl:value-of select="tns:CaseStatus"/></Tracking:CaseStatus>
			<Tracking:CaseSource><xsl:value-of select="tns:CaseSource"/></Tracking:CaseSource>
			<Tracking:SkipDuplicateCheck><xsl:value-of select="tns:SkipDuplicateCheck"/></Tracking:SkipDuplicateCheck>
			<Tracking:CaseType><xsl:value-of select="tns:CaseType"/></Tracking:CaseType>
			<Tracking:BatchId></Tracking:BatchId>
			<Tracking:CaseReceived></Tracking:CaseReceived>
			<Tracking:CaseIdentified></Tracking:CaseIdentified>
			<Tracking:CaseReceivedAt></Tracking:CaseReceivedAt>
			<Tracking:CaseIdentifiedAt></Tracking:CaseIdentifiedAt>
			<Tracking:Pid></Tracking:Pid>
		</Tracking:Cases>	
	</xsl:template>
</xsl:stylesheet>
