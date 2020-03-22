$(function () {

  function eventCalendar() {

    if (location.pathname == "/") {
      return $('#calendar').fullCalendar({
        titleFormat: 'YYYY / M',
        dayNamesShort: ['日', '月', '火', '水', '木', '金', '土'],
        header: {
          left: 'title',
          right: 'prev,next'
        },
        aspectRatio: 1.1,
        firstDay: 1,

        events: '/home.json',
        eventLimit: true,
        eventRender: function(events, element) {
          $(element).css("height", "14px")
          $(element).css("width", "14px")
          $(element).css("display", "inline-block")
          $(element).css("border-radius", "2px")
          $(element).css("margin", "0")
          $(element).css("padding", "0")
          $(element).css("border", "none")
          $(element).css("margin-left", "5px")
          $(element).css("background-color", "#fdb13e")
          }
      });
    } 
    
    else {
      return $('#calendar').fullCalendar({
        titleFormat: 'YYYY / M',
        dayNamesShort: ['日', '月', '火', '水', '木', '金', '土'],
        header: {
          left: 'title',
          right: 'prev,next'
        },
        aspectRatio: 1.1,
        firstDay: 1,

        events: `/users/${gon.user_id}.json`,
        eventLimit: true,
        eventRender: function(events, element) {
          $(element).css("height", "14px")
          $(element).css("width", "14px")
          $(element).css("display", "inline-block")
          $(element).css("border-radius", "2px")
          $(element).css("margin", "0")
          $(element).css("padding", "0")
          $(element).css("border", "none")
          $(element).css("margin-left", "5px")
          if (events['pattern'] == 'participant') {
            $(element).css("background-color", "#DAB48D")
          } else if (events['pattern'] == 'organizer') {
            $(element).css("background-color", "#E55934")
          } else {
            $(element).css("background-color", "#fdb13e")
          }
        }
      }); 
    }
  };

  function clearCalendar() {
    $('#calendar').html('');
  };

  $(document).on('turbolinks:load', function () {
    eventCalendar();
  });

  $(document).on('turbolinks:before-cache', clearCalendar);
});
