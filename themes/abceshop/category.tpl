{include file=$tpl_dir./breadcrumb.tpl} 
{include file=$tpl_dir./errors.tpl}

{if $category->id AND $category->active}

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
