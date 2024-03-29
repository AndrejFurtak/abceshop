<?php

/**
  * OrderDetail class, OrderDetail.php
  * Orders detail management
  * @category classes
  *
  * @author PrestaShop <support@prestashop.com>
  * @copyright PrestaShop
  * @license http://www.opensource.org/licenses/osl-3.0.php Open-source licence 3.0
  * @version 1.3
  *
  */

class OrderDetail extends ObjectModel
{
	/** @var integer */
	public $id_order_detail;

	/** @var integer */
	public $id_order;

	/** @var integer */
	public $product_id;

	/** @var integer */
	public $product_attribute_id;

	/** @var string */
	public $product_name;

	/** @var integer */
	public $product_quantity;

	/** @var integer */
	public $product_quantity_in_stock;

	/** @var integer */
	public $product_quantity_return;

	/** @var integer */
	public $product_quantity_refunded;

	/** @var integer */
	public $product_quantity_reinjected;

	/** @var float */
	public $product_price;

	/** @var float */
	public $reduction_percent;

	/** @var float */
	public $reduction_amount;

	/** @var float */
	public $group_reduction;

	/** @var float */
	public $product_quantity_discount;

	/** @var float */
	public $product_ean13;

	/** @var string */
	public $product_reference;

	/** @var string */
	public $product_supplier_reference;

	/** @var float */
	public $product_weight;

	/** @var string */
	public $tax_name;

	/** @var float */
	public $tax_rate;

	/** @var float */
	public $ecotax;

	/** @var float */
	public $ecotax_tax_rate;

	/** @var string */
	public $download_hash;

	/** @var integer */
	public $download_nb;

	/** @var date */
	public $download_deadline;

	protected $tables = array ('order_detail');

	protected	$fieldsRequired = array ('id_order', 'product_name', 'product_quantity', 'product_price', 'tax_rate');

	protected	$fieldsValidate = array (
	'id_order' => 'isUnsignedId',
	'product_id' => 'isUnsignedId',
	'product_attribute_id' => 'isUnsignedId',
	'product_name' => 'isGenericName',
	'product_quantity' => 'isInt',
	'product_quantity_in_stock' => 'isUnsignedInt',
	'product_quantity_return' => 'isUnsignedInt',
	'product_quantity_refunded' => 'isUnsignedInt',
	'product_quantity_reinjected' => 'isUnsignedInt',
	'product_price' => 'isPrice',
	'reduction_percent' => 'isFloat',
	'reduction_amount' => 'isPrice',
	'group_reduction' => 'isFloat',
	'product_quantity_discount' => 'isFloat',
	'product_ean13' => 'isEan13',
	'product_reference' => 'isReference',
	'product_supplier_reference' => 'isReference',
	'product_weight' => 'isFloat',
	'tax_name' => 'isGenericName',
	'tax_rate' => 'isFloat',
	'ecotax' => 'isFloat',
	'ecotax_tax_rate' => 'isFloat',
	'download_nb' => 'isInt',
	);

	protected 	$table = 'order_detail';
	protected 	$identifier = 'id_order_detail';

	public function getFields()
	{
		parent::validateFields();

		$fields['id_order'] = intval($this->id_order);
		$fields['product_id'] = intval($this->product_id);
		$fields['product_attribute_id'] = intval($this->product_attribute_id);
		$fields['product_name'] = pSQL($this->product_name);
		$fields['product_quantity'] = intval($this->product_quantity);
		$fields['product_quantity_in_stock'] = intval($this->product_quantity_in_stock);
		$fields['product_quantity_return'] = intval($this->product_quantity_return);
		$fields['product_quantity_refunded'] = intval($this->product_quantity_refunded);
		$fields['product_quantity_reinjected'] = intval($this->product_quantity_reinjected);
		$fields['product_price'] = floatval($this->product_price);
		$fields['reduction_percent'] = floatval($this->reduction_percent);
		$fields['reduction_amount'] = floatval($this->reduction_amount);
		$fields['group_reduction'] = floatval($this->group_reduction);
		$fields['product_quantity_discount'] = floatval($this->product_quantity_discount);
		$fields['product_ean13'] = pSQL($this->product_ean13);
		$fields['product_reference'] = pSQL($this->product_reference);
		$fields['product_supplier_reference'] = pSQL($this->product_reference);
		$fields['product_weight'] = floatval($this->product_weight);
		$fields['tax_name'] = pSQL($this->tax_name);
		$fields['tax_rate'] = floatval($this->tax_rate);
		$fields['ecotax_tax_rate'] = (float)($this->ecotax_tax_rate);
		$fields['ecotax'] = floatval($this->ecotax);
		$fields['download_hash'] = pSQL($this->download_hash);
		$fields['download_nb'] = intval($this->download_nb);
		$fields['download_deadline'] = pSQL($this->download_deadline);

		return $fields;
	}

	static public function getDownloadFromHash($hash)
	{
		if ($hash == '') return false;
		$sql = 'SELECT *
		FROM `'._DB_PREFIX_.'order_detail` od
		LEFT JOIN `'._DB_PREFIX_.'product_download` pd ON (od.`product_id`=pd.`id_product`)
		WHERE od.`download_hash` = \''.pSQL(strval($hash)).'\'
		AND pd.`active` = 1';
		return Db::getInstance()->getRow($sql);
	}

	static public function incrementDownload($id_order_detail, $increment=1)
	{
		$sql = 'UPDATE `'._DB_PREFIX_.'order_detail`
			SET `download_nb` = `download_nb` + '.intval($increment).'
			WHERE `id_order_detail`= '.intval($id_order_detail).'
			LIMIT 1';
		return Db::getInstance()->Execute($sql);
	}

}

?>