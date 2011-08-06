<!-- Block user information module HEADER -->
<div class="header_user">
	<p class="userinfo">
		{if $logged}
			<span class="customerName">{$customerName}:</span>
            <a class="account" href="{$base_dir_ssl}my-account.php" title="Váš účet.">Váš účet</a>
            (<a class="logout" href="{$base_dir}index.php?mylogout" title="Odhlásiť sa z obchodu.">odhlásiť</a>)
		{else}
            <span class="login"><a href="{$base_dir_ssl}my-account.php">Prihlásiť sa</a></span>
		{/if}
	</p>
    {*
    <a href="{$base_dir_ssl}order.php" title="Váš nákupný košík.">Košík:
        {if $cart_qties == 0}
            prázdny
        {elseif $cart_qties == 1}
            {$cart_qties} produkt
        {elseif ($cart_qties >= 2) AND ($cart_qties <= 4)}
            {$cart_qties} produkty
        {else}
            {$cart_qties} produktov
        {/if}
        {if $cart_qties > 0}
            {if $priceDisplay == 1}
                {convertPrice price=$cart->getOrderTotal(false, 4)}
            {else}
                {convertPrice price=$cart->getOrderTotal(true, 4)}
            {/if}
        {/if}
    </a>
    *}
</div>
<!-- /Block user information module HEADER -->
