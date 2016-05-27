<%@page pageEncoding="UTF-8" contentType="application/json" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<%
String strStatus = "failure";
String strMsg = "";


%>
<c:set var="machineBusy" value="${boolMachineBusy}" />
<json:object>
  <json:property name="status" value="${machineBusy}"/>
</json:object>