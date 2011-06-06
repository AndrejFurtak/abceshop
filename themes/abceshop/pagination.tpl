{if isset($p) AND $p}
	{if $smarty.get.id_category|intval}
		{assign var='requestPage' value=$link->getPaginationLink('category', $category, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('category', $category, true, false, false, true)}
	{elseif $smarty.get.id_manufacturer|intval}
		{assign var='requestPage' value=$link->getPaginationLink('manufacturer', $manufacturer, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('manufacturer', $manufacturer, true, false, false, true)}
	{elseif $smarty.get.id_supplier|intval}
		{assign var='requestPage' value=$link->getPaginationLink('supplier', $supplier, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink('supplier', $supplier, true, false, false, true)}
	{else}
		{assign var='requestPage' value=$link->getPaginationLink(false, false, false, false, true, false)}
		{assign var='requestNb' value=$link->getPaginationLink(false, false, true, false, false, true)}
	{/if}
	<!-- Pagination -->
	{if $start != $stop}
		<ul class="pagination">
		{if $p != 1}
			{assign var='p_previous' value=$p-1}
			<li id="pagination_previous"><a href="{$link->goPage($requestPage, $p_previous)}">{l s='previous'}</a></li>
		{else}
			<li id="pagination_previous" class="disabled"><span>{l s='previous'}</span></li>
		{/if}

		{if $start >= 2}
            {* Odkaz na prvú stránku zobrazím vždy. *}
			<li><a href="{$link->goPage($requestPage, 1)}">1</a></li>
            {if $start >= 3}
                {* Ak sa generujú odkazy niekde ďalej za prvou stránkou, vypíšem trojbodku. *}
                <li class="truncate">...</li>
            {/if}
        {/if}

        {*
            Odkazy okolo aktuálnej stránky, tzn. ak je aktuálna stránka 7, zobrazí 5, 6, 7, 8 a 9.
            Rozsah okolo aktuálnej určuje premenná $range.
        *}
		{section name=pagination start=$start loop=$stop+1 step=1}
			{if $p == $smarty.section.pagination.index}
				<li class="current"><span>{$p|escape:'htmlall':'UTF-8'}</span></li>
			{else}
				<li><a href="{$link->goPage($requestPage, $smarty.section.pagination.index)}">{$smarty.section.pagination.index|escape:'htmlall':'UTF-8'}</a></li>
			{/if}
		{/section}

		{if $pages_nb > $stop}
    		{if $pages_nb > $stop + 1}
                {*
                    Ak medzi poslednou stránkou v sérii ($stop) a úplne poslednou stránkou ($pages_nb)
                    je ešte nejaká medzera, zobrazím trojbodku.
                *}
    			<li class="truncate">...</li>
            {/if}
            {* Odkaz na poslednú stránku zobrazím vždy. *}
			<li><a href="{$link->goPage($requestPage, $pages_nb)}">{$pages_nb|intval}</a></li>
		{/if}

		{if $pages_nb > 1 AND $p != $pages_nb}
			{assign var='p_next' value=$p+1}
			<li id="pagination_next"><a href="{$link->goPage($requestPage, $p_next)}">{l s='next'}</a></li>
		{else}
			<li id="pagination_next" class="disabled"><span>{l s='next'}</span></li>
		{/if}
		</ul>
        <div class="clear"></div>
	{/if}
	<!-- /Pagination -->
{/if}
