<ul>
{foreach from=$virtualProducts item=product}
	<li>
		<a href="{$product.link}" title="{$product.name}">{$product.name}</a>
		{if isset($product.deadline)}
			platnosť odkazu vyprší {$product.deadline}
		{/if}
		{if isset($product.downloadable)}
			Počet stiahnutí: {$product.downloadable} krát
		{/if}
	</li>
{/foreach}
</ul>