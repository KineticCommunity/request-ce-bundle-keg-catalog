<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<bundle:layout page="${bundle.path}/layouts/layout.jsp">
    <section>
        <div class="container">
            <div class='page-header'>
                <h1>Gallery
                    <span class='pull-right btn btn-default'><a href='${bundle.kappLocation}/submit-a-photo'>Submit Photo</a></span>
                </h1>
            </div>
            <c:choose>
                <c:when test="${identity.anonymous}">
                    <c:import url="${bundle.path}/partials/unauthorized.jsp" charEncoding="UTF-8"/>
                </c:when>
                <c:otherwise>
            <div class='row'>
                <div class='col-md-12 gallery' id="gallery">
                </div>
            </div>
                                    </c:otherwise>
                    </c:choose>
        </div>
    </section>
    <div id="blueimp-gallery" class="blueimp-gallery blueimp-gallery-controls">
        <div class="slides"></div>
        <h3 class="title"></h3>
        <p class="description"></p>
        <a class="prev">‹</a>
        <a class="next">›</a>
        <a class="close">×</a>
    </div>
    <script>
        $(window).load(function() {
            //get images from Amazon S3
            var url = "/kinetic/keg-2016/app/api/v1/kapps/helper/forms/keg-catalog-images/submissions?include=values&timeline=createdAt&direction=DESC&limit=100&q=values%5BStatus%5D%20%3D%20%22Active%22";
            $.ajax({
                url: url,
                type: 'GET',
                dataType: 'json',
                success: function(data) {
                    console.log(data.submissions);
                    _.each(data.submissions, function(photo){
                        $("div#gallery").append($("<a>", {
                                href: photo.values["medium image url"], 
                                "data-gallery":"", 
                                title: photo.values["title"],
                                "data-description": photo.values["description"]
                            }).append($("<img>", {src: photo.values["thumbnail url"]})));
                    });
                    $('#blueimp-gallery').on('slide', function (event, index, slide) {
                        $(this).children('.description').text($('#gallery a').eq(index).data('description') || "");
                    });
                },
                error: function() {
                    console.log(
                        "There was an error retrieving images");
                }
            });
        });
    </script>
</bundle:layout>