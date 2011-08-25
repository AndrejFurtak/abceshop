<?php

if (!defined('_CAN_LOAD_FILES_'))
	exit;

class BlockLinks extends Module
{

    function __construct(){

            $this->name = 'blocklinks';
            $this->tab = 'Blocks';
            $this->version = 0.1;

            parent::__construct();

            $this->displayName = $this->l('Column links block');
            $this->description = $this->l('Displays miscellaneous links in left/right columns');
    }

    function install(){
        
            if ((parent::install() == false) OR 
                    ($this->registerHook('leftColumn') == false))
                    return false;
            return true;
    }


    function hookLeftColumn($params){
        return $this->display(__FILE__, 'blocklinks.tpl');
    }

    
    function hookRightColumn($params){
        return $this->hookLeftColumn($params);
    }

}

?>
