<%@page pageEncoding="UTF-8" contentType="text/html" trimDirectiveWhitespaces="true"%>
<%@include file="bundle/initialization.jspf" %>
<%@include file="bundle/router.jspf" %>
<bundle:variable name="head">
    <title>${form.name}</title>
</bundle:variable>

<bundle:layout page="layouts/form.jsp">
<script>
    bundle.config ={
        renderers: {
            submitErrors: function(response) {
                var message = 'The Train went of the rails. Try agian later.';
                if(response.status === 401){
                    message = 'You are not authenticated. Please login.';
                }
                $(K('form').element()).notifie({type:'alert',severity:'alert',message:message});
                window.scrollTo(0,0);
            },
            fieldConstraintViolations: function(form, fieldConstraintViolations){
                var errorMessage = '';
                _.each(fieldConstraintViolations, function(constraintMessages, fieldName){
                    var field = K('field['+fieldName+']');
                    $(field.wrapper()).addClass('has-error');
                    errorMessage += '<h4>'+fieldName+'</h4>';
                    _.each(constraintMessages, function(message){
                        errorMessage += '<p>'+message+'</p>';
                    })
                })
                $(K('form').element()).notifie({type:'alert',severity:'alert',message:errorMessage});
                window.scrollTo(0,0);
            }
        }
    }
</script>
    <section>
        <div class='container'>
            <div class="row">
                <div class="col-md-12">
                    <div class="page-header">
                        <h1>
                            <span>${form.name}</span>
                            <c:if test="${form.hasAttribute('Points')}">
                                <sup class='points-attribute'>
                                    <span><em>${form.getAttributeValue('Points')}</em> pts</span>
                                </sup>
                            </c:if>
                        </h1>
                    </div>

                    <div class="errors" style="display:none;"></div>
                    <app:bodyContent/>
                </div>
            </div>
        </div>
    </section>
</bundle:layout>