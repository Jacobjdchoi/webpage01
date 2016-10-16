//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require jquery.Jcrop
//= require_tree ../../../vendor/assets/rempolyfill/js
//= require_tree .

$(document).on('turbolinks:load', function() {
  $(function(){ $(document).foundation(); });
  tinymce.remove();
  tinymce.init({ selector:'textarea#newsBody', height:"800px" });

  if ($('#title-bar').css('display') !== "none"){
    $('#header').css('display', 'none');
    var titleBarHeight = $("#title-bar").outerHeight();
    $("#pageYield, #offCanvasLeft").css('padding-top', titleBarHeight);
  } else {
    var headerHeight = $('#header').outerHeight();
    $("#pageYield").css('padding-top', headerHeight);
    $('#header').css('display', 'initial');
  }
});
$(document).on('scroll', function(){
  if (document.body.scrollTop > 0) {
    $('#header').addClass('scrolldown-header');
    $('#language-menu').fadeOut(500);
  } else {
    $('#header').removeClass('scrolldown-header');
    $('#language-menu').fadeIn(500);
  }
});