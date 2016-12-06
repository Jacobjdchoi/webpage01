$(document).on('turbolinks:load', function(){
  if ($('#title-bar').css('display') !== "none" ){
  // mobile
    $(document).on('click', '.brand_logo_and_name a', function(){
      var target = $(this).closest('section.brand_items'),
        not_target = $('section').not(target),
        sign = target.find('i');
        target.toggleClass('open-vertical');
        sign.toggleClass('fa-chevron-down fa-chevron-up');
        not_target.removeClass('open-vertical');
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
})

