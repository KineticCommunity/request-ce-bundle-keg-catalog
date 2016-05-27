<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="bundle/initialization.jspf" %>
<bundle:layout page="layouts/layout.jsp">
    <bundle:variable name="head">
        <title>${text.escape(space.name)} Reset Password</title>
    </bundle:variable>
    <!--<script src="${bundle.location}/js/resetPassword.js" ></script>-->
<div class="container">
    <section class="row">
        <div class="col-md-6 col-md-offset-3">
    <c:choose>
        <c:when test="${param.confirmation == null}">
            <h1>Password Reset</h1>
            <!-- Password reset -->
            <c:choose>
                <c:when test="${kapp != null}">
                    <form action="<c:url value="/${space.slug}/app/reset-password?kapp=${kapp.slug}"/>" method="POST" novalidate>
                </c:when>
                <c:otherwise>
                    <form action="<c:url value="/${space.slug}/app/reset-password"/>" method="POST" novalidate>
                </c:otherwise>
            </c:choose>
            <c:if test="${param.badtoken != null}">
                <div class="alert alert-danger">
                    Your password reset token was not valid. Please try again.
                </div>
            </c:if>

            <!-- CSRF Token field -->
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

            <!-- Email field -->
            <div class="form-group">
                <label for="username">
                    Email
                </label>
                <input type="email" name="username" id="username" class="form-control" autofocus/>
            </div>

            <div class="form-group">
                <button id="resetPassword" type="submit" class="btn btn-default">${resourceBundle.getString("auth.resetPassword.submit")}</button>
                <c:choose>
                    <c:when test="${kapp != null}">
                        <a href="<c:url value="/${space.slug}/app/reset-password?confirmation&kapp=${kapp.slug}"/>">I already have a reset code.</a>
                    </c:when>
                    <c:otherwise>
                        <a href="<c:url value="/${space.slug}/app/reset-password?confirmation"/>">I already have a reset code.</a>
                    </c:otherwise>
                </c:choose>

            </div>
            </form>
        </c:when>
        <c:otherwise>
            <h1>Password Reset</h1>
            <!-- Password reset confirmation -->
            <form action="<c:url value="/${space.slug}/app/reset-password/token"/>" method="POST">
            <p>
                You will receive an email with a unique code which will enable you to reset your password. Type that
                password into the token field and enter your new desired password.
            </p>

            <c:if test="${param.nomatch != null}">
                <div class="alert alert-danger">
                    Your passwords did not match.
                </div>
            </c:if>

                <!-- CSRF Token field -->
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                <!-- Token field -->
                <div class="form-group">
                    <label for="token">
                        ${resourceBundle.getString("auth.resetPassword.token")}
                    </label>
                    <input type="text" name="token" id="token" class="form-control" autofocus/>
                </div>

                <!-- Password field -->
                <div class="form-group">
                    <label for="password">
                        ${resourceBundle.getString("auth.resetPassword.password")}
                    </label>
                    <input type="password" name="password" id="password" class="form-control"/>
                </div>

                <!-- Password Confirmation field -->
                <div class="form-group">
                    <label for="confirmPassword">
                        ${resourceBundle.getString("auth.resetPassword.confirm_password")}
                    </label>
                    <input type="password" name="confirmPassword" id="confirmPassword" class="form-control"/>
                </div>

                <div class="form-group">
                    <button type="submit" class="btn btn-default">${resourceBundle.getString("auth.resetPassword.submit")}</button>
                    <c:choose>
                        <c:when test="${kapp != null}">
                            <a href="<c:url value="/${space.slug}/app/reset-password?kapp=${kapp.slug}"/>">I don't have a reset code.</a>
                        </c:when>
                        <c:otherwise>
                            <a href="<c:url value="/${space.slug}/app/reset-password"/>">I don't have a reset code.</a>
                        </c:otherwise>
                    </c:choose>
                </div>
            </form>
        </c:otherwise>
    </c:choose>
    </div></section></div>
</bundle:layout>
