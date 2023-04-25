define("admin/plugins",['jquery','elgg/spinner','elgg/Ajax','elgg/system_messages','elgg/security','elgg/i18n','jquery-ui/widgets/sortable'],function($,spinner,Ajax,system_messages,security,i18n){function freezePlugins(){$('#elgg-plugin-list-cover').css('display','block')};function unfreezePlugins(){$('#elgg-plugin-list-cover').css('display','none')};function initPluginReordering(){$('#elgg-plugin-list > .elgg-list-container > ul').sortable({items:'li:has(> .elgg-state-draggable)',handle:'.elgg-body',forcePlaceholderSize:!0,placeholder:'elgg-plugin-placeholder',opacity:0.8,revert:500,stop:movePlugin})};function toggleSinglePlugin(event){freezePlugins();event.preventDefault();var ajax=new Ajax();ajax.action(this.href).done(function(){ajax.path('admin_plugins_refresh').done(function(output){$('#elgg-plugin-list').html(output.list);$('.elgg-sidebar').html(output.sidebar);$(".elgg-admin-plugins-categories > li.elgg-state-selected > a").trigger('click');initPluginReordering();unfreezePlugins()})}).fail(function(){location.reload()})};function toggleAllPlugins(event){event.preventDefault();if(!confirm(i18n.echo('question:areyousure'))){return}
freezePlugins();var guids=[],state=$(this).data('desiredState'),find_state=state=='active'?'inactive':'active';$('.elgg-plugin.elgg-state-'+find_state+':visible').each(function(){var guid=$(this).data('guid');if(guid){guids.push(guid)}});if(!guids.length){system_messages.error(i18n.echo('admin:plugins:already:'+state));unfreezePlugins();return}
spinner.start();var $form=$('<form method="post" />');$form.prop('action',security.addToken(this.href));$form.append('<input type="hidden" name="guids" value="'+guids.join(',')+'" />');$form.appendTo("body").submit()};function movePlugin(e,ui){freezePlugins();var pluginGuid=ui.item.attr('id');pluginGuid=pluginGuid.replace('elgg-object-','');var ajax=new Ajax();ajax.action('admin/plugins/set_priority',{data:{plugin_guid:pluginGuid,priority:ui.item.index()+1},success:function(){unfreezePlugins()}})};function filterPluginCategory(event){event.preventDefault();$(".elgg-admin-plugins-categories > li").removeClass("elgg-state-selected");$(".elgg-plugin").hide();$(".elgg-plugin-category-"+$(this).attr("rel")).show();$(this).closest('li').addClass("elgg-state-selected")};initPluginReordering();$(document).on('click','.elgg-admin-plugins-categories a',filterPluginCategory);$(document).on('click','.elgg-plugins-toggle',toggleAllPlugins);$(document).on('click','.elgg-plugin-state-change',toggleSinglePlugin)})