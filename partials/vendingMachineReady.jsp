<%@page pageEncoding="UTF-8" contentType="application/json" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<%
boolean boolMachineBusy = true;
%>
<c:set var="machineBusy" value="${machineBusy}" />
<json:object>
  <json:property name="vendingMachineReady" value="${true}"/>
</json:object>