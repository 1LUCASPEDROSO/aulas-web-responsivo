define("icon/user/default",['jquery'],function($){function loadMenu(mac,callback){var $all_placeholders=$(".elgg-menu-hover[rel='"+mac+"']");if(!$all_placeholders.length){return}
require(['elgg/Ajax'],function(Ajax){var ajax=new Ajax();ajax.view('navigation/menu/user_hover/contents',{data:$all_placeholders.eq(0).data('elggMenuData'),success:function(data){if(data){$all_placeholders.html($(data))}
if(typeof callback==='function'){callback()}},complete:function(){$all_placeholders.removeAttr('data-menu-placeholder data-elgg-menu-data')}})})};function showPopup($icon){var $hovermenu=$icon.data('hovermenu')||null;if(!$hovermenu){$hovermenu=$icon.parent().find('.elgg-menu-hover');$icon.data('hovermenu',$hovermenu)}
require(['elgg/popup'],function(popup){if($hovermenu.is(':visible')){popup.close($hovermenu)}else{popup.open($icon,$hovermenu,{'my':'left top','at':'left top','of':$icon.closest('.elgg-avatar'),'collision':'fit fit'})}})};$(document).on('click','.elgg-avatar-menu > a',function(e){e.preventDefault();var $icon=$(this);var $placeholder=$icon.parent().find('.elgg-menu-hover[data-menu-placeholder]');if($placeholder.length){loadMenu($placeholder.attr('rel'),function(){showPopup($icon)})}else{showPopup($icon)}})})