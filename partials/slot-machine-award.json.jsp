<%@page pageEncoding="UTF-8" contentType="application/json" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<json:object>
    <c:choose>
        <c:when test="${identity.anonymous}">
            <json:property name="message" value="You must be logged in to be awarded points."/>
        </c:when>
        <c:otherwise>
            <c:catch var="exception">
                <c:set var="awards" value="${Submissions.searchByForm(space.getKapp('helper').getForm('keg-points-audit'), ScavengerHuntHelper.buildSlotMachineSubmissionParams(identity.username))}"/>
            </c:catch>
            <c:choose>
                <c:when test="${not empty exception}">
                    <json:property name="message" value="Failed to check if points have already been awarded. Please contact an administrator."/>
                    <json:property name="exception" value="${exception}"/>
                </c:when>
                <c:when test="${not empty awards}">
                    <json:property name="message" value="You have already been awarded points. You can't win more than once."/>
                </c:when>
                <c:otherwise>
                    <c:set var="award" value="${ScavengerHuntHelper.awardSlotMachinePoints(identity.username)}"/>
                    <c:choose>
                        <c:when test="${award}">
                            <json:property name="message" value="Congratulations! You have been awarded points for winning at the slot machine."/>
                            <json:property name="points" value="true"/>
                        </c:when>
                        <c:otherwise>
                            <json:property name="message" value="Failed to award points. Please contact an administrator."/>
                        </c:otherwise>
                    </c:choose>
                </c:otherwise>
            </c:choose>
        </c:otherwise>
    </c:choose>
</json:object>