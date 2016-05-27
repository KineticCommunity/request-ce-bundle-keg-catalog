<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<% Form this_form = (Form) request.getAttribute("form"); %>
<bundle:layout page="${bundle.path}/layouts/layout.jsp">
    <bundle:variable name="head">
        <!-- Get User id and set into a js variable-->
        <script>
            var userName = "${identity.username}";
        </script>
    </bundle:variable>
    <bundle:scriptpack>
        <bundle:script src="${bundle.location}/js/scavenger-hunt-console.js" />
    </bundle:scriptpack>
    <section>
        <div class='container'>
            <div class='row'>
                <div class='col-md-12'>
                    <div class="page-header">
                        <h1>Scavenger Hunt</h1>
                        <p class="text-center">Collect points by completing scavenger hunt from the list below. Compete for prizes and bragging rights! <br/>
                        Prizes and button reward levels listed <a href="${bundle.kappLocation}/?page=rewards">here</a>.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <c:choose>
                        <c:when test="${identity.anonymous}">
                            <c:import url="${bundle.path}/partials/unauthorized.jsp" charEncoding="UTF-8"/>
                        </c:when>
                        <c:otherwise>
                            <!-- Errors -->
                            <div class="errors" style="display:none;"></div>
                            <!-- Toggle -->
                            <span class='toggler active' data-toggle-survey='grid'>
                                <span class='fa fa-th-large'></span>
                            </span>
                            <span class='toggler' data-toggle-survey='list'>
                                <span class='fa fa-list'></span>
                            </span>
                            <!-- Scavenger Hunt List -->
                            <ul class='surveys grid'>
                                <c:forEach var='form' items="${kapp.getCategory('scavenger-hunt').forms}">
                                    <li class='survey-item' data-slug="${form.slug}">
                                        <span class='survey-name'>
                                            <a href='${bundle.kappLocation}/${form.slug}'>
                                                ${form.name}
                                            </a>
                                        </span>
                                        <p class='survey-description'>
                                            ${form.description}
                                        </p>
                                        <div class='survey-pull-right'>
                                            <span class='survey-status'>
                                                <span class='survey-status-label'>
                                                    <a class='label label-default' data-button href='${bundle.kappLocation}/${form.slug}'>Submit</a>
                                                </span>
                                                <span class='survey-points'>
                                                    Max: ${text.defaultIfBlank(form.getAttributeValue('Points'), '0')} pts
                                                </span>
                                            </span>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </section>
</bundle:layout>
<script>
(function () {
    $(function () {
        return $('[data-toggle-survey]').on('click', function () {
            var toggle;
            toggle = $(this).addClass('active').attr('data-toggle-survey');
            $(this).siblings('[data-toggle-survey]').removeClass('active');
            return $('.surveys').removeClass('grid list').addClass(toggle);
        });
    });
}).call(this);
</script>