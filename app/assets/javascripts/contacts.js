// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on('change', 'select', function() {
  var value = $(this).val().toLowerCase();
  if( value == "slip rings" ){
    $('fieldset.slipring_options').addClass('show');
  } else {
    $('fieldset.slipring_options').removeClass('show');
  }
});
$(document).on('turbolinks:load', function(){
  $('form#new_contact').submit(function(e){
      if ($('input:checkbox[id=100BaseT]').is(':checked')) {
        $('#contact_ethernet').val($('#contact_ethernet').val() + "100 Base T;");
      }
      if ($('input:checkbox[id=1000BaseT]').is(':checked')) {
        $('#contact_ethernet').val($('#contact_ethernet').val() + "1000 Base T;");
      }
    return true;
  });
});