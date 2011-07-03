<!-- MODULE Block advertising -->
{if $advertItem}
    <div class="advertising block">
        {if $advertItem.scr != ''}<a href="{$advertItem.url|escape:html:'UTF-8'}" title="Reklama.">{/if}<img src="{$advertItem.src}" alt="" />{if $advertItem.scr != ''}</a>{/if}
    </div>
{/if}
<!-- /MODULE Block advertising -->
