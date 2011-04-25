<!-- Block categories module -->
<div id="categories_block_left" class="block">
	<h4>{l s='Categories' mod='blockcategories'}</h4>
	<div class="block_content">
		<ul class="icon-list">
		{foreach from=$blockCategTree.children item=child name=blockCategTree}
            {include file=$branche_tpl_path node=$child idTopParent=$child.id first=$smarty.foreach.blockCategTree.first last=$smarty.foreach.blockCategTree.last}
		{/foreach}
		</ul>
	</div>
</div>
<!-- /Block categories module -->
