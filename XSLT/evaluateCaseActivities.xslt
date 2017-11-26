<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	version="2.0"
	xmlns:getCaseActivities-process="http://bpms.everteam.com/Processes/Integrations/getCaseActivities/process"
	xmlns:getCaseDiaries-process="http://bpms.everteam.com/Processes/Integrations/getCaseDiaries/process"
	xmlns:Launchpoint="http://www.example.org/Launchpoint"
	xmlns:Database="http://bpms.everteam.com/Processes/Core/CaseEvaluator/Database"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:diag="http://bpms.everteam.com/Processes/Core/CaseEvaluator"
	xmlns:client="http://bpms.everteam.com/Processes/Core/CaseEvaluator/client"
	xmlns:this="http://bpms.everteam.com/Processes/Core/CaseEvaluator/process"
	xmlns:tns="http://everteam.com/xvar/example" xmlns:DCM="http://bpms.everteam.com/Processes/Core/CaseEvaluator/DCM"
	xmlns:getDCMCase-process="http://bpms.everteam.com/Processes/Integrations/getDCMCase/process"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:getCaseDetails-process="http://bpms.everteam.com/Processes/Integrations/getCaseDetails/process">
	<xsl:output />
	<xsl:param name="dcmCase" select="/.." />
	<xsl:template match="/Launchpoint:CaseActivities">
		<xsl:variable name="iqreturnmail" select="count(Launchpoint:activities[Launchpoint:ActivityCode=('404')]) > 0"></xsl:variable>
		<xsl:variable name="iqresponse" select="count(Launchpoint:activities[Launchpoint:ActivityCode=('803','1000','1010','1020')]) > 0"></xsl:variable>
		<xsl:variable name="canClose" select="count(Launchpoint:activities[Launchpoint:ActivityCode = ('10001','10017','20204','803','950','951','952','953','954','955','956','957','1000','1010','1020','1030','10700','10709','1300','1301','1302','10702','10703','10704','10705','10706','10707','10708','302017','302018','302019','302020','302021','302022','302023','302050','303426','303526','303527','303528','303532','5000001')]) = 0"></xsl:variable>
	    <Launchpoint:LPCase>
	      <Launchpoint:CaseId><xsl:value-of select="$dcmCase/Launchpoint:CaseId" /></Launchpoint:CaseId>
	      <Launchpoint:ISOIndicator><xsl:value-of select="$dcmCase/Launchpoint:ISOIndicator" /></Launchpoint:ISOIndicator>
	      <Launchpoint:Score><xsl:value-of select="$dcmCase/Launchpoint:Score" /></Launchpoint:Score>
	      <Launchpoint:AccidentDate><xsl:value-of select="$dcmCase/Launchpoint:AccidentDate" /></Launchpoint:AccidentDate>
	      <Launchpoint:BenefitAmount><xsl:value-of select="$dcmCase/Launchpoint:BenefitAmount" /></Launchpoint:BenefitAmount>
	      <Launchpoint:FundingSource><xsl:value-of select="$dcmCase/Launchpoint:FundingSource" /></Launchpoint:FundingSource>
	      <Launchpoint:LOB><xsl:value-of select="$dcmCase/Launchpoint:LOB" /></Launchpoint:LOB>
	      <Launchpoint:WorkComp><xsl:value-of select="$dcmCase/Launchpoint:WorkComp" /></Launchpoint:WorkComp>
	      <Launchpoint:CaseStatus><xsl:value-of select="$dcmCase/Launchpoint:CaseStatus" /></Launchpoint:CaseStatus>
	      <Launchpoint:CaseSource><xsl:value-of select="$dcmCase/Launchpoint:CaseSource" /></Launchpoint:CaseSource>
	      <Launchpoint:ClientId><xsl:value-of select="$dcmCase/Launchpoint:ClientId" /></Launchpoint:ClientId>
	      <Launchpoint:EnvironmentId><xsl:value-of select="$dcmCase/Launchpoint:EnvironmentId" /></Launchpoint:EnvironmentId>
	      <Launchpoint:LifeCycle><xsl:value-of select="$dcmCase/Launchpoint:LifeCycle" /></Launchpoint:LifeCycle>
	      <Launchpoint:CloseReason><xsl:value-of select="$dcmCase/Launchpoint:CloseReason" /></Launchpoint:CloseReason>
      	  <Launchpoint:State><xsl:value-of select="$dcmCase/Launchpoint:State" /></Launchpoint:State>
	      <Launchpoint:IQResponseReceived><xsl:value-of select="$iqresponse" /></Launchpoint:IQResponseReceived>
	      <Launchpoint:CanClose>
	      	<xsl:choose>
	      		<xsl:when test="xs:boolean($dcmCase/Launchpoint:CanClose)"><xsl:value-of select="$canClose" /></xsl:when>
	      		<xsl:otherwise>false</xsl:otherwise>
	      	</xsl:choose>
	      </Launchpoint:CanClose>
	      <Launchpoint:BelowCostEffectivePursuit><xsl:value-of select="$dcmCase/Launchpoint:BelowCostEffectivePursuit" /></Launchpoint:BelowCostEffectivePursuit>
	      <Launchpoint:IQReturnMail><xsl:value-of select="$iqreturnmail" /></Launchpoint:IQReturnMail>
	    </Launchpoint:LPCase>  
	</xsl:template>
</xsl:stylesheet>
