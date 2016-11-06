$(document).on('turbolinks:load', function(){
  //text editor
  tinymce.remove();

  tinymce.init({ selector:'.articleBody', height:"500px" });
})