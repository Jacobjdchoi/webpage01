$(document).on('mouseenter', '.market_items', function(){
    var target = $(this),
        not_target = $('.market_items').not(target);
    target.addClass('open-horizontal-market');
    not_target.addClass('close-horizontal-market');
});
$(document).on('mouseleave', '.market_items', function(){
    var target = $(this),
        not_target = $('.market_items').not(target);
    target.removeClass('open-horizontal-market');
    not_target.removeClass('close-horizontal-market');
});