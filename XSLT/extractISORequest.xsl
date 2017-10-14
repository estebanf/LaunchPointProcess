<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0" xmlns:Logging="http://bpms.everteam.com/Services/REST/Logging.rest" xmlns:ns="urn:intalio.com:connectors:database:launchpointprocess:check_duplicatesservice" xmlns:Launchpoint="http://www.example.org/Launchpoint" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:Process_ISO_CaseimplicitPartner="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_CaseimplicitPartner" xmlns:GenerateFile="__project:///Schemas/GenerateFile.xsd" xmlns:Case_Manager="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Case_Manager" xmlns:GenerateFileService="http://bpms.everteam.com/Services/REST/GenerateFileService.rest" xmlns:diag="http://bpms.everteam.com/Processes/Core/ProcessISOCase" xmlns:Logging1="__project:///Schemas/Logging.xsd" xmlns:tns="http://everteam.com/xvar/example" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:metrics="http://test.com/xvar/example" xmlns:this="http://bpms.everteam.com/Processes/Core/ProcessISOCase/Process_ISO_Case" xmlns:SendToISOService="http://bpms.everteam.com/Services/REST/SendToISOService.rest">
  <!--XSL Skeleton generated on Fri Oct 13 16:45:13 MDT 2017
 for F/LaunchPointProcess/Processes/Core/ProcessISOCase.bpm
   pool:Process ISO Case
   activity: Extract ISO Data
 Complete doXslTransform: bpel:doXslTransform("../../XSLT/extractISORequest.xsl", $generateFileServiceFetch_ISO_DataResponse1Msg.response/Launchpoint:Request)
 Input document as defined in the mapper: $generateFileServiceFetch_ISO_DataResponse1Msg.response/Launchpoint:Request-->
  <xsl:output/>
  <!--No parameters are currently passed to doXslTransform.-->
  <xsl:template match="/Launchpoint:Request">
  	<!-- <xsl:text disable-output-escaping="yes" select="Launchpoint:Xml/text()" /> -->
  	  <xsl:value-of select="Launchpoint:Xml/text()"/>
  </xsl:template>
</xsl:stylesheet>
