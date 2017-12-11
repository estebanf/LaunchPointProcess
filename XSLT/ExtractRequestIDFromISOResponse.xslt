<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:load_scored_iso="urn:intalio.com:connectors:database:launchpointprocess:load_scored_isoservice" xmlns:diag="http://bpms.everteam.com/Processes/Core/ProcessISOResponse" xmlns:tns="http://everteam.com/xvar/example" xmlns:DCM="http://bpms.everteam.com/Processes/Core/ProcessISOResponse/DCM" xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessISOResponse/ISO_Response_Manager" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:DB="http://bpms.everteam.com/Processes/Core/ProcessISOResponse/DB" xmlns:ISO="http://bpms.everteam.com/Processes/Core/ProcessISOResponse/ISO">
  <!--XSL Skeleton generated on Mon Dec 11 00:18:14 EST 2017
 for F/LaunchPointProcess/Processes/Core/ProcessISOResponse.bpm
   pool:ISO Response Manager
   activity: Empty_Intermediate_Event
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/ExtractRequestIDFromISOResponse.xslt", $thisEventStartMessageRequest1.body)
 Input document as defined in the mapper: $thisEventStartMessageRequest1.body-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/this:Receive_ISO_ResponseRequest">
    <Launchpoint:RqUID>
      <Launchpoint:value><xsl:value-of select="Launchpoint:content/ClaimInvestigationAddRs/RqUID" /></Launchpoint:value>
    </Launchpoint:RqUID>
  </xsl:template>
</xsl:stylesheet>
