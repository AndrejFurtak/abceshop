<!-- MODULE Block cart -->
<div id="cart_block" class="block">
    <h4>
        <img class="icon" src="{$img_ps_dir}transparent-icon.gif" width="25 "height="25" />
        <a href="{$base_dir_ssl}order.php">{l s='Cart' mod='blockcart'}</a>
    </h4>

    <div class="block_content">
        <!-- block summary -->
        <ul id="cart_block_list">
            <li class="shipping">
                {l s='Shipping' mod='blockcart'}: <span class="price">{$shipping_wrapping_cost}</span>
            </li>
            <li class="total">
                {l s='Total' mod='blockcart'}: <span class="price">{$total}</span>
            </li>
            <li>
                <a href="{$base_dir_ssl}cart.php?cancel&amp;token={$static_token}&amp;page={$come_from}" title="{l s='Cancel' mod='blockcart'}">{l s='Cancel' mod='blockcart'}</a>
            </li>
            <li>
                <a href="{$base_dir_ssl}order.php?step=1" title="{l s='Check out' mod='blockcart'}">{l s='Check out' mod='blockcart'}</a>
            </li>
        </ul>

    </div>
</div>
<!-- /MODULE Block cart -->
