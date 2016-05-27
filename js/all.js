$(document).ready(function(){
  $(window).scroll(function(){
    // Sticky Header
    $(this).scrollTop() > 1?$("body.home header").addClass("sticky"):$("body.home header").removeClass("sticky")})

    // Display error message if authentication error is found in URL.  This happens if login credentials fail.
    if(window.location.search.substring(1).indexOf('authentication_error') !== -1){
        $('form').notifie({type:'alert',severity:'info',message:'Invalid username or password'});
    };
});