{include file=$tpl_dir./breadcrumb.tpl} 
{include file=$tpl_dir./errors.tpl}

{if $category->id AND $category->active}

    {if isset($subcategories)}
        <!-- Subcategories -->
        <div id="subcategories">
            <ul>
                {foreach from=$subcategories item=subcategory name=subcategoriesLoop}
                    <li{if ($smarty.foreach.subcategoriesLoop.index + 1) % 4 == 0} class="inLineLast"{/if}>
                        <div class="subcategory_image">
                            <a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'htmlall':'UTF-8'}" title="{$subcategory.name|escape:'htmlall':'UTF-8'}">
                                {if $subcategory.id_image}
                                    <img src="{$link->getCatImageLink($subcategory.link_rewrite, $subcategory.id_image, 'medium')}" alt="" />
                                {else}
                                    <img src="{$img_cat_dir}default-medium.jpg" alt="" />
                                {/if}
                            </a>
                        </div>
                        <div class="subcategory_info">
                            <a href="{$link->getCategoryLink($subcategory.id_category, $subcategory.link_rewrite)|escape:'htmlall':'UTF-8'}">{$subcategory.name|escape:'htmlall':'UTF-8'}</a>
                        </div>
                    </li>
                {/foreach}
            </ul>
            <br class="clear"/>
        </div>
    {/if}


    {if $products}

        {literal}<!--{include file=$tpl_dir./product-sort.tpl}-->{/literal}
        {include file=$tpl_dir./product-list.tpl products=$products}
        {include file=$tpl_dir./pagination.tpl}

    {else}

        <p class="warning">{l s='There are no products in this category.'}</p>

    {/if}

{elseif $category->id}

    <p class="warning">{l s='This category is currently unavailable.'}</p>

{/if}
