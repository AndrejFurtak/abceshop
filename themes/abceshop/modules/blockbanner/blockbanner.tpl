<!-- Block banner -->
<div id="top_banner_block" class="block banner">
    <div class="banner_slider">
        <ul>
            {foreach from=$bannerItems item=bannerItem}
                <li id="banner_slider_item_{$bannerItem.order}">
                    <img src="{$bannerItem.presentationPath}" alt="" />
                </li>
            {/foreach}
        </ul>
    </div>
    <div class="banner_list">
        <ul>
            {foreach from=$bannerItems item=bannerItem}
            <li id="banner_list_item_{$bannerItem.order}"><img src="{$img_dir}dotBlack.png" alt="" /></li>
            {/foreach}
        </ul>
    </div>
</div>

<script type="text/javascript">
// <![CDATA[
{literal}    $currentBannerListItem = false;
    function bannerItem_clicked($sender, $itemId){
        if ($currentBannerListItem != false){
            $currentBannerListItem.children().attr("src", "{/literal}{$img_dir}{literal}dotBlack.png");
        }
        $("#top_banner_block div.banner_slider").scrollTo($('li#' + $itemId), {duration: {/literal}{$bannerSlideSpeed}{literal}, axis:"xy"} );
        $currentBannerListItem = $sender;
        $currentBannerListItem.children().attr("src", "{/literal}{$img_dir}{literal}dotRed.png");
        return true;
    }

    function banner_slideNext(){
        $nextBannerItem = false;
        if ($currentBannerListItem === false){
            $nextBannerItem = $("#top_banner_block div.banner_list ul").children().slice(0, 1);
        }else{
            $nextBannerItem = $currentBannerListItem.next();
            if ($nextBannerItem.length == 0){
                $nextBannerItem = $("#top_banner_block div.banner_list ul").children().slice(0, 1);
            }
        }
        $nextBannerItem.click();
    }

        $('document').ready(function() {
        // prida handlery
        $firstItem = false;{/literal}
{foreach from=$bannerItems item=bannerItem name=scriptBannerItemsLoop}
{literal}        $item = $("#top_banner_block div.banner_list ul li#banner_list_item_{/literal}{$bannerItem.order}{literal}");{/literal}
{if $smarty.foreach.scriptBannerItemsLoop.first}
{literal}        $firstItem = $item;{/literal}
{/if}
{literal}        $item.click(function(){return bannerItem_clicked($(this), {/literal}'banner_slider_item_{$bannerItem.order}'{literal});});{/literal}
{/foreach}
{literal}
        // spusti nejake akcie
        if($firstItem != false){
           $firstItem.click();

           // nastavi timer
           window.setInterval(function(){banner_slideNext();}, {/literal}{$bannerSlideInterval}{literal});
        }

        
    });{/literal}
// ]]>
</script>
<!-- Block banner -->
