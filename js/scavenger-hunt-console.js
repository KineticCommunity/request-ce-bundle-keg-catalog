(function($){
    // Prevent user from getting to form before for Status css is applied
    $('body').css('pointer-events','none');
    // initialization after form is ready
    $(function () {
        $.ajax({
            method: 'get',
            contentType: 'application/json',
            url: bundle.apiLocation()+'/kapps/'+bundle.kappSlug()+'/submissions?include=values,form,details&timeline=createdAt&direction=ASC&limit=1000'+
                '&q=createdBy="'+identity+'" OR values[Requested For]="'+identity+'"',
            //CONFIGURE: Function to process results after search
            success: function (response) {
                var submissions = response.submissions;
                // Each li with a class of survey-item corresponds to a scavenger hunt form.
                // A data attribute is set on the li with the value of the slug for the form.
                $('.survey-item').each(function(key,value){
                    var element = $(value);
                    var slug = element.attr('data-slug');
                    //  If even one submission has a Status of Approval then we exit the loop and index to the next form.
                    var itemClaimedBool = false;
                    $(submissions).each(function(k,v){
                        // We are compairng the data attribute on the li, which is the form slug, to the form slug values that is on the submission.
                        // If they match then we know that the current submission belongs to the current form. 
                        if(slug === v.form.slug){
                            //  If a custom message is set on the submission set bool to true and populate statusMessage for display
                            var statusMessageBool = false;
                            var statusMessage;
                            if(v.values['Status Message'] != null){
                                statusMessageBool = true;
                                statusMessage = v.values['Status Message'];
                            }
                            // We are changing the state of the li here based on the status of the submission
                            var status = v.values.Status;
                            if(status === "Pending Approval"){
                                element.removeClass('denied').addClass('pending');
                                element.find('[data-button]').text(statusMessageBool ? statusMessage : 'Pending Approval');
                                element.find('a').css('pointer-events','none');
                            }else if(status === "Denied"){
                                element.removeClass('pending').addClass('denied');
                                element.find('[data-button]').text(statusMessageBool ? statusMessage : 'Try Agian');
                                element.find('a').css('pointer-events','all');
                            }else if(status === "Approved"){
                                itemClaimedBool = true;
                                element.removeClass('pending denied').addClass('completed');
                                element.find('[data-button]').text(statusMessageBool ? statusMessage : 'Item Claimed');
                                element.find('a').css('pointer-events','none');
                            }
                        }
                        if(itemClaimedBool){return false;}
                    });
                    if(itemClaimedBool){return true;}
                });
            },
            complete: function(){
                // give back click events after form Status css has been applied
                $('body').css('pointer-events','all');
            }
        });
    });
})(jQuery);
