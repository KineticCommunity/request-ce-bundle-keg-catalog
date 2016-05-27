<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="bundle/initialization.jspf" %>
<bundle:layout page="layouts/form.jsp">
    <bundle:variable name="head">
        <title>${text.escape(form.name)}</title>
    </bundle:variable>
    <section class="page">
        <div class="page-header">
            <h1>${text.escape(form.name)}</h1>
        </div>
        <div class='container'>
            <div class='row'>
                <div class="col-xs-12">
                    <div class="text-center">
                        <img src="${bundle.location}/images/WallySafari.png" alt="Thank you for your submission" width="200px;"/>
                        <h4>Thank you for participating in the KEG Scavenger Hunt.</h4>
                        <h5>Your submission is being processed to determine how many points will be awarded.</h5>

                        <p><a href="${bundle.kappLocation}?page=scavenger-hunt">Return to the Hunt</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
</bundle:layout>
