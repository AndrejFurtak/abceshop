<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

<script type="text/javascript">
// <![CDATA[
idSelectedCountry = {if isset($smarty.post.id_state)}{$smarty.post.id_state|intval}{elseif isset($address->id_state)}{$address->id_state|intval}{else}false{/if};
countries = new Array();
countriesNeedIDNumber = new Array();
{foreach from=$countries item='country'}
	{if isset($country.states) && $country.contains_states}
		countries[{$country.id_country|intval}] = new Array();
		{foreach from=$country.states item='state' name='states'}
			countries[{$country.id_country|intval}].push({ldelim}'id' : '{$state.id_state}', 'name' : '{$state.name|escape:'htmlall':'UTF-8'}'{rdelim});
		{/foreach}
	{/if}
{/foreach}
$(function(){ldelim}
	$('.id_state option[value={if isset($smarty.post.id_state)}{$smarty.post.id_state}{else}{$address->id_state|escape:'htmlall':'UTF-8'}{/if}]').attr('selected', 'selected');
{rdelim});
//]]>
</script>

{capture name=path}{l s='Your addresses'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

<h2>{l s='Your addresses'}</h2>

<h3>
    {if isset($id_address)}
        {l s='Modify the address'} {if isset($smarty.post.alias)}"{$smarty.post.alias}"{elseif $address->alias}"{$address->alias|escape:'htmlall':'UTF-8'}"{/if}
    {else}
        {l s='To add a new address, please fill out the form below.'}
    {/if}
</h3>

{include file=$tpl_dir./errors.tpl}

<form action="{$base_dir_ssl}address.php" method="post" class="std">
    <input type="hidden" name="token" value="{$token}" />
    <p class="required"><sup>*</sup> {l s='Required field'}</p>
    <fieldset>
        <h3>{if isset($id_address)}{l s='Your address'}{else}{l s='New address'}{/if}</h3>
        <table>
            <tr class="required">
                <td><label for="alias">{l s='Assign an address title for future reference'}</label></td>
                <td><input type="text" id="alias" name="alias" value="{if isset($smarty.post.alias)}{$smarty.post.alias}{elseif $address->alias}{$address->alias|escape:'htmlall':'UTF-8'}{elseif isset($select_address)}{else}{l s='My address'}{/if}" /> <sup>*</sup></td>
            </tr>
            <tr>
                <td><label for="company">{l s='Company'}</label></td>
                <td><input type="text" id="company" name="company" value="{if isset($smarty.post.company)}{$smarty.post.company}{else}{$address->company|escape:'htmlall':'UTF-8'}{/if}" /></td>
            </tr>
            <tr class="required">
                <td><label for="firstname">{l s='First name'}</label></td>
                <td><input type="text" name="firstname" id="firstname" value="{if isset($smarty.post.firstname)}{$smarty.post.firstname}{else}{$address->firstname|escape:'htmlall':'UTF-8'}{/if}" /> <sup>*</sup></td>
            </tr>
            <tr class="required">
                <td><label for="lastname">{l s='Last name'}</label></td>
                <td><input type="text" id="lastname" name="lastname" value="{if isset($smarty.post.lastname)}{$smarty.post.lastname}{else}{$address->lastname|escape:'htmlall':'UTF-8'}{/if}" /> <sup>*</sup></td>
            </tr>
            <tr class="required">
                <td><label for="address1">{l s='Address'}</label></td>
                <td><input type="text" id="address1" name="address1" value="{if isset($smarty.post.address1)}{$smarty.post.address1}{else}{$address->address1|escape:'htmlall':'UTF-8'}{/if}" /> <sup>*</sup></td>
            </tr>
            <tr>
                <td><label for="address2">{l s='Address (2)'}</label></td>
                <td><input type="text" id="address2" name="address2" value="{if isset($smarty.post.address2)}{$smarty.post.address2}{else}{$address->address2|escape:'htmlall':'UTF-8'}{/if}" /></td>
            </tr>
            <tr class="required">
                <td><label for="postcode">{l s='Postal code / Zip code'}</label></td>
                <td><input type="text" id="postcode" name="postcode" value="{if isset($smarty.post.postcode)}{$smarty.post.postcode}{else}{$address->postcode|escape:'htmlall':'UTF-8'}{/if}" /> <sup>*</sup></td>
            </tr>
            <tr class="required">
                <td><label for="city">{l s='City'}</label></td>
                <td><input type="text" name="city" id="city" value="{if isset($smarty.post.city)}{$smarty.post.city}{else}{$address->city|escape:'htmlall':'UTF-8'}{/if}" maxlength="64" /> <sup>*</sup></td>
            </tr>
            <tr class="required">
                <td><label for="id_country">{l s='Country'}</label></td>
                <td><select id="id_country" name="id_country">{$countries_list}</select> <sup>*</sup></td>
            </tr>
            <tr>
                <td><label for="id_state">{l s='State'}</label></td>
                <td><select name="id_state" id="id_state">
                    <option value="">-</option>
                </select> <sup>*</sup></td>
            </tr>
            <tr>
                <td><label for="other">{l s='Additional information'}</label></td>
                <td><textarea id="other" name="other" cols="26" rows="3">{if isset($smarty.post.other)}{$smarty.post.other}{else}{$address->other|escape:'htmlall':'UTF-8'}{/if}</textarea></td>
            </tr>
            <tr>
                <td><label for="phone">{l s='Home phone'}</label></td>
                <td><input type="text" id="phone" name="phone" value="{if isset($smarty.post.phone)}{$smarty.post.phone}{else}{$address->phone|escape:'htmlall':'UTF-8'}{/if}" /></td>
            </tr>
            <tr>
                <td><label for="phone_mobile">{l s='Mobile phone'}</label></td>
                <td><input type="text" id="phone_mobile" name="phone_mobile" value="{if isset($smarty.post.phone_mobile)}{$smarty.post.phone_mobile}{else}{$address->phone_mobile|escape:'htmlall':'UTF-8'}{/if}" /></td>
            </tr>
        </table>
    </fieldset>
    <p class="submit2">
        {if isset($id_address)}<input type="hidden" name="id_address" value="{$id_address|intval}" />{/if}
        {if isset($back)}<input type="hidden" name="back" value="{$back}?step=1" />{/if}
        {if isset($mod)}<input type="hidden" name="mod" value="{$mod}" />{/if}
        {if isset($select_address)}<input type="hidden" name="select_address" value="{$select_address|intval}" />{/if}
        <input type="submit" name="submitAddress" id="submitAddress" value="{l s='Save'}" class="button" />
    </p>
</form>

<ul class="footer_links">
	<li><a class="button" href="{$base_dir_ssl}my-account.php">Späť na účet</a></li>
	<li><a class="button" href="{$base_dir}">Úvod</a></li>
</ul>
