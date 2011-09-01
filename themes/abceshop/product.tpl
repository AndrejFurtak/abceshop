{include file=$tpl_dir./errors.tpl}
{if $errors|@count == 0}
<script type="text/javascript">
// <![CDATA[

// PrestaShop internal settings
var currencySign = '{$currencySign|html_entity_decode:2:"UTF-8"}';
var currencyRate = '{$currencyRate|floatval}';
var currencyFormat = '{$currencyFormat|intval}';
var currencyBlank = '{$currencyBlank|intval}';
var taxRate = {$product->tax_rate|floatval};
var defaultTaxRate = {if isset($default_product_tax) && $default_product_tax}{$default_product_tax}{else}0{/if};
var jqZoomEnabled = {if $jqZoomEnabled}true{else}false{/if};

//JS Hook
var oosHookJsCodeFunctions = new Array();

// Parameters
var id_product = '{$product->id|intval}';
var productHasAttributes = {if isset($groups)}true{else}false{/if};
var quantitiesDisplayAllowed = {if $display_qties == 1}true{else}false{/if};
var quantityAvailable = {if $display_qties == 1 && $product->quantity}{$product->quantity}{else}0{/if};
var allowBuyWhenOutOfStock = {if $allow_oosp == 1}true{else}false{/if};
var availableNowValue = '{$product->available_now|escape:'quotes':'UTF-8'}';
var availableLaterValue = '{$product->available_later|escape:'quotes':'UTF-8'}';
var productPriceWithoutReduction = {$product->getPriceWithoutReduct()|default:'null'};
var reduction_percent = {if $product->reduction_percent}{$product->reduction_percent}{else}0{/if};
var reduction_price = {if $product->reduction_percent}0{else}{$product->getPrice(true, $smarty.const.NULL, 2, $smarty.const.NULL, true)}{/if};
var reduction_from = '{$product->reduction_from}';
var reduction_to = '{$product->reduction_to}';
var group_reduction = '{$group_reduction}';
var default_eco_tax = {$product->ecotax};
var currentDate = '{$smarty.now|date_format:'%Y-%m-%d %H:%M:%S'}';
var maxQuantityToAllowDisplayOfLastQuantityMessage = {$last_qties};
var noTaxForThisProduct = {if $no_tax == 1}true{else}false{/if};
var displayPrice = {$priceDisplay};
var productReference = '{$product->reference|escape:'htmlall':'UTF-8'}';

// Customizable field
var img_ps_dir = '{$img_ps_dir}';
var customizationFields = new Array();
{assign var='imgIndex' value=0}
{assign var='textFieldIndex' value=0}
{foreach from=$customizationFields item='field' name='customizationFields'}
{assign var='key' value='pictures_'|cat:$product->id|cat:'_'|cat:$field.id_customization_field}
	customizationFields[{$smarty.foreach.customizationFields.index|intval}] = new Array();
	customizationFields[{$smarty.foreach.customizationFields.index|intval}][0] = '{if $field.type|intval == 0}img{$imgIndex++}{else}textField{$textFieldIndex++}{/if}';
	customizationFields[{$smarty.foreach.customizationFields.index|intval}][1] = {if $field.type|intval == 0 AND $pictures.$key}2{else}{$field.required|intval}{/if};
{/foreach}

// Images
var img_prod_dir = '{$img_prod_dir}';
var combinationImages = new Array();
{foreach from=$combinationImages item='combination' key='combinationId' name='f_combinationImages'}
	combinationImages[{$combinationId}] = new Array();
	{foreach from=$combination item='image' name='f_combinationImage'}
		combinationImages[{$combinationId}][{$smarty.foreach.f_combinationImage.index}] = {$image.id_image|intval};
	{/foreach}
{/foreach}

combinationImages[0] = new Array();
{foreach from=$images item='image' name='f_defaultImages'}
	combinationImages[0][{$smarty.foreach.f_defaultImages.index}] = {$image.id_image};
{/foreach}

// Translations
var doesntExist = '{l s='The product does not exist in this model. Please choose another.' js=1}';
var doesntExistNoMore = '{l s='This product is no longer in stock' js=1}';
var doesntExistNoMoreBut = '{l s='with those attributes but is available with others' js=1}';
var uploading_in_progress = '{l s='Uploading in progress, please wait...' js=1}';
var fieldRequired = '{l s='Please fill all required fields' js=1}';


