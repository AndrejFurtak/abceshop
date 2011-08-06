<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
	var addresses = new Array();
	{foreach from=$addresses key=k item=address}
		addresses[{$address.id_address|intval}] = new Array('{$address.company|addslashes}', '{$address.firstname|addslashes}', '{$address.lastname|addslashes}', '{$address.address1|addslashes}', '{$address.address2|addslashes}', '{$address.postcode|addslashes}', '{$address.city|addslashes}', '{$address.country|addslashes}', '{$address.state|default:''|addslashes}');
	{/foreach}
-->
</script>
<script type="text/javascript" src="{$js_dir}order-address.js"></script>

{capture name=path}{l s='Addresses'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

{assign var='current_step' value='address'}
{include file=$tpl_dir./order-steps.tpl}

{include file=$tpl_dir./errors.tpl}

<form name="addressForm" action="{$base_dir_ssl}order.php?" method="post">

    <div>

        <div class="addresses">

            <div id="address_delivery" class="address">
                <h4>
                    {l s='Your delivery address'}
                    <select name="id_address_delivery" id="id_address_delivery" class="address_select" onchange="updateAddress('delivery');">
                        {foreach from=$addresses key=k item=address}
                            <option value="{$address.id_address|intval}" {if $address.id_address == $cart->id_address_delivery}selected="selected"{/if}>{$address.alias|escape:'htmlall':'UTF-8'}</option>
                        {/foreach}
                    </select>
                </h4>
                <table>
                    <tr class="address_company">
                        <td class="name">{l s='Company'}</td>
                        <td class="value"></td>
                    </tr>
                    <tr class="address_name">
                        <td class="name">{l s='Name'}</td>
                        <td class="value"></td>
                    </tr>
                    <tr class="address_address1">
                        <td class="name">{l s='Address'}</td>
                        <td class="value"></td>
                    </tr>
                    <tr class="address_address2">
                        <td class="name">{l s='Address 2'}</td>
                        <td class="value"></td>
                    </tr>
                    <tr class="address_city">
                        <td class="name">{l s='City'}</td>
                        <td class="value"></td>
                    </tr>
                    <tr class="address_country">
                        <td class="name">{l s='Country'}</td>
                        <td class="value"></td>
                    </tr>
                </table>
                <a class="modifyAddress" href="{$base_dir_ssl}address.php?id_address={$cart->id_address_delivery|intval}&amp;back=order.php&amp;step=1{if $back}&mod={$back}{/if}" title="{l s='Update'}">{l s='Modify'}</a>
            </div>

            <div id="address_invoice" class="address">
                <h4>
                    {l s='Your billing address'}
                    <select name="id_address_invoice" id="id_address_invoice" class="address_select" onchange="updateAddress('invoice');">
                        {foreach from=$addresses key=k item=address}
                            <option value="{$address.id_address|intval}" {if $address.id_address == $cart->id_address_invoice}selected="selected"{/if}>{$address.alias|escape:'htmlall':'UTF-8'}</option>
                        {/foreach}
                    </select>
                </h4>
                <table>
                    <tr class="address_company">
                        <td class="name">{l s='Company'}</td>
                        <td class="value"></td>
                    </tr>
                    <tr class="address_name">
                        <td class="name">{l s='Name'}</td>
                        <td class="value"></td>
                    </tr>
                    <tr class="address_address1">
                        <td class="name">{l s='Address'}</td>
                        <td class="value"></td>
                    </tr>
                    <tr class="address_address2">
                        <td class="name">{l s='Address 2'}</td>
                        <td class="value"></td>
                    </tr>
                    <tr class="address_city">
                        <td class="name">{l s='City'}</td>
                        <td class="value"></td>
                    </tr>
                    <tr class="address_country">
                        <td class="name">{l s='Country'}</td>
                        <td class="value"></td>
                    </tr>
                </table>
                <a class="modifyAddress" href="{$base_dir_ssl}address.php?id_address={$cart->id_address_invoice|intval}&amp;back=order.php&amp;step=1{if $back}&mod={$back}{/if}" title="{l s='Update'}">{l s='Modify'}</a>
            </div>
            <a class="address_add" href="{$base_dir_ssl}address.php?back=order.php&amp;step=1{if $back}&mod={$back}{/if}" title="{l s='Add'}">{l s='Add a new address'}</a>
        </div>

        <div class="checkbox hidden">
            <label for="addressesAreEquals">{l s='Use the same address for billing.'}</label>
            <input type="checkbox" name="same" id="addressesAreEquals" value="1" onclick="updateAddress('delivery');" {if $cart->id_address_invoice == $cart->id_address_delivery}checked="checked"{/if} />
        </div>

        <div id="ordermsg">
            <p class="ordermsgLabel">{l s='If you want to leave us comment about your order, please write it below.'}</p>
            <textarea class="ordermsgText" name="message">{$oldMessage}</textarea>
        </div>

    </div>

    <p class="cart_navigation">
        <input type="hidden" class="hidden" name="step" value="2" />
        <input type="hidden" name="back" value="{$back}" />
        <input type="hidden" name="processAddress" value="" />

        <a class="button back" href="{$base_dir_ssl}order.php?step=0{if $back}&back={$back}{/if}" title="{l s='Back'}">{l s='Back'}</a>
        <a class="button next" href="javascript: document.addressForm.submit();" title="">{l s='Next'}</a>
    </p>

</form>