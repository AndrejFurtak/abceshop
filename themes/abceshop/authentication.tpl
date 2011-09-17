{capture name=path}{l s='Login'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

<script type="text/javascript">
// <![CDATA[
idSelectedCountry = {if isset($smarty.post.id_state)}{$smarty.post.id_state|intval}{else}false{/if};
countries = new Array();
countriesNeedIDNumber = new Array();
{foreach from=$countries item='country'}
	{if isset($country.states) && $country.contains_states}
		countries[{$country.id_country|intval}] = new Array();
		{foreach from=$country.states item='state' name='states'}
			countries[{$country.id_country|intval}].push({ldelim}'id' : '{$state.id_state}', 'name' : '{$state.name|escape:'htmlall':'UTF-8'}'{rdelim});
		{/foreach}
	{/if}
	{if $country.need_identification_number}
		countriesNeedIDNumber.push({$country.id_country|intval});
	{/if}
{/foreach}
//]]>
</script>

{assign var='current_step' value='login'}
{include file=$tpl_dir./order-steps.tpl}

{include file=$tpl_dir./errors.tpl}


<div id="authentificationCore">

    {if !isset($email_create)}
        <form name="create_account_form" id="create-account_form" action="{$base_dir_ssl}authentication.php" method="post">
            {if isset($back)}<input type="hidden" class="hidden" name="back" value="{$back|escape:'htmlall':'UTF-8'}" />{/if}
            <input type="hidden" class="hidden" name="SubmitCreate" value="{l s='Create your account'}" />
            <input type="hidden" name="SubmitCreate" value="{l s='Create your account'}" />

            <h3>{l s='Create your account'}</h3>
            <table>
                <tr class="firstRow">
                    <td colspan="2">
                        {l s='Enter your e-mail address to create your account'}
                    </td>
                </tr>
                <tr>
                    <td>
                        <input class="loginText" type="text" id="email_create" name="email_create" value="{if isset($smarty.post.email_create)}{$smarty.post.email_create|escape:'htmlall'|stripslashes}{/if}" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <input class="loginButton" type="submit" id="submitLogin" name="submitLogin" value="{l s='Create your account'}" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2">&nbsp;</td>
                </tr>
            </table>
        </form>

        <form name="login_form" id="login_form" action="{$base_dir_ssl}authentication.php" method="post">
            {if isset($back)}<input type="hidden" class="hidden" name="back" value="{$back|escape:'htmlall':'UTF-8'}" />{/if}

            <h3>{l s='Already registered ?'}</h3>
            <table>
                <tr>
                    <td>{l s='E-mail address'}</td>
                    <td><input class="loginText" type="text" id="email" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email|escape:'htmlall'|stripslashes}{/if}" /></td>
                </tr>
                <tr>
                    <td>{l s='Password'}</td>
                    <td><input class="loginText" type="password" id="passwd" name="passwd" value="{if isset($smarty.post.passwd)}{$smarty.post.passwd|escape:'htmlall'|stripslashes}{/if}" /></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <input class="loginButton" type="submit" id="submitLogin" name="SubmitLogin" value="{l s='Log in'}" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2"><a class="lostPassword" href="{$base_dir}password.php" title="">{l s='Lost your password?'}</a></td>
                </tr>
            </table>
        </form>

        <div class="cart_navigation">
            <a class="button back" href="{$base_dir_ssl}order.php" title="">{l s='Back'}</a>
        </div>


    {else}

        <p class="required"><sup>*</sup> {l s='Required field'}</p>
        <form action="{$base_dir_ssl}authentication.php" method="post" id="account-creation_form" class="std">
            {$HOOK_CREATE_ACCOUNT_TOP}
            <fieldset class="account_creation">
                <h3>{l s='Your personal information'}</h3>
                <table>
                    <tr>
                        <td>{l s='Title'}</td>
                        <td>
                            <input type="radio" name="id_gender" id="id_gender1" value="1" {if isset($smarty.post.id_gender) && $smarty.post.id_gender == 1}checked="checked"{/if} />
                            <label for="id_gender1" class="top">{l s='Mr.'}</label>
                            <input type="radio" name="id_gender" id="id_gender2" value="2" {if isset($smarty.post.id_gender) && $smarty.post.id_gender == 2}checked="checked"{/if} />
                            <label for="id_gender2" class="top">{l s='Ms.'}</label>
                        </td>
                    </tr>
                    <tr class="required">
                        <td><label for="customer_firstname">{l s='First name'}</label></td>
                        <td><input onkeyup="$('#firstname').val(this.value);" type="text" class="text" id="customer_firstname" name="customer_firstname" value="{if isset($smarty.post.customer_firstname)}{$smarty.post.customer_firstname}{/if}" /> <sup>*</sup></td>
                    </tr>
                    <tr class="required">
                        <td><label for="customer_lastname">{l s='Last name'}</label></td>
                        <td><input onkeyup="$('#lastname').val(this.value);" type="text" class="text" id="customer_lastname" name="customer_lastname" value="{if isset($smarty.post.customer_lastname)}{$smarty.post.customer_lastname}{/if}" /> <sup>*</sup></td>
                    </tr>
                    <tr class="required">
                        <td><label for="email">{l s='E-mail'}</label></td>
                        <td><input type="text" class="text" id="email" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email}{/if}" /> <sup>*</sup></td>
                    </tr>
                    <tr class="required">
                        <td><label for="passwd">{l s='Password'}</label></td>
                        <td><input type="password" class="text" name="passwd" id="passwd" /> <sup>*</sup> <span class="form_info">{l s='(5 characters min.)'}</span></td>
                    </tr>
                    <tr>
                        <td><label for="days">{l s='Birthday'}</label></td>
                        <td>
                            <select id="days" name="days">
                                <option value="">-</option>
                                {foreach from=$days item=day}
                                    <option value="{$day|escape:'htmlall':'UTF-8'}" {if ($sl_day == $day)} selected="selected"{/if}>{$day|escape:'htmlall':'UTF-8'}&nbsp;&nbsp;</option>
                                {/foreach}
                            </select>
                            {*
                                    {l s='January'}
                                    {l s='February'}
                                    {l s='March'}
                                    {l s='April'}
                                    {l s='May'}
                                    {l s='June'}
                                    {l s='July'}
                                    {l s='August'}
                                    {l s='September'}
                                    {l s='October'}
                                    {l s='November'}
                                    {l s='December'}
                            *}
                            <select id="months" name="months">
                                <option value="">-</option>
                                {foreach from=$months key=k item=month}
                                    <option value="{$k|escape:'htmlall':'UTF-8'}" {if ($sl_month == $k)} selected="selected"{/if}>{l s="$month"}&nbsp;</option>
                                {/foreach}
                            </select>
                            <select id="years" name="years">
                                <option value="">-</option>
                                {foreach from=$years item=year}
                                    <option value="{$year|escape:'htmlall':'UTF-8'}" {if ($sl_year == $year)} selected="selected"{/if}>{$year|escape:'htmlall':'UTF-8'}&nbsp;&nbsp;</option>
                                {/foreach}
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="checkbox" name="newsletter" id="newsletter" value="1" {if isset($smarty.post.newsletter) AND $smarty.post.newsletter == 1} checked="checked"{/if} />
                        <label for="newsletter">{l s='Sign up for our newsletter'}</label></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="checkbox"name="optin" id="optin" value="1" {if isset($smarty.post.optin) AND $smarty.post.optin == 1} checked="checked"{/if} />
                        <label for="optin">{l s='Receive special offers from our partners'}</label></td>
                    </tr>
                </table>
            </fieldset>

            <fieldset class="account_creation">
                <h3>{l s='Your address'}</h3>
                <table>
                    <tr>
                        <td><label for="company">{l s='Company'}</label></td>
                        <td><input type="text" class="text" id="company" name="company" value="{if isset($smarty.post.company)}{$smarty.post.company}{/if}" /></td>
                    </tr>
                    <tr class="required">
                        <td><label for="firstname">{l s='First name'}</label></td>
                        <td><input type="text" class="text" id="firstname" name="firstname" value="{if isset($smarty.post.firstname)}{$smarty.post.firstname}{/if}" /> <sup>*</sup></td>
                    </tr>
                    <tr class="required">
                        <td><label for="lastname">{l s='Last name'}</label></td>
                        <td><input type="text" class="text" id="lastname" name="lastname" value="{if isset($smarty.post.lastname)}{$smarty.post.lastname}{/if}" /> <sup>*</sup></td>
                    </tr>
                    <tr class="required">
                        <td><label for="address1">{l s='Address'}</label></td>
                        <td><input type="text" class="text" name="address1" id="address1" value="{if isset($smarty.post.address1)}{$smarty.post.address1}{/if}" /> <sup>*</sup></td>
                    </tr>
                    <tr>
                        <td><label for="address2">{l s='Address (2)'}</label></td>
                        <td><input type="text" class="text" name="address2" id="address2" value="{if isset($smarty.post.address2)}{$smarty.post.address2}{/if}" /></td>
                    </tr>
                    <tr class="required">
                        <td><label for="postcode">{l s='Postal code / Zip code'}</label></td>
                        <td><input type="text" class="text" name="postcode" id="postcode" value="{if isset($smarty.post.postcode)}{$smarty.post.postcode}{/if}" /> <sup>*</sup></td>
                    </tr>
                    <tr class="required">
                        <td><label for="city">{l s='City'}</label></td>
                        <td><input type="text" class="text" name="city" id="city" value="{if isset($smarty.post.city)}{$smarty.post.city}{/if}" /> <sup>*</sup></td>
                    </tr>
                    <tr class="required">
                        <td><label for="id_country">{l s='Country'}</label></td>
                        <td>
                            <select name="id_country" id="id_country">
                                <option value="">-</option>
                                {foreach from=$countries item=v}
                                    <option value="{$v.id_country}" {if ($sl_country == $v.id_country)} selected="selected"{/if}>{$v.name|escape:'htmlall':'UTF-8'}</option>
                                {/foreach}
                            </select> <sup>*</sup>
                        </td>
                    </tr>
                    <tr class="required">
                        <td><label for="id_state">{l s='State'}</label>
                        <td>
                            <select name="id_state" id="id_state">
                                <option value="">-</option>
                            </select> <sup>*</sup>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="other">{l s='Additional information'}</label></td>
                        <td><textarea name="other" id="other" cols="26" rows="3">{if isset($smarty.post.other)}{$smarty.post.other}{/if}</textarea></td>
                    </tr>
                    <tr>
                        <td><label for="phone">{l s='Home phone'}</label></td>
                        <td><input type="text" class="text" name="phone" id="phone" value="{if isset($smarty.post.phone)}{$smarty.post.phone}{/if}" /></td>
                    </tr>
                    <tr>
                        <td><label for="phone_mobile">{l s='Mobile phone'}</label></td>
                        <td><input type="text" class="text" name="phone_mobile" id="phone_mobile" value="{if isset($smarty.post.phone_mobile)}{$smarty.post.phone_mobile}{/if}" /></td>
                    </tr>
                    <tr class="required" id="address_alias">
                        <td><label for="alias">{l s='Assign an address title for future reference'} !</label></td>
                        <td><input type="text" class="text" name="alias" id="alias" value="{if isset($smarty.post.alias)}{$smarty.post.alias}{else}{l s='My address'}{/if}" /> <sup>*</sup></td>
                    </tr>
                </table>
            </fieldset>

            <fieldset class="account_creation dni">
                <h3>{l s='Tax identification'}</h3>
                <table>
                    <tr>
                        <td><label for="dni">{l s='Identication number'}</label></td>
                        <td><input type="text" class="text" name="dni" id="dni" value="{if isset($smarty.post.dni)}{$smarty.post.dni}{/if}" />
                        <span class="form_info">{l s='DNI / NIF / NIE'}</span></td>
                    </tr>
                </table>
            </fieldset>

            {$HOOK_CREATE_ACCOUNT_FORM}

            <p class="cart_navigation required submit">
                <input type="hidden" name="email_create" value="1" />
                {if isset($back)}<input type="hidden" class="hidden" name="back" value="{$back|escape:'htmlall':'UTF-8'}" />{/if}
                <input class="button" type="submit" name="submitAccount" id="submitAccount" value="{l s='Register'}" />
            </p>

        </form>
    {/if}

</div>
