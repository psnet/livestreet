{extends file='modals/modal_base.tpl'}

{block name='id'}userfield_form{/block}
{block name='title'}{$aLang.user_field_admin_title_add}{/block}

{block name='content'}
	<form>
		<p><label for="user_fields_form_type">{$aLang.userfield_form_type}:</label>
		<select id="user_fields_form_type" class="input-text input-width-full">
			<option value=""></option>
			{foreach from=$aUserFieldTypes item=sFieldType}
				<option value="{$sFieldType}">{$sFieldType}</option>
			{/foreach}
		</select></p>

		<p><label for="user_fields_form_name">{$aLang.userfield_form_name}:</label>
		<input type="text" id="user_fields_form_name" class="input-text input-width-full" /></p>

		<p><label for="user_fields_form_title">{$aLang.userfield_form_title}:</label>
		<input type="text" id="user_fields_form_title" class="input-text input-width-full" /></p>

		<p><label for="user_fields_form_pattern">{$aLang.userfield_form_pattern}:</label>
		<input type="text" id="user_fields_form_pattern" class="input-text input-width-full" /></p>

		<input type="hidden" id="user_fields_form_action" />
		<input type="hidden" id="user_fields_form_id" />
	</form>
{/block}

{block name='footer'}
	<button type="button" onclick="ls.userfield.applyForm(); return false;" class="button button-primary">{$aLang.user_field_add}</button>
{/block}