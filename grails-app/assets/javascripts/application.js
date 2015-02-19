// This is a manifest file that'll be compiled into application.js.
//
// Any JavaScript file within this directory can be referenced here using a relative path.
//
// You're free to add application-wide JavaScript to this file, but it's generally better 
// to create separate JavaScript files as needed.
//
//= require jquery
//= require jquery-ui/js/jquery-ui-1.10.3.custom.min
//= require_tree .
//= require_self
//= require bootstrap
//= win8-viewport-bug-workaround.js

if (typeof jQuery !== 'undefined') {
	(function($) {
		$('#spinner').ajaxStart(function() {
			$(this).fadeIn();
		}).ajaxStop(function() {
			$(this).fadeOut();
		});

		if (!$('.chkval').val()) {
			$('.chkval').val(0);
		};
	})(jQuery);
};