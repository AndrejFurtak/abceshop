<?php

/**
  * Weight ranges class, RangeWeight.php
  * Weight ranges management
  * @category classes
  *
  * @author PrestaShop <support@prestashop.com>
  * @copyright PrestaShop
  * @license http://www.opensource.org/licenses/osl-3.0.php Open-source licence 3.0
  * @version 1.3
  *
  */

class RangeWeight extends ObjectModel
{
	public		$id_carrier;
	public 		$delimiter1;
	public 		$delimiter2;
	
 	protected 	$fieldsRequired = array('id_carrier', 'delimiter1', 'delimiter2');
 	protected 	$fieldsValidate = array('id_carrier' => 'isInt', 'delimiter1' => 'isFloat', 'delimiter2' => 'isFloat');

	protected 	$table = 'range_weight';
	protected 	$identifier = 'id_range_weight';
		
	public function getFields()
	{
		parent::validateFields();
		$fields['id_carrier'] = intval($this->id_carrier);
		$fields['delimiter1'] = floatval($this->delimiter1);
		$fields['delimiter2'] = floatval($this->delimiter2);
		return $fields;
	}
	
	public function add($autodate = true, $nullValues = false)
	{
		if (parent::add($autodate, $nullValues))
			return Db::getInstance()->Execute('INSERT INTO `'._DB_PREFIX_.'delivery` (`id_carrier`, `id_range_weight`, `id_zone`, `price`)
			(SELECT '.intval($this->id_carrier).', '.intval($this->id).', `id_zone`, 0 FROM `'._DB_PREFIX_.'carrier_zone` WHERE `id_carrier` = '.intval($this->id_carrier).')');
	}
	
	/**
	* Get all available weight ranges
	*
	* @return array Ranges
	*/
	public static function getRanges($id_carrier)
	{
		return Db::getInstance()->ExecuteS('
		SELECT *
		FROM `'._DB_PREFIX_.'range_weight`
		WHERE `id_carrier` = '.intval($id_carrier).'
		ORDER BY `delimiter1` ASC');
	}
}

?>