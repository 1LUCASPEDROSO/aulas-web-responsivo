define("elgg/spinner",['jquery'],function($){var active=!1;var SHOW_DELAY=20;$('body').append('<div class="elgg-spinner"><div class="elgg-ajax-loader"></div><div class="elgg-spinner-text elgg-subtext"></div></div>');var spinner={start:function(text){active=!0;spinner.clearText();setTimeout(function(){if(active){$('body').addClass('elgg-spinner-active');$(spinner).triggerHandler('_testing_show')}},SHOW_DELAY);if(typeof text==='string'){spinner.setText(text)}else{spinner.setText('')}},stop:function(){active=!1;$('body').removeClass('elgg-spinner-active')},setText:function(text){$('.elgg-spinner .elgg-spinner-text').text(text)},clearText:function(){$('.elgg-spinner .elgg-spinner-text').html('')}};return spinner})