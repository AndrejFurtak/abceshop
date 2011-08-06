<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{$lang_iso}">
<head>
    <meta http-equiv="Content-Type" content="application/xhtml+xml; charset=utf-8" />
    <title>{$meta_title|escape:'htmlall':'UTF-8'}</title>
{if isset($meta_description) AND $meta_description}
    <meta name="description" content="{$meta_description|escape:html:'UTF-8'}" />
{/if}
{if isset($meta_keywords) AND $meta_keywords}
    <meta name="keywords" content="{$meta_keywords|escape:html:'UTF-8'}" />
{/if}
    <meta name="generator" content="PrestaShop" />
    <meta name="robots" content="{if isset($nobots)}no{/if}index,follow" />
    <link rel="icon" type="image/vnd.microsoft.icon" href="{$img_ps_dir}favicon.ico" />
    <link rel="shortcut icon" type="image/x-icon" href="{$img_ps_dir}favicon.ico" />
{if isset($css_files)}
{foreach from=$css_files key=css_uri item=media}
    <link href="{$css_uri}" rel="stylesheet" type="text/css" media="{$media}" />
{/foreach}
{/if}
    <script type="text/javascript" src="{$content_dir}js/tools.js"></script>
    <script type="text/javascript">
        var baseDir = '{$content_dir}';
        var static_token = '{$static_token}';
        var token = '{$token}';
        var priceDisplayPrecision = {$priceDisplayPrecision*$currency->decimals};
        var roundMode = {$roundMode};
    </script>
    <script type="text/javascript" src="{$content_dir}js/jquery/jquery-1.2.6.pack.js"></script>
    <script type="text/javascript" src="{$content_dir}js/jquery/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="{$content_dir}js/jquery/jquery.hotkeys-0.7.8-packed.js"></script>
    <script type="text/javascript" src="{$content_dir}js/jquery/jquery.scrollto.js"></script>
{if isset($js_files)}
{foreach from=$js_files item=js_uri}
    <script type="text/javascript" src="{$js_uri}"></script>
{/foreach}
{/if}
{$HOOK_HEADER}
</head>

<body {if $page_name}id="{$page_name|escape:'htmlall':'UTF-8'}"{/if}>
{if !$content_only}

    <!-- Page -->
    <div id="page">

        <!-- Header -->
        <div id="header">
            <div id="logo"><a href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}"><img src="{$img_ps_dir}logo.png" alt="{$shop_name|escape:'htmlall':'UTF-8'}" /></a></div>
            {$HOOK_TOP}
        </div>
        <!-- Header -->


        <!-- Columns -->
        <div id="columns">

            <!-- Left -->
            <div id="left_column" class="column">
                {$HOOK_LEFT_COLUMN}
            </div>
            <!-- Left -->

            <!-- Right -->
            <div id="right_column" class="column">

                {$HOOK_RIGHT_COLUMN}

                <!-- Block odkazy -->
                <div id="block-links">
                    <h4>Odkazy</h4>
                    <ul class="icon-list">
                        <li><img class="icon" src="{$img_dir}icon-kontakt.jpg" width="25" height="25" alt="Ikonka." /><a href="#" title="Kontakt">Kontakt</a></li>
                        <li><img class="icon" src="{$img_dir}icon-facebook.jpg" width="25" height="25" alt="Ikonka." /><a href="http://facebook.com/" title="Facebook">Facebook</a></li>
                        <li><img class="icon" src="{$img_dir}icon-twitter.jpg" width="25" height="25" alt="Ikonka." /><a href="http://twitter.com/" title="Twitter">Twitter</a></li>
                        <li><img class="icon" src="{$img_dir}icon-platby.jpg" width="25" height="25" alt="Ikonka." /><a href="{$base_dir}cms.php?id_cms=8" title="Platby">Platby</a></li>
                        <li><img class="icon" src="{$img_dir}icon-doprava.jpg" width="25" height="25" alt="Ikonka." /><a href="{$base_dir}cms.php?id_cms=7" title="Doprava">Doprava</a></li>
                        <li><img class="icon" src="{$img_dir}icon-reklamacia.jpg" width="25" height="25" alt="Ikonka." /><a href="{$base_dir}cms.php?id_cms=6" title="Reklamácia">Reklamácia</a></li>
                        <li><img class="icon" src="{$img_dir}icon-obchodne-podmienky.jpg" width="25" height="25" alt="Ikonka." /><a href="{$base_dir}cms.php?id_cms=3" title="Obchodné podmienky">Obchodné podmienky</a></li>
                        <li class="last"><img class="icon" src="{$img_dir}icon-o-nas.jpg" width="25" height="25" alt="Ikonka." /><a href="{$base_dir}?id_cms=4" title="O nás">O nás</a></li>
                    </ul>
                </div>
                <!-- Block odkazy -->

                {if $HOOK_EXTRA_RIGHT}
                    {$HOOK_EXTRA_RIGHT}
                {/if}

            </div>
            <!-- Right -->

            <!-- Center -->
            <div id="center_column">

                <!-- Top menu -->
                <ul id="top-menu" class="icon-list">
                    <li class="item1"><img class="icon" src="{$img_dir}icon-new.jpg" width="25" height="25" alt="Ikonka." /><a {if $script_name=='new-products'}class="selected"{/if}href="{$base_dir}new-products.php" title="Nové produkty">Nové produkty</a></li>
                    <li class="item2"><img class="icon" src="{$img_dir}icon-zlava.jpg" width="25" height="25" alt="Ikonka." /><a {if $script_name=='prices-drop'}class="selected"{/if}href="{$base_dir}prices-drop.php" title="Zľavené produkty">Zľavené produkty</a></li>
                    <li class="item3"><img class="icon" src="{$img_dir}icon-top.jpg" width="25" height="25" alt="Ikonka." /><a {if ($script_name=='category') AND ($category->id==1)}class="selected"{/if}href="{$base_dir}category.php?id_category=1" title="Top produkty">Top produkty</a></li>
                </ul>
                <!-- Top menu -->

                <!-- Main content -->
                <div id="main-content">
{/if}
