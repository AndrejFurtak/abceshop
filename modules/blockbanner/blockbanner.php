<?php

require_once _PS_THEME_DIR_ . 'classes/Utils.php';

if (!defined('_CAN_LOAD_FILES_'))
	exit;

class BlockBanner extends Module
{
    // pattern suborov: banner_<poradie>_<nazov>.<extension>

    protected $bannerImgDir;
    protected $bannerImgPresentationDir;
    protected $sourceIndexFilePath;



    protected static function getBannerItemFilePrefix(){
        return 'banner_';
    }
    protected static function getBannerItemFilePattern(){
        return self::getBannerItemFilePrefix() . '*_*.*';
    }

    protected  static function getConfigurationSlideSpeedKey(){
        return 'BLOCKBANNER_SLIDESPEED';
    }
    protected  static function getConfigurationSlideIntervalKey(){
        return 'BLOCKBANNER_SLIDEINTERVAL';
    }



    public function __construct()
    {
        $this->sourceIndexFilePath = dirname(__FILE__) . '/index.res.php';
        $this->bannerImgDir = _PS_IMG_DIR_ . 'banner/';
        $this->bannerImgPresentationDir = _PS_IMG_ . 'banner/';


        $this->name = 'blockbanner';
        $this->tab = 'Blocks';
        $this->version = 1.0;

        parent::__construct();

        $this->displayName = $this->l('Banner block');
        $this->description = $this->l('Adds a block featuring shop banner');
    }



    // instalacia
    public function install(){
            if (parent::install() == false OR
                    $this->createBannerRepository() == false OR
                    $this->registerHook('top') == false)
                return false;

            Configuration::updateValue(self::getConfigurationSlideSpeedKey(), 500);
            Configuration::updateValue(self::getConfigurationSlideIntervalKey(), 4000);

            return true;
    }
    private function createBannerRepository(){
        echo $this->bannerImgDir;
        // vytvori zakladny adresar pre bannre
        if (!file_exists($this->bannerImgDir)){
            if (!mkdir($this->bannerImgDir)){
                    return false ;
            }
        }

        // nakopci index subor koli bezpecnosti
        if (!file_exists($this->bannerImgDir . 'index.php')){
            if (!copy($this->sourceIndexFilePath, $this->bannerImgDir . 'index.php'))
                   return false;
        }

        return true;
    }



    // konfiguracia

    // spracovanie poziadavok a vytvorenie vystupu
    public function getContent(){
        $output = '<h2>' . $this->displayName . '</h2>';

        // handlovanie

        // ak doslo k pridaniu noveho obrazku
        // v ramci metody sa spracuje
        $handleInfo = $this->handleAddedImage();
        // ak doslo k odobratiu obrazku
        // v ramci metody sa spracuje
        $handleInfo  .= $this->handleDeleteImage();
        // ak doslo k presunutiu obrazku
        // v ramci metody sa spracuje
        $handleInfo .= $this->handleMoveImage();
        // spracuje zmenu konfiguracie
        $handleInfo .= $this->handleChangeConfiguration();


        // priprava na vykreslovanie konfiguracie
        
        // ziska usporiadane banner itemy
        $bannerItems = $this->getOrderedBannerItems();
        $config = $this->getConfiguration();


        // vykreslovanie konfiguracie

        // zobrazi form s nastaveniami
        $output .= $this->displayConfigForm($config);
        // zobrazi form s obrazkami
        $output .= $this->displayImgForm($bannerItems);

        
        $output .= '<p style="font-weight: bold; color:red;">' . $handleInfo . '</p>';


        return $output;
    }


