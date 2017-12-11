<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0"
	xmlns:CaseEvaluator-process="http://bpms.everteam.com/Processes/Core/CaseEvaluator/process"
	xmlns:Launchpoint="http://www.example.org/Launchpoint" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" >
	<xsl:param name="caseid" />
	<xsl:param name="clientid" />
	<xsl:param name="environmentid" />
	<xsl:param name="batchid" />
	<xsl:template match="/iob_response_root">
		<CaseEvaluator-process:Get_diariesRequest>
			<Launchpoint:Case>
				<Launchpoint:CaseId><xsl:value-of select="$caseid" /></Launchpoint:CaseId>
				<Launchpoint:ClientId><xsl:value-of select="$clientid" /></Launchpoint:ClientId>
				<Launchpoint:EnvironmentId><xsl:value-of select="$environmentid" /></Launchpoint:EnvironmentId>
				<Launchpoint:BatchId><xsl:value-of select="$batchid" /></Launchpoint:BatchId>
			</Launchpoint:Case>
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
