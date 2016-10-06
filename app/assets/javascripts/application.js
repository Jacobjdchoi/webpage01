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
});