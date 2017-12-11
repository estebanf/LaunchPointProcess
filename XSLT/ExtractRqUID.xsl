<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:sendToISO-process="http://bpms.everteam.com/Processes/Integrations/sendToISO/process" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:Process_ISO_CaseimplicitPartner="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_CaseimplicitPartner" xmlns:ISO="http://bpms.everteam.com/Processes/Core/ProcessISOCase/ISO" xmlns:Case_Manager="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Case_Manager" xmlns:diag="http://bpms.everteam.com/Processes/Core/ProcessISOCase" xmlns:tns="http://everteam.com/xvar/example" xmlns:DCM="http://bpms.everteam.com/Processes/Core/ProcessISOCase/DCM" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example" xmlns:generateFile-process="http://bpms.everteam.com/Processes/Integrations/generateFile/process" xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_Case">
  <!--XSL Skeleton generated on Sun Dec 10 23:07:01 EST 2017
 for F/LaunchPointProcess/Processes/Core/ProcessISOCase.bpm
   pool:Process ISO Case
   activity: Extract RqUID
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/ExtractRqUID.xsl", $thisReceive_ISO_ACKRequest1Msg.body)
 Input document as defined in the mapper: $thisReceive_ISO_ACKRequest1Msg.body-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/this:Receive_ISO_ACKRequest">
    <Launchpoint:RqUID>
      <Launchpoint:value><xsl:value-of select="Launchpoint:content/ACORD/ClaimsSvcRs/RqUID" /></Launchpoint:value>
    </Launchpoint:RqUID>
    </xsl:template>
</xsl:stylesheet>
