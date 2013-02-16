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
//= require jquery-1.7.1.min.js
//= require jquery_ujs
//= require bootstrap
//= require jquery.isotope.min.js
//= require jquery.zoom.js
//= require jquery.mousewheel-3.0.6.pack.js
//= require jquery.fancybox.js



//= require_tree ./

console.log("point 1");



var $container = $('#dress_container');

$container.isotope({
  itemSelector : '.card',    
  layoutMode : 'fitRows'
  
});

console.log("point 3");

$('.dropdown-toggle').dropdown()

// filter items when filter link is clicked
$('#filters a').click(function(){
  var selector = $(this).attr('data-filter');
  $container.isotope({ filter: selector });
  return false;
});


$(document).ready(function() {	
	$(".fancybox").fancybox({
		minWidth : 550,
	});

	$.fancybox.showLoading();

	console.log("point 2");



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

