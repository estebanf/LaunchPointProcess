<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0" xmlns:Logging="http://bpms.everteam.com/Services/REST/Logging.rest"
	xmlns:ISOService-ISO_Service="http://bpms.everteam.com/Processes/Core/ISOService/ISO_Service"
	xmlns:ns="urn:intalio.com:connectors:database:launchpointprocess:check_duplicatesservice"
	xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema"
	xmlns:Process_ISO_CaseimplicitPartner="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_CaseimplicitPartner"
	xmlns:DCMGenerateISOData-DCM="http://bpms.everteam.com/Processes/Core/DCMGenerateISOData/DCM"
	xmlns:Case_Manager="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Case_Manager"
	xmlns:diag="http://bpms.everteam.com/Processes/Core/ProcessISOCase"
	xmlns:Logging1="__project:///Schemas/Logging.xsd" xmlns:tns="http://everteam.com/xvar/example"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example"
	xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_Case">
	<!--XSL Skeleton generated on Thu Oct 12 15:45:17 MDT 2017 for F/LaunchPointProcess/Processes/Core/ProcessISOCase.bpm 
		pool:Process ISO Case activity: Process DB Response Complete doXslTransform: 
		bpel:doXslTransform("../../XSLT/processDuplicateCheck.xsl", $nsCheck_duplicatesResponse1Msg.parameters, 
		"caseId", $iSOEventStartMessageRequest1.body/Launchpoint:CaseId) Input document 
		as defined in the mapper: $nsCheck_duplicatesResponse1Msg.parameters -->
	<xsl:output />
	<xsl:param name="caseId">
		<!--Parameter defined in mapper as $iSOEventStartMessageRequest1.body/Launchpoint:CaseId 
			variable type: this:Receive_ISORequest -->
		<error>Parameter caseId no initialized</error>
	</xsl:param>
	<xsl:template match="/ns:check_duplicatesResultSet">
		<xsl:variable name="isDuplicate">
			<xsl:choose>
				<xsl:when
					test="count(ns:rows) &gt; 0 and ns:rows/ns:row[1]/ns:caseid = $caseId and ns:rows/ns:row[1]/ns:senttoiso != ''">
					<xsl:text>true</xsl:text>
				</xsl:when>
				<xsl:otherwise>
					<xsl:text>false</xsl:text>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<Launchpoint:isDuplicate>
			<Launchpoint:duplicate><xsl:value-of select="$isDuplicate" /></Launchpoint:duplicate>
		</Launchpoint:isDuplicate>
	</xsl:template>
</xsl:stylesheet>
