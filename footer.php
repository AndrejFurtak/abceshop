<?php

if (isset($smarty))
{
	$smarty->assign(array(
		'HOOK_FOOTER' => Module::hookExec('footer'),
		'content_only' => intval(Tools::getValue('content_only'))));
	$smarty->display(_PS_THEME_DIR_.'footer.tpl');
}

?>