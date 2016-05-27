<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<bundle:layout page="${bundle.path}/layouts/layout.jsp">
    <section>
        <div class="container">
            <div class='row'>
                <div class='col-md-12'>
                    <div class="page-header">
                        <h1>Twitter</h1>
                    </div>
                </div>
            </div>
            <div class='row'>
                <div class='col-md-5 col-md-offset-1'>
                    <a class='twitter-timeline' data-widget-id='580753748370141184' href='https://twitter.com/hashtag/KDKEG15'>#KDKEG16 Tweets</a>
                </div>
                <div class='col-md-5 col-md-offset-1'>
                    <a class="twitter-timeline" href="https://twitter.com/hashtag/kegscavengerhunt" data-widget-id="731219827428220928">#KEGscavengerhunt Tweets</a>
                </div>
            </div>
            <script>
            !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
            </script>

            <script>
                !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
        </div>
    </section>
</bundle:layout>