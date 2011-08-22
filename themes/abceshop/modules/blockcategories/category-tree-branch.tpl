<li class="{categoryClasses node=$node first=$first last=$last}">
    {if $node.level == 1}<img class="icon" src="{$node.imgLink}" width="25" height="25" alt="Ikonka kategórie." />{/if}
    <a{if $node.level == 1} class="mainCategory{$iteration}"{/if} href="{$node.link|escape:html:'UTF-8'}" title="{$node.desc|escape:html:'UTF-8'}">{$node.name|escape:html:'UTF-8'}</a>
	{if isset($categoryBranchIds[$idTopParent]) && ($node.children|@count > 0)}
        <ul>
            {foreach from=$node.children item=child name=categoryTreeBranch}
                {include file=$branche_tpl_path node=$child first=$smarty.foreach.blockCategTree.first last=$smarty.foreach.blockCategTree.last}
            {/foreach}
        </ul>
	{/if}
</li>
