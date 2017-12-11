<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/getCaseDetails" xmlns:client="http://bpms.everteam.com/Processes/Integrations/getCaseDetails/client" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/getCaseDetails/processimplicitPartner" xmlns:tns="http://everteam.com/xvar/example" xmlns:this="http://bpms.everteam.com/Processes/Integrations/getCaseDetails/process" xmlns:CaseEvaluator-process="http://bpms.everteam.com/Processes/Core/CaseEvaluator/process" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:ns="urn:intalio.com:connectors:database:launchpointprocess:getcaseservice">
  <!--XSL Skeleton generated on Sat Nov 25 11:09:57 EST 2017
 for F/LaunchPointProcess/Processes/Integrations/getCaseDetails.bpm
   pool:process
   activity: Send case
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformCaseDetails.xslt", $nsGetCaseResponse1Msg.parameters)
 Input document as defined in the mapper: $nsGetCaseResponse1Msg.parameters-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/ns:getCaseResultSet">
    <Launchpoint:LPCase>
    	<xsl:apply-templates />
    </Launchpoint:LPCase>
  </xsl:template>
  <xsl:template match="ns:rows">
  	<xsl:apply-templates />
  </xsl:template>
  <xsl:template match="ns:row">
      <Launchpoint:CaseId><xsl:value-of select="ns:caseid" /></Launchpoint:CaseId>
      <Launchpoint:BatchId><xsl:value-of select="ns:batchid" /></Launchpoint:BatchId>
      <Launchpoint:ClientId><xsl:value-of select="ns:clientid" /></Launchpoint:ClientId>
      <Launchpoint:EnvironmentId><xsl:value-of select="ns:environmentid" /></Launchpoint:EnvironmentId>
      <Launchpoint:ISOIndicator><xsl:value-of select="ns:isoindicator" /></Launchpoint:ISOIndicator>
      <Launchpoint:Score><xsl:value-of select="ns:score" /></Launchpoint:Score>
      <Launchpoint:AccidentDate><xsl:value-of select="ns:accidentdate" /></Launchpoint:AccidentDate>
      <Launchpoint:BenefitAmount><xsl:value-of select="ns:benefitamount" /></Launchpoint:BenefitAmount>
      <Launchpoint:FundingSource><xsl:value-of select="ns:fundingsource" /></Launchpoint:FundingSource>
      <Launchpoint:LOB><xsl:value-of select="ns:lob" /></Launchpoint:LOB>
      <Launchpoint:WorkComp><xsl:value-of select="ns:workcomp" /></Launchpoint:WorkComp>
      <Launchpoint:CaseStatus><xsl:value-of select="ns:casestatus" /></Launchpoint:CaseStatus>
      <Launchpoint:CaseSource><xsl:value-of select="ns:casesource" /></Launchpoint:CaseSource>
      <Launchpoint:LifeCycle><xsl:value-of select="ns:lifecycle" /></Launchpoint:LifeCycle>
      <Launchpoint:CloseReason><xsl:value-of select="ns:closereason" /></Launchpoint:CloseReason>
      <Launchpoint:State><xsl:value-of select="ns:state" /></Launchpoint:State>
      <Launchpoint:IQResponseReceived><xsl:value-of select="ns:iqresponsereceived" /></Launchpoint:IQResponseReceived>
      <Launchpoint:CanClose><xsl:value-of select="ns:canclose" /></Launchpoint:CanClose>
      <Launchpoint:BelowCostEffectivePursuit><xsl:value-of select="ns:belowcosteffectivepursuit" /></Launchpoint:BelowCostEffectivePursuit>
      <Launchpoint:IQReturnMail><xsl:value-of select="ns:iqreturnmail" /></Launchpoint:IQReturnMail>
      <Launchpoint:InvalidAddress><xsl:value-of select="ns:invalidaddress" /></Launchpoint:InvalidAddress>
      <Launchpoint:IQHold><xsl:value-of select="ns:iqhold" /></Launchpoint:IQHold>
      <Launchpoint:ISOSent><xsl:value-of select="ns:isosent" /></Launchpoint:ISOSent>
      <Launchpoint:ISOResponse><xsl:value-of select="ns:isoresponse" /></Launchpoint:ISOResponse>
      <Launchpoint:vip><xsl:value-of select="ns:vip" /></Launchpoint:vip>
      <Launchpoint:IQLetters><xsl:value-of select="ns:iqletters" /></Launchpoint:IQLetters>
      <Launchpoint:daysSinceAccident><xsl:value-of select="ns:dayssinceaccident" /></Launchpoint:daysSinceAccident>
      <Launchpoint:BelowCostEffectivePursuitDueDatePassed><xsl:value-of select="ns:belowcosteffectivepursuitduedatepassed" /></Launchpoint:BelowCostEffectivePursuitDueDatePassed>
      <Launchpoint:daysSinceLastIQLetter><xsl:value-of select="ns:dayssincelastiqletter" /></Launchpoint:daysSinceLastIQLetter>
  </xsl:template>  
</xsl:stylesheet>
