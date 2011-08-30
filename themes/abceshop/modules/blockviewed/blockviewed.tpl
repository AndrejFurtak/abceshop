<!-- Block Viewed products -->
<div id="viewed-products_block_left" class="block products_block">
    <h4>{l s='Viewed products' mod='blockviewed'}</h4>
    <div class="block_content">
        {foreach from=$productsViewedObj item=viewedProduct name=myLoop}
        <div class="left_block">
            <a href="{$link->getProductLink($viewedProduct->id, $viewedProduct->link_rewrite, $viewedProduct->category_rewrite, $viewedProduct->ean13)}" title="{l s='More about' mod='blockviewed'} {$viewedProduct->name|escape:htmlall:'UTF-8'}">
                <img src="{$link->getImageLink($viewedProduct->link_rewrite, $viewedProduct->cover, 'home')}" height="{$mediumSize.height}" width="{$mediumSize.width}" alt="{$viewedProduct->legend|escape:htmlall:'UTF-8'}" />
            </a>
            <div class="overview_block">
                <p class="name" title="{$viewedProduct->name|escape:'htmlall':'UTF-8'}">{$viewedProduct->name|truncate:20:'...'|escape:'htmlall':'UTF-8'}</p>
                <p class="category" title="{$viewedProduct->category_name|escape:'htmlall':'UTF-8'}">{$viewedProduct->category_name|truncate:20:'...'|escape:'htmlall':'UTF-8'}</p>
            </div>
        </div>
        {/foreach}
    </div>
</div>