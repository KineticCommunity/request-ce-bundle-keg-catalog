<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<% Form this_form = (Form) request.getAttribute("form"); %>
<bundle:layout page="${bundle.path}/layouts/layout.jsp">
    <bundle:variable name="head">
    <!--     <script src="${bundle.location}/js/scavenger-hunt-console.js" type="text/javascript"></script> -->
    <!-- Get User id and set into a js variable-->
        <script>
            var userName = "${identity.username}";
        </script>
    </bundle:variable>
    <section>
        <div class='container'>
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h1>Feedback</h1>
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
                                <c:forEach var='form' items="${kapp.getCategory('feedback').forms}">
                                    <li class='survey-item'>
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
                                                    <a class='label label-default' href='${bundle.kappLocation}/${form.slug}'>Submit</a>
                                                </span>
                                                <span class='survey-points'></span>
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