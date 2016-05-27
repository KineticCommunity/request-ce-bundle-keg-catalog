<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="../bundle/initialization.jspf" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8'>
        <!-- Always force latest IE rendering engine or request Chrome Frame -->
        <meta content='IE=edge,chrome=1' http-equiv='X-UA-Compatible'>
        <!-- <title> is loaded in the form and/or kapp jsp -->
        <title>KEG Catalog 2016</title>
        <meta content='index,follow' name='robots'>
        <meta content='Kinetic Enthusiasts Group 2016 presented by Kinetic Data' name='description'>
        <meta content='Kinetic Data' name='author'>
        <!-- Meta for responsive break points -->
        <meta content='width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0' name='viewport'>
        <!-- Touch device images and Favicons -->
        <link rel="apple-touch-icon" sizes="76x76" href="${bundle.location}/images/apple-touch-icon.png">
        <link rel="icon" type="image/png" href="${bundle.location}/images/android-chrome-96x96.png" sizes="96x96">
        <link rel="icon" type="image/png" href="${bundle.location}/images/favicon-32x32.png" sizes="32x32">
        <link rel="icon" type="image/png" href="${bundle.location}/images/favicon-96x96.png" sizes="96x96">
        <link rel="icon" type="image/png" href="${bundle.location}/images/favicon-16x16.png" sizes="16x16">
        <link rel="shortcut icon" href="${bundle.location}/images/favicon.ico" type="image/x-icon"/>

        <!-- Must be loaded before your custom or thirdparty javascripts -->
        <app:headContent/>

        <!--[if lt IE 9]>
          <script src='https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js'></script>
          <script src='https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js'></script>
          <link href='${bundle.location}/css/ie.css' rel='stylesheet'>
        <![endif]-->
        <link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Oswald:700,400,300|Quattrocento:400,700'  />
        <link rel="stylesheet" href="${bundle.location}/libraries/responsive-nav/responsive-nav.css" />
        <link rel="stylesheet" href="${bundle.location}/css/responsive-nav.custom.css" />
        <link rel="stylesheet" href="${bundle.location}/css/master.css " />
        <link rel="stylesheet" href="${bundle.location}/css/form.css" />
        <link rel="stylesheet" href="${bundle.location}/libraries/font-awesome/css/font-awesome.min.css" />
        <link rel="stylesheet" href="${bundle.location}/libraries/jquery-modal/jquery.modal.css " />
        <link rel="stylesheet" href="${bundle.location}/libraries/jquery-slotmachine/jquery.slotmachine.css " />
        <link rel="stylesheet" href="${bundle.location}/libraries/blueimp-gallery/css/blueimp-gallery.css" />
        <link rel="stylesheet" href="${bundle.location}/libraries/notifie/jquery.notifie.css" />
        <link rel="stylesheet" href="${bundle.location}/css/jquery.modal.custom.css " />
        
        <!-- Bundle-minifier  -->
        <bundle:scriptpack>
            <bundle:script src="${bundle.location}/libraries/jquery/jquery.min.js" />
            <bundle:script src="${bundle.location}/libraries/moment/moment-with-locales.js" />
            <bundle:script src="${bundle.location}/libraries/underscore/underscore-min.js" />
            <bundle:script src="${bundle.location}/js/all.js" />
            <bundle:script src="${bundle.location}/js/announcements.js" />
            <bundle:script src="${bundle.location}/libraries/responsive-nav/responsive-nav.js" />
            <bundle:script src="${bundle.location}/libraries/jquery-slotmachine/jquery.slotmachine.min.js" />
            <bundle:script src="${bundle.location}/libraries/blueimp-gallery/js/jquery.blueimp-gallery.min.js" />
            <bundle:script src="${bundle.location}/libraries/kd-search/js/search.js" />
            <bundle:script src="${bundle.location}/libraries/notifie/jquery.notifie.js" />
            <bundle:script src="${bundle.location}/libraries/jquery-datatables/jquery.dataTables.min.js" />
        </bundle:scriptpack>
        <!-- Loads page specific content into the head -->
        <bundle:yield name="head"/>

    </head>
    <body class="${bodyClass}">
        <div class="announcements">
        </div>
        <c:import url="${bundle.path}/partials/header.jsp" charEncoding="UTF-8"/>

        <bundle:yield/>
        <c:import url="${bundle.path}/partials/footer.jsp" charEncoding="UTF-8"/>

        <script src="${bundle.location}/libraries/bootstrap/bootstrap.min.js"></script>
        <script src="${bundle.location}/libraries/jquery-modal/jquery.modal.min.js" ></script>
        <!-- Put this right before the </body> closing tag -->
<script>
  var nav = responsiveNav(".nav-collapse");
</script>
    </body>
</html>
<script>
    window.identity = '${identity.username}'
</script>