{if isset($groups)}
    // Combinations
    {foreach from=$combinations key=idCombination item=combination}
        addCombination({$idCombination|intval}, new Array({$combination.list}), {$combination.quantity}, {$combination.price}, {$combination.ecotax}, {$combination.id_image}, '{$combination.reference|addslashes}');
    {/foreach}
    // Colors
    {if $colors|@count > 0}
        {if $product->id_color_default}var id_color_default = {$product->id_color_default|intval};{/if}
    {/if}
{/if}

//]]>
</script>

{include file=$tpl_dir./breadcrumb.tpl}

<div id="primary_block" class="clearfix">

    <!-- left infos-->
    <div id="pb_left_column">
        <!-- product img-->
        <div id="image-block">
            {if $have_image}
                <img src="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'large')}" {if $jqZoomEnabled}class="jqzoom" alt="{$link->getImageLink($product->link_rewrite, $cover.id_image, 'thickbox')}"{else} title="{$product->name|escape:'htmlall':'UTF-8'}" alt="{$product->name|escape:'htmlall':'UTF-8'}" {/if} id="bigpic" width="{$largeSize.width}" height="{$largeSize.height}" />
            {else}
                <img src="{$img_prod_dir}{$lang_iso}-default-large.jpg" alt="" title="{$product->name|escape:'htmlall':'UTF-8'}" />
            {/if}
        </div>

        {if count($images) > 0}
            <!-- thumbnails -->
            <div id="views_block" {if count($images) < 2}class="hidden"{/if}>
                <span class="view_scroll_spacer"><a id="view_scroll_left" class="hidden" title="{l s='Other views'}" href="javascript:{ldelim}{rdelim}">{l s='Previous'}</a></span>

                <div id="thumbs_list">
                    <ul id="thumbs_list_frame">
                        {foreach from=$images item=image name=thumbnails}
                            {assign var=imageIds value=`$product->id`-`$image.id_image`}
                            <li id="thumbnail_{$image.id_image}">
                                <a href="{$link->getImageLink($product->link_rewrite, $imageIds, 'thickbox')}" rel="other-views" class="thickbox {if $smarty.foreach.thumbnails.first}shown{/if}" title="{$image.legend|htmlspecialchars}">
                                    <img id="thumb_{$image.id_image}" src="{$link->getImageLink($product->link_rewrite, $imageIds, 'medium')}" alt="{$image.legend|htmlspecialchars}" />
                                </a>
                            </li>
                        {/foreach}
                    </ul>
                </div>

                <span class="view_scroll_spacer"><a id="view_scroll_right" title="{l s='Other views'}" href="javascript:{ldelim}{rdelim}">{l s='Next'}</a></span>
            </div>
        {/if}
		{if count($images) > 1}<p class="resetImages"><span id="wrapResetImages" style="display:none;"><a id="resetImages" href="{$link->getProductLink($product)}" onclick="$('span#wrapResetImages').hide('slow');return (false);">{l s='Display all pictures'}</a></span></p>{/if}

    </div>



    <!-- right infos -->
    <div id="pb_right_column">

        <h2>{$product->name|escape:'htmlall':'UTF-8'}</h2>
        <div class="short_description">
            {$product->description_short}
        </div>

        {if $packItems|@count > 0}
            <h3>{l s='Pack content'}</h3>
            {foreach from=$packItems item=packItem}
                <div class="pack_content">
                    {$packItem.pack_quantity} x <a href="{$link->getProductLink($packItem.id_product, $packItem.link_rewrite, $packItem.category,  $packItem.ean13)}">{$packItem.name|escape:'htmlall':'UTF-8'}</a>
                    <p>
                        {$packItem.description_short}
                    </p>
                </div>
            {/foreach}
        {/if}

        {if $colors}
            <!-- colors -->
            <div id="color_picker">
                <p>{l s='Pick a color:' js=1}</p>
                <div class="clear"></div>
                <ul id="color_to_pick_list">
                    {foreach from=$colors key='id_attribute' item='color'}
                        <li>
                            <a id="color_{$id_attribute|intval}" class="color_pick" style="background: {$color.value};" onclick="updateColorSelect({$id_attribute|intval});$('#wrapResetImages').show('slow');" title="{$color.name}">
                                {if file_exists($col_img_dir|cat:$id_attribute|cat:'.jpg')}
                                    <img src="{$img_col_dir}{$id_attribute}.jpg" alt="{$color.name}" width="20" height="20" />
                                {/if}
                            </a>
                        </li>
                    {/foreach}
                </ul>
                <div class="clear"></div>
            </div>
        {/if}

        <div class="prices">
            <p class="price">
                {if !$priceDisplay || $priceDisplay == 2}
                    {* s daňou *}
                    {convertPrice price=$product->getPrice(true, $smarty.const.NULL, 2)}
                    {if $tax_enabled}{l s='tax incl.'}{/if}
                    {if $priceDisplay == 2}
                        <span calss="novat">({convertPrice price=$product->getPrice(false, $smarty.const.NULL, 2)}&nbsp;{l s='tax excl.'})</span>
                    {/if}
                {elseif $priceDisplay == 1}
                    {* bez dane *}
                    {convertPrice price=$product->getPrice(false, $smarty.const.NULL, 2)}
                    {if $tax_enabled}{l s='tax excl.'}{/if}
                {/if}
            </p>

            {if $product->on_sale}
                <p class="on_sale">{l s='On sale!'}</p>
            {elseif ($product->reduction_price != 0 || $product->reduction_percent != 0) && ($product->reduction_from == $product->reduction_to OR ($smarty.now|date_format:'%Y-%m-%d %H:%M:%S' <= $product->reduction_to && $smarty.now|date_format:'%Y-%m-%d %H:%M:%S' >= $product->reduction_from))}
                <p class="discount">{l s='Price lowered!'}</p>
            {/if}

            {if ($product->reduction_price != 0 || $product->reduction_percent != 0) && ($product->reduction_from == $product->reduction_to OR ($product->reduction_from <= $smarty.now|date_format:'%Y-%m-%d %H:%M:%S' && $smarty.now|date_format:'%Y-%m-%d %H:%M:%S' <= $product->reduction_to))}
                <p id="old_price">
                    <!-- // TODO: L10N -->
                    Pôvodne:
                    {if !$priceDisplay || $priceDisplay == 2}
                        {convertPrice price=$product->getPriceWithoutReduct()}
                        {if $tax_enabled}{l s='tax incl.'}{/if}
                    {else if $priceDisplay == 1}
                        {convertPrice price=$product->getPriceWithoutReduct(true)}</span>
                        {if $tax_enabled}{l s='tax excl.'}{/if}
                    {/if}
                    {if ($product->reduction_percent != 0)}
                        ({l s='(price reduced by'} {$product->reduction_percent|floatval} %)
                    {/if}
                </p>
            {/if}

            {* // TODO: balíky produktov nie sú rozbehané - nedajú sa mi zadať v administrácii. *}
            {if $packItems|@count}
                <p class="pack_price">
                    {l s='instead of'} <span style="text-decoration: line-through;">{convertPrice price=$product->getNoPackPrice()}</span>
                </p>
            {/if}

            {if $product->reference AND !isset($groups)}
                <p class="productReference">
                    {l s='Reference :'} {$product->reference|escape}
                </p>
            {/if}

        </div>

        {if $HOOK_PRODUCT_ACTIONS}
            {$HOOK_PRODUCT_ACTIONS}
        {/if}

        <div class="availability">
            <!-- number of item in stock -->
            {if $display_qties == 1}
                <p {if $product->quantity == 0} class="warning_inline"{/if}>{l s='items in stock'} {$product->quantity|intval}</p>
            {/if}
            {if ($product->quantity == 0 && !$product->available_later) OR ($product->quantity != 0 && !$product->available_now)}
                {* produkt je úplne nedostupný *}
            {else}
                <p class="availability{if $product->quantity == 0} warning_inline{/if}">
                    {if $product->quantity == 0}
                        {if $allow_oosp}
                            <!-- // TODO: L10N -->
                            Dostupnosť: {$product->available_later}
                        {else}
                            {l s='This product is no longer in stock'}
                        {/if}
                    {else}
                        <!-- // TODO: L10N -->
                        Dostupnosť: {$product->available_now}
                    {/if}
                </p>
            {/if}
        </div>


        <!-- Out of stock hook -->
        {if $product->quantity == 0}
            <p id="oosHook">
                {$HOOK_PRODUCT_OOS}
            </p>
        {/if}


        <!-- add to cart form-->
        <form id="buy_block" action="{$base_dir}cart.php" method="post">
            <!-- hidden datas -->
            <input type="hidden" name="token" value="{$static_token}" />
            <input type="hidden" name="id_product" value="{$product->id|intval}" id="product_page_product_id" />
            <input type="hidden" name="add" value="1" />
            <input type="hidden" name="id_product_attribute" id="idCombination" value="" />

            {if isset($groups)}
                <!-- attributes -->
                <div id="attributes">
                    <table>
                        {foreach from=$groups key=id_attribute_group item=group}
                            {if $group.attributes|@count}
                                <tr>
                                    {assign var='groupName' value='group_'|cat:$id_attribute_group}
                                    <td>{$group.name|escape:'htmlall':'UTF-8'}:</td>
                                    <td><select name="{$groupName}" id="group_{$id_attribute_group|intval}" onchange="javascript:findCombination();{if $colors|@count > 0}$('#wrapResetImages').show('slow');{/if}">
                                        {foreach from=$group.attributes key=id_attribute item=group_attribute}
                                            <option value="{$id_attribute|intval}"{if (isset($smarty.get.$groupName) && $smarty.get.$groupName|intval == $id_attribute) || $group.default == $id_attribute} selected="selected"{/if} title="{$group_attribute|escape:'htmlall':'UTF-8'}">{$group_attribute|escape:'htmlall':'UTF-8'}</option>
                                        {/foreach}
                                    </select></td>
                                </tr>
                            {/if}
                        {/foreach}
                    </table>
                </div>
            {/if}

            {if (($product->quantity > 0) || $allow_oosp)}
                <table class="formSubmit">
                {if !$virtual}
                    <tr id="quantity_wanted_p">
                        <td><label for="quantity_wanted">{l s='Quantity'}</label></td>
                        <td class="quantity"><input type="text" name="qty" id="quantity_wanted" class="text" value="{if isset($quantityBackup)}{$quantityBackup|intval}{else}1{/if}" size="2" maxlength="3" /></td>
                    </tr>
                {/if}
                <tr><td colspan="2"><input id="add_to_cart" type="submit" name="Submit" value="{l s='Add to cart'}" /></td></tr>
                </table>
            {/if}
        </form>
        <p></p>
        <p></p>
        <p></p>
    </div>
</div>

{literal}
<script type="text/javascript">
// <![CDATA[
    function setTab($tabName){

        $('#productTabDetails').removeClass('active');
        $('#productTabVideo').removeClass('active');
        $('#productTabPhotos').removeClass('active');

        $('#more_info_sheets').addClass('hidden');
        $('#more_videos_sheets').addClass('hidden');
        $('#more_photos_sheets').addClass('hidden');

        switch($tabName){
            case 'details':
                $('#productTabDetails').addClass('active');
                $('#more_info_sheets').removeClass('hidden');
                break;
            case 'video':
                $('#productTabVideo').addClass('active');
                $('#more_videos_sheets').removeClass('hidden');
                break;
            case 'photos':
                $('#productTabPhotos').addClass('active');
                $('#more_photos_sheets').removeClass('hidden');
                break;
        }
    }
//]]>
</script>
{/literal}

<div id="pb_middle_block">
    <ul id="productTabs">
        <li id="productTabDetails" class="active"><a href="javascript:setTab('details');">{l s='Details'}</a></li>
        <li id="productTabVideo"><!--<a href="javascript:setTab('video');">{l s='Video'}</a>--></li>
        <li id="productTabPhotos"><!--<a href="javascript:setTab('photos');">{l s='More photos'}</a>--></li>
        <li id="printReference"><a href="javascript:print();">{l s='Print'}</a></li>
    </ul>
</div>

<div id="more_info_block" class="clear">
    <!-- description, features, more fotos and videos -->
    <div id="more_info_sheets" class="sheets align_justify">
        {if $quantity_discounts}
            <!-- quantity discount -->
            <div id="quantityDiscount">
                <h2 class="product_subheader">{l s='Quantity discount'}</h2>
                <table>
                    <tr>
                        {foreach from=$quantity_discounts item='quantity_discount' name='quantity_discounts'}
                            {assign var='class' value=''}
                            {if $smarty.foreach.quantity_discounts.first}
                                {assign var='class' value='first'}
                            {elseif $smarty.foreach.quantity_discounts.last}
                                {assign var='class' value='last'}
                            {/if}
                             <th {if $class}class="{$class}"{/if}>{$quantity_discount.quantity|intval}
                            {if $quantity_discount.quantity|intval == 1}
                                {l s='quantity'}
                            {elseif $quantity_discount.quantity|intval >= 2 AND $quantity_discount.quantity|intval <= 4}
                                {l s='quantities'}
                            {else}
                            <!-- // TODO: L10N -->
                                kusov
                            {/if}
                            </th>
                        {/foreach}
                    </tr>
                    <tr>
                        {foreach from=$quantity_discounts item='quantity_discount' name='quantity_discounts'}
                            {assign var='class' value=''}
                            {if $smarty.foreach.quantity_discounts.first}
                                {assign var='class' value='first'}
                            {elseif $smarty.foreach.quantity_discounts.last}
                                {assign var='class' value='last'}
                            {/if}
                            <td {if $class}class="{$class}"{/if}>
                            {if $quantity_discount.id_discount_type|intval == 1}
                                -{$quantity_discount.value|floatval} %
                            {else}
                                -{convertPrice price=$quantity_discount.real_value|floatval}
                            {/if}
                            </td>
                        {/foreach}
                    </tr>
                </table>
            </div>
        {/if}
        {if $product->description}
            <!-- full description -->
            <div id="idTab1" class="rte">
                <h2 class="product_subheader">{l s='Description'}</h2>
                {$product->description}
            </div>
        {/if}
        {if $features}
            <!-- product's features -->
            <!-- // TODO: L10N -->
            <div class="features">
                <h2 class="product_subheader">Vlastnosti</h2>
                <ul id="idTab2" class="bullet">
                {foreach from=$features item=feature}
                    <li><span>{$feature.name|escape:'htmlall':'UTF-8'}</span> {$feature.value|escape:'htmlall':'UTF-8'}</li>
                {/foreach}
                </ul>
            </div>
        {/if}
        {if $attachments}
            <div class="attachments">
                <!-- // TODO: L10N -->
                <h2 class="product_subheader">Prílohy</h2>
                <ul id="idTab9" class="bullet">
                {foreach from=$attachments item=attachment}
                    <li><a href="{$base_dir}attachment.php?id_attachment={$attachment.id_attachment}">{$attachment.name|escape:'htmlall':'UTF-8'}</a><br />{$attachment.description|escape:'htmlall':'UTF-8'}</li>
                {/foreach}
                </ul>
            </div>
        {/if}
        {if isset($accessories) AND $accessories}
            <!-- accessories -->
            <ul id="idTab4" class="bullet">
                <div class="block products_block accessories_block clearfix">
                    <div class="block_content">
                        <ul>
                        {foreach from=$accessories item=accessory name=accessories_list}
                            {assign var='accessoryLink' value=$link->getProductLink($accessory.id_product, $accessory.link_rewrite, $accessory.category)}
                            <li class="ajax_block_product {if $smarty.foreach.accessories_list.first}first_item{elseif $smarty.foreach.accessories_list.last}last_item{else}item{/if} product_accessories_description">
                                <h5><a href="{$accessoryLink|escape:'htmlall':'UTF-8'}">{$accessory.name|truncate:22:'...':true|escape:'htmlall':'UTF-8'}</a></h5>
                                <p class="product_desc">
                                    <a href="{$accessoryLink|escape:'htmlall':'UTF-8'}" title="{$accessory.legend|escape:'htmlall':'UTF-8'}" class="product_image"><img src="{$link->getImageLink($accessory.link_rewrite, $accessory.id_image, 'medium')}" alt="{$accessory.legend|escape:'htmlall':'UTF-8'}" /></a>
                                    <a href="{$accessoryLink|escape:'htmlall':'UTF-8'}" title="{l s='More'}" class="product_description">{$accessory.description_short|truncate:100:'...'}</a>
                                </p>
                                <p class="product_accessories_price">
                                    <span class="price">{displayWtPrice p=$accessory.price}</span>
                                    <a class="button" href="{$accessoryLink|escape:'htmlall':'UTF-8'}" title="{l s='View'}">{l s='View'}</a>
                                    <a class="exclusive button ajax_add_to_cart_button" href="{$base_dir}cart.php?qty=1&amp;id_product={$accessory.id_product|intval}&amp;token={$static_token}&amp;add" rel="ajax_id_product_{$accessory.id_product|intval}" title="{l s='Add to cart'}">{l s='Add to cart'}</a>
                                </p>
                            </li>
                        {/foreach}
                        </ul>
                    </div>
                </div>
            </ul>
        {/if}
        {$HOOK_PRODUCT_TAB_CONTENT}
        {if $product->ecotax != 0}
            <p class="price-ecotax">
                {l s='Include for green tax'} <span id="ecotax_price_display">{$product->ecotax|convertAndFormatPrice}</span>.
            </p>
        {/if}
    </div>
    <div id="more_videos_sheets" class="sheets hidden">
    </div>
    <div id="more_photos_sheets" class="sheets hidden">
    </div>
</div>

<!-- Customizable products -->
{if $product->customizable}
    <div class="customization_block">
        <h2 class="product_subheader">{l s='Product customization'}</h2>

        <form method="post" action="{$customizationFormTarget}" enctype="multipart/form-data" id="customizationForm">
            <p>
                <img src="{$img_dir}icon/infos.gif" alt="Informations" />
                {l s='After saving your customized product, do not forget to add it to your cart.'}
                {if $product->uploadable_files}<br />{l s='Allowed file formats are: GIF, JPG, PNG'}{/if}
            </p>
            {if $product->uploadable_files|intval}
                <h2>{l s='Pictures'}</h2>
                <ul id="uploadable_files">
                    {counter start=0 assign='customizationField'}
                    {foreach from=$customizationFields item='field' name='customizationFields'}
                        {if $field.type == 0}
                            <li class="customizationUploadLine{if $field.required} required{/if}">{assign var='key' value='pictures_'|cat:$product->id|cat:'_'|cat:$field.id_customization_field}
                                {if isset($pictures.$key)}<div class="customizationUploadBrowse"><img src="{$pic_dir}{$pictures.$key}_small" alt="" /><a href="{$link->getUrlWith('deletePicture', $field.id_customization_field)}"><img src="{$img_dir}icon/delete.gif" alt="{l s='delete'}" width="11" height="13" class="customization_delete_icon" /></a></div>{/if}
                                <div class="customizationUploadBrowse"><input type="file" name="file{$field.id_customization_field}" id="img{$customizationField}" class="customization_block_input {if isset($pictures.$key)}filled{/if}" />{if $field.required}<sup>*</sup>{/if}
                                <div class="customizationUploadBrowseDescription">{if !empty($field.name)}{$field.name}{else}{l s='Please select an image file from your hard drive'}{/if}</div></div>
                            </li>
                            {counter}
                        {/if}
                    {/foreach}
                </ul>
            {/if}
            <div class="clear"></div>
            {if $product->text_fields|intval}
                <h2>{l s='Texts'}</h2>
                <ul id="text_fields">
                    {counter start=0 assign='customizationField'}
                    {foreach from=$customizationFields item='field' name='customizationFields'}
                        {if $field.type == 1}
                            <li class="customizationUploadLine{if $field.required} required{/if}">{assign var='key' value='textFields_'|cat:$product->id|cat:'_'|cat:$field.id_customization_field}
                                {if !empty($field.name)}{$field.name}{/if}<input type="text" name="textField{$field.id_customization_field}" id="textField{$customizationField}" value="{if isset($textFields.$key)}{$textFields.$key|stripslashes}{/if}" class="customization_block_input" />{if $field.required}<sup>*</sup>{/if}
                            </li>
                            {counter}
                        {/if}
                    {/foreach}
                </ul>
            {/if}
            <p style="clear: left;" id="customizedDatas">
                <input type="hidden" name="quantityBackup" id="quantityBackup" value="" />
                <input type="hidden" name="submitCustomizedDatas" value="1" />
                <input type="button" class="button" value="{l s='Save'}" onclick="javascript:saveCustomization()" />
            </p>
        </form>
        <p class="clear required"><sup>*</sup> {l s='required fields'}</p>
    </div>
{/if}

{if $packItems|@count > 0}
    <div>
        <h2 class="product_subheader">{l s='Pack content'}</h2>
        {include file=$tpl_dir./product-list.tpl products=$packItems}
    </div>
{/if}

{$HOOK_PRODUCT_FOOTER}

{if $confirmation}
    <p class="confirmation">
        {$confirmation}
    </p>
{/if}

{/if}