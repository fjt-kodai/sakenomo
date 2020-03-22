jQuery(document).on('turbolinks:load', function() {

  $('.wrapper').on('click', '#eventsNew__backGround', function() {
    $(this).hide();
    $(".eventsNew__modal").hide();
  });

});
