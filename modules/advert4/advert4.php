<?php

require_once _PS_THEME_DIR_ . 'classes/Utils.php';

if (!defined('_CAN_LOAD_FILES_')) {
    exit;
}

class Advert4 extends Module
{

    // nepaci sa mi uchovavanie URL v konfiguracii

    protected $advertId = 4;

    protected $handled = FALSE;
    protected $advertImgDir;
    protected $advertImgUrl;



    protected function getAdvertFilenamePrefix() {
        return 'advert-' . $this->advertId . '-';
    }



    protected function getConfigurationKey(){
        return 'advert_' . $this->advertId;
    }



    function __construct() {
        $this->advertImgDir = _PS_IMG_DIR_ . 'advert/';
        $this->advertImgUrl = _PS_IMG_ . 'advert/';

        $this->name = 'advert' . $this->advertId;
        $this->tab = 'Blocks';
        $this->version = 1;

        parent::__construct();

        $this->displayName = "Reklamný blok " . $this->advertId;
        $this->description = "Zobrazuje blok s reklamným obrázkom.";
    }


    // instalacia
    function install() {
        if ((parent::install() == FALSE) ||
            ($this->createBannerRepository() == FALSE) ||
            ($this->registerHook('leftColumn') == FALSE)) {

            return false;
        }

        return true;
    }



    private function createBannerRepository() {
        // vytvori zakladny adresar pre bannre
        if (!file_exists($this->advertImgDir)) {
            if (!mkdir($this->advertImgDir)) {
                return FALSE;
            }
        }

        // nakopci index subor koli bezpecnosti
        if (!file_exists($this->advertImgDir . 'index.php')) {
            if (!copy($this->sourceIndexFilePath, $this->advertImgDir . 'index.php')) {
                return FALSE;
            }
        }

        return TRUE;
    }




    // menezovanie
    public function getContent(){
        $output = '';

        $this->handleDeleteAdvert();
        $this->handleAddAdvert();

        $output .= $this->displayAdvertForm();

        return $output;
    }



    private function displayAdvertForm(){
        $item = $this->getAdvertItem();

        $currentItem = '';
        if ($item !== NULL) {
            $currentItem = <<<EOF
<h2>Aktuálny obrázok</h2>
<p>Odkaz: <a href="{$item['url']}">{$item['url']}</a></p>
<p><img src={$item['src']} /></p>
<p><a href="{$_SERVER['REQUEST_URI']}&deleteAdvert=1" onclick="return confirm('Skutočne chcete zmazať túto reklamu?')">vymaž aktuálny obrázok</a></p>
EOF;
        }
        $form = <<<EOF
<fieldset><legend>{$this->displayName}</legend>
    <p>Ak reklamný obrázok už existuje, bude prepísaný novým.</p>
    <form method="post" action="{$_SERVER['REQUEST_URI']}" enctype="multipart/form-data">
        <table>
            <tr><td><label for="advertFile">Obrázok: </label></td><td><input type="file" name="advertFile" id="advertFile" size="50" /></td></tr>
            <tr><td><label for="url">Odkaz: </label></td><td><input type="text" name="url" id="url" size="50" /></td></tr>
            <tr><td></td><td><input type="submit" name="submitAddAdvert" id="submitAddAdvert" value="Ulož" />
            </td></tr>
        </table>
    </form>
    {$currentItem}
</fieldset>
EOF;

        return $form;
    }



    // spracuje pripadne zaslanie obrazka a vrati pripadnu spravu
    private function handleAddAdvert() {
        if (isset($_REQUEST['submitAddAdvert'])) {
            $this->deleteAdvertItem();
            if ($_FILES["advertFile"]["error"] != UPLOAD_ERR_OK) {
                $error =  'Chyba pri nahrávaní obrázka: ' . $_FILES["advertFile"]["error"];
            }

            if (!isset($error)) {
                $advertItemName = $this->getAdvertFilenamePrefix() . $_FILES["advertFile"]["name"];
                if (!move_uploaded_file($_FILES["advertFile"]["tmp_name"], $this->advertImgDir . $advertItemName)) {
                    $error =  'Chyba pri nahrávaní obrázka.';
                }
                if (!isset($error)) {
                    // ulozi url do konfiguracie
                    Configuration::updateValue($this->getConfigurationKey(), trim($_REQUEST['url']));
                }
            }

            Utils::redirectToAdminCurrentTab(array('configure' => $this->name));
        }
    }



    // spracuje pripadne vymazanie obrazka a vrati pripadnu spravu
    private function handleDeleteAdvert() {
        if (isset($_REQUEST['deleteAdvert'])) {
            $this->deleteAdvertItem();
            Utils::redirectToAdminCurrentTab(array('configure' => $this->name));
        }
    }



    protected function getAdvertItem() {
        $files = glob($this->advertImgDir . $this->getAdvertFilenamePrefix() . '*');
        if (($files === FALSE) || (is_array($files) && (count($files) == 0))) {
            return NULL;
        }
        $file = $files[0];
        $fileInfo = pathinfo($file);
        $filename = $fileInfo['basename'];
        $item = array();
        $item['url'] = trim(Configuration::get($this->getConfigurationKey()));
        $item['path'] = $file;
        $item['filename'] = $filename;
        $item['src'] =  $this->advertImgUrl . $filename;

        return $item;
    }



    protected function deleteAdvertItem() {
        $item = $this->getAdvertItem();
        if ($item !== NULL) {
            Configuration::deleteByName($this->getConfigurationKey());
            if (!unlink($item['path'])) {
                return FALSE;
            }
        }
        return TRUE;
    }


    // vykreslovanie
    function hookRightColumn($params){
        return $this->prepareHook('right');
    }



    function hookLeftColumn($params){
        return $this->prepareHook('left');
    }



    // jadro vykreslovania
    private function prepareHook($position) {
        global $smarty;

        $item = $this->getAdvertItem();
        $smarty->assign('advertItem', $item);

        return $this->display(__FILE__, 'advert.tpl');
    }


}
