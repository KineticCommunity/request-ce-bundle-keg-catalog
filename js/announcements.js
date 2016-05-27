// initialization after form is ready
$(function(){
    $.ajax({
        method: 'get',
        contentType: 'application/json',
        url: bundle.apiLocation()+'/kapps/'+bundle.kappSlug()+'/forms/create-announcement/submissions?include=values',
        success: function( data ) {
            var div = $('<div class="container">');
            $.each(data.submissions, function(index, element) {
                if (moment().isAfter(element.values.start) && moment().isBefore(element.values.end)) {
                    div.append($('<p><span class="fa fa-bell"></span>').text(element.values.AnnouncementText));
                }
            });
            if (!$('.announcements.override').append(div).length){
                $('.announcements').append(div);
            }
        }
    });
});
