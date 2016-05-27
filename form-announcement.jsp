<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="bundle/initialization.jspf" %>
<%@include file="bundle/router.jspf" %>
<bundle:variable name="head">
    <title>${form.name}</title>
</bundle:variable>
<bundle:layout page="layouts/form.jsp">
    <c:if test="${!identity.authenticated || !identity.spaceAdmin}">
        <c:redirect url="/${space.slug}"/>
    </c:if>
    <section>
        <div class='container'>
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h1>
                            <span>${form.name}</span>
                            <c:if test="${form.hasAttribute('Points')}">
                                <span class='points-attribute'>
                                    <span><em>${form.getAttributeValue('Points')}</em> pts</span>
                                </span>
                            </c:if>
                        </h1>
                    </div>
                    <div class="errors" style="display:none;"></div>
                    <app:bodyContent/>
                </div>
            </div>
        </div>
    </section>
</bundle:layout>
