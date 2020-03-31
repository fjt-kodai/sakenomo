jQuery(document).on('turbolinks:load', function() {

  $('.usersEdit__detailBox').on('click', '.usersEdit__defaultShow', function() {
    $('.usersEdit__defaultHidden').hide();
    $('.usersEdit__defaultShow').show();
    $(this).hide();
    $(this).next('.usersEdit__defaultHidden').show();
  });

  $('.usersEdit__detailBox').on('click', '.usersEdit__crossBtn', function() {
    $(this).parents('.usersEdit__defaultHidden').hide();
    $(this).parents('.usersEdit__defaultHidden').prev('.usersEdit__defaultShow').show();
  });

});
