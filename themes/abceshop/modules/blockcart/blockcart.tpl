<!-- MODULE Block cart -->
<div id="cart_block" class="block">
    <h4>
        <img class="icon" src="{$img_dir}kosik_25_25.jpg" width="25 "height="25" />
        <a href="{$base_dir_ssl}order.php">{l s='Cart' mod='blockcart'}</a>
    </h4>

    <div class="block_content">
        <!-- block summary -->
        <ul id="cart_block_list">
            {if $logged}
                <li>
                    <a class="account" href="{$base_dir_ssl}my-account.php" title="Váš účet.">{$customerName}</a>
                </li>
                <li>
                    <a class="logout" href="{$base_dir}index.php?mylogout" title="Odhlásiť sa z obchodu.">Odhlásiť</a>
                </li>
            {else}
                <li>
                    <a class="login" href="{$base_dir_ssl}my-account.php" title="{l s='Login' mod='blockcart'}">{l s='Login' mod='blockcart'}</a></span>
                </li>
                <li>{* len kvôli dizajnu *}</li>
            {/if}
            <li class="shipping">
                {l s='Shipping' mod='blockcart'}: <span class="price">{$shipping_wrapping_cost}</span>
            </li>
            <li class="total">
                {l s='Total' mod='blockcart'}: <span class="price">{$total}</span>
            </li>
            <li>
                <a href="{$base_dir_ssl}order.php?step=1" title="{l s='Check out' mod='blockcart'}">{l s='Check out' mod='blockcart'}</a>
            </li>
        </ul>
    </div>
</div>
<!-- /MODULE Block cart -->
