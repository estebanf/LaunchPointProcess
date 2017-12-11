<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0"
	xmlns:CaseEvaluator-process="http://bpms.everteam.com/Processes/Core/CaseEvaluator/process"
	xmlns:Launchpoint="http://www.example.org/Launchpoint" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" >
	<xsl:param name="caseid" />
	<xsl:template match="/iob_response_root">
		<CaseEvaluator-process:Get_diariesRequest>
			<Launchpoint:caseId><xsl:value-of select="$caseid" /></Launchpoint:caseId>
			<xsl:apply-templates />
		</CaseEvaluator-process:Get_diariesRequest>
	</xsl:template>
	<xsl:template match="iob_element">
			<Launchpoint:diaries>
				<Launchpoint:DiaryType><xsl:value-of select="DiaryType" /></Launchpoint:DiaryType>
				<Launchpoint:DiaryStatus><xsl:value-of select="DiaryStatus" /></Launchpoint:DiaryStatus>
				<Launchpoint:DiaryDueDate><xsl:value-of select="DueDate" /></Launchpoint:DiaryDueDate>
				<Launchpoint:Description><xsl:value-of select="Description" /></Launchpoint:Description>
				<Launchpoint:CreatedDate><xsl:value-of select="CreateDate" /></Launchpoint:CreatedDate>
				<Launchpoint:CreatedBy><xsl:value-of select="CreatedBy" /></Launchpoint:CreatedBy>
			</Launchpoint:diaries>	
	</xsl:template>
</xsl:stylesheet>
