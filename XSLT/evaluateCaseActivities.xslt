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
		<xsl:variable name="nIQHold" select="count(Launchpoint:activities[Launchpoint:ActivityType=('IQ on hold')])"></xsl:variable>
		<xsl:variable name="nIQResume" select="count(Launchpoint:activities[Launchpoint:ActivityType=('IQ resume')])"></xsl:variable>
    <!-- Change to latest between iqhold and iq resume -->
    <xsl:variable name="iqHold" select="$nIQHold > $nIQResume" />
		<xsl:variable name="iqreturnmail" select="count(Launchpoint:activities[Launchpoint:ActivityType=('IQ Returned Mail')]) > 0"></xsl:variable>
		<xsl:variable name="iqreturnmaildate">
        	<xsl:for-each select="Launchpoint:activities[Launchpoint:ActivityType=('IQ Returned Mail')]">
            	<xsl:sort select="Launchpoint:CreatedDate" order="descending" />
	            <xsl:if test="position() = 1">
	            	<xsl:value-of select="Launchpoint:CreatedDate"/>
	            </xsl:if>
          </xsl:for-each>		
		</xsl:variable>
		<xsl:variable name="iqresponse" select="count(Launchpoint:activities[Launchpoint:ActivityType=('IQ Incoming Phone Call: IQ Response','IQ received via mail','IQ received via phone','IQ received via web','IQ received via fax','IQ Received Via Mail','IQ Received via Mail, Missing Information')]) > 0"></xsl:variable>
		<xsl:variable name="canClose" select="count(Launchpoint:activities[Launchpoint:ActivityType = ('Incoming letter: Lien acknowledgment','Letter of Representation','Outgoing Letter : Lien','IQ Incoming Phone Call: IQ Response','IQ Outgoing Phone Call: Completed','IQ Outgoing Phone Call: Left Message','IQ Outgoing Phone Call: Busy Line','IQ Outgoing Phone Call: No Answer','IQ Outgoing Phone Call: Invalid Phone Number','IQ Outgoing Phone Call: Transferred','IQ Outgoing Phone Call: Will Call Us Back','IQ Outgoing Phone Call: Refused Message','IQ received via mail','IQ received via phone','IQ received via web','IQ received via fax','Incoming Letter: IQ Received Via Mail','IQ Received via Mail, Missing Information','ISO: Index requested','ISO: Index received (POS)','ISO: Index received (NEG)','ISO Index Received: Error','ISO Index Received: Pending','ISO Index Received: Miss','ISO Index Received: Hit Within 90 Days','ISO Index Received: Hit Outside 90 Days','ISO Index Received: Match','ISO Index Received: Update','ISO Index Received: Error','ISO Index Received: Pending','ISO Index Received: Miss','ISO Index Received: Hit Within 90 Days','ISO Index Received: Hit Outside 90 Days','ISO Index Received: Match','ISO Index Received: Update','ISO Index Received: INITIAL CLAIM NOT FOUND INDICATOR Error','ISO Validation Changed','ISO Index Received: Point Match','ISO Index Received: Point Hit','ISO Index Received: Point Miss','ISO Claim Categories','ISO Index Report')]) = 0"></xsl:variable>
		<xsl:variable name="isoSent" select="count(Launchpoint:activities[Launchpoint:ActivityType=('ISO Index Received: Pending')]) > 0"></xsl:variable>
		<xsl:variable name="iqLetters">
			<xsl:choose>
				<xsl:when test="$iqreturnmail"><xsl:value-of select="count(Launchpoint:activities[Launchpoint:ActivityType=('Outgoing Letter : IQ(FIRST)','Outgoing Letter : IQ(SECOND)','Outgoing Letter : IQ(THIRD)','Outgoing Letter : IQ(FOURTH)') and xs:date(Launchpoint:CreatedDate) &gt; xs:date($iqreturnmaildate)])" /></xsl:when>
				<xsl:otherwise><xsl:value-of select="count(Launchpoint:activities[Launchpoint:ActivityType=('Outgoing Letter : IQ(FIRST)','Outgoing Letter : IQ(SECOND)','Outgoing Letter : IQ(THIRD)','Outgoing Letter : IQ(FOURTH)')])" /></xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
		<xsl:variable name="daysSinceLastIQLetter">
			<xsl:choose>
				<xsl:when test="$iqreturnmail">
					<xsl:choose>
						<xsl:when test="count(Launchpoint:activities[Launchpoint:ActivityType=('Outgoing Letter : IQ(FIRST)','Outgoing Letter : IQ(SECOND)','Outgoing Letter : IQ(THIRD)','Outgoing Letter : IQ(FOURTH)') and xs:date(Launchpoint:CreatedDate) &gt; xs:date($iqreturnmaildate)]) > 0">
							<xsl:for-each select="Launchpoint:activities[Launchpoint:ActivityType=('Outgoing Letter : IQ(FIRST)','Outgoing Letter : IQ(SECOND)','Outgoing Letter : IQ(THIRD)','Outgoing Letter : IQ(FOURTH)') and xs:date(Launchpoint:CreatedDate) &gt; xs:date($iqreturnmaildate)]">
				            	<xsl:sort select="Launchpoint:CreatedDate" order="descending" />
					            <xsl:if test="position() = 1">
					            	<xsl:value-of select="Launchpoint:CreatedDate"/>
					            </xsl:if>
							</xsl:for-each>
						</xsl:when>
						<xsl:otherwise><xsl:value-of select="current-date()" /></xsl:otherwise> 
					</xsl:choose>
				</xsl:when>
				<xsl:otherwise>
					<xsl:for-each select="Launchpoint:activities[Launchpoint:ActivityType=('Outgoing Letter : IQ(FIRST)','Outgoing Letter : IQ(SECOND)','Outgoing Letter : IQ(THIRD)','Outgoing Letter : IQ(FOURTH)')]">
		            	<xsl:sort select="Launchpoint:CreatedDate" order="descending" />
			            <xsl:if test="position() = 1">
			            	<xsl:value-of select="Launchpoint:CreatedDate"/>
			            </xsl:if>
					</xsl:for-each>
				</xsl:otherwise>
			</xsl:choose>
		</xsl:variable>
	    <Launchpoint:LPCase>
	      <Launchpoint:CaseId><xsl:value-of select="$dcmCase/Launchpoint:CaseId" /></Launchpoint:CaseId>
      	  <Launchpoint:BatchId><xsl:value-of select="$dcmCase/Launchpoint:BatchId" /></Launchpoint:BatchId>
	      <Launchpoint:ClientId><xsl:value-of select="$dcmCase/Launchpoint:ClientId" /></Launchpoint:ClientId>
	      <Launchpoint:EnvironmentId><xsl:value-of select="$dcmCase/Launchpoint:EnvironmentId" /></Launchpoint:EnvironmentId>
	      <Launchpoint:ISOIndicator><xsl:value-of select="$dcmCase/Launchpoint:ISOIndicator" /></Launchpoint:ISOIndicator>
	      <Launchpoint:Score><xsl:value-of select="$dcmCase/Launchpoint:Score" /></Launchpoint:Score>
	      <Launchpoint:AccidentDate><xsl:value-of select="$dcmCase/Launchpoint:AccidentDate" /></Launchpoint:AccidentDate>
	      <Launchpoint:BenefitAmount><xsl:value-of select="$dcmCase/Launchpoint:BenefitAmount" /></Launchpoint:BenefitAmount>
	      <Launchpoint:FundingSource><xsl:value-of select="$dcmCase/Launchpoint:FundingSource" /></Launchpoint:FundingSource>
	      <Launchpoint:LOB><xsl:value-of select="$dcmCase/Launchpoint:LOB" /></Launchpoint:LOB>
	      <Launchpoint:WorkComp><xsl:value-of select="$dcmCase/Launchpoint:WorkComp" /></Launchpoint:WorkComp>
	      <Launchpoint:CaseStatus><xsl:value-of select="$dcmCase/Launchpoint:CaseStatus" /></Launchpoint:CaseStatus>
	      <Launchpoint:CaseSource><xsl:value-of select="$dcmCase/Launchpoint:CaseSource" /></Launchpoint:CaseSource>
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
      	  <Launchpoint:InvalidAddress><xsl:value-of select="$dcmCase/Launchpoint:InvalidAddress" /></Launchpoint:InvalidAddress>
      	  <Launchpoint:IQHold><xsl:value-of select="$iqHold" /></Launchpoint:IQHold>
   		  <Launchpoint:ISOSent><xsl:value-of select="$isoSent" /></Launchpoint:ISOSent>
	      <Launchpoint:ISOResponse />
		  <Launchpoint:vip>false</Launchpoint:vip>
		  <Launchpoint:IQLetters><xsl:value-of select="$iqLetters" /></Launchpoint:IQLetters>
		  <Launchpoint:daysSinceAccident><xsl:value-of select="Launchpoint:daysSinceAccident" /></Launchpoint:daysSinceAccident>
	      <Launchpoint:BelowCostEffectivePursuitDueDatePassed><xsl:value-of select="Launchpoint:BelowCostEffectivePursuitDueDatePassed" /></Launchpoint:BelowCostEffectivePursuitDueDatePassed>
	      <Launchpoint:daysSinceLastIQLetter><xsl:value-of select="days-from-duration(current-date() - xs:date($daysSinceLastIQLetter))" /></Launchpoint:daysSinceLastIQLetter>
	    </Launchpoint:LPCase>  
	</xsl:template>
</xsl:stylesheet>