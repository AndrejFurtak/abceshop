<?php

$categoryIds = array();
$categoryIds['domace'] = 64;
$categoryIds['elektro'] = 16;
$categoryIds['foto'] = 12;
$categoryIds['knihy'] = 9;
$categoryIds['kozmetika'] = 15;
$categoryIds['oblecenie'] = 13;
$categoryIds['obuv'] = 14;
$categoryIds['outdoor'] = 45;
$categoryIds['sedacie'] = 8;
$categoryIds['sportove'] = 5;
$categoryIds['telefony'] = 34;
$categoryIds['vypoctova'] = 11;

$localFile = dirname(__FILE__) . '/categories-local.php';
if (file_exists($localFile)) {
    include $localFile;
}
