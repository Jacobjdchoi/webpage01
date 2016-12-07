var readyPB;
readyPB = function (){
  var windowWidth = $(window).outerWidth();
  if ( windowWidth <= 1024 ){
  // mobile
  //console.log('small');
    $(document).on('click', '.brand_logo_and_name a', function(){
      console.log("clicked");
      var target = $(this).closest('section.brand_items'),
          not_target = $('section').not(target);
      target.toggleClass('open-vertical');
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
};
$(document).one('turbolinks:load', readyPB);
$(document).one('page:load', readyPB);
$(document).ready(readyPB);
