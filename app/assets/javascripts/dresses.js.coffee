# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
	if $('.pagination').length > 0
		$(window).scroll ->
			url = $('.pagination .next a').attr('href')
			if url? and $('body').scrollTop() > $('html').height() - $(window).height() - 120
				console.log(url)
				$('.pagination').html('<li class="active"><a href="#">Loading more...</a></li>')
				$.getScript(url)
		$(window).scroll()