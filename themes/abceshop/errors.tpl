{if isset($errors) && $errors}
	<div class="error">
        <!-- // TODO: L10N -->
		<p>Vyskytli sa chyby:</p>
		<ol>
		{foreach from=$errors key=k item=error}
			<li>{$error}</li>
		{/foreach}
		</ol>
	</div>
{/if}
