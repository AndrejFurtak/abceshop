<?php


if (!defined('_CAN_LOAD_FILES_'))
	exit;


// presmerovanie na stranu TB
//require('TatraBanka.class.php');
//
//// parametre: suma, mena, VS, návratová URL
//$objTP = new TatraPay('123.4', '978', '1234', 'http://www.example.com/');
//
//header('Location: ' . $objTP->GetUrl());
//exit;



// Overenie odpovede z banky:
//require('TatraBanka.class.php');
//
//$objTP = new TatraPay();
//
//if($objTP->VerifyReply()) {
//     echo "Odpoveď je OK";
//} esle {
//     echo "Pozor odpoveď nie je platná!";
//}


class TatraPay extends PaymentModule
{
    
}


/*
 * Zakladna trieda pre triedy TatraPay a CardPay
 */
class TatraBanka {
        const KEY = 'tajny_kluc';
        const MID = '1234';

        const RSMS = ''; // cislo kam sa maju posielat SMS notifikacie o platbe
        const REM = ''; // mail kam sa maju posielat notifikacie o platbe

        /**
         * Suma. Max 13+2 číslic. Desatinná čiarka musí byť '.'
         * @var Float
         */
        protected $strAMT;

        /**
         * Mena transakcie. Kód 978 je pre EURO.
         * @var String
         */
        protected $strCURR;

        /**
         * Variabilný symbol. Max 10 číslic.
         * @var String
         */
        protected $strVS;

        /**
         * Špecifický symbol - nepovinný. Max 10 číslic.
         * @var String
         */
        protected $strSS;

        /**
         * Konštantný symbol. Max 4 číslice.
         * @var String
         */
        protected $strCS;

        /**
         * Návratová URL
         * @var String
         */
        protected $strRURL;

        /**
         * Bezpečnostný podpis
         * @var String
         */
        protected $strSIGN;

        /**
         * GetSign vracia bezpečnostný podpis zo zadaného reťazca
         * @param $str reťazec z ktorého sa vypočíta podpis
         * @return string
         */
        public function GetSign($str) {
                $strSIGN = sha1($str, true);
                $strSIGN = substr($strSIGN, 0, 8);
                $des = mcrypt_module_open(MCRYPT_DES, "", MCRYPT_MODE_ECB, "");

                $iv = mcrypt_create_iv(mcrypt_enc_get_iv_size($des), MCRYPT_RAND);
                mcrypt_generic_init($des, self::KEY, $iv);

                $strSIGN = mcrypt_generic($des, substr($strSIGN, 0, 8));
                mcrypt_generic_deinit($des);
                mcrypt_module_close($des);

                $strSIGN = strtoupper(bin2hex($strSIGN));
                return $strSIGN;
        }

        protected function SanitizeFloat($flt) {
                return str_replace(',', '.', sprintf('%.2f', $flt));
        }
}

/**
*       Trieda pre CardPay
*/
class TatraPay extends TatraBanka {
        /**
         * Constructor
         * @param $AMT suma
         * @param $CURR mena
         * @param $VS variabilný symbol
         * @param $RURL návratová URL
         * @return New TatraPay object
         */
        public function __construct($AMT = null, $CURR = null, $VS = null, $RURL = null, $SS = null, $CS = '0308') {
                $this->strAMT = $this->SanitizeFloat($AMT);
                $this->strCURR = $CURR;
                $this->strVS = $VS;
                $this->strRURL = $RURL;
                $this->strSS = $SS;
                $this->strCS = $CS;
                $this->strSS = $SS;

                $strSIGN = $this->GetSign(self::MID . $this->strAMT . $CURR . $VS . $CS . $RURL);
                $this->strSIGN = $strSIGN;
        }

        public function GetUrl() {
                $url = sprintf('https://moja.tatrabanka.sk/cgi-bin/e-commerce/start/e-commerce.jsp?PT=TatraPay&MID=%s&AMT=%s&CURR=%s&VS=%s&CS=%s&RURL=%s&SIGN=%s',
                        self::MID,
                        $this->strAMT,
                        $this->strCURR,
                        $this->strVS,
                        $this->strCS,
                        $this->strRURL,
                        $this->strSIGN
                );
                if(RSMS != '')
                        $url .= '&RSMS=' . self::RSMS;
                if(REM != '')
                        $url .= '&REM=' . self::REM;
                return $url;
        }

        public function VerifyReply() {
                if(!isset($_GET['VS']))
                        return false;
                if(!isset($_GET['RES']))
                        return false;
                if(!isset($_GET['SIGN']))
                        return false;
                $strToSign = $_GET['VS'] . $_GET['RES'];
                if($_GET['SIGN'] == $this->GetSign($strToSign)) {
                        return true;
                }
                return false;
        }
}

/**
 * Trieda pre CardPay
 */
class CardPay extends TatraBanka {
        /**
         * IP adresa klienta
         * @var String
         */
        protected $strIPC;

        /**
         * Meno klienta
         * @var String
         */
        protected $strNAME;

        /**
         * Constructor
         * @param $AMT suma
         * @param $CURR mena
         * @param $VS variabilný symbol
         * @param $RURL návratová URL
         * @return new CardPay object
         */
        public function __construct($NAME = null, $AMT = null, $CURR = null, $VS = null, $RURL = null, $SS = null, $CS = '0308') {
                setlocale(LC_CTYPE, 'en_US.UTF-8');
                $this->strNAME = strtr(iconv('UTF-8', 'US-ASCII//TRANSLIT', $NAME), array("'" => ''));
                $this->strAMT = $this->SanitizeFloat($AMT);
                $this->strCURR = $CURR;
                $this->strVS = $VS;
                $this->strRURL = $RURL;
                $this->strSS = $SS;
                $this->strCS = $CS;

                if(array_key_exists('X_FORWARDED_FOR', $_SERVER)) {
                        $this->strIPC = $_SERVER['X_FORWARDED_FOR'];
                } else {
                        $this->strIPC = $_SERVER['REMOTE_ADDR'];
                }

                $strSIGN = $this->GetSign(self::MID . $this->strAMT . $this->strCURR . $this->strVS . $this->strCS . $RURL . $this->strIPC . $this->strNAME);
                $this->strSIGN = $strSIGN;
        }

        public function GetUrl() {
                $url = sprintf('https://moja.tatrabanka.sk/cgi-bin/e-commerce/start/e-commerce.jsp?PT=CardPay&MID=%s&AMT=%s&CURR=%d&VS=%s&CS=%s&RURL=%s&SIGN=%s&IPC=%s&NAME=%s',
                        self::MID,
                        $this->strAMT,
                        $this->strCURR,
                        $this->strVS,
                        $this->strCS,
                        $this->strRURL,
                        $this->strSIGN,
                        $this->strIPC,
                        urlencode($this->strNAME)
                );
                if(RSMS != '')
                        $url .= '&RSMS=' . self::RSMS;
                if(REM != '')
                        $url .= '&REM=' . self::REM;
                return $url;
        }

        public function VerifyReply() {
                if(!isset($_GET['VS']))
                        return false;
                if(!isset($_GET['RES']))
                        return false;
                if(!isset($_GET['SIGN']))
                        return false;
                if(!isset($_GET['AC']))
                        return false;
                $strToSign = $_GET['VS'] . $_GET['RES'] . $_GET['AC'];
                if($_GET['SIGN'] == $this->GetSign($strToSign)) {
                        return true;
                }
                return false;
        }
}


?>
