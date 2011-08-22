<!-- MODULE Home Categories -->
<div id="homeCategoriesBlock" class="block">
    <ul>
        {foreach from=$homeCategories item=category name=homeCategoriesLoop}
            <li{if $smarty.foreach.homeCategoriesLoop.iteration % 4 == 0} class="lineLast"{/if}>
                <a href="{$category.link|escape:html:'UTF-8'}" title="{l s="Category:" mod="homecategories"} {$category.name|escape:html:'UTF-8'}">
                    <img src="{$category.imgLink|escape:html:'UTF-8'}" alt="">
                    <div class="categoryBackground mainCategory{$smarty.foreach.homeCategoriesLoop.iteration}"></div>
                    <div class="categoryName">{$category.name|escape:html:'UTF-8'}</div>
                </a>
            </li>
        {/foreach}
    </ul>
</div>
<!-- /MODULE Home Categories -->
