//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery_nested_form
//= require foundation
//= require turbolinks
//= require jquery.Jcrop
//= require_tree .
//= stub rem
//= stub ga

var ready;
ready = function() {

    flexibility(document.body);
    // foundation
    $(function() { $(document).foundation(); });
    // text editor
    tinymce.remove();
    tinymce.init({
        selector: 'textarea.articleBody',
        height: "500px",
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
    if ($('#title-bar').css('display') !== "none") {
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
    var windowWidth = $(window).outerWidth();
    if (windowWidth <= 1024) {
        // mobile
        $(document.body).on('click', '.brand_logo_and_name a', function() {
            //console.log("clicked");
            var target = $(this).closest('section.brand_items'),
                not_target = $('section').not(target);
            target.toggleClass('open-vertical');
            not_target.removeClass('open-vertical');
        });
    } else {
        //web
        $(document.body).delegate('.brand_items', 'mouseenter', function() {
            //console.log('mouse entered');
            var target = $(this),
                not_target = $('.brand_items').not(target);
            target.addClass('open-horizontal');
            not_target.addClass('close-horizontal');
        });
        $(document.body).delegate('.brand_items', 'mouseleave', function() {
            //console.log('mouse left');
            var target = $(this),
                not_target = $('.brand_items').not(target);
            target.removeClass('open-horizontal');
            not_target.removeClass('close-horizontal');
        });
        $(document.body).delegate('.market_items', 'mouseenter', function() {
            var target = $(this),
                not_target = $('.market_items').not(target);
            target.addClass('open-horizontal-market');
            not_target.addClass('close-horizontal-market');
        });
        $(document.body).delegate('.market_items', 'mouseleave', function() {
            var target = $(this),
                not_target = $('.market_items').not(target);
            target.removeClass('open-horizontal-market');
            not_target.removeClass('close-horizontal-market');
        });
    }
    // contact us form submit
    $('form#new_contact').submit(function(e) {
        if ($('input:checkbox[id=100BaseT]').is(':checked')) {
            $('#contact_ethernet').val($('#contact_ethernet').val() + "100 Base T;");
        }
        if ($('input:checkbox[id=1000BaseT]').is(':checked')) {
            $('#contact_ethernet').val($('#contact_ethernet').val() + "1000 Base T;");
        }
        return true;
    });
};
$(document).on('turbolinks:load', ready);

// contact us page select
$(document).delegate('select', 'change', function() {
    var value = $(this).val().toLowerCase();
    if (value == "slip rings") {
        $('fieldset.slipring_options').addClass('show');
    } else {
        $('fieldset.slipring_options').removeClass('show');
    }
});
// hide and show language list on top-bar on scroll
$(document).on('scroll', function() {
    if ($(this).scrollTop() > 0) {
        $('#header').addClass('scrolldown-header');
        $('#language-menu').fadeOut(500);
    } else {
        $('#header').removeClass('scrolldown-header');
        $('#language-menu').fadeIn(500);
    }
});
// Web Search
$(document).delegate('#web_search_button', 'click', function() {
    $('form.top_bar_search_form').addClass('show_search');
});
$(document).delegate('form.top_bar_search_form', 'submit', function() {
    var form = $(this),
        input = form.find('input#query');
    if (input.val().trim().length == 0) {
        input.val("");
        form.removeClass("show_search");
        return false;
    }
});
// Mobile Search
$(document).delegate('form.mobile_search_form', 'submit', function() {
    var form = $(this),
        input = form.find('input#query');
    if (input.val().trim().length == 0) {
        input.val("");
        return false;
    }
});

//flash
function flashMessage(text, time) {
    var flashDiv = document.createElement("div"),
        message = document.createTextNode(text);
    flashDiv.appendChild(message);
    $(flashDiv).addClass("flash_message");
    document.body.appendChild(flashDiv);
    setTimeout(function() {
        $(flashDiv).fadeOut();
    }, time);
}
