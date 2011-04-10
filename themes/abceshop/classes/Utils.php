<?php

require_once _PS_CLASS_DIR_ . 'Tools.php';


class Utils {


    // Presmeruje na zadané URL.
    public static function redirectUrl($url) {
        header("Location: {$url}", TRUE, 302);
        exit();
    }



    // Presmeruje na zadané URL so zadanými parametrami.
    // Parametre sú zadané v poli, kde kľúč je meno parametra a hodnota daného kľúča je hodnota parametra.
    public static function redirect($url, $params = NULL) {
        self::redirectUrl(self::constructUrl($url, $params));
    }



    // Presmeruje na hlavnú stránku PrestaShopu.
    public static function redirectToHome() {
        self::redirect(__PS_BASE_URI__);
    }



    // Presmeruje na hlavnú stránku administrácie PrestaShopu.
    public static function redirectToAdminHome() {
        self::redirect(self::getAdminHomeUrl());
    }



    // Presmeruje na aktuálnu stránku v administrácii PrestaShopu s prípadnými ďalšími parametrami.
    // Parametre sú zadané v poli, kde kľúč je meno parametra a hodnota daného kľúča je hodnota parametra.
    public static function redirectToAdminCurrentTab($params = NULL) {
        global $cookie;
        global $currentAdminMainTab;
        global $currentAdminTab;

        if ($params === NULL) {
            $params = array();
        }
        $params['tab'] = $currentAdminTab['class_name'];
        $params['token'] = Tools::getAdminToken($currentAdminMainTab['class_name'] . intval($currentAdminTab['id_tab']) . intval($cookie->id_employee));
        self::redirect(self::getAdminHomeUrl(), $params);
    }



    // Vráti URL administrácie PrestaShopu.
    public static function getAdminHomeUrl() {
        return __PS_BASE_URI__ . 'admin/index.php';
    }



    // Vráti URL aktuálnej stránky v administrácii PrestaShopu s prípadnými ďalšími parametrami.
    // Parametre sú zadané v poli, kde kľúč je meno parametra a hodnota daného kľúča je hodnota parametra.
    public static function getAdminCurrentTabUrl($params = NULL) {
        global $cookie;
        global $currentAdminMainTab;
        global $currentAdminTab;

        if ($params === NULL) {
            $params = array();
        }
        $params['tab'] = $currentAdminTab['class_name'];
        $params['token'] = Tools::getAdminToken($currentAdminMainTab['class_name'] . intval($currentAdminTab['id_tab']) . intval($cookie->id_employee));
        return self::constructUrl(self::getAdminHomeUrl(), $params);
    }



    // Vytvorí URL zo zadanej adresy a parametrov.
    // Adresa $url musí byť čisto adresa bez parametrov.
    // Parametre sú zadané v poli, kde kľúč je meno parametra a hodnota daného kľúča je hodnota parametra.
    public static function constructUrl($url, $params) {
        if (($params !== NULL) && (count($params) > 0)) {
            $paramCount = 0;
            $paramStr = '?';
            foreach ($params as $name => $value) {
                if ($paramCount > 0) {
                    $paramStr .= "&";
                }
                $paramStr .= $name . "=" . urlencode($value);
                $paramCount++;
            }
        } else {
            $paramStr = '';
        }
        return $url . $paramStr;
    }



}
