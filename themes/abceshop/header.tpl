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
            <div id="logo"><a href="{$base_dir}" title="{$shop_name|escape:'htmlall':'UTF-8'}"><img src="{$img_ps_dir}logo.jpg" alt="{$shop_name|escape:'htmlall':'UTF-8'}" /></a></div>
            <div id="header-banner"><img src="{$img_ps_dir}banner.jpg" alt="Najlepšia cena u nás v e-shope." width="636" height="190" /></div>
            <div id="header_right">
                {$HOOK_TOP}
            </div>
        </div>
        <!-- Header -->


        <!-- Columns -->
        <div id="columns">

            <!-- Left -->
            <div id="left_column" class="column">
                {$HOOK_LEFT_COLUMN}
            </div>
            <!-- Left -->

            <!-- Center -->
            <div id="center_column">

                <!-- Top menu -->
                <ul id="top-menu" class="icon-list">
                    <li class="item1"><span class="icon"></span><a {if $script_name=='new-products'}class="selected"{/if}href="{$base_dir}new-products.php" title="Nové produkty">Nové produkty</a></li>
                    <li class="item2"><span class="icon"></span><a {if $script_name=='prices-drop'}class="selected"{/if}href="{$base_dir}prices-drop.php" title="Zľavené produkty">Zľavené produkty</a></li>
                    <li class="item3"><span class="icon"></span><a {if ($script_name=='category') AND ($category->id==1)}class="selected"{/if}href="{$base_dir}category.php?id_category=1" title="Top produkty">Top produkty</a></li>
                </ul>
                <!-- Top menu -->

                <!-- Main content -->
                <div id="main-content">
{/if}
