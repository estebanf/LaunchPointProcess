<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0" xmlns:diag="http://bpms.everteam.com/Processes/Core/ProcessISOCase"
	xmlns:ISOService-ISO_Service="http://bpms.everteam.com/Processes/Core/ISOService/ISO_Service"
	xmlns:ns="urn:intalio.com:connectors:database:launchpointprocess:check_duplicatesservice"
	xmlns:tns="http://everteam.com/xvar/example" xmlns:Launchpoint="http://www.example.org/Launchpoint"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:Process_ISO_CaseimplicitPartner="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_CaseimplicitPartner"
	xmlns:DCMGenerateISOData-DCM="http://bpms.everteam.com/Processes/Core/DCMGenerateISOData/DCM"
	xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_Case"
	xmlns:Case_Manager="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Case_Manager">
	<!--XSL Skeleton generated on Wed Oct 11 08:52:21 MDT 2017 for F/LaunchPointProcess/Processes/Core/ProcessISOCase.bpm 
		pool:Process ISO Case activity: Process DB Response Complete doXslTransform: 
		bpel:doXslTransform("../../XSLT/processDuplicateCheck.xsl", $nsCheck_duplicatesResponse1Msg.parameters, 
		"caseId", $iSOEventStartMessageRequest1.body/Launchpoint:CaseId) Input document 
		as defined in the mapper: $nsCheck_duplicatesResponse1Msg.parameters -->
	<xsl:output />
	<xsl:param name="caseId" />
	<xsl:template match="/ns:check_duplicatesResultSet">
		<xsl:copy>
			<xsl:choose>
				<xsl:when
					test="count(ns:rows) &gt; 0 and ns:rows/ns:row[1]/ns:caseid = $caseId and ns:rows/ns:row[1]/ns:senttoiso != ''">
					true
				</xsl:when>
				<xsl:otherwise>
					false
				</xsl:otherwise>
			</xsl:choose>

		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
