// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function() {

    $('#calendar').fullCalendar({
        header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
		},
		buttonText: {
		    prev:     '&lsaquo;', // <
		    next:     '&rsaquo;', // >
		    prevYear: '&laquo;',  // <<
		    nextYear: '&raquo;',  // >>
		    today:    'dzisiaj',
		    month:    'miesiąc',
		    week:     'tydzień',
		    day:      'dzień'
		},
		monthNames: ['Styczeń', 'Luty', 'Marzec', 'Kwiecień', 'Maj', 'Czerwiec', 'Lipiec', 
			'Sierpień', 'Wrzesień', 'Październik', 'Listopad', 'Grudzień'],
    	monthNamesShort: ['Sty', 'Lut', 'Mar', 'Kwi', 'Maj', 'Cze',
 			'Lip', 'Sie', 'Wrz', 'Paź', 'Lis', 'Gru'],
 		dayNames: ['Niedziela', 'Poniedziałek', 'Wtorek', 'Środa',
 			'Czwartek', 'Piątek', 'Sobota'],
 		dayNamesShort: ['Nie', 'Pon', 'Wto', 'Śro', 'Czw', 'Pią', 'Sob']
    })

<<<<<<< HEAD
  $(function(){
  $("#updateit").click(
	  
		function(){
		     $('.bar').css("width", '+=' + (0.05 * $('.progress').width()));
		     return false;
		});
	});

  	$(function(){
  $("#remove1").click(
	  
		function(){
		     $('.bar').css("width", '-=' + (0.05 * $('.progress').width()));
		     return false;
		});
	});




});


=======
    $('#workingdaystable .btn').click( function() {
    	if($(this).hasClass('disabled'))
    	{
    		$(this).removeClass('disabled')
    		$(this).removeClass('btn-info')
    		$(this).parent().find('input').val('0')
    	}
    	else {
    		$(this).addClass('disabled')
    		$(this).addClass('btn-info')
    		$(this).parent().find('input').val('1')
    	}
    })
>>>>>>> e9ed9b8e5f21616fcd961c5bebea37df2caf713c

