{if isset($products)}
	<!-- Products list -->
	<ul id="product_list" class="clear">
	{foreach from=$products item=product name=products}
		<li class="ajax_block_product {if $smarty.foreach.products.first}first_item{elseif $smarty.foreach.products.last}last_item{/if} {if $smarty.foreach.products.index % 2}alternate_item{else}item{/if} clearfix">
                    <div class="left_block">
                        <a href="{$product.link|escape:'htmlall':'UTF-8'}" title="{$product.name|escape:'htmlall':'UTF-8'}">
                            <img src="{$link->getImageLink($product.link_rewrite, $product.id_image, 'home')}" alt="{$product.legend|escape:'htmlall':'UTF-8'}" />
                        </a>
                        <div class="overview_block">
                            <p class="name" title="{$product.name|escape:'htmlall':'UTF-8'}">
                                    {$product.name|truncate:20:'...'|escape:'htmlall':'UTF-8'}
                            </p>
                            <p class="category" title="{$category->name|escape:'htmlall':'UTF-8'}">
                                {$category->name|truncate:20:'...'|escape:'htmlall':'UTF-8'}
                            </p>
                            <p class="price">
                                {if !$priceDisplay}{convertPrice price=$product.price}{else}{convertPrice price=$product.price_tax_exc}{/if}
                            </p>
                        </div>
                    </div>
                    <div class="right_block">
                        <div class="description">
                            <h2><a href="{$product.link|escape:'htmlall':'UTF-8'}" title="{$product.name|escape:'htmlall':'UTF-8'}">
                                    {$product.name|escape:'htmlall':'UTF-8'}
                            </a></h2>
                            <p>
                                {$product.description_short}
                            </p>
                        </div>
                        <div class="action_block">
                            <ul>
                                <li class="view"><a href="{$product.link|escape:'htmlall':'UTF-8'}" title="{l s='View'}">{l s='View'}</a></li>
                                {if $product.on_sale}
                                    <li class="on_sale"><span>{l s='On sale'}</span></li>
                                {elseif ($product.reduction_price != 0 || $product.reduction_percent != 0) && ($product.reduction_from == $product.reduction_to OR($smarty.now|date_format:'%Y-%m-%d %H:%M:%S' <= $product.reduction_to && $smarty.now|date_format:'%Y-%m-%d %H:%M:%S' >= $product.reduction_from))}
                                    <li class="discount"><span>{l s='Price lowered'}</span></li>
                                {/if}
                                <li class="{if ($product.allow_oosp OR $product.quantity > 0)}available{else}outOfStock{/if}"><span>{if ($product.allow_oosp OR $product.quantity > 0)}{l s='Available'}{else}{l s='Out of stock'}{/if}<span></li>
                                {if ($product.allow_oosp OR $product.quantity > 0) && ($product.customizable != 2)}
                                    <li class="addToCart"><a class="ajax_add_to_cart_button" rel="ajax_id_product_{$product.id_product|intval}" href="{$base_dir}cart.php?add&amp;id_product={$product.id_product|intval}&amp;token={$static_token}" title="{l s='Add to cart'}">{l s='Add to cart'}</a></li>
                                {else}
                                    <li class="addToCart disabled"><span>{l s='Add to cart'}</span></li>
                                {/if}
                            </ul>

                        </div>
                    </div>
        </li>
	{/foreach}
	</ul>
	<!-- /Products list -->
{/if}
