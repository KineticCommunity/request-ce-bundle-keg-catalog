<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<bundle:layout page="${bundle.path}/layouts/layout.jsp">
    <section>
        <div class='container'>
            <div class='row'>
                <div class='col-md-12'>
                    <div class="page-header">
                        <h1>Scavenger Hunt Prizes/Rewards</h1>
                    </div>
                </div>
            </div>
            <div class='reward-table reward-only'>
                    <div class='col-xs-12 col-md-4  col-md-offset-2'>
                        <h3>Scavenger Hunt Prizes</h3>
                        <dl>
                            <dt>1st Place</dt>
                            <dd>GoPro</dd>
                            <dt>2nd Place</dt>
                            <dd>Sphero</dd>
                            <dt>3rd Place</dt>
                            <dd>Raspberry Pi Kit + Gift Card</dd>
                            <dt>4th Place</dt>
                            <dd>Raspberry Pi Kit</dd>
                            <dt>5th Place</dt>
                            <dd>Gift Card</dd>
                            <dt>6th Place</dt>
                            <dd>Gift Card</dd>
                        </dl>
                    </div>
                    <div class='col-xs-12 col-md-6'>
                        <h3>Button Rewards</h3>
                        <table class='table table-hover table-striped table-bordered'>
                            <thead>
                                <tr>
                                    <th>Level</th>
                                    <th>Points</th>
                                    <th>Button</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>Level 1</th>
                                    <th>10</th>
                                    <td>
                                        <img src="${bundle.location}/images/keg_buttons_outlined_07.png" width="75px">
                                        Petrol
                                    </td>
                                </tr>
                                <tr>
                                    <th>Level 2</th>
                                    <th>20</th>
                                    <td>
                                        <img src="${bundle.location}/images/keg_buttons_outlined_09.png" width="75px">
                                        Git Git
                                    </td>
                                </tr>
                                <tr>
                                    <th>Level 3</th>
                                    <th>30</th>
                                    <td>
                                        <img src="${bundle.location}/images/keg_buttons_outlined_01.png" width="75px">
                                        I Need a Ride
                                    </td>
                                </tr>
                                <tr>
                                    <th>Level 4</th>
                                    <th>40</th>
                                    <td>
                                        <img src="${bundle.location}/images/keg_buttons_outlined_04.png" width="75px">
                                        Hugs
                                    </td>
                                </tr>
                                <tr>
                                    <th>Level 5</th>
                                    <th>50</th>
                                    <td>
                                        <img src="${bundle.location}/images/keg_buttons_outlined_02.png" width="75px">
                                        Chew Chew
                                    </td>
                                </tr>
                                <tr>
                                    <th>Level 6</th>
                                    <th>60</th>
                                    <td>
                                        <img src="${bundle.location}/images/keg_buttons_outlined_10.png" width="75px">
                                        Peace
                                    </td>
                                </tr>
                                <tr>
                                    <th>Level 7</th>
                                    <th>70</th>
                                    <td>
                                        <img src="${bundle.location}/images/keg_buttons_outlined_06.png" width="75px">
                                        Obey
                                    </td>
                                </tr>
                                <tr>
                                    <th>Level 8</th>
                                    <th>80</th>
                                    <td>
                                        <img src="${bundle.location}/images/keg_buttons_outlined_08.png" width="75px">
                                        Dirty
                                    </td>
                                </tr>
                                <tr>
                                    <th>Level 9</th>
                                    <th>90</th>
                                    <td>
                                        <img src="${bundle.location}/images/keg_buttons_outlined_03.png" width="75px">
                                        MiniKeg
                                    </td>
                                </tr>
                                <tr>
                                    <th>Level 10</th>
                                    <th>100</th>
                                    <td>
                                        <img src="${bundle.location}/images/keg_buttons_outlined_05.png" width="75px">
                                        Rebel
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
</bundle:layout>