    // zobrazenie hlavnej casti konfiguracie
    private function displayImgForm(array $bannerItems){
        $ret = '<fieldset><legend>' . $this->l('images') . '</legend>';

        // vypise existujuce
        $ret .= '<table border="1px" style="background-color:transparent">
                <tr style="background-color:white">
                    <th style="padding-left:10px; padding-right:10px; text-align:center; font-weight: bold;">' . $this->l('Move') . '</th>
                    <th style="padding-left:10px; padding-right:10px; text-align:center; font-weight: bold;">' . $this->l('Order') . '</th>
                    <th style="padding-left:10px; padding-right:10px; text-align:center; font-weight: bold;">' . $this->l('Image') . '</th>
                    <th style="padding-left:10px; padding-right:10px; text-align:center; font-weight: bold;">' . $this->l('Action') . '</th>
                </tr>';
        $pos = 1;
        $deleteUrlParams = array(
            'configure' => 'blockbanner',
            'submitDeleteImage' => 1,
            'order' => 0,
        );
        foreach($bannerItems as $item){
            $ret .= '<tr>
                        <td>
                            <ul>
                                <li style="text-align:center;">';
            if ($pos == 1){
                $ret .= '<img src="../img/admin/up_d.gif" alt="" />';
            }else{
                $ret .= '<form method="post" action="' . $_SERVER['REQUEST_URI'] . '"><input type="hidden" name="order" value="' . $item['order'] . '" /><input type="image" name="submitMoveUp" src="../img/admin/up.gif" /></form>';
            }
            $ret .= '</li>
                     <li style="text-align:center;">';
            if ($pos == count($bannerItems)){
                $ret .= '<img src="../img/admin/down_d.gif" alt="" />';
            }else{
                $ret .= '<form method="post" action="' . $_SERVER['REQUEST_URI'] . '"><input type="hidden" name="order" value="' . $item['order'] . '" /><input type="image" name="submitMoveDown" src="../img/admin/down.gif" /></form>';
            }
            $deleteUrlParams['order'] = $item['order'];
            $deleteUrl = Utils::getAdminCurrentTabUrl($deleteUrlParams);
            $ret .= '</li>
                            </ul>
                        </td>
                        <td style="text-align:center;">' . $item['order'] . '</td>
                        <td style="padding-left:3px;">' . $item['name'] . '</td>
                        <td style="text-align:center;"><a href="' . $deleteUrl . '" title="Vymaž obrázok."><img src="../img/admin/delete.gif" /></a></td>
                     </tr>';
            $pos += 1;
        }
        // priestor na pridanie
        $ret .= '<form method="post" action="' . $_SERVER['REQUEST_URI'] . '" enctype="multipart/form-data" >
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td><input type="file" name="imageFile" /></td>
            <td style="text-align:center;"><input type="submit" name="submitAddImage" value="' . $this->l('Add') . '" /></td>
        </tr>
        </form>';
        $ret .= '</table></fieldset>';

        return $ret;
    }
    // zobrazenie nastavenia slidovania
    private function displayConfigForm(array $config){
        
        $ret = '<form method="post" action="' . $_SERVER['REQUEST_URI'] . '">
            <fieldset>
            <legend>' . $this->l('configuration') . '</legend>
            <table border="0px" style="margin-bottom:15px">
                <tr>
                    <td style="padding-left:5px; padding-right:5px; font-weight: bold;">' . $this->l('slideSpeed') . '</td>
                    <td><input type="text" name="slideSpeed" value="' . $config[self::getConfigurationSlideSpeedKey()] .'" style="margin-right:5px" />ms</td>
                <tr>
                <tr>
                    <td style="padding-left:5px; padding-right:5px; font-weight: bold;">' . $this->l('slideInterval') . '</td>
                    <td><input type="text" name="slideInterval" value="' . $config[self::getConfigurationSlideIntervalKey()] .'" style="margin-right:5px" />ms</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="submitChangeConfiguration" value="' . $this->l('change') . '" /></td>
                <tr>
            </table>
            </fieldset>
        </form>';
        

        return $ret;
    }


