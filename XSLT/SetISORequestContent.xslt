<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:ISORequest="http://bpms.everteam.com/Services/REST/ISORequest.rest" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:Exception_Management="http://bpms.everteam.com/Processes/Integrations/sendToISO/Exception_Management" xmlns:ProcessISO="http://bpms.everteam.com/Processes/Integrations/sendToISO/ProcessISO" xmlns:ISORequest1="__project:///Schemas/integrations/ISORequest.xsd" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/sendToISO" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/sendToISO/processimplicitPartner" xmlns:this="http://bpms.everteam.com/Processes/Integrations/sendToISO/process" xmlns:tns="http://everteam.com/xvar/example" xmlns:ProcessISOCase-Process_ISO_Case="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_Case" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example">
  <!--XSL Skeleton generated on Tue Dec 12 19:51:33 EST 2017
 for F/LaunchPointProcess/Processes/Integrations/sendToISO.bpm
   pool:process
   activity: SendToIso
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/SetISORequestContent.xslt", $thisReceive_requestRequest2Msg.body)
 Input document as defined in the mapper: $thisReceive_requestRequest2Msg.body-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/this:Receive_requestRequest">
  	<xsl:copy-of select="Launchpoint:content/Cases"/>
  </xsl:template>
</xsl:stylesheet>
