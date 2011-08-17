<!-- Block search module -->
<div id="search_block_left">
    <form id="search_form" method="get" action="{$base_dir_ssl}search.php" id="searchbox">
        <input type="hidden" name="orderby" value="position" />
        <input type="hidden" name="orderway" value="desc" />
        <input type="text" id="search_query" name="search_query" value="{if isset($smarty.get.search_query)}{$smarty.get.search_query|htmlentities:$ENT_QUOTES:'utf-8'|stripslashes}{/if}" />
        <input class="hidden" type="submit" id="search_button" value="" />
    </form>
</div>
<script type="text/javascript">
{literal}
    $('document').ready( function() {
        var search_query_value = $("#search_query").val();
        var search_string = '{/literal}{l s='search...' mod='blocksearch'}{literal}';

        if (!search_query_value) $("#search_query").val(search_string);

        $("#search_query").keypress(function(event) {
            if (event.which == '13') $("#search_form").submit();
        });

        $("#search_query").focus(function() {
            if ($("#search_query").val() == search_string) $("#search_query").val('');
        });

        $("#search_query").blur(function() {
            search_query_value = $("#search_query").val();
            if (!search_query_value) $("#search_query").val(search_string);
        });
      
    });
{/literal}
</script>
{if $ajaxsearch}
	<script type="text/javascript">
		{literal}

		function formatSearch(row) {
			return row[2] + ' > ' + row[1];
		}

		function redirectSearch(event, data, formatted) {
			$('#search_query').val(data[1]);
			document.location.href = data[3];
		}

		$('document').ready( function() {
			$("#search_query").autocomplete(
				'{/literal}{if $search_ssl == 1}{$base_dir_ssl}{else}{$base_dir}{/if}{literal}search.php', {
				minChars: 3,
				max:10,
				selectFirst:false,
				width:500,
				scroll: false,
				formatItem:formatSearch,
				extraParams:{ajaxSearch:1,id_lang:{/literal}{$cookie->id_lang}{literal}}
			}).result(redirectSearch)
		});
		{/literal}
	</script>
{/if}
<!-- /Block search module -->
