<p class="payment_module" height="">
	<a href="{$base_dir_ssl}modules/paypalapi/payment/submit.php" title="{l s='Pay with PayPal' mod='paypalapi'}">
			<img src="{$logo}" alt="{l s='Pay with PayPal' mod='paypalapi'}" style="float:left;" />
		<br />
		{if $integral}
			{* 
			 * Change the sentence for better translation, it was :
			 * 'Pay with your account PayPal, credit card (CB, Visa, Mastercard...), or private credit card'
			 *}
			{l s='Pay with your credit/debit card (Visa, Mastercard, Amex, Discover, Eurocard,...), or with your Paypal account' mod='paypalapi'}
		{else}
			{* 
			 * Change the sentence for better translation, it was :
			 * 'Pay with your account PayPal'
			 *}
			{l s='Pay with your Paypal account' mod='paypalapi'}
		{/if}
	<br style="clear:both" />
	</a>
</p>