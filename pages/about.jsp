<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<bundle:layout page="${bundle.path}/layouts/layout.jsp">
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class='page-header'>
                    <h1>About the KEG Catalog</h1>
                </div>
            </div>
        </div>

        <div class='row'>
            <div class='col-md-12'>
                <div class='row'>
                    <div class='col-xs-12 col-md-4'>
                        <img alt="KEG Catalog Screenshot" width="100%" src="${bundle.location}/images/kegcat-ss.png" class="shadow"/>
                    </div>
                    <div class='col-xs-12 col-md-8'>
                        <h3>The look</h3>
                        <p>We sketched out some basic designs for the KEG Catalog to complement the the <a href="http://keg.kineticdata.com/">keg.kineticdata.com</a> registration site without completely replicating it. We wanted to continue to use the great imagery created for the original site, along with the same color scheme and form style.</p>
                        <p>After design, we built out a static version of the site using <a href="https://middlemanapp.com/">Middleman</a> before hooking up any of the dynamic content. Once we were happy with the overall design we converted the HTML into a <a href="https://community.kineticdata.com/10_Kinetic_Request/Kinetic_Request_Core_Edition/Resources/Bundles">Kinetic Request CE bundle</a>. The JavaScript and CSS were copied without modification, and the static HTML needed minimal changes to be converted into dynamic JSP files.</p>
                    </div>
                </div>
                <hr>
                <div class='row'>
                    <div class='col-xs-12 col-md-4'>
                        <img alt="Kinetic Request Form Builder Screenshot" width="100%" src="${bundle.location}/images/builder-ss.png" class="shadow"/>
                    </div>
                    <div class='col-xs-12 col-md-8'>
                        <h3>The forms</h3>
                        <p>Last year the majority of forms were built out by a small group of developers using text editors to craft the raw JSON.  This year, after the completion and enhancment of the form builder, forms could be built faster and by individuals of all experience levels.</p>
                        <p>Just like the 2015 KEG Catalog, most of the forms use data from external sources using Kinetic Bridges.  However this year we are leveraging <a href="https://community.kineticdata.com/10_Kinetic_Request/Kinetic_Request_Core_Edition/Resources/Bridgehub">Kinetic Bridghub</a>, an evolution of Kinetic Bridges that simplifies the deployment and management of new bridges.</p>
                        </div>
                    </div>
                    <hr>
                    <div class='row'>
                        <div class='col-xs-12 col-md-4'>
                            <img alt="Kinetic Task Tree Builder Screenshot" width="100%" src="${bundle.location}/images/tree-ss.png" class="shadow" />
                        </div>
                        <div class='col-xs-12 col-md-8'>
                            <h3>The workflow</h3>
                            <p><a href="http://www.kineticdata.com/products/task/">Kinetic Task</a> is being used to manage all our workflow. Most of this functionality is around the scavenger hunt, requiring approvals for photos, adding points to a total, and emailing.</p>
                            <p>Kinetic Request CE implements an integration strategy called webhooks to send data when a form is submitted. Webhooks allow you to set up integrations that subscribe to defined events on our platform. When an event is triggered, we send an HTTP POST payload to the URL specified by the webhook (in this situation our Kinetic Task server API). Webhooks are used by some of the most popular services including Google, Github, Dropbox, JIRA and others.</p>
                        </div>
                    </div>
                    <hr>
                    <div class='row'>
                        <div class='col-xs-12 col-md-4'>
                            <img alt="Kinetic Task Tree Builder Screenshot" width="100%" src="${bundle.location}/images/manage-ss.png" class="shadow"/>
                        </div>
                        <div class='col-xs-12 col-md-8'>
                            <h3>The release</h3>
                            <p>After the 2016 KEG conference has ended, we will be publishing the entire KEG catalog on the <a href="https://github.com/KineticCommunity/">Kinetic Community github organization page</a> and <a href="https://community.kineticdata.com/">Kinetic Community</a>.  The forms, task trees, foundation data, and bundle will be available in their entirety.  Our hope is that this will act as a great example of Kinetic Request CE, and as a fun playground to deconstruct and learn from.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    </bundle:layout>