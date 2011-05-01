<?php

require_once _PS_THEME_DIR_ . 'classes/Utils.php';

if (!defined('_CAN_LOAD_FILES_'))
	exit;
	
class BlockAdvertising extends Module
{

        // prerobit cez DB tabulky
        // nepaci sa mi uchovavanie URL v konfiguracii

        protected $advertImgDir;
        protected $advertImgPresentationDir;
        protected $sourceIndexFilePath;


        protected static function getAdvertItemFilePrefix(){
            return 'advert_';
        }
        protected static function getAdvertItemFilePattern(){
            return self::getAdvertItemFilePrefix() . '*_*';
        }
        protected static function getAdvertItemPositionFilePattern($position){
            return self::getAdvertItemFilePrefix() . $position . '_*';
        }
        protected static function getConfigurationUrlPrefix(){
            return 'advert_';
        }


	function __construct(){
            $this->sourceIndexFilePath = dirname(__FILE__) . '/index.res.php';
            $this->advertImgDir = _PS_IMG_DIR_ . 'advert/';
            $this->advertImgPresentationDir = _PS_IMG_ . 'advert/';

            $this->name = 'blockadvertising';
            $this->tab = 'Blocks';
            $this->version = 0.2;

            parent::__construct();

            $this->displayName = $this->l('Block advertising');
            $this->description = $this->l('Adds a block to display an advertising');
	}


        // instalacia
	function install(){
		if ((parent::install() == false) OR
                        ($this->createBannerRepository() == false) OR
                        ($this->registerHook('leftColumn') == false)){
                    return false;
                }

		return true;
	}
        private function createBannerRepository(){
        // vytvori zakladny adresar pre bannre
        if (!file_exists($this->advertImgDir)){
            if (!mkdir($this->advertImgDir)){
                    return false ;
            }
        }

        // nakopci index subor koli bezpecnosti
        if (!file_exists($this->advertImgDir . 'index.php')){
            if (!copy($this->sourceIndexFilePath, $this->advertImgDir . 'index.php'))
                   return false;
        }

        return true;
    }


    

        // menezovanie
	public function getContent(){
            $output = '';
            $handleInfo = '';

            // ak doslo k pridaniu noveho obrazku
            // v ramci metody sa spracuje
            $handleInfo = $this->handleAddAdvert();
            // ak doslo k odobratiu obrazku
            // v ramci metody sa spracuje
            $handleInfo  .= $this->handleDeleteAdvert();
            // ak doslo k presunutiu obrazku
            // v ramci metody sa spracuje
            $handleInfo .= $this->handleChangeAdvert();

            // 
            $advertItems = $this->getAdvertItems();
            // zobrazi konfiguracny formular
            $output .= $this->displayAdvertForm($advertItems);

            //return $output . $handleInfo;
            return $output;
	}
        private function displayAdvertForm(array $advertItems){
            
            $ret = '<fieldset><legend>' . $this->l('adverts') . '</legend>';

            // hlavicka
            $ret .= '<table border="1px" style="background-color:transparent">
                    <tr style="background-color:white">
                        <th style="padding-left:10px; padding-right:10px; text-align:center; font-weight: bold;">' . $this->l('Position') . '</th>
                        <th style="padding-left:10px; padding-right:10px; text-align:center; font-weight: bold;">' . $this->l('Advert') . '</th>
                        <th style="padding-left:10px; padding-right:10px; text-align:center; font-weight: bold;">' . $this->l('Url') . '</th>
                        <th style="padding-left:10px; padding-right:10px; text-align:center; font-weight: bold;">' . $this->l('Action') . '</th>
                    </tr>';

            $positionMapInternalToReal = $this->getAllowedPositionsMapInternalToReal();
            // vypise existujuce
            foreach($advertItems as $item){
                $url = Utils::getAdminCurrentTabUrl(array('position' => $item['position'], 'configure' => $this->name, 'submitDeleteAdvert' => 1));
                $ret .= '<tr>
                            <td style="text-align:center;">' . $positionMapInternalToReal[$item['position']] . '</td>
                            <td style="padding-left:3px;">' . $item['name'] . '</td>
                            <td style="padding-left:3px;">' . $item['url'] . '</td>
                            <td style="text-align:center;"><a href="' . $url . '" title="Vymaž obrázok."><img src="../img/admin/delete.gif" /></a></td>
                         </tr>';
            }

            // pripravi moznosti
            $select = '';
            foreach ($positionMapInternalToReal as $item) {
                $select .= '<option>' . $item;
            }

            // priestor na pridanie
            $ret .= '<form method="post" action="' . $_SERVER['REQUEST_URI'] . '" enctype="multipart/form-data" >
            <tr>
                <td><select style="width:99%" name="position" >' . $select . '</select></td>
                <td><input type="file" name="advertFile" style="width:99%" /></td>
                <td><input type="text" name="url" style="width:inherit" /></td>
                <td style="text-align:center;"><input type="submit" name="submitAddAdvert" value="' . $this->l('Add') . '" /></td>
            </tr>
            </form>';
            
            $ret .= '</table></fieldset>';

            return $ret;
         }



