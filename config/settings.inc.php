<?php

$localConfigFile = dirname(__FILE__) . '/settings-local.inc.php';
if (file_exists($localConfigFile)) {
   include $localConfigFile;
}

if (!defined('__PS_BASE_URI__')) {
   define('__PS_BASE_URI__', '/');
}

define('_THEME_NAME_', 'abceshop');
define('_DB_TYPE_', 'MySQL');
if (!defined('_DB_SERVER_')) {
   define('_DB_SERVER_', 'localhost');
}
if (!defined('_DB_NAME_')) {
   define('_DB_NAME_', 'abceshop');
}
if (!defined('_DB_USER_')) {
   define('_DB_USER_', '');
}
if (!defined('_DB_PASSWD_')) {
   define('_DB_PASSWD_', '');
}
if (!defined('_DB_PREFIX_')) {
   define('_DB_PREFIX_', 'abceshop_');
}
define('_COOKIE_KEY_', 'NjgoRefgVwkoJSHnBaQZw8DYXEXIvgS4nVR76C08s2bi0knUzr4yMe3x');
define('_COOKIE_IV_', '7qcFPhFT');
define('_PS_VERSION_', '1.3.7.0');

