{capture name=path}{l s='Forgot your password'}{/capture}
{include file=$tpl_dir./breadcrumb.tpl}

<h2>{l s='Forgot your password'}</h2>

{include file=$tpl_dir./errors.tpl}

{if isset($confirmation)}
    <p class="success">{l s='Your password has been successfully reset and has been sent to your e-mail address:'} {$email|escape:'htmlall':'UTF-8'}</p>
{else}
<p>{l s='Please enter your e-mail address used to register. We will e-mail you your new password.'}</p>
<form action="{$request_uri|escape:'htmlall':'UTF-8'}" method="post" class="std">
    <fieldset>
        <table>
        <tr>
            <td><label for="email">{l s='Type your e-mail address:'}</label></td>
            <td><input type="text" id="email" name="email" value="{if isset($smarty.post.email)}{$smarty.post.email|escape:'htmlall'|stripslashes}{/if}" /></td>
        </tr>
        <tr>
            <td colspan="2"><input type="button submit" class="button" value="{l s='Retrieve'}" /></td>
        </tr>
        </table>
    </fieldset>
</form>
{/if}
<p class="clear">
    <div class="cart_navigation">
        <a class="button back" href="{$base_dir_ssl}authentication.php" title="{l s='Back to Login'}">{l s='Back to Login'}</a>
    </div>
</p>