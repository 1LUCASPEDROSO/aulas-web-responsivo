define("elgg/system_messages",['jquery','elgg'],function($,elgg){$('.elgg-page-default .elgg-system-messages .elgg-message').each(function(){var $message=$(this);var delay=$message.data().ttl;if(delay===0){return}
if(!delay&&!$message.hasClass('elgg-message-error')){delay=elgg.config.message_delay}
if(!delay){return}
var $list_item=$message.parent();$list_item.animate({opacity:'1.0'},delay).fadeOut('slow')});$(document).on('click','.elgg-system-messages .elgg-message',function(e){var $this=$(this);$this.clearQueue().slideUp(100,function(){$this.remove()})});$(document).on('click','.elgg-system-messages .elgg-message .elgg-inner',function(e){e.stopImmediatePropagation()});function showMessage(msgs,delay,type){if(msgs===undefined){return}
if(!Array.isArray(msgs)){msgs=[msgs]}
var classes=['elgg-message'];if(type){classes.push('elgg-message-'+type)}
delay=parseInt(delay,10);if(isNaN(delay)||delay<0){delay=0}
var messages_html=[];msgs.forEach(function(msg){messages_html.push('<li><div class="'+classes.join(' ')+'"><div class="elgg-inner"><div class="elgg-body">'+msg+'</div></div></div></li>')});$new_messages=$(messages_html.join('')).appendTo($('ul.elgg-system-messages'));if(delay>0){$new_messages.animate({opacity:'1.0'},delay).fadeOut('slow')}};return{clear:function(){$('ul.elgg-system-messages').empty()},success:function(message,delay){delay=parseInt(delay||elgg.config.message_delay,10);showMessage(message,delay,'success')},error:function(message,delay){showMessage(message,delay,'error')}}})