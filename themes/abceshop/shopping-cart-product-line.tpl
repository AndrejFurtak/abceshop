<tr class="{if $smarty.foreach.productLoop.last}last_item{elseif $smarty.foreach.productLoop.first}first_item{/if}{if isset($customizedDatas.$productId.$productAttributeId) AND $quantityDisplayed == 0}alternate_item{/if} cart_item">
    <td class="cart_description">
        <a class="cart_quantity_delete" href="{$base_dir_ssl}cart.php?delete&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;token={$token_cart}" title="{l s='Delete'}">x</a>
        <a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category)|escape:'htmlall':'UTF-8'}">{$product.name|escape:'htmlall':'UTF-8'}</a>
        {if $product.attributes}
            <a href="{$link->getProductLink($product.id_product, $product.link_rewrite, $product.category)|escape:'htmlall':'UTF-8'}">{$product.attributes|escape:'htmlall':'UTF-8'}</a>
        {/if}
    </td>
    <td class="cart_ref">
        {if $product.reference}{$product.reference|escape:'htmlall':'UTF-8'}{else}--{/if}
    </td>
    <td class="cart_availability">
        {if $product.active AND ($product.allow_oosp OR ($product.quantity <= $product.stock_quantity))}
            <span class="available">{l s='Yes'}</span>
        {else}
            <span class="unavailable">{l s='No'}</span>
        {/if}
    </td>
    <td class="cart_unit money">
        <span class="price">
            {if !$priceDisplay}{convertPrice price=$product.price_wt}{else}{convertPrice price=$product.price}{/if}
        </span>
    </td>
    <td class="cart_quantity">
        {if isset($customizedDatas.$productId.$productAttributeId) AND $quantityDisplayed == 0}
            {$product.customizationQuantityTotal}
        {/if}
        {if !isset($customizedDatas.$productId.$productAttributeId) OR $quantityDisplayed > 0}
            {if $quantityDisplayed == 0 AND isset($customizedDatas.$productId.$productAttributeId)}
                {$customizedDatas.$productId.$productAttributeId|@count}
            {else}
                {$product.cart_quantity-$quantityDisplayed}
            {/if}
            <a class="cart_quantity_up" href="{$base_dir_ssl}cart.php?add&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;token={$token_cart}" title="{l s='Add'}"><img src="{$img_dir}icon/quantity_up.gif" alt="{l s='Add'}" width="10" height="9" /></a>
            <a class="cart_quantity_down" href="{$base_dir_ssl}cart.php?add&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;op=down&amp;token={$token_cart}" title="{l s='Subtract'}"><img src="{$img_dir}icon/quantity_down.gif" alt="{l s='Subtract'}" width="10" height="9" /></a>
        {/if}
    </td>
    <td class="cart_total money">
            <span class="price">
                    {if $quantityDisplayed == 0 AND isset($customizedDatas.$productId.$productAttributeId)}
                            {if !$priceDisplay}{displayPrice price=$product.total_customization_wt}{else}{displayPrice price=$product.total_customization}{/if}
                    {else}
                            {if !$priceDisplay}{displayPrice price=$product.total_wt}{else}{displayPrice price=$product.total}{/if}
                    {/if}
            </span>
    </td>
</tr>
