<!-- MODULE Block various links -->
<ul class="block_various_links" id="block_various_links_footer">
	{foreach from=$cmslinks item=cmslink}
		<li class="item"><a href="{$cmslink.link|addslashes}" title="{$cmslink.meta_title|escape:'htmlall':'UTF-8'}">{$cmslink.meta_title|escape:'htmlall':'UTF-8'}</a></li>
	{/foreach}
	<li class="last_item">{l s='Powered by' mod='blockvariouslinks'} <a href="http://www.prestashop.com">PrestaShop</a>&trade;</li>
</ul>
<!-- /MODULE Block various links -->
