define("forms/admin/users/bulk_actions",['jquery','elgg/spinner'],function($,spinner){function disable_submit(){$('form.elgg-form-admin-users-bulk-actions').find('button[type="submit"]').prop('disabled',!0)};function enable_submit(){$('form.elgg-form-admin-users-bulk-actions').find('button[type="submit"]').prop('disabled',!1)}
$(document).on('change','form.elgg-form-admin-users-bulk-actions input[name="user_guids"]',function(){if($(this).is(':checked')){$('form.elgg-form-admin-users-bulk-actions input[name="user_guids[]"]:not(:checked)').prop('checked',!0)}else{$('form.elgg-form-admin-users-bulk-actions input[name="user_guids[]"]:checked').prop('checked',!1)}});$(document).on('submit','.elgg-form-admin-users-bulk-actions',function(){var $checkboxes=$(this).find('input[type="checkbox"]:checked');if(!$checkboxes.length){return!1}
spinner.start();disable_submit()});$(document).on('change','.elgg-form-admin-users-bulk-actions input[type="checkbox"]',function(){$checkboxes=$('.elgg-form-admin-users-bulk-actions input[type="checkbox"]:checked');if($checkboxes.length){enable_submit()}else{disable_submit()}})})