    // spracuje pripadne zaslanie obrazka a vrati pripadnu spravu
    private function handleAddedImage(){
        if (Tools::isSubmit('submitAddImage'))
        {
            if (!isset($_FILES["imageFile"])){
                return $this->l('No file uploaded');
            }
            
            // kontrola chyby pri presune
            if ($_FILES["imageFile"]["error"] > 0)
            {
                return $this->l('File upload error') . ': ' . $_FILES["imageFile"]["error"];
            }

            $bannerItemName = $this->getNewBannerItemName($_FILES["imageFile"]["name"]);

            if (!move_uploaded_file($_FILES["imageFile"]["tmp_name"], $this->bannerImgDir . $bannerItemName)){
                return $this->l('File upload error');
            }
            else{
                return $this->l('File uploaded OK');
            }
        }
        return '';
    }
    // spracuje pripadne vymazanie obrazka a vrati pripadnu spravu
    private function handleDeleteImage(){

        if (Tools::isSubmit('submitDeleteImage'))
        {
            if (isset($_REQUEST['order'])){
                $order = intval($_REQUEST['order']);
                $bannerItems = $this->getBannerItems();

                // vyhodi obrazok z pozicie
                foreach($bannerItems as $item){
                    if ($item['order'] == $order){
                        if (!unlink($item['path'])){
                            return $this->l('File delete error');
                        }
                    }
                }

                // posunie ostatne obrazky
                foreach($bannerItems as $item){
                    if ($item['order'] > $order){
                        // ziska novy nazov suboru zohladnujuci nove poradie
                        $newFileName = self::createBannerItemFileName($item['order'] - 1, $item['name']);
                        $newPath = $this->bannerImgDir . $newFileName;

                        // premenuje subor
                        if (!rename($item['path'], $newPath)){
                            // problem pri premenovani
                        }
                    }
                }

            }
            else{
                return $this->l('File delete error');
            }

            Utils::redirectToAdminCurrentTab(array('configure' => 'blockbanner'));
        }

        return '';
    }
    // spracuje priapdne presunutie obrazka
    private function handleMoveImage(){

        if ((Tools::isSubmit('submitMoveUp')) OR
                (Tools::isSubmit('submitMoveDown'))){

            // ziska obrazky
            $bannerItems = $this->getBannerItems();

            // pozicia obrazku a nova pozicia obrazku
            $oldOrder = intval($_POST['order']);
            $newOrder = $oldOrder;
            if ((Tools::isSubmit('submitMoveUp')) and (1 < $oldOrder)){
                $newOrder = $oldOrder - 1;
            }elseif((Tools::isSubmit('submitMoveDown')) and ($oldOrder < count($bannerItems))){
                $newOrder = $oldOrder + 1;
            }


            if ($oldOrder != $newOrder){

                // ziska itemy ktorych sa zmena tyka
                foreach($bannerItems as $item){
                    if ($item['order'] == $oldOrder){
                        $oldItem = $item;
                    }
                    if($item['order'] == $newOrder){
                        $newItem = $item;
                    }
                }

                // premenuje najskor ciel ak existuje
                if(isset($newItem)){
                    rename($newItem['path'], $newItem['path'] . '.tmp');
                    $newItem['path'] .= '.tmp';
                }

                // premenuje zdroj aby reflektovalo novu cestu
                if (isset($oldItem)){
                    rename($oldItem['path'], $this->bannerImgDir . self::createBannerItemFileName($newOrder, $oldItem['name']));
                }

                // premenuje druhy subor aby reflektoval zmenu
                if(isset($newItem)){
                    rename($newItem['path'], $this->bannerImgDir . self::createBannerItemFileName($oldOrder, $newItem['name']));
                }
                
            }
        }

        

        return '';
    }

    //spracuje zmenu konfiguracie
    private function handleChangeConfiguration(){

        if (Tools::isSubmit('submitChangeConfiguration')){
            $values = array();
            $values[self::getConfigurationSlideSpeedKey()] = $_POST['slideSpeed'];
            $values[self::getConfigurationSlideIntervalKey()] = $_POST['slideInterval'];

            $this->setConfiguration($values);
        }

        return '';
    }


