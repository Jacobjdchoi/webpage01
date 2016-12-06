if ($('#title-bar').css('display') !== "none"){
// mobile
  $(document).on('click', '.brand_logo_and_name a', function(){
    var target = $(this).closest('section'),
      not_target = $('section').not(target);
      target.toggleClass('open-vertical');
      not_target.removeClass('open-vertical');
      console.log('clicked');
  });
} else {
//web
  $(document).on('mouseenter', '.brand_items', function(){
    var target = $(this),
        not_target = $('.brand_items').not(target);
      target.addClass('open-horizontal');
      not_target.addClass('close-horizontal');
  });
  $(document).on('mouseleave', '.brand_items', function(){
    var target = $(this),
        not_target = $('.brand_items').not(target);
      target.removeClass('open-horizontal');
      not_target.removeClass('close-horizontal');
  });
}


