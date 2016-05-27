<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<bundle:layout page="${bundle.path}/layouts/layout.jsp">
    <section>
        <div class='container'>
            <div class='row'>
                <div class='col-md-12'>
                    <div class="page-header">
                        <h1>Customer Poster Stories</h1>
                    </div>
                    <c:choose>
                        <c:when test="${identity.anonymous}">
                            <c:import url="${bundle.path}/partials/unauthorized.jsp" charEncoding="UTF-8"/>
                        </c:when>
                        <c:otherwise>
                            <div class='row'>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='Aegon' src='${bundle.location}/images/posters/keg16-customer-aegon.png' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>Aegon</h3>
                                            <p><a href='${bundle.location}/images/posters/keg16-customer-aegon.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='NITC' src='${bundle.location}/images/posters/keg16-customer-nitc.png' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>NITC</h3>
                                            <p><a href='${bundle.location}/images/posters/keg16-customer-nitc.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='QMX' src='${bundle.location}/images/posters/keg16-customer-qmx.png' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>QMX</h3>
                                            <p><a href='${bundle.location}/images/posters/keg16-customer-qmx.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='Telus' src='${bundle.location}/images/posters/keg16-customer-telus.png' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>Telus</h3>
                                            <p><a href='${bundle.location}/images/posters/keg16-customer-telus.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='Schneider Electric' src='${bundle.location}/images/posters/keg16-customer-schneiderElectric.png' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>Schneider Electric</h3>
                                            <p><a href='${bundle.location}/images/posters/keg16-customer-schneiderElectric.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='ATS' src='${bundle.location}/images/posters/keg16-customer-ats.png' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>ATS</h3>
                                            <p><a href='${bundle.location}/images/posters/keg16-customer-ats.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='All Covered' src='${bundle.location}/images/posters/keg16-customer-allcovered.png' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>All Covered</h3>
                                            <p><a href='${bundle.location}/images/posters/keg16-customer-allcovered.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='Siam' src='${bundle.location}/images/posters/keg16-poster-siam.png' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>SIAM</h3>
                                            <p><a href='${bundle.location}/images/posters/keg16-poster-siam.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='Fulfillment' src='${bundle.location}/images/posters/keg16-poster-fulfillment.png' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>Kinetic Fulfillment</h3>
                                            <p><a href='${bundle.location}/images/posters/keg16-poster-fulfillment.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='Hubs' src='${bundle.location}/images/posters/keg16-poster-hubs.png' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>Kinetic Request CE Hubs</h3>
                                            <p><a href='${bundle.location}/images/posters/keg16-poster-hubs.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='Task' src='${bundle.location}/images/posters/kinetic-data-task.jpg' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>Kinetic Task</h3>
                                            <p><a href='${bundle.location}/images/posters/kinetic-data-task.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='Response' src='${bundle.location}/images/posters/kinetic-data-response.jpg' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>Kinetic Response</h3>
                                            <p><a href='${bundle.location}/images/posters/kinetic-data-response.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='Survey' src='${bundle.location}/images/posters/kinetic-data-survey.jpg' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>Kinetic Survey</h3>
                                            <p><a href='${bundle.location}/images/posters/kinetic-data-survey.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='Schedule' src='${bundle.location}/images/posters/kinetic-data-schedule.jpg' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>Kinetic Schedule</h3>
                                            <p><a href='${bundle.location}/images/posters/kinetic-data-schedule.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                            </div>
                            <div class='row'>
                                <div class='col-md-6'>
                                    <div class='row'>
                                        <div class='col-xs-3'>
                                            <img alt='Calendar' src='${bundle.location}/images/posters/kinetic-data-calendar.jpg' width='100%'>
                                        </div>
                                        <div class='col-xs-9'>
                                            <h3>Kinetic Calendar</h3>
                                            <p><a href='${bundle.location}/images/posters/kinetic-data-calendar.pdf' target="_blank">Download the PDF</a>.
                                            </p>
                                        </div>
                                    </div>
                                    <hr>
                                </div>
                                <div class='col-md-6'>
                                    
                                    <hr>
                                </div>
                            </div>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>
        </div>
    </section>
</bundle:layout>
