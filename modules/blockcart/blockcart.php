<?php

if (!defined('_CAN_LOAD_FILES_'))
	exit;

class BlockCart extends Module
{

    public function __construct()
    {
            $this->name = 'blockcart';
            $this->tab = 'Blocks';
            $this->version = '1.3';

            parent::__construct();

            $this->displayName = $this->l('Cart block');
            $this->description = $this->l('Adds a block containing the customer\'s shopping cart');
    }

        
    public function install()
    {
            if((parent::install() == false) OR
                ($this->registerHook('rightColumn') == false)){
                return false;
            }
            
            return true;
    }

    public function smartyAssigns(&$smarty, &$params)
    {
            global $errors, $cookie;

            // Set currency
            if (!intval($params['cart']->id_currency)){
                $currency = new Currency(intval($params['cookie']->id_currency));
            }else{
                $currency = new Currency(intval($params['cart']->id_currency));
            }

            if (!Validate::isLoadedObject($currency)){
                $currency = new Currency(intval(Configuration::get('PS_CURRENCY_DEFAULT')));
            }

            if ($params['cart']->id_customer){
                $customer = new Customer(intval($params['cart']->id_customer));
                $taxCalculationMethod = Group::getPriceDisplayMethod(intval($customer->id_default_group));
            }else{
                $taxCalculationMethod = Group::getDefaultPriceDisplayMethod();
            }
            
            $usetax = $taxCalculationMethod == PS_TAX_EXC ? false : true;

            $shipping_wrapping_cost = $params['cart']->getOrderTotal($usetax, 5) + $params['cart']->getOrderTotal($usetax, 6);

            $smarty->assign(array(
                    'customizedDatas' => Product::getAllCustomizedDatas(intval($params['cart']->id)),
                    'CUSTOMIZE_FILE' => _CUSTOMIZE_FILE_,
                    'CUSTOMIZE_TEXTFIELD' => _CUSTOMIZE_TEXTFIELD_,
                    'discounts' => $params['cart']->getDiscounts(false, $usetax),
                    'shipping_wrapping_cost' => Tools::displayPrice($shipping_wrapping_cost, $currency),
                    'product_total' => Tools::displayPrice($params['cart']->getOrderTotal($usetax, 4), $currency),
                    'total' => Tools::displayPrice($params['cart']->getOrderTotal($usetax), $currency),
                    'id_carrier' => intval($params['cart']->id_carrier)
            ));

            if (sizeof($errors)){
                $smarty->assign('errors', $errors);
            }
    }

    public function hookRightColumn($params)
    {
            global $smarty, $page_name;

            $smarty->assign('order_page', $page_name == 'order');
            $this->smartyAssigns($smarty, $params);

            return $this->display(__FILE__, 'blockcart.tpl');
    }

    public function hookLeftColumn($params)
    {
            return $this->hookRightColumn($params);
    }

}


?>
