<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

{capture name=path}{l s='My account'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

<h2>{l s='My account'}</h2>
<h4>{l s='Welcome to your account. Here you can manage your addresses and orders.'}</h4>
<ul id="accountMenu">
	<li><a class="button" href="{$base_dir_ssl}history.php" title="{l s='Orders'}">{l s='History and details of my orders'}</a></li>
	{if $returnAllowed}
		<li><a class="button" href="{$base_dir_ssl}order-follow.php" title="{l s='Merchandise returns'}">{l s='My merchandise returns'}</a></li>
	{/if}
	<li><a class="button" href="{$base_dir_ssl}order-slip.php" title="{l s='Credit slips'}">{l s='My credit slips'}</a></li>
	<li><a class="button" href="{$base_dir_ssl}addresses.php" title="{l s='Addresses'}">{l s='My addresses'}</a></li>
	<li><a class="button" href="{$base_dir_ssl}identity.php" title="{l s='Information'}">{l s='My personal information'}</a></li>
	{if $voucherAllowed}
		<li><a class="button" href="{$base_dir_ssl}discount.php" title="{l s='Vouchers'}">{l s='My vouchers'}</a></li>
	{/if}
	{$HOOK_CUSTOMER_ACCOUNT}
</ul>
<p><a class="button home" href="{$base_dir}" title="{l s='Home'}">{l s='Home'}</a></p>