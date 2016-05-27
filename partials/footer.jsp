<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<footer class='footer'>
    <div class='container'>
        <div class='row'>
            <div class='col-sm-5'>
                <p>
                    &copy;
                    2016
                    <a href='http://www.kineticdata.com' target='_blank'>Kinetic Data, Inc.</a>
                    All rights reserved.
                </p>
            </div>
            <div class='col-sm-7 hidden-xs'>
                <c:if test='${kapp != null}'>
                    <ul class='nav list-unstyled pull-right'>
                        <li class='menu-item'>
                            <a data-scroll='' href='${bundle.kappLocation}?page=agenda'>Schedule</a>
                        </li>
                        <li class='menu-item'>
                            <a data-scroll='' href='${bundle.kappLocation}?page=scavenger-hunt'>Scavenger Hunt</a>
                        </li>
                        <li class='menu-item'>
                            <a data-scroll='' href='${bundle.kappLocation}?page=feedback'>Feedback</a>
                        </li>
                        <li class='menu-item'>
                            <a href='#top'>
                                Back to Top
                                <span class='fa fa-angle-up'></span>
                            </a>
                        </li>
                    </ul>
                </c:if>
            </div>
        </div>
    </div>
</footer>