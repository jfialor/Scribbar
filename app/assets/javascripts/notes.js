//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready(function() {
	var commentNode = $('#lp-comment'),
		nameNode = $('#lp-name'),
		name = $('#note_name');
		//website = $('#website');
	
	//comment...easy
	$('#live-preview-form input, #live-preview-form textarea').bind('blur keyup',function() {
		//comment
		commentNode.text($('#note_body').val());
		commentNode.html($('#lp-comment').html().replace(/\n/g,'<br />'));
		
		
		//name & websites
		if($('#note_name').val()) {
			/*if(website.val() && /http:\/\/[A-Za-z0-9\.-]{3,}\.[A-Za-z]{2}/.test(website.val())) {
				nameNode.html('<a href="' + website.val() + '">' + name.val() + '</a> says:');
			}
			else {*/
				nameNode.text(name.val());
			
		}
		
		/*
		//gravatar
		if($('#email').val() && /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/.test($('#email').val())) {
				var md5Email = MD5($('#email').val());
				$('#lp-avatar').html('<img src="http://www.gravatar.com/avatar.php?gravatar_id=' + md5Email + '&size=80&rating=G&default=http%3A%2F%2Fdavidwalsh.name%2Fwp-content%2Fthemes%2Fdavid-walsh%2Fgraphics%2Fcom.jpg" alt="' + $('#lp-name').val() + '" />');
		}*/
	});
});

