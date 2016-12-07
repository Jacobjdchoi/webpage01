$(document).one('turbolinks:load', function() {
  var windowWidth = $(window).outerWidth();

  if ( windowWidth <= 1024 ){
  // mobile
  //console.log('small');
    $(document).on('click', '.brand_logo_and_name a', function(){
      console.log("clicked");
      var target = $(this).closest('section.brand_items'),
          not_target = $('section').not(target),
          sign = target.find('.drop_sign'),
          down_sign = "<span class='icomoon hide-for-large drop_sign' data-icon=\"&#xedc0;\"></span>",
          up_sign = "<span class='icomoon hide-for-large drop_sign' data-icon=\"&#xedc0;\"></span>";
      target.toggleClass('open-vertical');
      sign.attr('data-icon', sign.attr('data-icon') == '&#xedb8;' ? '&#xedc0;'.html() : '&#xedb8;'.html());
      not_target.removeClass('open-vertical');
    });
  }
  if ( windowWidth > 1024 ) {
  //web
  //console.log("large");
    $(document).on('mouseenter', '.brand_items', function(){
      console.log('mouse entered');
      var target = $(this),
          not_target = $('.brand_items').not(target);
      target.addClass('open-horizontal');
      not_target.addClass('close-horizontal');
    });
    $(document).on('mouseleave', '.brand_items', function(){
      console.log('mouse left');
      var target = $(this),
          not_target = $('.brand_items').not(target);
      target.removeClass('open-horizontal');
      not_target.removeClass('close-horizontal');
    });
  }
});

