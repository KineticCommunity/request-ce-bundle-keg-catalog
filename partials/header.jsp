<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>


<script>
    var userName = "${identity.username}";
</script>
<header class="stuck">
    <div class="container">
        <div class='logo'>
            <c:if test='${kapp != null}'>
                <a data-scroll='' href='${bundle.kappLocation}'>
                    <img src="${bundle.location}/images/KD_logo_159box.png" />
                </a>
            </c:if>
        </div>
        <div class='header-logo'>
            <c:if test='${kapp != null}'>
                <a data-scroll='' href='${bundle.kappLocation}'>
                    <img alt="logo" style="width:70px;" src="${bundle.location}/images/KEG16-small@2x.png" />
                </a>
            </c:if>
        </div>
        <nav>
            <div class="nav-identity">
                <ul>
                    <c:choose>
                        <c:when test="${identity.anonymous && kapp == null}">
                            <li class="menu-item"><a href="${bundle.spaceLocation}/app/login">Login</a></li>
                        </c:when>
                        <c:when test="${identity.anonymous}">
                            <li class="menu-item"><a href="${bundle.spaceLocation}/app/login?kapp=${kapp.slug}">Login</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class='menu-item dropdown avatar'>
                                <a aria-expanded='true' class='dropdown-toggle' data-toggle='dropdown' id='dropdownMenu1' type='button'>
                                    <img src="https://www.gravatar.com/avatar/${GravatarHelper.gravatarHash}?s=60&d=mm" width="30px"/>
                                </a>
                                <ul aria-labelledby='dropdownMenu1' class='dropdown-menu dropdown-menu-right' role='menu'>
                                    <li role='presentation'>
                                        <a href='${bundle.spaceLocation}/${kapp.slug}?page=profile' role='menuitem' tabindex='-1'>My Profile</a>
                                    </li>
                                    <li class='presentation'>
                                        <a href="${bundle.spaceLocation}/${kapp.slug}?page=points" role='menuitem'  tabindex='-1'>My Hunting Score</a>
                                    </li>
                                    <li role='presentation' class="divider"></li>
                                    <c:if test='${kapp != null}'>
                                        <c:if test='${identity.email.endsWith("@kineticdata.com")}' >
                                            <li role='presentation'>
                                                <a href='${bundle.kappLocation}/announcements' role='menuitem' tabindex='-1'>Announcements</a>
                                            </li>
                                            <li role='presentation'>
                                                <a href='${bundle.kappLocation}/approval-list' role='menuitem' tabindex='-1'>Approvals</a>
                                            </li>
                                            <li role='presentation'>
                                                <a href='${bundle.kappLocation}/check-in' role='menuitem' tabindex='-1'>KEG Check-In</a>
                                            </li>
                                            <li role='presentation'>
                                                <a href='${bundle.kappLocation}/scavenger-hunt-totals' role='menuitem' tabindex='-1'>Scavenger Hunt Totals</a>
                                            </li>
                                            <li role='presentation' class="divider"></li>
                                            <li role='presentation'>
                                                <a href='${bundle.spaceLocation}/app/' role='menuitem' tabindex='-1' target='_blank'>Management Console</a>
                                            </li>
                                            <li role='presentation'>
                                                <a href='${bundle.spaceLocation}/question-manager/' role='menuitem' tabindex='-1' target='_blank'>Question Console</a>
                                            </li>
                                            <li role='presentation' class="divider"></li>
                                        </c:if>
                                    </c:if>
                                    <li role='presentation'>
                                        <c:choose>
                                            <c:when test='${kapp != null}'>
                                                <a href='${bundle.spaceLocation}/app/logout?kapp=${kapp.slug}' role='menuitem' tabindex='-1'>Logout</a>
                                            </c:when>
                                            <c:otherwise>
                                                <a href='${bundle.spaceLocation}/app/logout' role='menuitem' tabindex='-1'>Logout</a>
                                            </c:otherwise>
                                        </c:choose>


                                    </li>
                                </ul>
                            </li>
                        </c:otherwise>
                    </c:choose>
                </ul>
            </div>
            <div class="nav-collapse">
                <ul>
                    <c:if test='${kapp != null}'>
                        <li class='menu-item'>
                            <a data-scroll='' href='${bundle.kappLocation}?page=agenda'>Schedule</a>
                        </li>
                        <li class='menu-item'>
                            <a data-scroll='' href='${bundle.kappLocation}?page=scavenger-hunt'>Scavenger Hunt</a>
                        </li>
                    </c:if>
                </ul>
            </div>

        </nav>
    </div>
</header>
<span id="top"></span>