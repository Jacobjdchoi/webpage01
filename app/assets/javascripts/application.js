//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery_nested_form
//= require foundation
//= require turbolinks
//= require jquery.Jcrop
//= require_tree ../../../vendor/assets/rempolyfill/js
//= require_tree .

$(document).on('turbolinks:load', function() {
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
    $("#pageYield, #offCanvasLeft").css('padding-top', titleBarHeight + 16);
  } else {
    // webview
    var headerHeight = $('#header').outerHeight();
    $("#pageYield").css('padding-top', headerHeight + 16);
    $('#header').css('display', 'initial');
  }
});
// hide and show language list on top-bar on scroll
$(document).on('scroll', function(){
  if (document.body.scrollTop > 0) {
    $('#header').addClass('scrolldown-header');
    $('#language-menu').fadeOut(500);
  } else {
    $('#header').removeClass('scrolldown-header');
    $('#language-menu').fadeIn(500);
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