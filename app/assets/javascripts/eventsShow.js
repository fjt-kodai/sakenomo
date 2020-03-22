jQuery(document).on('turbolinks:load', function() {

  $('.eventsShow__detailBox').on('click', '.eventsShow__defaultShow', function() {
    $('.eventsShow__defaultHidden').hide();
    $('.eventsShow__defaultShow').show();
    $(this).hide();
    $(this).next('.eventsShow__defaultHidden').show();
  });

  $('.eventsShow__detailBox').on('click', '.eventsShow__crossBtn', function() {
    $(this).parents('.eventsShow__defaultHidden').hide();
    $(this).parents('.eventsShow__defaultHidden').prev('.eventsShow__defaultShow').show();
  });

});
