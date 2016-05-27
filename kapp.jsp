<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="bundle/initialization.jspf" %>
<%@include file="bundle/router.jspf" %>
<bundle:layout page="${bundle.path}/layouts/layout.jsp">
<c:set var="bodyClass" scope="request" value="home" />
<bundle:variable name="head">
    <link rel="stylesheet" href="${bundle.location}/css/jquery.slotmachine.custom.css " />
    <bundle:scriptpack>
        <bundle:script src="${bundle.location}/js/jquery.slotmachine.custom.js" />
    </bundle:scriptpack>
</bundle:variable>
<section class='hero'>
    <div class='container'>
        <div id='logo'>
            <a href='${bundle.kappLocation}'>
                <img alt="KEG2016" src="${bundle.location}/images/keg-logo.png" />
                <div class="slot-machine-easter-egg"></div>
            </a>
        </div>
    </div>
</section>
<!-- .hero -->
<div class="announcements override">
</div>
<div class='clearfix'>
    <section class='service-items'>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>Catalog</h1>
                    <ul>
                        <li>
                            <div class='service-item'>
                                <a href="${bundle.kappLocation}?page=agenda">
                                    <figure>
                                        <img class="img-responsive" src="${bundle.location}/images/home/conference.png" />
                                    </figure>
                                    <figcaption>
                                    <h4>Conference Agenda</h4>
                                    </figcaption>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class='service-item'>
                                <a href="${bundle.kappLocation}?page=training">
                                    <figure>
                                        <img class="img-responsive" src="${bundle.location}/images/home/training.png" />
                                    </figure>
                                    <figcaption>
                                    <h4>Training Schedule</h4>
                                    </figcaption>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class='service-item'>
                                <a href="${bundle.kappLocation}?page=gallery">
                                    <figure>
                                        <img class="img-responsive" src="${bundle.location}/images/home/gallery.png" />
                                    </figure>
                                    <figcaption>
                                    <h4>Photo gallery</h4>
                                    </figcaption>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class='service-item'>
                                <a href="${bundle.kappLocation}?page=feedback">
                                    <figure>
                                        <img class="img-responsive" src="${bundle.location}/images/home/feedback.png" />
                                    </figure>
                                    <figcaption>
                                    <h4>Feedback</h4>
                                    </figcaption>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class='service-item'>
                                <a href="${bundle.kappLocation}?page=scavenger-hunt">
                                    <figure>
                                        <img class="img-responsive" src="${bundle.location}/images/home/hunt.png" />
                                    </figure>
                                    <figcaption>
                                    <h4>Scavenger hunt</h4>
                                    </figcaption>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class='service-item'>
                                <a href="${bundle.kappLocation}?page=poster">
                                    <figure>
                                        <img class="img-responsive" src="${bundle.location}/images/home/poster.png" />
                                    </figure>
                                    <figcaption>
                                    <h4>Customer Poster Stories</h4>
                                    </figcaption>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class='service-item'>
                                <a href="${bundle.kappLocation}?page=about">
                                    <figure>
                                        <img class="img-responsive" src="${bundle.location}/images/home/about.png" />
                                    </figure>
                                    <figcaption>
                                    <h4>About this catalog</h4>
                                    </figcaption>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class='service-item'>
                                <a href="${bundle.kappLocation}?page=local">
                                    <figure>
                                        <img class="img-responsive" src="${bundle.location}/images/home/local.png" />
                                    </figure>
                                    <figcaption>
                                    <h4>Local information</h4>
                                    </figcaption>
                                </a>
                            </div>
                        </li>
                        <li>
                            <div class='service-item'>
                                <a href="${bundle.kappLocation}?page=twitter">
                                    <figure>
                                        <img class="img-responsive" src="${bundle.location}/images/home/twitter.png" />
                                    </figure>
                                    <figcaption>
                                        <h4>#KDKEG16 on Twitter</h4>
                                    </figcaption>
                                </a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</div>
<!-- HTML structure for slot machine -->
<div class="slot-machine collapse">
    <table><tr><td><div class="wheel"><div class="first">
        <div><img data-slot-match="keg" src="${bundle.location}/images/slots-wheel1-k.png"/></div>
        <div><img data-slot-match="adventurer" src="${bundle.location}/images/slots-adventurer-wally.png"/></div>
        <div><img data-slot-match="wizard" src="${bundle.location}/images/slots-wizard-wally.png"/></div>
        <div><img data-slot-match="scientist" src="${bundle.location}/images/slots-scientist-wally.png"/></div>
        <div><img data-slot-match="caveman" src="${bundle.location}/images/slots-caveman-wally.png"/></div>
        <div><img data-slot-match="coach" src="${bundle.location}/images/slots-coach-wally.png"/></div>
    </div></div></td><td><div class="wheel"><div class="second">
        <div><img data-slot-match="keg" src="${bundle.location}/images/slots-wheel2-e.png"/></div>
        <div><img data-slot-match="adventurer" src="${bundle.location}/images/slots-adventurer-wally.png"/></div>
        <div><img data-slot-match="wizard" src="${bundle.location}/images/slots-wizard-wally.png"/></div>
        <div><img data-slot-match="scientist" src="${bundle.location}/images/slots-scientist-wally.png"/></div>
        <div><img data-slot-match="caveman" src="${bundle.location}/images/slots-caveman-wally.png"/></div>
        <div><img data-slot-match="coach" src="${bundle.location}/images/slots-coach-wally.png"/></div>
    </div></div></td><td><div class="wheel"><div class="third">
        <div><img data-slot-match="keg" src="${bundle.location}/images/slots-wheel3-g.png"/></div>
        <div><img data-slot-match="adventurer" src="${bundle.location}/images/slots-adventurer-wally.png"/></div>
        <div><img data-slot-match="wizard" src="${bundle.location}/images/slots-wizard-wally.png"/></div>
        <div><img data-slot-match="scientist" src="${bundle.location}/images/slots-scientist-wally.png"/></div>
        <div><img data-slot-match="caveman" src="${bundle.location}/images/slots-caveman-wally.png"/></div>
        <div><img data-slot-match="coach" src="${bundle.location}/images/slots-coach-wally.png"/></div>
    </div></div></td></tr></table>
</div>
</bundle:layout>