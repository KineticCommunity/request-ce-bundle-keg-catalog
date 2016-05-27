<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="bundle/initialization.jspf" %>
<bundle:layout page="layouts/layout.jsp">
    <bundle:variable name="head">
        <title>${text.escape(kapp.name)} Login</title>
    </bundle:variable>
<div class="container">
    <section class="row">
        <div class="col-md-6 col-md-offset-3">
            <h1>Login</h1>
            <form action="<c:url value="/${space.slug}/app/login.do"/>" method="POST" novalidate>
                <!-- CSRF Token field -->
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <!-- Space to login to -->
                <input type="hidden" name="j_space" value="${space.slug}"/>
                <!-- Kapp to login to -->
                <input type="hidden" name="j_kapp" value="${kapp.slug}"/>
                <!-- Username field -->
                <div class="form-group">
                    <label for="j_username">Email</label>
                    <input type="email" name="j_username" id="j_username" class="form-control" autofocus/>
                </div>
                <!-- Password field -->
                <div class="form-group">
                    <label for="j_password">${resourceBundle.getString("auth.login.password")}</label>
                    <input type="password" name="j_password" id="j_password" class="form-control" autocomplete="off"/>
                </div>
                <div class="form-group">
                    <span class="pull-right">
                        <c:choose>
                            <c:when test="${kapp != null}">
                                 <a href="${bundle.spaceLocation}/app/reset-password?kapp=${kapp.slug}">Forgot Password?</a>
                            </c:when>
                            <c:otherwise>
                                <a href="${bundle.spaceLocation}/app/reset-password">Forgot Password?</a>
                            </c:otherwise>
                        </c:choose>
                    </span>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-default">${resourceBundle.getString("auth.login.submit")}</button>
                </div>
            </form>
        </div>
    </section>
</div>
</bundle:layout>