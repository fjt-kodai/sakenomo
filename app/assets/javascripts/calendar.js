$(function () {

  function eventCalendar() {
    return $('#calendar').fullCalendar({
      titleFormat: 'YYYY / M',
      dayNamesShort: ['日', '月', '火', '水', '木', '金', '土'],
      header: {
        left: 'title',
        right: 'prev,next'
      },

      aspectRatio: 1.1,
    });
  };
  
  function clearCalendar() {
    $('#calendar').html('');
  };

  $(document).on('turbolinks:load', function () {
    eventCalendar();
  });

  $(document).on('turbolinks:before-cache', clearCalendar);

  // $('#calendar').fullCalendar({
  //   events: '/events.json'
  // });

});