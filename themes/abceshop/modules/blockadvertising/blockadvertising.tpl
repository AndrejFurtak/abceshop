<!-- MODULE Block advertising -->
<div class="advertising block">
    {foreach from=$advertItems item=advertItem}
	<a href="{$advertItem.url|escape:html:'UTF-8'}" title=""><img src="{$advertItem.presentationPath}" alt="" /></a>
    {/foreach}
</div>
<!-- /MODULE Block advertising -->
