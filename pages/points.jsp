<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<c:set var="attendee" value="${DatastoreHelper.retrieveAttendeeRecord()}"/>
<bundle:layout page="${bundle.path}/layouts/layout.jsp">
    <section>
        <div class='container'>
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h1>
                            My Hunting Score
                            <small>
                                <span class="fa-stack pull-right">
                                    <span class="fa fa-star fa-stack-2x"></span>
                                    <span class="fa fa-star fa-stack-2x fa-rotate-180"></span>
                                    <small class="fa-stack-1x fa-inverse">${attendee == null ? '?' : attendee.getValue("Total Points")}</small>
                                </span>
                            </small>
                        </h1>
                    </div>

                    <c:choose>
                        <c:when test="${identity.anonymous}">
                            <c:import url="${bundle.path}/partials/unauthorized.jsp" charEncoding="UTF-8"/>
                        </c:when>
                        <c:otherwise>
                            <c:catch var="exception">
                                <c:set var="awards" value="${ScavengerHuntHelper.getEarnedPoints()}"/>
                            </c:catch>
                            <c:choose>
                                <c:when test="${empty exception}">
                                    <h3>Claimed Items</h3>
                                    <ul class="points">
                                        <c:forEach var="award" items="${awards.get('approved')}">
                                            <li class='points-item'>
                                                <span class='points-name'>
                                                    ${award.name} 
                                                    <c:if test="${not empty award.session}"><small> (${award.session})</small></c:if>
                                                </span>
                                                <div class='points-pull-right'>
                                                    <span class='points-value'>
                                                        <c:if test="${not empty award.points}">${award.points} pts</c:if>
                                                    </span>
                                                </div>
                                            </li>
                                        </c:forEach>
                                        <li class="points-item empty">
                                            <span class='points-name'>
                                                <span class="fa fa-fw fa-info-circle"></span> You do not have any claimed items.
                                            </span>
                                        </li>
                                    </ul>
                                    <hr />
                                    <h3>Pending Items</h3>
                                    <ul class="points">
                                        <c:forEach var="award" items="${awards.get('pending')}">
                                            <li class='points-item'>
                                                <span class='points-name'>
                                                    ${award.name} 
                                                    <c:if test="${not empty award.session}"><small> (${award.session})</small></c:if>
                                                </span>
                                            </li>
                                        </c:forEach>
                                        <li class="points-item empty">
                                            <span class='points-name'>
                                                <span class="fa fa-fw fa-info-circle"></span> You do not have any pending items.
                                            </span>
                                        </li>
                                    </ul>
                                    <hr />
                                    <h3>Denied Items</h3>
                                    <ul class="points">
                                        <c:forEach var="award" items="${awards.get('denied')}">
                                            <li class='points-item'>
                                                <span class='points-name'>
                                                    ${award.name} 
                                                    <c:if test="${not empty award.session}"><small> (${award.session})</small></c:if>
                                                </span>
                                            </li>
                                        </c:forEach>
                                        <li class="points-item empty">
                                            <span class='points-name'>
                                                <span class="fa fa-fw fa-info-circle"></span> You do not have any denied items.
                                            </span>
                                        </li>
                                    </ul>
                                </c:when>
                                <c:otherwise>
                                    <ul class="points">
                                        <li class="points-item empty">
                                            <span class='points-name'>
                                                <span class="fa fa-fw fa-exclamation-triangle"></span> Failed to load points. Please contact an administrator.
                                                <span class="hide">${exception.message}</span>
                                            </span>
                                        </li>
                                    </ul>
                                </c:otherwise>
                            </c:choose>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </section>
</bundle:layout>