    // vykreslovanie
    public function hookTop($params){
        $configuration = $this->getConfiguration();
        $bannerItems = $this->getOrderedBannerItems();

        global $smarty;

        $smarty->assign('bannerItems', $bannerItems);
        $smarty->assign('bannerSlideSpeed', $configuration[self::getConfigurationSlideSpeedKey()]);
        $smarty->assign('bannerSlideInterval', $configuration[self::getConfigurationSlideIntervalKey()]);

        return $this->display(__FILE__, 'blockbanner.tpl');
    }
    
    

    // pomocne metody
    protected function getNewBannerItemName($fileName){
        $bannerItemsCount = count($this->getBannerItems());
        return self::createBannerItemFileName($bannerItemsCount + 1, $fileName);
    }
    // ziska zobrazovane prvky v bannery usporiadane podla poradia
    protected function getOrderedBannerItems(){
        $bannerItems = $this->getBannerItems();
        $this->orderBannerItems($bannerItems);
        return $bannerItems;
    }
    // ziska zobrazovane prvky v bannery
    protected function getBannerItems(){
        $files = glob($this->bannerImgDir . self::getBannerItemFilePattern());

        // doslo k chybe
        if ($files === false){
            return array();
        }

        // podarilo sa ziskat nejake subory
        $ret = array();
        foreach($files as $fileName){
            $fileName = basename($fileName);
            
            $item = self::parseBannerFileName($fileName);
            
            // kontrola
            if ($item === false){
                continue;
            }
            $item['path'] = $this->bannerImgDir . $fileName;
            $item['presentationPath'] = $this->bannerImgPresentationDir . $fileName;
            $ret[] = $item;
        }

        return $ret;
    }
    // usporiada banner itemy podla poradia
    protected function orderBannerItems(array &$items){
        usort($items, array('BlockBanner', 'sortByOrder'));
    }
    // usporiada prvky podla poradoveho cisla
    public static function sortByOrder($left, $right){
        $leftOrder = $left['order'];
        $rightOrder = $right['order'];

        if ($leftOrder == $rightOrder){
            return 0;
        }
        elseif ($leftOrder > $rightOrder) {
            return 1;
        }
        else{
            return -1;
        }
    }
    // usporiadavacia metoda
    protected static function parseBannerFileName($fileName){

        // kontrola
        if (!strcmp($fileName, self::getBannerItemFilePrefix())){
            return false;
        }
        // vyhodi prefix
        $fileName = substr($fileName, strlen(self::getBannerItemFilePrefix()));
        
        // vyhlada prvu poziciu podtrhovnika
        $position = strpos($fileName, '_');
        if ($position === false){
            return false;
        }

        // ziska poradove cislo
        $order = substr($fileName, 0, $position);
        // musi byt cislom
        if (!is_numeric($order)){
            return false;
        }
        // pretypuje
        $order = intval($order);

        // kontrola ci sa nachadza este nejaky text
        if (strlen($fileName) <= $position){
            return false;
        }
        // zoberie ostatok, bude predstavovat nazov suboru
        $fileName = substr($fileName, $position + 1);

        // vrati vysledok parsovania
        return array('order' => $order, 'name' => $fileName);
    }
    // vytvori nazov banner itemu 
    protected static function createBannerItemFileName($order, $fileName){
        return self::getBannerItemFilePrefix() . $order . '_' . $fileName;
    }

    protected function getConfiguration(){
        $ret = array();
        
        $ret[self::getConfigurationSlideSpeedKey()] = Configuration::get(self::getConfigurationSlideSpeedKey());
        $ret[self::getConfigurationSlideIntervalKey()] = Configuration::get(self::getConfigurationSlideIntervalKey());
        
        return $ret;
    }
    protected function setConfiguration(array $values){
        Configuration::updateValue(self::getConfigurationSlideSpeedKey(), $values[self::getConfigurationSlideSpeedKey()]);
        Configuration::updateValue(self::getConfigurationSlideIntervalKey(), $values[self::getConfigurationSlideIntervalKey()]);
    }



}

?>
