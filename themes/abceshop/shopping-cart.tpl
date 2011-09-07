<script type="text/javascript">
<!--
	var baseDir = '{$base_dir_ssl}';
-->
</script>

{capture name=path}{l s='Your shopping cart'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

{assign var='current_step' value='summary'}
{include file=$tpl_dir./order-steps.tpl}

{include file=$tpl_dir./errors.tpl}

{if isset($empty)}
    <p class="warning">{l s='Your shopping cart is empty.'}</p>
{else}


    <div id="order-detail-content">
        <table id="cart_summary">
            <thead>
                <tr>
                    <th class="cart_description">{l s='Description'}</th>
                    <th class="cart_ref">{l s='Ref.'}</th>
                    <th class="cart_availability">{l s='Avail.'}</th>
                    <th class="cart_unit">{l s='Unit price'}</th>
                    <th class="cart_quantity">{l s='Qty'}</th>
                    <th class="cart_total">{l s='Total'}</th>
                </tr>
            </thead>
            <tbody>
                {foreach from=$products item=product name=productLoop}
                    {assign var='productId' value=$product.id_product}
                    {assign var='productAttributeId' value=$product.id_product_attribute}
                    {assign var='quantityDisplayed' value=0}

                    {* Display the product line *}
                    {include file=$tpl_dir./shopping-cart-product-line.tpl}
                    {* Then the customized datas ones*}

                    {if isset($customizedDatas.$productId.$productAttributeId)}
                        {foreach from=$customizedDatas.$productId.$productAttributeId key='id_customization' item='customization'}
                            <tr class="alternate_item cart_item">
                                <td colspan="5">
                                    {foreach from=$customization.datas key='type' item='datas'}
                                        {if $type == $CUSTOMIZE_FILE}
                                            <div class="customizationUploaded">
                                                <ul class="customizationUploaded">
                                                    {foreach from=$datas item='picture'}
                                                        <li>
                                                            <img src="{$pic_dir}{$picture.value}_small" alt="" class="customizationUploaded" width="{$smallSize.width}" height="{$smallSize.height}"/>
                                                        </li>
                                                    {/foreach}
                                                </ul>
                                            </div>
                                        {elseif $type == $CUSTOMIZE_TEXTFIELD}
                                            <ul class="typedText">
                                                {foreach from=$datas item='textField' name='typedText'}
                                                    <li>
                                                        {if $textField.name}{$textField.name}{else}{l s='Text #'}{$smarty.foreach.typedText.index+1}{/if}{l s=':'} {$textField.value}
                                                    </li>
                                                {/foreach}
                                            </ul>
                                        {/if}
                                    {/foreach}
                                </td>
                                <td class="cart_quantity">
                                    <a class="cart_quantity_delete" href="{$base_dir_ssl}cart.php?delete&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_customization={$id_customization}&amp;token={$token_cart}"><img src="{$img_dir}icon/delete.gif" alt="{l s='Delete'}" title="{l s='Delete this customization'}" class="icon" width="11" height="13" /></a>
                                    <p>{$customization.quantity}</p>
                                    <a class="cart_quantity_up" href="{$base_dir_ssl}cart.php?add&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_customization={$id_customization}&amp;token={$token_cart}" title="{l s='Add'}"><img src="{$img_dir}icon/quantity_up.gif" alt="{l s='Add'}" width="14" height="9" /></a><br />
                                    <a class="cart_quantity_down" href="{$base_dir_ssl}cart.php?add&amp;id_product={$product.id_product|intval}&amp;ipa={$product.id_product_attribute|intval}&amp;id_customization={$id_customization}&amp;op=down&amp;token={$token_cart}" title="{l s='Subtract'}"><img src="{$img_dir}icon/quantity_down.gif" alt="{l s='Subtract'}" width="14" height="9" /></a>
                                </td>
                                <td class="cart_total"></td>
                            </tr>
                            {assign var='quantityDisplayed' value=$quantityDisplayed+$customization.quantity}
                        {/foreach}
                        {* If it exists also some uncustomized products *}
                        {if $product.quantity-$quantityDisplayed > 0}
                            {include file=$tpl_dir./shopping-cart-product-line.tpl}
                        {/if}
                    {/if}
                {/foreach}
                {if $discounts}
                    {foreach from=$discounts item=discount name=discountLoop}
                        <tr class="cart_discount {if $smarty.foreach.discountLoop.last}last_item{elseif $smarty.foreach.discountLoop.first}first_item{else}item{/if}">
                            <td class="cart_discount_name" colspan="2">{$discount.name}</td>
                            <td class="cart_discount_description" colspan="3">{$discount.description}</td>
                            <td class="cart_discount_delete"><a href="{$base_dir_ssl}order.php?deleteDiscount={$discount.id_discount}" title="{l s='Delete'}"><img src="{$img_dir}icon/delete.gif" alt="{l s='Delete'}" class="icon" width="11" height="13" /></a></td>
                            <td class="cart_discount_price">
                                <span class="price-discount">
                                    {if $discount.value_real > 0}
                                        {if !$priceDisplay}
                                            {displayPrice price=$discount.value_real*-1}
                                        {else}
                                            {displayPrice price=$discount.value_tax_exc*-1}
                                        {/if}
                                    {/if}
                                </span>
                            </td>
                        </tr>
                    {/foreach}
                {/if}
            </tbody>
            <tfoot>

                <tr class="separator"><td colspan="6"></tr>

                {if $use_taxes}
                    {if $priceDisplay}
                        <tr class="cart_total_price">
                            <td colspan="4">{l s='Total products (tax excl.)'}</td>
                            <td colspan="2" class="price money">{displayPrice price=$total_products}</td>
                        </tr>
                    {else}
                        <tr class="cart_total_price">
                            <td colspan="4">{l s='Total products (tax incl.)'}</td>
                            <td colspan="2" class="price money">{displayPrice price=$total_products_wt}</td>
                        </tr>
                    {/if}
                {else}
                    <tr class="cart_total_price">
                        <td colspan="4">{l s='Total products'}</td>
                        <td colspan="2" class="price money">{displayPrice price=$total_products}</td>
                    </tr>
                {/if}
                {if $total_discounts != 0}
                    {if $use_taxes}
                        {if $priceDisplay}
                            <tr class="cart_total_voucher">
                                <td colspan="4">{l s='Total vouchers (tax excl.)'}</td>
                                <td colspan="2" class="price-discount money">{displayPrice price=$total_discounts_tax_exc}</td>
                            </tr>
                        {else}
                            <tr class="cart_total_voucher">
                                <td colspan="4">{l s='Total vouchers (tax incl.)'}</td>
                                <td colspan="2" class="price-discount money">{displayPrice price=$total_discounts}</td>
                            </tr>
                        {/if}
                    {else}
                        <tr class="cart_total_voucher">
                            <td colspan="4">{l s='Total vouchers'}</td>
                            <td colspan="2" class="price-discount money">{displayPrice price=$total_discounts_tax_exc}</td>
                        </tr>
                    {/if}
                {/if}
                {if $total_wrapping > 0}
                    {if $use_taxes}
                        {if $priceDisplay}
                            <tr class="cart_total_voucher">
                                <td colspan="4">{l s='Total gift-wrapping (tax excl.)'}</td>
                                <td colspan="2" class="price-discount money">{displayPrice price=$total_wrapping_tax_exc}</td>
                            </tr>
                        {else}
                            <tr class="cart_total_voucher">
                                <td colspan="4">{l s='Total gift-wrapping (tax incl.)'}</td>
                                <td colspan="2" class="price-discount money">{displayPrice price=$total_wrapping}</td>
                            </tr>
                        {/if}
                    {else}
                        <tr class="cart_total_voucher">
                            <td colspan="4">{l s='Total gift-wrapping'}</td>
                            <td colspan="2" class="price-discount money">{displayPrice price=$total_wrapping_tax_exc}</td>
                        </tr>
                    {/if}
                {/if}
                {if $use_taxes}
                    {if $priceDisplay}
                        <tr class="cart_total_delivery">
                            <td colspan="4">{l s='Total shipping (tax excl.)'}</td>
                            <td colspan="2" class="price money">{displayPrice price=$shippingCostTaxExc}</td>
                        </tr>
                    {else}
                        <tr class="cart_total_delivery">
                            <td colspan="4">{l s='Total shipping (tax incl.)'}</td>
                            <td colspan="2" class="price money">{displayPrice price=$shippingCost}</td>
                        </tr>
                    {/if}
                {else}
                    <tr class="cart_total_delivery">
                        <td colspan="4">{l s='Total shipping'}</td>
                        <td colspan="2" class="price money">{displayPrice price=$shippingCostTaxExc}</td>
                    </tr>
                {/if}
                {if $use_taxes}
                    <tr class="cart_total_price">
                        <td colspan="4">{l s='Total (tax excl.)'}</td>
                        <td colspan="2" class="price money">{displayPrice price=$total_price_without_tax}</td>
                    </tr>
                    <tr class="cart_total_voucher">
                        <td colspan="4">{l s='Total tax'}</td>
                        <td colspan="2" class="price money">{displayPrice price=$total_tax}</td>
                    </tr>
                    <tr class="cart_total_price">
                        <td colspan="4">{l s='Total (tax incl.)'}</td>
                        <td colspan="2" class="price money">{displayPrice price=$total_price}</td>
                    </tr>
                {else}
                    <tr class="cart_total_price">
                        <td colspan="4">{l s='Total'}</td>
                        <td colspan="2" class="price money">{displayPrice price=$total_price_without_tax}</td>
                    </tr>
                {/if}
                {if $free_ship > 0 AND !$isVirtualCart}
                    <tr class="cart_free_shipping">
                        <td colspan="4" style="white-space: normal;">{l s='Remaining amount to be added to your cart in order to obtain free shipping'}</td>
                        <td colspan="2" class="price money">{displayPrice price=$free_ship}</td>
                    </tr>
                {/if}
            </tfoot>
        </table>
    </div>

    {if $voucherAllowed}
        <div id="cart_voucher" class="table_block">
            {if $errors_discount}
                <ul class="error">
                    {foreach from=$errors_discount key=k item=error}
                        <li>{$error|escape:'htmlall':'UTF-8'}</li>
                    {/foreach}
                </ul>
            {/if}
            <form action="{$base_dir_ssl}order.php" method="post" id="voucher">
                <fieldset>
                    <h4>{l s='Vouchers'}</h4>
                    <p>
                        <label for="discount_name">{l s='Code:'}</label>
                        <input type="text" id="discount_name" name="discount_name" value="{if $discount_name}{$discount_name}{/if}" />
                    </p>
                    <p class="submit">
                        <input type="hidden" name="submitDiscount" /><input type="submit" name="submitAddDiscount" value="{l s='Add'}" class="button" />
                    </p>
                </fieldset>
            </form>
        </div>
    {/if}

    {$HOOK_SHOPPING_CART}


    <div class="cart_navigation">
        <a class="button continueShopping" href="{if (isset($smarty.server.HTTP_REFERER) && strstr($smarty.server.HTTP_REFERER, 'order.php')) || !isset($smarty.server.HTTP_REFERER)}{$base_dir}index.php{else}{$smarty.server.HTTP_REFERER|escape:'htmlall':'UTF-8'|secureReferrer}{/if}" title="{l s='Continue shopping'}">{l s='Continue shopping'}</a>
        <a class="button clearCart" href="{$base_dir_ssl}cart.php?cancel&amp;token={$static_token}&amp;page={$come_from}" title="Vyprázdniť košík">Vyprázdniť košík</a>
        <a class="button next" href="{$base_dir_ssl}order.php?step=1{if $back}&amp;back={$back}{/if}" title="{l s='Next'}">{l s='Next'}</a>
    </div>

    <p class="cart_navigation_extra">
        {$HOOK_SHOPPING_CART_EXTRA}
    </p>

{/if}
