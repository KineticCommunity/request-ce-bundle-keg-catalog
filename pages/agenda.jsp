<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>
<bundle:layout page="${bundle.path}/layouts/layout.jsp">
        <section id='agenda'>
      <div class='container'>
        <div class='row'>
          <div class='col-md-12'>
            <div class='page-header'>
              <h1>Conference Agenda</h1>
            </div>
          </div>
        </div>
        <div class='row'>
          <div class='col-md-12'>
            <ul class='main'>
              <li class='date'>
                <h3>May 15th</h3>
                <p>Sunday</p>
              </li>
              <li class='events'>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>3:00pm</span>
                    <span class='event__name'>
                      -
                      Registration
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>6:00pm</span>
                    <i class='fa fa-beer pull-right'></i>
                    <span class='event__name'>
                      -
                      Welcome Party
                    </span>
                  </li>
                </ul>
              </li>
              <li class='date'>
                <h3>May 16th</h3>
                <p>Monday</p>
              </li>
              <li class='events'>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>7:30am</span>
                    <span class='event__name'>
                      -
                      Registration
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>7:45am</span>
                    <i class='fa fa-cutlery pull-right'></i>
                    <span class='event__name'>
                      -
                      Breakfast
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>9:00am</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-Keynote–StateoftheState' rel='modal:open'>
                        Keynote – State of the State
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-Keynote–StateoftheState'>
                          <div>
                            <h1>Keynote – State of the State</h1>
                            <p>&quot;Kinetic Data builds some of the best software in the world. It doesn’t happen by accident. How we got here, what motivates us, what we see as the next challenges, and how we are going to address them. We have a plan brewing, and you will be the first to hear it.&quot;
                            </p>
                            <h3>John Sundberg</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>9:45am</span>
                    <span class='event__name'>
                      -
                      Break
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>10:00am</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-KineticRequestCEFullSteamAhead' rel='modal:open'>
                        Kinetic Request CE - Full Steam Ahead
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-KineticRequestCEFullSteamAhead'>
                          <div>
                            <h1>Kinetic Request CE - Full Steam Ahead</h1>
                            <p>Get the inside scoop on where we see Kinetic Request Core Edition fitting into your organization, why we made some of the design choices we did, and get an early look at our near-term roadmap.
                            </p>
                            <h3>Kelly Heikkila</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>10:45am</span>
                    <span class='event__name'>
                      -
                      Break
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>11:00am</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-CloudProvisioningwithRequestandTask' rel='modal:open'>
                        Cloud Provisioning with Request and Task
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-CloudProvisioningwithRequestandTask'>
                          <div>
                            <h1>Cloud Provisioning with Request and Task</h1>
                            <p>You can chose from a lot of different infrastructure automation toolsets, but should you? With Kinetic Request you can build a provisioning process that makes it dead simple to request infrastructure without bypassing important governance steps.
                            <br />Join this session to walk through a detailed use case and demonstration from request to production.
                            </p>
                            <h3>James Davies</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>11:30am</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-FulfillmentEmployeeOnboardingExample' rel='modal:open'>
                        Fulfillment - Employee Onboarding Example
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-FulfillmentEmployeeOnboardingExample'>
                          <div>
                            <h1>Fulfillment - Employee Onboarding Example</h1>
                            <p>We have seen the Employee Onboarding process done via email, word of mouth, and sticky notes. Learn the benefits of automating the Employee Onboarding process when conducted via Kinetic Request. Have your tickets ready- we are about to depart. 
                            </p>
                            <h3>Anne Ramey</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>12:00pm</span>
                    <i class='fa fa-cutlery pull-right'></i>
                    <span class='event__name'>
                      -
                      Lunch
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>1:00pm</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-AttributeEverythinginRequestCE' rel='modal:open'>
                        Attribute Everything in Request CE
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-AttributeEverythinginRequestCE'>
                          <div>
                            <h1>Attribute Everything in Request CE</h1>
                            <p>Attributes are a convenient way to customize Kinetic Request CE based upon your own business logic.  This lightning talk will cover the different type of attributes and some of the many ways that they can be leveraged in forms, bundles, security policies, and Kinetic Task.
                            </p>
                            <h3>Ben Christenson</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>1:15pm</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-WebAnalyticsTracking' rel='modal:open'>
                        Web Analytics - Tracking
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-WebAnalyticsTracking'>
                          <div>
                            <h1>Web Analytics - Tracking</h1>
                            <p>Observation is a powerful tool. This short talk explores why and what to do with that information
                            </p>
                            <h3>Matt Beran</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>1:30pm</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-CommonBrowserIssues' rel='modal:open'>
                        Common Browser Issues
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-CommonBrowserIssues'>
                          <div>
                            <h1>Common Browser Issues</h1>
                            <p>&quot;Write once run everywhere!&quot; Now that everybody builds responsive sites and mobile has become the new normal, are there still any weird browsers issues left? Now is the time to stop and rethink our best practices. Which are the new, better practices and tools that will help us keep our sanity while building for the browser?
                            </p>
                            <h3>Norm Orstad</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>1:45pm</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-KineticPiVendingMachine' rel='modal:open'>
                        Kinetic Pi Vending Machine
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-KineticPiVendingMachine'>
                          <div>
                            <h1>Kinetic Pi Vending Machine</h1>
                            <p>How and why we used Kinetic Products and a Raspberry Pi to make a vending machine.
                            </p>
                            <h3>Brian Peterson and Austin Peters</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>2:00pm</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-CustomerPosterStories' rel='modal:open'>
                        Customer Poster Stories
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-CustomerPosterStories'>
                          <div>
                            <h1>Customer Poster Stories</h1>
                            <p>Trying to figure out what else you can do? Don’t take our word for it, go see what people are building with Kinetic!
                            <br />This session focuses on real-world usage of Kinetic’s product and resources and highlights some of our own development since KEG 2015. See what’s new, and determine your future.
                            </p>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>3:30pm</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-YouReleasedNowWhat' rel='modal:open'>
                        You Released - Now What?
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-YouReleasedNowWhat'>
                          <div>
                            <h1>You Released - Now What?</h1>
                            <p>The work doesn&#x27;t end after the release of your catalog! In this session you&#x27;ll learn about what might come next: Ideas for promoting adoption of your catalog, ways to gather and utilize feedback, and how to spark interest from other groups for growth and expansion of your catalog offerings.
                            </p>
                            <h3>Matt Howe</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>4:15pm</span>
                    <span class='event__name'>
                      -
                      Break
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>4:30pm</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-MigratingfromRequestREtoRequestCE' rel='modal:open'>
                        Migrating from Request RE to Request CE
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-MigratingfromRequestREtoRequestCE'>
                          <div>
                            <h1>Migrating from Request RE to Request CE</h1>
                            <p>Come and learn what is involved in migrating from your current Request Remedy Edition installation to a new Request Core Edition system. While individual mileage may vary based on your individual implementations, we can raise awareness of the components you will need to work on and items&#x2F;actions you will need to put on your to-do list.
                            </p>
                            <h3>Shayne Koestler, Austin Peters, Anne Ramey, Stephanie Harms</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>6:00pm</span>
                    <i class='fa fa-cutlery pull-right'></i>
                    <span class='event__name'>
                      -
                      Dinner
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>7:30pm</span>
                    <i class='fa fa-beer pull-right'></i>
                    <span class='event__name'>
                      -
                      <a href='#modal-EveningwithTechandPi' rel='modal:open'>
                        Evening with Tech and Pi
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-EveningwithTechandPi'>
                          <div>
                            <h1>Evening with Tech and Pi</h1>
                            <p>Ah we can Hack if we want to, we can leave your friends behind. Cause your friends don&#x27;t Hack and if they don&#x27;t Hack well they&#x27;re no friends of mine. Kk-ii-nn-ee-tt-ii-cc Hack (sorry for that- extra scavenger points if you can name that tune!) Bring your questions, thoughts, and enhancement ideas. In this one place you will be able to speak with the Developers, Professional Services, and Support. And see what you can do with the Raspberry Pi!  Don’t forget to show off the great stuff you’re doing with Kinetic- it may win you a Wally Award!
                            </p>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
              </li>
              <li class='date'>
                <h3>May 17th</h3>
                <p>Tuesday</p>
              </li>
              <li class='events'>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>6:30am</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-FunRunWalk' rel='modal:open'>
                        Fun Run/Walk
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-FunRunWalk'>
                          <div>
                            <h1>Fun Run/Walk</h1>
                            <p>Casual run or walk along the natural falls on the mighty Mississippi River. All places and levels of experience welcomed. Meet at Mill Ruins Park (5th Ave S. and W. River Parkway).
                            </p>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>7:30am</span>
                    <span class='event__name'>
                      -
                      Registration
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>7:45am</span>
                    <i class='fa fa-cutlery pull-right'></i>
                    <span class='event__name'>
                      -
                      Breakfast
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>9:00am</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-OpenSourceandKineticData' rel='modal:open'>
                        Open Source and Kinetic Data
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-OpenSourceandKineticData'>
                          <div>
                            <h1>Open Source and Kinetic Data</h1>
                            <p>An informal panel session describing the open source stack, tools and collaborative software we leverage to build what we build. We&#x27;ll also discuss Kinetic Community and how we&#x27;re expanding the accessibility of our own open source libraries and tools.
                            </p>
                            <h3>Kelly Heikkila</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>9:45am</span>
                    <span class='event__name'>
                      -
                      Break
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>10:00am</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-IntegratingRequestCEInYourEnvironmentwithBridges' rel='modal:open'>
                        Integrating Request CE In Your Environment with Bridges
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-IntegratingRequestCEInYourEnvironmentwithBridges'>
                          <div>
                            <h1>Integrating Request CE In Your Environment with Bridges</h1>
                            <p>Wanting to access data from different systems but use it in a single environment? Learn how to use the new Kinetic Bridgehub to easily integrate with systems such Kinetic Core, Remedy, Service Now, and more!
                            </p>
                            <h3>Scott Gerike</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>10:45am</span>
                    <span class='event__name'>
                      -
                      Break
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>11:00am</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-IdentityAccessManagement' rel='modal:open'>
                        Identity Access Management
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-IdentityAccessManagement'>
                          <div>
                            <h1>Identity Access Management</h1>
                            <p>Create a centralized and easy to use interface to maintain identity data stored in multiple sources (legacy systems, LDAP and custom applications). Add automation to reduce IT overhead while simplifying and standardizing complex processes. 
                            </p>
                            <h3>Linda Koestler</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>11:30am</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-KineticResponseCaseStudy' rel='modal:open'>
                        Kinetic Response Case Study
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-KineticResponseCaseStudy'>
                          <div>
                            <h1>Kinetic Response Case Study</h1>
                            <p>Getting caught in long email strings and lost email responses is counterproductive. Kinetic Response makes communication and collaboration easier. We’ll follow the end-to-end process of a support ticket, from creation to triage to resolution - and see how Kinetic Response makes issue resolution more efficient and more effective
                            </p>
                            <h3>Jay Lee</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>12:00pm</span>
                    <i class='fa fa-cutlery pull-right'></i>
                    <span class='event__name'>
                      -
                      Lunch
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>1:00pm</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-CustomerStories' rel='modal:open'>
                        Customer Stories
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-CustomerStories'>
                          <div>
                            <h1>Customer Stories</h1>
                            <p>Nothing makes us more proud than providing value. In this session, our customers are presenting how they use Kinetic tools to deliver value. Get ideas, fresh perspective and ask the hard questions of the people who have been through the mud already.
                            </p>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>2:00pm</span>
                    <span class='event__name'>
                      -
                      Break
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>2:15pm</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-SupportingRequestCE' rel='modal:open'>
                        Supporting Request CE
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-SupportingRequestCE'>
                          <div>
                            <h1>Supporting Request CE</h1>
                            <p>A walk through of the logging capability of Request CE. Because when you need them, good troubleshooting tools are priceless.
                            </p>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>2:30pm</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-UsingKineticSecurityLanguageForAuthorization' rel='modal:open'>
                        Using Kinetic Security Language For Authorization
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-UsingKineticSecurityLanguageForAuthorization'>
                          <div>
                            <h1>Using Kinetic Security Language For Authorization</h1>
                            <p>Learn how Kinetic Request Core Edition goes beyond conventional role based policies for authorization using Kinetic Security Language (KSL) to build advanced authorization rules.
                            </p>
                            <h3>Jack Boespflug</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>2:45pm</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-AgileDevelopmentatKineticData' rel='modal:open'>
                        Agile Development at Kinetic Data
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-AgileDevelopmentatKineticData'>
                          <div>
                            <h1>Agile Development at Kinetic Data</h1>
                            <p>What agile in motion really looks like and why it applies to you, too.
                            </p>
                            <h3>Matt Raykowski</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>3:00pm</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-AllAboardSourcesforKineticTask' rel='modal:open'>
                        All Aboard - Sources for Kinetic Task
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-AllAboardSourcesforKineticTask'>
                          <div>
                            <h1>All Aboard - Sources for Kinetic Task</h1>
                            <p>In Kinetic Task, Sources are external applications that automate workflow using Task Trees.  For example, Kinetic Request leverages Task to implement key functionality.  In Kinetic Task 4 we have emphasized flexibility in order to allow Task to integrate with as many applications as possible.  In this presentation we will discuss how Sources make it possible for Kinetic Task to adapt to various types of applications.
                            </p>
                            <h3>Shayne Koestler</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>3:15pm</span>
                    <span class='event__name'>
                      -
                      Break
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>3:30pm</span>
                    <span class='event__name'>
                      -
                      <a href='#modal-PerceptionisRealityDrivingGreatCustomerExperienceRegardlessofFulfillmentChaos' rel='modal:open'>
                        Perception is Reality: Driving Great Customer Experience Regardless of Fulfillment Chaos
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-PerceptionisRealityDrivingGreatCustomerExperienceRegardlessofFulfillmentChaos'>
                          <div>
                            <h1>Perception is Reality: Driving Great Customer Experience Regardless of Fulfillment Chaos</h1>
                            <p>Customer Experience is driving business success everywhere you look today.  What can be learned and applied to your organization to “stack the deck in your favor” for future success.
                            </p>
                            <h3>Brian Shealey</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>4:30pm</span>
                    <i class='fa fa-beer pull-right'></i>
                    <span class='event__name'>
                      -
                      <a href='#modal-2016WallyAwardsHappyHour' rel='modal:open'>
                        2016 Wally Awards / Happy Hour
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-2016WallyAwardsHappyHour'>
                          <div>
                            <h1>2016 Wally Awards / Happy Hour</h1>
                            <p>The Oscars + Golden Globes = The Wally Awards. Come see the Wally Awards along with the latest fashions on the Orange Carpet.  Who will win? Do you have your acceptance speech ready? It’s your 15 minutes seconds of fame!
                            </p>
                            <h3>Ben Christenson</h3>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>6:00pm</span>
                    <i class='fa fa-cutlery pull-right'></i>
                    <span class='event__name'>
                      -
                      Dinner
                    </span>
                  </li>
                </ul>
                <ul class='events__detail'>
                  <li>
                    <span class='event__time'>7:30pm</span>
                    <i class='fa fa-beer pull-right'></i>
                    <span class='event__name'>
                      -
                      <a href='#modal-ClosingPartyTeamTrivia' rel='modal:open'>
                        Closing Party: Team Trivia
                      </a>
                      <span class='event__description' style='display:none'>
                        <div id='modal-ClosingPartyTeamTrivia'>
                          <div>
                            <h1>Closing Party: Team Trivia</h1>
                            <p>We are at the end. We have shown you our latest and greatest and hope you&#x27;re excited about Request CE! Now...It&#x27;s time for the Closing Party.  Let&#x27;s laugh, drink, and be merry.  Oh and did somebody say Trivia?  There might be two Kinetic Data employees who have been on the winning team each year.  That&#x27;s right....Undefeated.  Can you stop them?  Or is it just best to join them? Prizes for the top 3 teams and best team name!</p>
                          </div>
                        </div>
                      </span>
                    </span>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </div>
        <div class='row'>
          <div class='col-md-12'>
            <h4>
              <em>*Note that the current agenda may change based on demand and customer suggestions.</em>
            </h4>
          </div>
        </div>
      </div>
    </section>
</bundle:layout>