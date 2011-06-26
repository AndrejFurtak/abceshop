<!-- MODULE Block advertising -->
<div class="advertising block{if $advertItems|@count == 0} hidden{/if}">
    {foreach from=$advertItems item=advertItem}
        <a href="{$advertItem.url|escape:html:'UTF-8'}" title=""><img src="{$advertItem.presentationPath}" alt="" /></a>
    {/foreach}
</div>
<!-- /MODULE Block advertising -->
