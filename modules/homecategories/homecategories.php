<?php

if (!defined('_CAN_LOAD_FILES_'))
	exit;

class HomeCategories extends Module
{

    function __construct()
	{
		$this->name = 'homecategories';
		$this->tab = 'Tools';
		$this->version = '0.2';

		parent::__construct();

		$this->displayName = $this->l('Home categories');
		$this->description = $this->l('Displays home categories in the middle of your homepage');
	}

	function install(){
		if (!parent::install() OR !$this->registerHook('home'))
			return false;
		return true;
	}


    function hookHome($params)
    {
        global $smarty;
        global $link;

        require _PS_THEME_DIR_ . 'modules/homecategories/categories.php';
        $categoryIds = array_flip($categoryIds);

        $categories = Category::getHomeCategories(intval($params['cookie']->id_lang));

        $homeCategories = array();
        foreach ($categories as $category) {
            $category['link'] = $link->getCategoryLink($category['id_category'],  $category['link_rewrite']);

            $imgFile = $category['id_category'] . '.jpg';
            if (file_exists(_PS_CAT_IMG_DIR_ . $imgFile)) {
                $category['imgLink'] = _THEME_CAT_DIR_ . $imgFile;
            } else {
                $category['imgLink'] = _PS_IMG_ . 'empty-icon.jpg';
            }
            $category['imgName'] = $categoryIds[$category['id_category']];

            $homeCategories[] = $category;
        }


        $smarty->assign('homeCategories', $homeCategories);

        return $this->display(__FILE__, 'homecategories.tpl');
    }
}
