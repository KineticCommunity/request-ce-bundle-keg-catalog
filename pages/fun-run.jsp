<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<bundle:layout page="${bundle.path}/layouts/layout.jsp">
    <section>
        <div class="container">
            <div class="page-header">
                <h1>Fun Walk &amp; Run</h1>
            </div>
            <div class='row'>
                <div class='col-md-6'>
                    <h3>Logistics</h3>
                    <p><strong>6am: </strong> Meet at the entrance to the Stone Arch Bridge - just a couple blocks from the hotel.  Walk down either 5th Ave. or Portland toward the river.  There is a grassy area right by the entrance we'll meet.
                    <p><strong>6:15am: </strong>Depart on the run/walk.  The two mile route should take about 40 minutes walking and shorter for running.</p>
                    <p><strong>7am-8am: </strong> Breakfast starts. Plenty of time to get back, have a quick shower and get some food before the day begins.</p>
                    <h3>Distance</h3>
                    <p> The mapped route is a flat 1.9 mile loop and goes across the Stone Arch Bridge, through historic St. Anthony Main and back across the Hennepin Ave bridge and then back along the river.   </p>
                    <p><strong>Shorter?</strong> Feel free to do an out and back across the Stone Arch Bridge for about a one mile jaunt.</p>
                    <p><strong>Longer?</strong> For a 3.5 mile run, instead of crossing back on the Hennepin Avenue Bridge go down to the Plymouth Avenue bridge and then back along the river.</p>
                </div>
                <div class='col-md-6'>
                    <h3>Route Map</h3>
                    <iframe src="https://www.google.com/maps/embed?pb=!1m45!1m8!1m3!1d1411.0921170534373!2d-93.2580193!3d44.9805684!3m2!1i1024!2i768!4f13.1!4m34!1i0!3e2!4m5!1s0x0%3A0x9afbcb5fe1ecf01d!2sStone+Arch+Bridge%2C+Minneapolis%2C+MN!3m2!1d44.980531!2d-93.25765899999999!4m3!3m2!1d44.9819914!2d-93.2511018!4m3!3m2!1d44.9847384!2d-93.2562839!4m3!3m2!1d44.9858464!2d-93.26006579999999!4m5!1s0x0%3A0x279e41e27d4aeccc!2sGrain+Belt+Bridge!3m2!1d44.985138!2d-93.26388399999999!4m3!3m2!1d44.9844121!2d-93.2643841!4m3!3m2!1d44.9804926!2d-93.25774299999999!5e0!3m2!1sen!2sus!4v1430408815045" width="400" height="300" frameborder="0" style="border:0"></iframe>
                    <p><a href='${bundle.location}/images/fun-run-route.pdf' target='_blank'>Download a PDF Route Map</a></p>
                </div>
            </div>
        </div>
    </section>
</bundle:layout>