        // spracuje pripadne zaslanie obrazka a vrati pripadnu spravu
        private function handleAddAdvert(){
            if (Tools::isSubmit('submitAddAdvert'))
            {
                // uvodna kontrola
                if (!isset($_REQUEST['position'])){
                    $error = $this->l('Position not set');
                }elseif (!isset($_FILES["advertFile"])){
                    $error = $this->l('No file uploaded');
                }elseif ($_FILES["advertFile"]["error"] > 0){
                    $error = $this->l('File upload error') . ': ' . $_FILES["advertFile"]["error"];
                }

                if (!isset($error)){
                    $position = $this->getInternalPosition($_REQUEST['position']);
                   
                    // kontrola ci uz neexistuje nieco na tejto pozicii
                    $files = glob($this->advertImgDir . self::getAdvertItemPositionFilePattern($position));
                    if (($files !== false) &&
                            (!empty($files))){
                        $error = $this->l('Advert with this position exists');
                    }

                    if (!isset($error)){
                        $name = $_FILES["advertFile"]["name"];
                        $advertItemName = self::getAdvertFileName($position, $name);

                        if (!move_uploaded_file($_FILES["advertFile"]["tmp_name"], $this->advertImgDir . $advertItemName)){
                            $error = $this->l('File upload error');
                        }

                        if (!isset($error)){
                            // ulozi url do konfiguracie
                            Configuration::updateValue(self::getConfigurationUrlPrefix() . $position, $_REQUEST['url']);
                        }
                    }
                }

                Utils::redirectToAdminCurrentTab(array('configure' => $this->name));
            }
            return '';
        }
        // spracuje pripadne vymazanie obrazka a vrati pripadnu spravu
        private function handleDeleteAdvert(){
            if (Tools::isSubmit('submitDeleteAdvert'))
            {
                // kontrola pritomnosti pozicie
                if (!isset($_REQUEST['position'])){
                    $error = $this->l('Position not set');
                }

                if (!isset($error)){
                    $position = $_REQUEST['position'];
                    $advertItems = $this->getAdvertItems();

                    foreach ($advertItems as $item) {
                        if ($item['position'] == $position){
                            if (!unlink($item['path'])){
                                $error = $this->l('File delete error');
                                break;
                            }
                        }
                    }

                    if (!isset($error)){
                        Configuration::deleteByName(self::getConfigurationUrlPrefix() . $position);
                    }
                }

                Utils::redirectToAdminCurrentTab(array('configure' => $this->name));
            }

            return '';
        }
        // spracuje priapdne presunutie obrazka
        private function handleChangeAdvert(){
            if (Tools::isSubmit('submitChangeAdvert')){

                

                Utils::redirectToAdminCurrentTab(array('configure' => $this->name));
            }

            return '';
        }



        private function getAdvertItems(){
            $files = glob($this->advertImgDir . self::getAdvertItemFilePattern());

            // doslo k chybe
            if ($files === false){
                return array();
            }

            // podarilo sa ziskat nejake subory
            $ret = array();
            foreach($files as $fileName){
                $fileName = basename($fileName);

                $item = self::parseAdvertFileName($fileName);

                // kontrola
                if ($item === false){
                    continue;
                }

                $item['url'] = Configuration::get(self::getConfigurationUrlPrefix() . $item['position']);
                $item['path'] = $this->advertImgDir . $fileName;
                $item['presentationPath'] = $this->advertImgPresentationDir . $fileName;
                $ret[] = $item;
            }

            return $ret;
        }

        // usporiadavacia metoda
        protected static function parseAdvertFileName($fileName){

            // kontrola
            if (!strcmp($fileName, self::getAdvertItemFilePrefix())){
                return false;
            }
            // vyhodi prefix
            $fileName = substr($fileName, strlen(self::getAdvertItemFilePrefix()));

            // vyhlada prvu poziciu podtrhovnika
            $position = strpos($fileName, '_');
            if ($position === false){
                return false;
            }

            // ziska umiestnenie
            $advertPosition = substr($fileName, 0, $position);
                        
            // kontrola ci sa nachadza este nejaky text
            if (strlen($fileName) <= $position){
                return false;
            }
            // zoberie ostatok, bude predstavovat nazov suboru
            $fileName = substr($fileName, $position + 1);

            // vrati vysledok parsovania
            return array('position' => $advertPosition, 'name' => $fileName);
        }
        protected static function getAdvertFileName($position, $name){
            return self::getAdvertItemFilePrefix() . $position . '_' . $name;
        }
        
        // podporovane umiestnenie advert prvkov
        protected function getAllowedPositions(){
            $ret = array();

            $ret[] = 'left';
            $ret[] = 'right';

            return $ret;
        }
        // preklady medzi internym a externym pomenovanim pozicie
        protected function getAllowedPositionsMapRealToInternal(){
            $ret = array();
            $allowedPositions = $this->getAllowedPositions();
            foreach ($allowedPositions as $item){
                $ret[$this->l($item)] = $item;
            }
            return $ret;
        }
        protected function getAllowedPositionsMapInternalToReal(){
            $ret = array();
            $allowedPositions = $this->getAllowedPositions();
            foreach ($allowedPositions as $item){
                $ret[$item] = $this->l($item);
            }
            return $ret;
        }
        // mapovanie nazvu pozicie
        protected function getInternalPosition($realPosition){
            $map = $this->getAllowedPositionsMapRealToInternal();
            if (isset($map[$realPosition])){
                $ret = $map[$realPosition];
            }else{
                $ret = '';
            }
            return $ret;
        }
        protected function getRealPosition($internalPosition){
            $map = $this->getAllowedPositionsMapInternalToReal();
            if (isset($map[$internalPosition])){
                $ret = $map[$internalPosition];
            }else{
                $ret = '';
            }
            return $ret;
        }

        // vykreslovanie
	function hookRightColumn($params){
            return $this->prepareHook('right');
	}
	function hookLeftColumn($params){
            return $this->prepareHook('left');
	}
        // jadro vykreslovania
        private function prepareHook($position){
            global $smarty;

            $outputAdvertItems = array();

            $advertItems = $this->getAdvertItems();
            foreach ($advertItems as $item) {
                if ($item['position'] == $position){
                    $outputAdvertItems[] = $item;
                }
            }

            $smarty->assign('advertItems', $outputAdvertItems);

            return $this->display(__FILE__, 'blockadvertising.tpl');
        }
        

}

?>
