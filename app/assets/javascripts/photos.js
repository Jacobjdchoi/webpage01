// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// You can use CoffeeScript in this file: http://coffeescript.org/
function crop_images(maxFieldsetCount,cropRatio){
    var nextBtn = $(".nav_button[type=next]"),
        prevBtn = $(".nav_button[type=prev]"),
        fieldsets = $(".image_fieldset"), // array value
        fieldsetCount = 0, // default value
        //maxFieldsetCount = ,
        //cropRatio = ,
        initialFieldset = $(fieldsets[0]),
        initialCroppingImage = initialFieldset.find('#cropping_image_' + fieldsetCount),
        initialCroppingValue = initialFieldset.find('.val_input'); // array value
    // fieldset navigation
    nextBtn.on("click", upFieldsetCount);
    prevBtn.on("click", downFieldsetCount);
    multi_crop();
    initialFieldset.addClass('active_fieldset');
    //functions used
    function upFieldsetCount() {
      if (fieldsetCount < maxFieldsetCount ){
        fieldsetCount += 1;
        multi_crop();
      }
      $(this).submit();
    }
    function downFieldsetCount() {
      if (fieldsetCount > 0 ){
        fieldsetCount -= 1;
        multi_crop();
      }
    }
    function multi_crop(){
      var targetedFieldset = $(fieldsets[fieldsetCount]),
          otherFieldsets = fieldsets.not(targetedFieldset),
          targetedCroppingImage = $(targetedFieldset).find('#cropping_image_' + fieldsetCount),
          targetedCroppingValue = $(targetedFieldset).find(".val_input");
      targetedCroppingImage.Jcrop({
        setSelect: [0,0,100,100],
        aspectRatio: cropRatio,
        onChange: update_coords,
        onSelect: update_coords
      })
      function update_coords(c) {
        $(targetedCroppingValue[0]).val(Math.round(c.x));
        $(targetedCroppingValue[1]).val(Math.round(c.y));
        $(targetedCroppingValue[2]).val(Math.round(c.w));
        $(targetedCroppingValue[3]).val(Math.round(c.h));
      }
      targetedFieldset.addClass('active_fieldset');
      otherFieldsets.removeClass('active_fieldset');
    }
  }