<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 

<jsp:include page="/jsp/menu.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event Calendar</title>
<style>

html, body {
  margin: 0;
  padding: 0;
  font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
  font-size: 14px;
}

#calendar {
  max-width: 900px;
  margin: 40px auto;
  background:white;
}


/* body{background-color: clouds;}
table {width:80%;}
#user td {width:50;}
tr {height:4rem;}
table {border:10px solid white;}
tr{background:white; }
button{background:white; border:0; height:2rem;} */

</style>
<link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.10.2/dist/fullcalendar.min.css" rel="stylesheet">
   
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/moment@2.24.0/min/moment.min.js"></script>    
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@3.5.0/dist/jquery.min.js"></script>    
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/fullcalendar@3.10.2/dist/fullcalendar.min.js"></script>   
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/fullcalendar@3.10.2/dist/gcal.min.js"></script>    


<script>
$(function() {

	  $('#calendar').fullCalendar({

	    header: {
	      left: 'prev,next today',
	      center: 'title',
	      right: 'month,listYear'
	    },

	    displayEventTime: false, // don't show the time column in list view

	    // THIS KEY WON'T WORK IN PRODUCTION!!!
	    // To make your own Google API key, follow the directions here:
	    // http://fullcalendar.io/docs/google_calendar/
	    googleCalendarApiKey: 'AIzaSyDcnW6WejpTOCffshGDDb4neIrXVUA1EAE',

	    // US Holidays
	    events: 'en.usa#holiday@group.v.calendar.google.com',

	    eventClick: function(event) {
	      // opens events in a popup window
	      window.open(event.url, '_blank', 'width=700,height=600');
	      return false;
	    }

	  });

	});

/* calendar ajax 부분 */
var calendarEl = document.getElementById('calendar');
var calendar = new FullCalendar.Calendar(calendarEl, {
	plugins: [ 'dayGrid', 'timeGrid', 'list', 'interaction' ],
	header: {
		left: 'prev,next today',
		center: 'title',
		right: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek'
	},
	defaultView: 'timeGridWeek',
	locale: 'ko',
	navLinks: true, // can click day/week names to navigate views
	editable: true,
	allDaySlot: false,
	eventLimit: true, // allow "more" link when too many events
	minTime: '10:00:00',
	maxTime: '24:00:00',
	contentHeight: 'auto',
	eventSources: [{
		events: function(info, successCallback, failureCallback) {
			$.ajax({
				url: '<c:url value="/selectEventList"/>',
				type: 'POST',
				dataType: 'json',
				data: {
					start : moment(info.startStr).format('YYYY-MM-DD'),
					end : moment(info.endStr).format('YYYY-MM-DD')
				},
				success: function(data) {
					successCallback(data);
				}
			});
		}
	}]
});
		
calendar.render();





</script>

</head>
<body>

<div id='calendar'></div>







</body>
</html>