<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

{capture name=path}<a href="{$base_dir_ssl}my-account.php">{l s='My account'}</a><span class="navigation-pipe">{$navigationPipe}</span>{l s='My addresses'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

<h2>{l s='My addresses'}</h2>
<p>{l s='Configure your billing and delivery addresses that will be preselected by default when you make an order. You can also add additional addresses, which can be useful for sending gifts or receiving your order at the office.'}</p>

{if $addresses}
<div class="addresses">
	<h3>{l s='Your addresses are listed below.'}</h3>
	<p>{l s='Be sure to update them if they have changed.'}</p>

    <table class="addresses">
        <tr>
        {foreach from=$addresses item=address name=myLoop}
            <td width="50%">
                <h4>{$address.alias}</h4>
                <p>
                {if $address.company}{$address.company}{/if}
                {$address.firstname} {$address.lastname}<br />
                {$address.address1}<br />
                {if $address.address2}{$address.address2}<br />{/if}
                {$address.postcode} {$address.city}<br />
                {$address.country}{if isset($address.state)} ({$address.state}){/if}<br />
                {if $address.phone}{$address.phone}<br />{/if}
                {if $address.phone_mobile}{$address.phone_mobile}<br />{/if}
                </p>
                <p>
                    <a href="{$base_dir_ssl}address.php?id_address={$address.id_address|intval}" title="{l s='Update'}">{l s='Update'}</a><br />
                    <a href="{$base_dir_ssl}address.php?id_address={$address.id_address|intval}&amp;delete" onclick="return confirm('{l s='Are you sure?'}');" title="{l s='Delete'}">{l s='Delete'}</a>
                </p>
            </td>
            {if $smarty.foreach.myLoop.index % 2}
                </tr><tr>
            {/if}
        {/foreach}
        </tr>
    </table>
    <p class="clear" />
</div>
{else}
	<p class="warning">{l s='No addresses available.'}&nbsp;<a href="{$base_dir_ssl}address.php">{l s='add a new one!'}</a></p>
{/if}


<ul class="buttons">
    <li><a class="button" href="{$base_dir_ssl}address.php" title="{l s='Add an address'}" class="button_large">{l s='Add an address'}</a></li>
</ul>

<ul class="footer_links">
	<li><a class="button" href="{$base_dir_ssl}my-account.php">{l s='Back to Your Account'}</a></li>
	<li><a class="button" href="{$base_dir}">{l s='Home'}</a></li>
</ul>
