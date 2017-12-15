<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:Exception_Management="http://bpms.everteam.com/Processes/Integrations/sendToISO/Exception_Management" xmlns:ProcessISO="http://bpms.everteam.com/Processes/Integrations/sendToISO/ProcessISO" xmlns:diag="http://bpms.everteam.com/Processes/Integrations/sendToISO" xmlns:ns0="http://tempuri.org/" xmlns:processimplicitPartner="http://bpms.everteam.com/Processes/Integrations/sendToISO/processimplicitPartner" xmlns:this="http://bpms.everteam.com/Processes/Integrations/sendToISO/process" xmlns:tns="http://everteam.com/xvar/example" xmlns:ProcessISOCase-Process_ISO_Case="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_Case" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example">
  <!--XSL Skeleton generated on Thu Dec 14 10:05:54 EST 2017
 for F/LaunchPointProcess/Processes/Integrations/sendToISO.bpm
   pool:process
   activity: SubmitToISO
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/transformIsoVendorRequest.xslt", $processISOReceive_ISO_ACKRequest1Msg.body)
 Input document as defined in the mapper: $processISOReceive_ISO_ACKRequest1Msg.body-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/ProcessISOCase-Process_ISO_Case:Receive_ISO_ACKRequest">
    <ns0:SubmitToISO>
      <ns0:xml><xsl:copy-of select="Launchpoint:content/Cases" /></ns0:xml>
    </ns0:SubmitToISO>
  </xsl:template>
</xsl:stylesheet>
