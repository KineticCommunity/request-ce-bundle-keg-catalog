$(function() {
	// Handler for .ready() called.
	$('#resetPassword').on('click', function(){
		if($('#username').val()!=""){
			$.ajax({
			  url: "/kinetic/keg-2016/app/api/v1/users/"+$('#username').val(),
			}).success(function(data) {
			  console.log( data );
			  $( "form" ).submit();
			}).error(function(){
			  alert('Email not found');
			});
		}
		else{
			alert('Email must be provided');
		}
		event.preventDefault();
	})
});