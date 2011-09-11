<h2>{l s='Page not available'}</h2>

<p class="error">
	<img src="{$img_dir}icon/error.gif" alt="{l s='Error'}" class="middle" />
	{l s='We\'re sorry, but the Web address you entered is no longer available'}
</p>

<h3>{l s='To find a product, please type its name in the field below'}</h3>

<form action="{$base_dir}search.php" method="post" class="std">
    <table>
		<tr>
			<td><label for="search">{l s='Search our product catalog:'}</label></td>
			<td><input name="search_query" type="text" /> <input type="submit" name="Submit" value="OK" /></td>
		</tr>
    </table>
</form>

<ul class="footer_links">
	<li><a class="button" href="{$base_dir}" title="{l s='Home'}">{l s='Home'}</a></li>
</ul>
