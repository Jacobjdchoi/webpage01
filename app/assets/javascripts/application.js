//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery_nested_form
//= require foundation
//= require turbolinks
//= require jquery.Jcrop
//= require_tree .
//= stub rem


var ready;
ready = function(){
  flexibility(document.body);
  
  // foundation
  $(function(){ $(document).foundation(); });
  // text editor
  tinymce.remove();
  tinymce.init({
    selector:'.articleBody',
    height:"500px",
    browser_spellcheck: true,
    plugins: [
        "advlist autolink lists link charmap preview anchor",
        "searchreplace visualblocks fullscreen",
        "table contextmenu paste",
        "textcolor colorpicker"
    ],
    toolbar: "undo redo | fontsizeselect | forecolor backcolor | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent"
    });
  // body's padding-top adjusts according to the size of the nav bar.
  if ($('#title-bar').css('display') !== "none"){
// mobile
    $('#header').css('display', 'none');
    var titleBarHeight = $("#title-bar").outerHeight();
    $("#pageYield").css('padding-top', titleBarHeight + 16);
    $("#offCanvasLeft").css('padding-top', titleBarHeight);
  } else {
// webview
    var headerHeight = $('#header').outerHeight();
    $("#pageYield").css('padding-top', headerHeight + 16);
    $('#header').css('display', 'initial');
  }
}
$(document).on('turbolinks:load', ready);
$(document).on('page:load', ready);
$(document).ready(ready);

// hide and show language list on top-bar on scroll
$(document).on('scroll', function(){
  if ($(this).scrollTop() > 0) {
    $('#header').addClass('scrolldown-header');
    $('#language-menu').fadeOut(500);
  } else {
    $('#header').removeClass('scrolldown-header');
    $('#language-menu').fadeIn(500);
  }
});
// Web Search
$(document).on('click', '#web_search_button', function(){
  $('form.top_bar_search_form').addClass('show_search');
});
$(document).on('submit', 'form.top_bar_search_form',function(){
  var form = $(this),
      input = form.find('input#query');
  if (input.val().trim().length == 0 ) {
    input.val("");
    form.removeClass("show_search");
    return false;
  }
});
// Mobile Search
$(document).on('submit', 'form.mobile_search_form', function(){
  var form = $(this),
      input = form.find('input#query');
  if (input.val().trim().length == 0) {
    input.val("");
    return false;
  }
});
//flash
function flashMessage(text, time){
  var flashDiv = document.createElement("div"),
      message = document.createTextNode(text);
  flashDiv.appendChild(message);
  $(flashDiv).addClass("flash_message");
  document.body.appendChild(flashDiv);
  setTimeout(function() {
      $(flashDiv).fadeOut();
    }, time);
}
