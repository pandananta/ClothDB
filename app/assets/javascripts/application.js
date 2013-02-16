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
//= require jquery.isotope.min
//= require jquery.fancybox
//= require jquery.zoom
//= require bootstrap



//= require_tree ./




$(document).ready(function() {	
	$(".fancybox").fancybox({
		minWidth : 550,
	});

	$.fancybox.showLoading();



});

var $container = $('#dress_container');

$container.isotope({
  itemSelector : '.card',    
  layoutMode : 'fitRows'
  
});


$('.dropdown-toggle').dropdown()

// filter items when filter link is clicked
$('#filters a').click(function(){
  var selector = $(this).attr('data-filter');
  $container.isotope({ filter: selector });
  return false;
});




// filter items when filter link is clicked
// $('#filters a').click(function(){
//   var selector = $(this).attr('data-filter');
 

//   	var url = window.location.href;    
// 	if (url.indexOf('?') > -1){
// 	   url += '&';

// 	}else{
// 	   url += '?';
// 	}
// 	url+=selector;
// 	console.log(url);
// 	window.location.href = url;
//   return false;
// });

