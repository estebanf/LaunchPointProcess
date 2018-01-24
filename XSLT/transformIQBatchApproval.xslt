<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/HumanVerification" xmlns:client="http://bpms.everteam.com/Processes/Integrations/HumanVerification/client" xmlns:this="http://bpms.everteam.com/Processes/Integrations/HumanVerification/process" xmlns:tns="http://everteam.com/xvar/example" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:ProcessIQCase-Queue_Monitor="http://bpms.everteam.com/Processes/Core/ProcessIQCase/Queue_Monitor" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:human="http://bpms.everteam.com/Processes/Integrations/HumanVerification/human" xmlns:HumanVerificationForm="http://www.intalio.com/gi/Forms/HumanVerificationForm.gi/attachments" xmlns:HumanVerificationForm1="http://www.intalio.com/gi/Forms/HumanVerificationForm.gi">
  <!--XSL Skeleton generated on Tue Jan 23 19:32:27 EST 2018
 for F/LaunchPointProcess/Processes/Integrations/HumanVerification.bpm
   pool:process
   activity: Empty_Intermediate_Event
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformIQBatchApproval.xslt", $thisEventStartMessageRequest1.body, "url", ode:get-property-value("IQLETTERBASEURL"))
 Input document as defined in the mapper: $thisEventStartMessageRequest1.body-->
  <xsl:output/>
  <xsl:param name="url">
    <!--Parameter defined in mapper as ode:get-property-value("IQLETTERBASEURL") variable type: unable to locate the variable and read the type-->
    <error>Parameter url no initialized</error>
  </xsl:param>
  <xsl:template match="/this:received_validation_requestRequest">
    <Launchpoint:IQBatchApproval>
      <Launchpoint:Batch>
        <Launchpoint:EnvironmentId><xsl:value-of select="Launchpoint:EnvironmentId" /></Launchpoint:EnvironmentId>
        <Launchpoint:IQBatchId><xsl:value-of select="Launchpoint:IQBatchId" /></Launchpoint:IQBatchId>
        <Launchpoint:ClientId><xsl:value-of select="Launchpoint:ClientId" /></Launchpoint:ClientId>
        <Launchpoint:TotalLetterCount><xsl:value-of select="Launchpoint:TotalLetterCount" /></Launchpoint:TotalLetterCount>
		<xsl:for-each select="Launchpoint:Cases">
        <Launchpoint:Cases>
          <Launchpoint:CaseId><xsl:value-of select="Launchpoint:CaseId" /></Launchpoint:CaseId>
          <Launchpoint:FileId><xsl:value-of select="concat($url,Launchpoint:FileId)" /></Launchpoint:FileId>
        </Launchpoint:Cases>
		</xsl:for-each>
      </Launchpoint:Batch>
      <Launchpoint:Decision>REJECTED</Launchpoint:Decision>
    </Launchpoint:IQBatchApproval>
  </xsl:template>
</xsl:stylesheet>
