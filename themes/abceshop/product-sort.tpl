{if isset($orderby) AND isset($orderway)}
<!-- Sort products -->
{if $smarty.get.id_category|intval}
	{assign var='request' value=$link->getPaginationLink('category', $category, false, true)}
{elseif $smarty.get.id_manufacturer|intval}
	{assign var='request' value=$link->getPaginationLink('manufacturer', $manufacturer, false, true)}
{elseif $smarty.get.id_supplier|intval}
	{assign var='request' value=$link->getPaginationLink('supplier', $supplier, false, true)}
{else}
	{assign var='request' value=$link->getPaginationLink(false, false, false, true)}
{/if}
<form id="productsSortForm" action="{$request}">
    <p>
        <label for="selectPrductSort">{l s='sort by'}:</label>
        <select id="selectPrductSort" id="name" onchange="document.location.href = $(this).val();">
            <option value="{$link->addSortDetails($request, 'position', $orderwayposition)|escape:'htmlall':'UTF-8'}" {if $orderby == 'position'}selected="selected"{/if}>{l s='--'}</option>
            <option value="{$link->addSortDetails($request, 'price', 'asc')|escape:'htmlall':'UTF-8'}" {if $orderby == 'price' AND $orderway == 'asc' }selected="selected"{/if}>{l s='price: lowest first'}</option>
            <option value="{$link->addSortDetails($request, 'price', 'desc')|escape:'htmlall':'UTF-8'}" {if $orderby == 'price' AND $orderway == 'desc'}selected="selected"{/if}>{l s='price: highest first'}</option>
            <option value="{$link->addSortDetails($request, 'name', 'asc')|escape:'htmlall':'UTF-8'}" {if $orderby == 'name' AND $orderway == 'asc' }selected="selected"{/if}>{l s='name: A to Z'}</option>
            <option value="{$link->addSortDetails($request, 'name', 'desc')|escape:'htmlall':'UTF-8'}" {if $orderby == 'name' AND $orderway == 'desc'}selected="selected"{/if}>{l s='name: Z to A'}</option>
            <option value="{$link->addSortDetails($request, 'quantity', 'desc')|escape:'htmlall':'UTF-8'}" {if $orderby == 'quantity' AND $orderway == 'desc' }selected="selected"{/if}>{l s='in-stock first'}</option>
        </select>
    </p>
</form>
<!-- /Sort products -->
{/if}
