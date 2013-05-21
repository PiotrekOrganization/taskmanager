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
//= require jquery-ui

//= require_tree .

$(document).ready(function() {

  function intToFloat(num, decPlaces) { return num.toFixed(decPlaces); }
  $(function(){
  $("#updateit").click(
	  
		function(){
		     $('.bar').css("width", '+=' + (0.0254 * $('.progress').width()));
		     var getWidth =  $('.bar').width();
		     $('#event_priority').val(intToFloat(getWidth,2));

		     return false;
		});
	});

  	$(function(){
  $("#remove1").click(
	  
		function(){
		     $('.bar').css("width", '-=' + (0.0254 * $('.progress').width()));
		     var getWidth =  $('.bar').width();

		     $('#event_priority').val(intToFloat(getWidth,2));
		     
		     return false;
		});
	});




});

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
//date Picker 
$(function() {
	$( "#fixStartDatepicker" ).datepicker({ dateFormat: 'dd-mm-yy' }).val();
});

$(function() {
	$( "#fixEndDatepicker" ).datepicker({ dateFormat: 'dd-mm-yy' }).val();
});

$(function() {
	$( "#dynStartDatepicker" ).datepicker({ dateFormat: 'dd-mm-yy' }).val();
});

$(function() {
	$( "#dynEndDatepicker" ).datepicker({ dateFormat: 'dd-mm-yy' }).val();
});


