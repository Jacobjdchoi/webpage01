//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree ../../../vendor/assets/rempolyfill/js
//= require_tree .

$(document).on('turbolinks:load', function() {
  $(function(){ $(document).foundation(); });
});
