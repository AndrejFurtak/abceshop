-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Hostiteľ: localhost
-- Vygenerované:: 26.Mar, 2011 - 16:24
-- Verzia serveru: 5.5.8
-- Verzia PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáza: `abceshop`
--

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_access`
--

CREATE TABLE IF NOT EXISTS `ps_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_tab` int(10) unsigned NOT NULL,
  `view` int(11) NOT NULL,
  `add` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `delete` int(11) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_tab`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_access`
--

INSERT INTO `ps_access` (`id_profile`, `id_tab`, `view`, `add`, `edit`, `delete`) VALUES
(1, 1, 1, 1, 1, 1),
(1, 2, 1, 1, 1, 1),
(1, 3, 1, 1, 1, 1),
(1, 4, 1, 1, 1, 1),
(1, 5, 1, 1, 1, 1),
(1, 6, 1, 1, 1, 1),
(1, 7, 1, 1, 1, 1),
(1, 8, 1, 1, 1, 1),
(1, 9, 1, 1, 1, 1),
(1, 10, 1, 1, 1, 1),
(1, 11, 1, 1, 1, 1),
(1, 12, 1, 1, 1, 1),
(1, 13, 1, 1, 1, 1),
(1, 14, 1, 1, 1, 1),
(1, 15, 1, 1, 1, 1),
(1, 16, 1, 1, 1, 1),
(1, 17, 1, 1, 1, 1),
(1, 18, 1, 1, 1, 1),
(1, 19, 1, 1, 1, 1),
(1, 20, 1, 1, 1, 1),
(1, 21, 1, 1, 1, 1),
(1, 22, 1, 1, 1, 1),
(1, 23, 1, 1, 1, 1),
(1, 24, 1, 1, 1, 1),
(1, 26, 1, 1, 1, 1),
(1, 27, 1, 1, 1, 1),
(1, 28, 1, 1, 1, 1),
(1, 29, 1, 1, 1, 1),
(1, 30, 1, 1, 1, 1),
(1, 31, 1, 1, 1, 1),
(1, 32, 1, 1, 1, 1),
(1, 33, 1, 1, 1, 1),
(1, 34, 1, 1, 1, 1),
(1, 35, 1, 1, 1, 1),
(1, 36, 1, 1, 1, 1),
(1, 37, 1, 1, 1, 1),
(1, 38, 1, 1, 1, 1),
(1, 39, 1, 1, 1, 1),
(1, 40, 1, 1, 1, 1),
(1, 41, 1, 1, 1, 1),
(1, 42, 1, 1, 1, 1),
(1, 43, 1, 1, 1, 1),
(1, 44, 1, 1, 1, 1),
(1, 46, 1, 1, 1, 1),
(1, 47, 1, 1, 1, 1),
(1, 48, 1, 1, 1, 1),
(1, 49, 1, 1, 1, 1),
(1, 50, 1, 1, 1, 1),
(1, 51, 1, 1, 1, 1),
(1, 52, 1, 1, 1, 1),
(1, 53, 1, 1, 1, 1),
(1, 54, 1, 1, 1, 1),
(1, 55, 1, 1, 1, 1),
(1, 56, 1, 1, 1, 1),
(1, 57, 1, 1, 1, 1),
(1, 58, 1, 1, 1, 1),
(1, 59, 1, 1, 1, 1),
(1, 60, 1, 1, 1, 1),
(1, 61, 1, 1, 1, 1),
(1, 62, 1, 1, 1, 1),
(1, 63, 1, 1, 1, 1),
(1, 64, 1, 1, 1, 1),
(1, 65, 1, 1, 1, 1),
(1, 66, 1, 1, 1, 1),
(1, 67, 1, 1, 1, 1),
(1, 68, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_accessory`
--

CREATE TABLE IF NOT EXISTS `ps_accessory` (
  `id_product_1` int(10) unsigned NOT NULL,
  `id_product_2` int(10) unsigned NOT NULL,
  KEY `accessory_product` (`id_product_1`,`id_product_2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_accessory`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_address`
--

CREATE TABLE IF NOT EXISTS `ps_address` (
  `id_address` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(10) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(16) DEFAULT NULL,
  `phone_mobile` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_address`),
  KEY `address_customer` (`id_customer`),
  KEY `id_country` (`id_country`),
  KEY `id_state` (`id_state`),
  KEY `id_manufacturer` (`id_manufacturer`),
  KEY `id_supplier` (`id_supplier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_address`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_alias`
--

CREATE TABLE IF NOT EXISTS `ps_alias` (
  `id_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_alias`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_attachment`
--

CREATE TABLE IF NOT EXISTS `ps_attachment` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(40) NOT NULL,
  `mime` varchar(32) NOT NULL,
  PRIMARY KEY (`id_attachment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_attachment`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_attachment_lang`
--

CREATE TABLE IF NOT EXISTS `ps_attachment_lang` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_attachment`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_attachment_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_attribute`
--

CREATE TABLE IF NOT EXISTS `ps_attribute` (
  `id_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_attribute_group` int(10) unsigned NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_attribute`),
  KEY `attribute_group` (`id_attribute_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_attribute`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_attribute_group`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_group` (
  `id_attribute_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_color_group` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_attribute_group`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_attribute_group_lang`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_group_lang` (
  `id_attribute_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `public_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_attribute_group_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_attribute_impact`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_impact` (
  `id_attribute_impact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_attribute` int(11) unsigned NOT NULL,
  `weight` float NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY (`id_attribute_impact`),
  UNIQUE KEY `id_product` (`id_product`,`id_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_attribute_impact`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_attribute_lang`
--

CREATE TABLE IF NOT EXISTS `ps_attribute_lang` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_attribute_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_block_cms`
--

CREATE TABLE IF NOT EXISTS `ps_block_cms` (
  `id_block` int(10) unsigned NOT NULL,
  `id_cms` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_block`,`id_cms`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_block_cms`
--

INSERT INTO `ps_block_cms` (`id_block`, `id_cms`) VALUES
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(15, 3),
(15, 4),
(23, 3),
(23, 4);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_carrier`
--

CREATE TABLE IF NOT EXISTS `ps_carrier` (
  `id_carrier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_tax` int(10) unsigned DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_handling` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `range_behavior` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_module` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_carrier`),
  KEY `deleted` (`deleted`,`active`),
  KEY `id_tax` (`id_tax`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Sťahujem dáta pre tabuľku `ps_carrier`
--

INSERT INTO `ps_carrier` (`id_carrier`, `id_tax`, `name`, `url`, `active`, `deleted`, `shipping_handling`, `range_behavior`, `is_module`) VALUES
(5, 0, 'None', NULL, 1, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_carrier_group`
--

CREATE TABLE IF NOT EXISTS `ps_carrier_group` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  UNIQUE KEY `id_carrier` (`id_carrier`,`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_carrier_group`
--

INSERT INTO `ps_carrier_group` (`id_carrier`, `id_group`) VALUES
(5, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_carrier_lang`
--

CREATE TABLE IF NOT EXISTS `ps_carrier_lang` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `delay` varchar(128) DEFAULT NULL,
  UNIQUE KEY `shipper_lang_index` (`id_lang`,`id_carrier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_carrier_lang`
--

INSERT INTO `ps_carrier_lang` (`id_carrier`, `id_lang`, `delay`) VALUES
(5, 4, 'None'),
(5, 1, 'None');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_carrier_zone`
--

CREATE TABLE IF NOT EXISTS `ps_carrier_zone` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_carrier_zone`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_cart`
--

CREATE TABLE IF NOT EXISTS `ps_cart` (
  `id_cart` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_guest` int(10) unsigned NOT NULL,
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart`),
  KEY `cart_customer` (`id_customer`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_guest` (`id_guest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_cart`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_cart_discount`
--

CREATE TABLE IF NOT EXISTS `ps_cart_discount` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_discount` int(10) unsigned NOT NULL,
  KEY `cart_discount_index` (`id_cart`,`id_discount`),
  KEY `id_discount` (`id_discount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_cart_discount`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_cart_product`
--

CREATE TABLE IF NOT EXISTS `ps_cart_product` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  KEY `cart_product_index` (`id_cart`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_cart_product`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_category`
--

CREATE TABLE IF NOT EXISTS `ps_category` (
  `id_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_category`),
  KEY `category_parent` (`id_parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Sťahujem dáta pre tabuľku `ps_category`
--

INSERT INTO `ps_category` (`id_category`, `id_parent`, `level_depth`, `active`, `date_add`, `date_upd`) VALUES
(1, 0, 0, 1, '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(12, 1, 1, 1, '2011-03-06 16:01:28', '2011-03-06 16:01:28'),
(13, 1, 1, 1, '2011-03-06 16:01:41', '2011-03-06 16:01:41'),
(14, 1, 1, 1, '2011-03-06 16:01:58', '2011-03-06 16:01:58'),
(15, 1, 1, 1, '2011-03-06 16:02:14', '2011-03-06 16:02:14'),
(16, 1, 1, 1, '2011-03-06 16:02:27', '2011-03-06 16:02:27'),
(17, 1, 1, 1, '2011-03-06 16:02:43', '2011-03-06 16:02:43'),
(18, 1, 1, 1, '2011-03-06 16:03:02', '2011-03-06 16:03:02'),
(19, 1, 1, 1, '2011-03-06 16:03:19', '2011-03-06 16:03:19'),
(20, 1, 1, 1, '2011-03-06 16:03:30', '2011-03-06 16:03:30'),
(21, 1, 1, 1, '2011-03-06 16:03:43', '2011-03-06 16:03:43');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_category_group`
--

CREATE TABLE IF NOT EXISTS `ps_category_group` (
  `id_category` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  KEY `category_group_index` (`id_category`,`id_group`),
  KEY `id_category` (`id_category`),
  KEY `id_group` (`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_category_group`
--

INSERT INTO `ps_category_group` (`id_category`, `id_group`) VALUES
(1, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_category_lang`
--

CREATE TABLE IF NOT EXISTS `ps_category_lang` (
  `id_category` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  UNIQUE KEY `category_lang_index` (`id_category`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_category_lang`
--

INSERT INTO `ps_category_lang` (`id_category`, `id_lang`, `name`, `description`, `link_rewrite`, `meta_title`, `meta_keywords`, `meta_description`) VALUES
(1, 1, 'Home', NULL, 'home', NULL, NULL, NULL),
(1, 4, 'Titulka', NULL, 'zaujimave-produkty', NULL, NULL, NULL),
(12, 1, '01.Výpočtová technika', '', 'vypoctova-technika', '', '', ''),
(12, 4, '01.Výpočtová technika', '', 'vypoctova-technika', '', '', ''),
(13, 1, '02.Foto', '', 'foto', '', '', ''),
(13, 4, '02.Foto', '', 'foto', '', '', ''),
(14, 1, '03.Knihy', '', 'knihy', '', '', ''),
(14, 4, '03.Knihy', '', 'knihy', '', '', ''),
(15, 1, '04.Sedacie vaky', '', 'sedacie-vaky', '', '', ''),
(15, 4, '04.Sedacie vaky', '', 'sedacie-vaky', '', '', ''),
(16, 1, '05.Oblečenie', '', 'oblecenie', '', '', ''),
(16, 4, '05.Oblečenie', '', 'oblecenie', '', '', ''),
(17, 1, '06.Obuv', '', 'obuv', '', '', ''),
(17, 4, '06.Obuv', '', 'obuv', '', '', ''),
(18, 1, '07.Kozmetika', '', 'kozmetika', '', '', ''),
(18, 4, '07.Kozmetika', '', 'kozmetika', '', '', ''),
(19, 1, '08.Šport', '', 'sport', '', '', ''),
(19, 4, '08.Šport', '', 'sport', '', '', ''),
(20, 1, '09.Elektro', '', 'elektro', '', '', ''),
(20, 4, '09.Elektro', '', 'elektro', '', '', ''),
(21, 1, '10.Mobilné telefóny', '', 'mobilne-telefony', '', '', ''),
(21, 4, '10.Mobilné telefóny', '', 'mobilne-telefony', '', '', '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_category_product`
--

CREATE TABLE IF NOT EXISTS `ps_category_product` (
  `id_category` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `category_product_index` (`id_category`,`id_product`),
  KEY `id_product` (`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_category_product`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_cms`
--

CREATE TABLE IF NOT EXISTS `ps_cms` (
  `id_cms` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_cms`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Sťahujem dáta pre tabuľku `ps_cms`
--

INSERT INTO `ps_cms` (`id_cms`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_cms_lang`
--

CREATE TABLE IF NOT EXISTS `ps_cms_lang` (
  `id_cms` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL,
  PRIMARY KEY (`id_cms`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_cms_lang`
--

INSERT INTO `ps_cms_lang` (`id_cms`, `id_lang`, `meta_title`, `meta_description`, `meta_keywords`, `content`, `link_rewrite`) VALUES
(1, 1, 'Delivery', 'Our terms and conditions of delivery', 'conditions, delivery, delay, shipment, pack', '<h2>Shipments and returns</h2><h3>Your pack shipment</h3><p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via Colissimo with tracking and drop-off without signature. If you prefer delivery by Colissimo Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p><p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>', 'delivery'),
(2, 1, 'Legal Notice', 'Legal notice', 'notice, legal, credits', '<h2>Legal</h2><h3>Credits</h3><p>Concept and production:</p><p>This Web site was created using <a href="http://www.prestashop.com">PrestaShop</a>&trade; open-source software.</p>', 'legal-notice'),
(3, 1, 'Terms and conditions of use', 'Our terms and conditions of use', 'conditions, terms, use, sell', '<h2>Your terms and conditions of use</h2>\r\n<h3>Rule 1</h3>\r\n<p>Here is the rule 1 content</p>\r\n<h3>Rule 2</h3>\r\n<p>Here is the rule 2 content</p>\r\n<h3>Rule 3</h3>\r\n<p>Here is the rule 3 content</p>', 'terms-and-conditions-of-use'),
(4, 1, 'About us', 'Learn more about us', 'about us, informations', '<h2>About us</h2>\r\n<h3>Our company</h3>\r\n<p>Our company</p>\r\n<h3>Our team</h3>\r\n<p>Our team</p>\r\n<h3>Informations</h3>\r\n<p>Informations</p>', 'about-us'),
(5, 1, 'Secure payment', 'Our secure payment mean', 'secure payment, ssl, visa, mastercard, paypal', '<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3><p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3><p>About this services</p>', 'secure-payment'),
(1, 4, 'Dodacie podmienky', 'Dodacie podmienky internetového obchodu', 'dodacie, podmienky', '<h1>Dodacie podmienky</h1>', 'dodacie-podmienky'),
(2, 4, 'Reklamačné podmienky', 'Reklamačné podmienky a záručný servis', 'reklamačné podmienky, záručný servis', '<h1>Reklamačné podmienky</h1>\r\n<p> </p>\r\n<h2>Záručný servis</h2>\r\n<p> </p>', 'reklamacne-podmienky'),
(3, 4, 'Obchodné podmienky', 'Všeobecné obchodné podmienky internetového obchodu', 'obchodné, podmienky', '<h1>Všeobecné obchodné podmienky</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non  dolor dui, vitae fringilla nisl. Donec tincidunt, magna et vestibulum  bibendum, nulla ipsum porta erat, vitae adipiscing ante tellus et  tellus. Cras non eros nec ligula euismod porttitor. Vestibulum id  porttitor urna. Nam velit dui, fermentum at consectetur vel, dictum nec  orci. Sed in lacus non magna eleifend varius in id dui. Aenean purus  felis, euismod in imperdiet volutpat, pharetra vel lacus. Vivamus  egestas nulla sed urna bibendum et sagittis nibh facilisis. Vivamus  consectetur enim posuere diam ornare rhoncus. Sed mauris felis,  imperdiet eu dictum ac, rhoncus eget nulla. Vestibulum vel lorem non  arcu vehicula sollicitudin pretium at nibh. Proin a arcu lorem, non  vulputate tortor. Nam et lectus orci, at sagittis est.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget  suscipit felis. Proin et tempor ante. Ut consequat, ipsum et elementum  laoreet, ligula lorem blandit ipsum, sit amet accumsan tellus velit eget  metus. Integer dapibus nisl nec ipsum pulvinar pharetra. Pellentesque  non enim mattis nisi auctor vulputate vel nec lacus. Sed scelerisque  suscipit ipsum, hendrerit faucibus arcu laoreet a. Sed non ornare odio.  Nunc laoreet venenatis euismod. Nam blandit lectus quis lacus tristique  consequat. Praesent nec nisi purus, sed tincidunt urna. Vestibulum  facilisis posuere nibh, vitae semper ligula pellentesque nec. Aenean  sodales, velit at condimentum lacinia, elit quam semper odio, quis  adipiscing nibh dui nec lacus. Phasellus id lorem a ante sodales viverra  quis nec lectus. Donec aliquet enim et nibh facilisis eu gravida dolor  vestibulum. Proin turpis erat, mollis sed sodales ut, porttitor a diam.  Vivamus accumsan metus sed eros faucibus cursus. Aenean at viverra orci.  Sed varius fermentum ligula, a semper ante tincidunt non.</p>\r\n<p>Phasellus ac semper est. Sed suscipit volutpat eleifend. Nam  condimentum, libero in pellentesque pellentesque, nisl purus cursus dui,  sit amet convallis leo turpis vel est. Ut placerat ornare nibh sed  interdum. Curabitur ac erat dui. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Sed et justo in  dolor eleifend vehicula. Phasellus lorem lacus, egestas ut tincidunt et,  accumsan eu augue. Maecenas sed erat dui. Morbi neque nunc, consequat  sed viverra at, tempus a enim. Vivamus nibh urna, commodo nec bibendum  sit amet, porta in eros. Phasellus viverra pretium accumsan. Fusce  condimentum nulla scelerisque lorem scelerisque condimentum. Curabitur  laoreet condimentum nibh sit amet auctor. Curabitur nec arcu nec diam  facilisis facilisis. Nunc condimentum gravida tellus, a commodo nulla  egestas et. Aliquam porttitor accumsan arcu, vitae adipiscing erat  luctus ut. Morbi sed libero ac enim molestie vulputate vel gravida  mauris. Nunc tempor tortor ante, eu viverra orci.</p>\r\n<p>Morbi sodales lobortis tortor in tempor. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Duis adipiscing  justo lorem. Duis tempor ultricies condimentum. Phasellus at risus ac  turpis aliquet dapibus. Cras quis elit quis risus commodo scelerisque  sit amet ut nulla. Mauris placerat ligula dignissim metus vestibulum  vehicula. Mauris imperdiet mollis arcu. Integer non massa et lorem  gravida vulputate vitae sit amet velit. Curabitur adipiscing dignissim  elit ac viverra. Sed a mauris lectus, nec scelerisque magna. Praesent  varius ultrices tincidunt. Nulla est eros, vestibulum at convallis nec,  bibendum id metus. In hac habitasse platea dictumst. Cras in ante nunc,  ut accumsan odio. Sed rutrum nulla in sem porttitor vitae euismod magna  interdum. Ut ut orci nunc, sit amet placerat libero. Etiam malesuada  ultrices dui, sit amet tristique nisl adipiscing vitae.</p>', 'obchodne-podmienky'),
(4, 4, 'O nás', 'Informácie o prevádzkovateľovi internetového obchodu', 'o nás, informácie, prevádzkovateľ', '<h1>O nás</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non  dolor dui, vitae fringilla nisl. Donec tincidunt, magna et vestibulum  bibendum, nulla ipsum porta erat, vitae adipiscing ante tellus et  tellus. Cras non eros nec ligula euismod porttitor. Vestibulum id  porttitor urna. Nam velit dui, fermentum at consectetur vel, dictum nec  orci. Sed in lacus non magna eleifend varius in id dui. Aenean purus  felis, euismod in imperdiet volutpat, pharetra vel lacus. Vivamus  egestas nulla sed urna bibendum et sagittis nibh facilisis. Vivamus  consectetur enim posuere diam ornare rhoncus. Sed mauris felis,  imperdiet eu dictum ac, rhoncus eget nulla. Vestibulum vel lorem non  arcu vehicula sollicitudin pretium at nibh. Proin a arcu lorem, non  vulputate tortor. Nam et lectus orci, at sagittis est.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget  suscipit felis. Proin et tempor ante. Ut consequat, ipsum et elementum  laoreet, ligula lorem blandit ipsum, sit amet accumsan tellus velit eget  metus. Integer dapibus nisl nec ipsum pulvinar pharetra. Pellentesque  non enim mattis nisi auctor vulputate vel nec lacus. Sed scelerisque  suscipit ipsum, hendrerit faucibus arcu laoreet a. Sed non ornare odio.  Nunc laoreet venenatis euismod. Nam blandit lectus quis lacus tristique  consequat. Praesent nec nisi purus, sed tincidunt urna. Vestibulum  facilisis posuere nibh, vitae semper ligula pellentesque nec. Aenean  sodales, velit at condimentum lacinia, elit quam semper odio, quis  adipiscing nibh dui nec lacus. Phasellus id lorem a ante sodales viverra  quis nec lectus. Donec aliquet enim et nibh facilisis eu gravida dolor  vestibulum. Proin turpis erat, mollis sed sodales ut, porttitor a diam.  Vivamus accumsan metus sed eros faucibus cursus. Aenean at viverra orci.  Sed varius fermentum ligula, a semper ante tincidunt non.</p>\r\n<p>Phasellus ac semper est. Sed suscipit volutpat eleifend. Nam  condimentum, libero in pellentesque pellentesque, nisl purus cursus dui,  sit amet convallis leo turpis vel est. Ut placerat ornare nibh sed  interdum. Curabitur ac erat dui. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Sed et justo in  dolor eleifend vehicula. Phasellus lorem lacus, egestas ut tincidunt et,  accumsan eu augue. Maecenas sed erat dui. Morbi neque nunc, consequat  sed viverra at, tempus a enim. Vivamus nibh urna, commodo nec bibendum  sit amet, porta in eros. Phasellus viverra pretium accumsan. Fusce  condimentum nulla scelerisque lorem scelerisque condimentum. Curabitur  laoreet condimentum nibh sit amet auctor. Curabitur nec arcu nec diam  facilisis facilisis. Nunc condimentum gravida tellus, a commodo nulla  egestas et. Aliquam porttitor accumsan arcu, vitae adipiscing erat  luctus ut. Morbi sed libero ac enim molestie vulputate vel gravida  mauris. Nunc tempor tortor ante, eu viverra orci.</p>\r\n<p>Morbi sodales lobortis tortor in tempor. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Duis adipiscing  justo lorem. Duis tempor ultricies condimentum. Phasellus at risus ac  turpis aliquet dapibus. Cras quis elit quis risus commodo scelerisque  sit amet ut nulla. Mauris placerat ligula dignissim metus vestibulum  vehicula. Mauris imperdiet mollis arcu. Integer non massa et lorem  gravida vulputate vitae sit amet velit. Curabitur adipiscing dignissim  elit ac viverra. Sed a mauris lectus, nec scelerisque magna. Praesent  varius ultrices tincidunt. Nulla est eros, vestibulum at convallis nec,  bibendum id metus. In hac habitasse platea dictumst. Cras in ante nunc,  ut accumsan odio. Sed rutrum nulla in sem porttitor vitae euismod magna  interdum. Ut ut orci nunc, sit amet placerat libero. Etiam malesuada  ultrices dui, sit amet tristique nisl adipiscing vitae.</p>', 'o-nas'),
(5, 4, 'Zabezpečená platba', 'Bezpečnostné protokoly a opatrenia pre zvýšenie bezpečnosti pri platobnom procese  v našom internetovom obchode', 'zabezpečená platba, SSL', '<h1>Zabezpečená platba</h1>', 'zabezpecena-platba'),
(6, 1, 'Reklamácia', '', '', '', 'reklamacia'),
(6, 4, 'Reklamácia', '', '', '<h1>Reklamácia</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non  dolor dui, vitae fringilla nisl. Donec tincidunt, magna et vestibulum  bibendum, nulla ipsum porta erat, vitae adipiscing ante tellus et  tellus. Cras non eros nec ligula euismod porttitor. Vestibulum id  porttitor urna. Nam velit dui, fermentum at consectetur vel, dictum nec  orci. Sed in lacus non magna eleifend varius in id dui. Aenean purus  felis, euismod in imperdiet volutpat, pharetra vel lacus. Vivamus  egestas nulla sed urna bibendum et sagittis nibh facilisis. Vivamus  consectetur enim posuere diam ornare rhoncus. Sed mauris felis,  imperdiet eu dictum ac, rhoncus eget nulla. Vestibulum vel lorem non  arcu vehicula sollicitudin pretium at nibh. Proin a arcu lorem, non  vulputate tortor. Nam et lectus orci, at sagittis est.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget  suscipit felis. Proin et tempor ante. Ut consequat, ipsum et elementum  laoreet, ligula lorem blandit ipsum, sit amet accumsan tellus velit eget  metus. Integer dapibus nisl nec ipsum pulvinar pharetra. Pellentesque  non enim mattis nisi auctor vulputate vel nec lacus. Sed scelerisque  suscipit ipsum, hendrerit faucibus arcu laoreet a. Sed non ornare odio.  Nunc laoreet venenatis euismod. Nam blandit lectus quis lacus tristique  consequat. Praesent nec nisi purus, sed tincidunt urna. Vestibulum  facilisis posuere nibh, vitae semper ligula pellentesque nec. Aenean  sodales, velit at condimentum lacinia, elit quam semper odio, quis  adipiscing nibh dui nec lacus. Phasellus id lorem a ante sodales viverra  quis nec lectus. Donec aliquet enim et nibh facilisis eu gravida dolor  vestibulum. Proin turpis erat, mollis sed sodales ut, porttitor a diam.  Vivamus accumsan metus sed eros faucibus cursus. Aenean at viverra orci.  Sed varius fermentum ligula, a semper ante tincidunt non.</p>\r\n<p>Phasellus ac semper est. Sed suscipit volutpat eleifend. Nam  condimentum, libero in pellentesque pellentesque, nisl purus cursus dui,  sit amet convallis leo turpis vel est. Ut placerat ornare nibh sed  interdum. Curabitur ac erat dui. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Sed et justo in  dolor eleifend vehicula. Phasellus lorem lacus, egestas ut tincidunt et,  accumsan eu augue. Maecenas sed erat dui. Morbi neque nunc, consequat  sed viverra at, tempus a enim. Vivamus nibh urna, commodo nec bibendum  sit amet, porta in eros. Phasellus viverra pretium accumsan. Fusce  condimentum nulla scelerisque lorem scelerisque condimentum. Curabitur  laoreet condimentum nibh sit amet auctor. Curabitur nec arcu nec diam  facilisis facilisis. Nunc condimentum gravida tellus, a commodo nulla  egestas et. Aliquam porttitor accumsan arcu, vitae adipiscing erat  luctus ut. Morbi sed libero ac enim molestie vulputate vel gravida  mauris. Nunc tempor tortor ante, eu viverra orci.</p>\r\n<p>Morbi sodales lobortis tortor in tempor. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Duis adipiscing  justo lorem. Duis tempor ultricies condimentum. Phasellus at risus ac  turpis aliquet dapibus. Cras quis elit quis risus commodo scelerisque  sit amet ut nulla. Mauris placerat ligula dignissim metus vestibulum  vehicula. Mauris imperdiet mollis arcu. Integer non massa et lorem  gravida vulputate vitae sit amet velit. Curabitur adipiscing dignissim  elit ac viverra. Sed a mauris lectus, nec scelerisque magna. Praesent  varius ultrices tincidunt. Nulla est eros, vestibulum at convallis nec,  bibendum id metus. In hac habitasse platea dictumst. Cras in ante nunc,  ut accumsan odio. Sed rutrum nulla in sem porttitor vitae euismod magna  interdum. Ut ut orci nunc, sit amet placerat libero. Etiam malesuada  ultrices dui, sit amet tristique nisl adipiscing vitae.</p>', 'reklamacia'),
(7, 1, 'Doprava', '', '', '', 'doprava'),
(7, 4, 'Doprava', '', '', '<h1>Doprava</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non  dolor dui, vitae fringilla nisl. Donec tincidunt, magna et vestibulum  bibendum, nulla ipsum porta erat, vitae adipiscing ante tellus et  tellus. Cras non eros nec ligula euismod porttitor. Vestibulum id  porttitor urna. Nam velit dui, fermentum at consectetur vel, dictum nec  orci. Sed in lacus non magna eleifend varius in id dui. Aenean purus  felis, euismod in imperdiet volutpat, pharetra vel lacus. Vivamus  egestas nulla sed urna bibendum et sagittis nibh facilisis. Vivamus  consectetur enim posuere diam ornare rhoncus. Sed mauris felis,  imperdiet eu dictum ac, rhoncus eget nulla. Vestibulum vel lorem non  arcu vehicula sollicitudin pretium at nibh. Proin a arcu lorem, non  vulputate tortor. Nam et lectus orci, at sagittis est.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget  suscipit felis. Proin et tempor ante. Ut consequat, ipsum et elementum  laoreet, ligula lorem blandit ipsum, sit amet accumsan tellus velit eget  metus. Integer dapibus nisl nec ipsum pulvinar pharetra. Pellentesque  non enim mattis nisi auctor vulputate vel nec lacus. Sed scelerisque  suscipit ipsum, hendrerit faucibus arcu laoreet a. Sed non ornare odio.  Nunc laoreet venenatis euismod. Nam blandit lectus quis lacus tristique  consequat. Praesent nec nisi purus, sed tincidunt urna. Vestibulum  facilisis posuere nibh, vitae semper ligula pellentesque nec. Aenean  sodales, velit at condimentum lacinia, elit quam semper odio, quis  adipiscing nibh dui nec lacus. Phasellus id lorem a ante sodales viverra  quis nec lectus. Donec aliquet enim et nibh facilisis eu gravida dolor  vestibulum. Proin turpis erat, mollis sed sodales ut, porttitor a diam.  Vivamus accumsan metus sed eros faucibus cursus. Aenean at viverra orci.  Sed varius fermentum ligula, a semper ante tincidunt non.</p>\r\n<p>Phasellus ac semper est. Sed suscipit volutpat eleifend. Nam  condimentum, libero in pellentesque pellentesque, nisl purus cursus dui,  sit amet convallis leo turpis vel est. Ut placerat ornare nibh sed  interdum. Curabitur ac erat dui. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Sed et justo in  dolor eleifend vehicula. Phasellus lorem lacus, egestas ut tincidunt et,  accumsan eu augue. Maecenas sed erat dui. Morbi neque nunc, consequat  sed viverra at, tempus a enim. Vivamus nibh urna, commodo nec bibendum  sit amet, porta in eros. Phasellus viverra pretium accumsan. Fusce  condimentum nulla scelerisque lorem scelerisque condimentum. Curabitur  laoreet condimentum nibh sit amet auctor. Curabitur nec arcu nec diam  facilisis facilisis. Nunc condimentum gravida tellus, a commodo nulla  egestas et. Aliquam porttitor accumsan arcu, vitae adipiscing erat  luctus ut. Morbi sed libero ac enim molestie vulputate vel gravida  mauris. Nunc tempor tortor ante, eu viverra orci.</p>\r\n<p>Morbi sodales lobortis tortor in tempor. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Duis adipiscing  justo lorem. Duis tempor ultricies condimentum. Phasellus at risus ac  turpis aliquet dapibus. Cras quis elit quis risus commodo scelerisque  sit amet ut nulla. Mauris placerat ligula dignissim metus vestibulum  vehicula. Mauris imperdiet mollis arcu. Integer non massa et lorem  gravida vulputate vitae sit amet velit. Curabitur adipiscing dignissim  elit ac viverra. Sed a mauris lectus, nec scelerisque magna. Praesent  varius ultrices tincidunt. Nulla est eros, vestibulum at convallis nec,  bibendum id metus. In hac habitasse platea dictumst. Cras in ante nunc,  ut accumsan odio. Sed rutrum nulla in sem porttitor vitae euismod magna  interdum. Ut ut orci nunc, sit amet placerat libero. Etiam malesuada  ultrices dui, sit amet tristique nisl adipiscing vitae.</p>', 'doprava'),
(8, 1, 'Platby', '', '', '', 'platby'),
(8, 4, 'Platby', '', '', '<h1>Platby</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non  dolor dui, vitae fringilla nisl. Donec tincidunt, magna et vestibulum  bibendum, nulla ipsum porta erat, vitae adipiscing ante tellus et  tellus. Cras non eros nec ligula euismod porttitor. Vestibulum id  porttitor urna. Nam velit dui, fermentum at consectetur vel, dictum nec  orci. Sed in lacus non magna eleifend varius in id dui. Aenean purus  felis, euismod in imperdiet volutpat, pharetra vel lacus. Vivamus  egestas nulla sed urna bibendum et sagittis nibh facilisis. Vivamus  consectetur enim posuere diam ornare rhoncus. Sed mauris felis,  imperdiet eu dictum ac, rhoncus eget nulla. Vestibulum vel lorem non  arcu vehicula sollicitudin pretium at nibh. Proin a arcu lorem, non  vulputate tortor. Nam et lectus orci, at sagittis est.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget  suscipit felis. Proin et tempor ante. Ut consequat, ipsum et elementum  laoreet, ligula lorem blandit ipsum, sit amet accumsan tellus velit eget  metus. Integer dapibus nisl nec ipsum pulvinar pharetra. Pellentesque  non enim mattis nisi auctor vulputate vel nec lacus. Sed scelerisque  suscipit ipsum, hendrerit faucibus arcu laoreet a. Sed non ornare odio.  Nunc laoreet venenatis euismod. Nam blandit lectus quis lacus tristique  consequat. Praesent nec nisi purus, sed tincidunt urna. Vestibulum  facilisis posuere nibh, vitae semper ligula pellentesque nec. Aenean  sodales, velit at condimentum lacinia, elit quam semper odio, quis  adipiscing nibh dui nec lacus. Phasellus id lorem a ante sodales viverra  quis nec lectus. Donec aliquet enim et nibh facilisis eu gravida dolor  vestibulum. Proin turpis erat, mollis sed sodales ut, porttitor a diam.  Vivamus accumsan metus sed eros faucibus cursus. Aenean at viverra orci.  Sed varius fermentum ligula, a semper ante tincidunt non.</p>\r\n<p>Phasellus ac semper est. Sed suscipit volutpat eleifend. Nam  condimentum, libero in pellentesque pellentesque, nisl purus cursus dui,  sit amet convallis leo turpis vel est. Ut placerat ornare nibh sed  interdum. Curabitur ac erat dui. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Sed et justo in  dolor eleifend vehicula. Phasellus lorem lacus, egestas ut tincidunt et,  accumsan eu augue. Maecenas sed erat dui. Morbi neque nunc, consequat  sed viverra at, tempus a enim. Vivamus nibh urna, commodo nec bibendum  sit amet, porta in eros. Phasellus viverra pretium accumsan. Fusce  condimentum nulla scelerisque lorem scelerisque condimentum. Curabitur  laoreet condimentum nibh sit amet auctor. Curabitur nec arcu nec diam  facilisis facilisis. Nunc condimentum gravida tellus, a commodo nulla  egestas et. Aliquam porttitor accumsan arcu, vitae adipiscing erat  luctus ut. Morbi sed libero ac enim molestie vulputate vel gravida  mauris. Nunc tempor tortor ante, eu viverra orci.</p>\r\n<p>Morbi sodales lobortis tortor in tempor. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Duis adipiscing  justo lorem. Duis tempor ultricies condimentum. Phasellus at risus ac  turpis aliquet dapibus. Cras quis elit quis risus commodo scelerisque  sit amet ut nulla. Mauris placerat ligula dignissim metus vestibulum  vehicula. Mauris imperdiet mollis arcu. Integer non massa et lorem  gravida vulputate vitae sit amet velit. Curabitur adipiscing dignissim  elit ac viverra. Sed a mauris lectus, nec scelerisque magna. Praesent  varius ultrices tincidunt. Nulla est eros, vestibulum at convallis nec,  bibendum id metus. In hac habitasse platea dictumst. Cras in ante nunc,  ut accumsan odio. Sed rutrum nulla in sem porttitor vitae euismod magna  interdum. Ut ut orci nunc, sit amet placerat libero. Etiam malesuada  ultrices dui, sit amet tristique nisl adipiscing vitae.</p>', 'platby'),
(9, 1, 'Splátkový systém', '', '', '', 'splatkovy-system'),
(9, 4, 'Splátkový systém', '', '', '<h1>Splátkový systém</h1>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas non  dolor dui, vitae fringilla nisl. Donec tincidunt, magna et vestibulum  bibendum, nulla ipsum porta erat, vitae adipiscing ante tellus et  tellus. Cras non eros nec ligula euismod porttitor. Vestibulum id  porttitor urna. Nam velit dui, fermentum at consectetur vel, dictum nec  orci. Sed in lacus non magna eleifend varius in id dui. Aenean purus  felis, euismod in imperdiet volutpat, pharetra vel lacus. Vivamus  egestas nulla sed urna bibendum et sagittis nibh facilisis. Vivamus  consectetur enim posuere diam ornare rhoncus. Sed mauris felis,  imperdiet eu dictum ac, rhoncus eget nulla. Vestibulum vel lorem non  arcu vehicula sollicitudin pretium at nibh. Proin a arcu lorem, non  vulputate tortor. Nam et lectus orci, at sagittis est.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce eget  suscipit felis. Proin et tempor ante. Ut consequat, ipsum et elementum  laoreet, ligula lorem blandit ipsum, sit amet accumsan tellus velit eget  metus. Integer dapibus nisl nec ipsum pulvinar pharetra. Pellentesque  non enim mattis nisi auctor vulputate vel nec lacus. Sed scelerisque  suscipit ipsum, hendrerit faucibus arcu laoreet a. Sed non ornare odio.  Nunc laoreet venenatis euismod. Nam blandit lectus quis lacus tristique  consequat. Praesent nec nisi purus, sed tincidunt urna. Vestibulum  facilisis posuere nibh, vitae semper ligula pellentesque nec. Aenean  sodales, velit at condimentum lacinia, elit quam semper odio, quis  adipiscing nibh dui nec lacus. Phasellus id lorem a ante sodales viverra  quis nec lectus. Donec aliquet enim et nibh facilisis eu gravida dolor  vestibulum. Proin turpis erat, mollis sed sodales ut, porttitor a diam.  Vivamus accumsan metus sed eros faucibus cursus. Aenean at viverra orci.  Sed varius fermentum ligula, a semper ante tincidunt non.</p>\r\n<p>Phasellus ac semper est. Sed suscipit volutpat eleifend. Nam  condimentum, libero in pellentesque pellentesque, nisl purus cursus dui,  sit amet convallis leo turpis vel est. Ut placerat ornare nibh sed  interdum. Curabitur ac erat dui. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Sed et justo in  dolor eleifend vehicula. Phasellus lorem lacus, egestas ut tincidunt et,  accumsan eu augue. Maecenas sed erat dui. Morbi neque nunc, consequat  sed viverra at, tempus a enim. Vivamus nibh urna, commodo nec bibendum  sit amet, porta in eros. Phasellus viverra pretium accumsan. Fusce  condimentum nulla scelerisque lorem scelerisque condimentum. Curabitur  laoreet condimentum nibh sit amet auctor. Curabitur nec arcu nec diam  facilisis facilisis. Nunc condimentum gravida tellus, a commodo nulla  egestas et. Aliquam porttitor accumsan arcu, vitae adipiscing erat  luctus ut. Morbi sed libero ac enim molestie vulputate vel gravida  mauris. Nunc tempor tortor ante, eu viverra orci.</p>\r\n<p>Morbi sodales lobortis tortor in tempor. Vestibulum ante ipsum primis in  faucibus orci luctus et ultrices posuere cubilia Curae; Duis adipiscing  justo lorem. Duis tempor ultricies condimentum. Phasellus at risus ac  turpis aliquet dapibus. Cras quis elit quis risus commodo scelerisque  sit amet ut nulla. Mauris placerat ligula dignissim metus vestibulum  vehicula. Mauris imperdiet mollis arcu. Integer non massa et lorem  gravida vulputate vitae sit amet velit. Curabitur adipiscing dignissim  elit ac viverra. Sed a mauris lectus, nec scelerisque magna. Praesent  varius ultrices tincidunt. Nulla est eros, vestibulum at convallis nec,  bibendum id metus. In hac habitasse platea dictumst. Cras in ante nunc,  ut accumsan odio. Sed rutrum nulla in sem porttitor vitae euismod magna  interdum. Ut ut orci nunc, sit amet placerat libero. Etiam malesuada  ultrices dui, sit amet tristique nisl adipiscing vitae.</p>', 'splatkovy-system');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_configuration`
--

CREATE TABLE IF NOT EXISTS `ps_configuration` (
  `id_configuration` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_configuration`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Sťahujem dáta pre tabuľku `ps_configuration`
--

INSERT INTO `ps_configuration` (`id_configuration`, `name`, `value`, `date_add`, `date_upd`) VALUES
(1, 'PS_LANG_DEFAULT', '4', '2011-02-27 18:37:04', '2011-03-06 14:34:21'),
(2, 'PS_CURRENCY_DEFAULT', '1', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(3, 'PS_COUNTRY_DEFAULT', '37', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(4, 'PS_REWRITING_SETTINGS', '1', '2011-02-27 18:37:04', '2011-03-06 14:30:10'),
(5, 'PS_ORDER_OUT_OF_STOCK', '0', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(6, 'PS_LAST_QTIES', '3', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(7, 'PS_CART_REDIRECT', '1', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(8, 'PS_HELPBOX', '0', '2011-02-27 18:37:04', '2011-03-06 14:30:10'),
(9, 'PS_CONDITIONS', '1', '2011-02-27 18:37:04', '2011-03-06 14:30:10'),
(10, 'PS_RECYCLABLE_PACK', '1', '2011-02-27 18:37:04', '2011-03-06 14:30:10'),
(11, 'PS_GIFT_WRAPPING', '1', '2011-02-27 18:37:04', '2011-03-06 14:30:10'),
(12, 'PS_GIFT_WRAPPING_PRICE', '0', '2011-02-27 18:37:04', '2011-03-06 14:30:10'),
(13, 'PS_STOCK_MANAGEMENT', '1', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(14, 'PS_NAVIGATION_PIPE', '>', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(15, 'PS_PRODUCTS_PER_PAGE', '10', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(16, 'PS_PURCHASE_MINIMUM', '0', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(17, 'PS_PRODUCTS_ORDER_WAY', '0', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(18, 'PS_PRODUCTS_ORDER_BY', '4', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(19, 'PS_DISPLAY_QTIES', '1', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(20, 'PS_SHIPPING_HANDLING', '2', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(21, 'PS_SHIPPING_FREE_PRICE', '300', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(22, 'PS_SHIPPING_FREE_WEIGHT', '20', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(23, 'PS_SHIPPING_METHOD', '1', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(24, 'PS_TAX', '0', '2011-02-27 18:37:04', '2011-03-05 09:35:47'),
(25, 'PS_SHOP_ENABLE', '1', '2011-02-27 18:37:04', '2011-03-06 14:30:10'),
(26, 'PS_NB_DAYS_NEW_PRODUCT', '20', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(27, 'PS_SSL_ENABLED', '0', '2011-02-27 18:37:04', '2011-03-06 14:30:10'),
(28, 'PS_WEIGHT_UNIT', 'kg', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(29, 'PS_BLOCK_CART_AJAX', '0', '2011-02-27 18:37:04', '2011-03-06 15:52:44'),
(30, 'PS_ORDER_RETURN', '0', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(31, 'PS_ORDER_RETURN_NB_DAYS', '7', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(32, 'PS_MAIL_TYPE', '3', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(33, 'PS_PRODUCT_PICTURE_MAX_SIZE', '131072', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(34, 'PS_PRODUCT_PICTURE_WIDTH', '64', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(35, 'PS_PRODUCT_PICTURE_HEIGHT', '64', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(36, 'PS_INVOICE_PREFIX', 'IN', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(37, 'PS_INVOICE_NUMBER', '2', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(38, 'PS_DELIVERY_PREFIX', 'DE', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(39, 'PS_DELIVERY_NUMBER', '1', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(40, 'PS_INVOICE', '1', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(41, 'PS_PASSWD_TIME_BACK', '360', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(42, 'PS_PASSWD_TIME_FRONT', '360', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(43, 'PS_DISP_UNAVAILABLE_ATTR', '1', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(44, 'PS_VOUCHERS', '0', '2011-02-27 18:37:04', '2011-03-05 09:35:56'),
(45, 'PS_SEARCH_MINWORDLEN', '3', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(46, 'PS_SEARCH_BLACKLIST', NULL, '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(47, 'PS_SEARCH_WEIGHT_PNAME', '6', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(48, 'PS_SEARCH_WEIGHT_REF', '10', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(49, 'PS_SEARCH_WEIGHT_SHORTDESC', '1', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(50, 'PS_SEARCH_WEIGHT_DESC', '1', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(51, 'PS_SEARCH_WEIGHT_CNAME', '3', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(52, 'PS_SEARCH_WEIGHT_MNAME', '3', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(53, 'PS_SEARCH_WEIGHT_TAG', '4', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(54, 'PS_SEARCH_WEIGHT_ATTRIBUTE', '2', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(55, 'PS_SEARCH_WEIGHT_FEATURE', '2', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(56, 'PS_SEARCH_AJAX', '0', '2011-02-27 18:37:04', '2011-03-26 17:22:34'),
(57, 'PS_TIMEZONE', '347', '2011-02-27 18:37:04', '2011-03-06 14:30:10'),
(58, 'PS_THEME_V11', '0', '2011-02-27 18:37:04', '2011-03-06 14:30:10'),
(59, 'PRESTASTORE_LIVE', '1', '2011-02-27 18:37:04', '2011-03-06 14:30:10'),
(60, 'PS_TIN_ACTIVE', '0', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(61, 'PS_SHOW_ALL_MODULES', '0', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(62, 'PS_BACKUP_ALL', '1', '2011-02-27 18:37:04', '2011-03-06 16:39:17'),
(63, 'PS_1_3_UPDATE_DATE', '2011-02-27 18:37:04', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(64, 'PS_PRICE_ROUND_MODE', '2', '2011-02-27 18:37:04', '2011-03-06 14:30:10'),
(65, 'PS_1_3_2_UPDATE_DATE', '2011-02-27 18:37:04', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(66, 'PS_PAYMENT_LOGO_CMS_ID', '5', '2011-02-27 18:37:04', '2011-02-27 18:37:04'),
(67, 'PS_LOCALE_LANGUAGE', 'sk', '2011-02-27 18:37:04', '2011-03-06 14:34:02'),
(68, 'PS_LOCALE_COUNTRY', 'SK', '2011-02-27 18:37:04', '2011-03-06 14:34:02'),
(69, 'PS_CARRIER_DEFAULT', '5', '2011-02-27 18:37:04', '2011-03-05 10:45:13'),
(70, 'PS_SHOP_NAME', 'ABC e-shop', '2011-02-27 18:38:26', '2011-03-06 14:32:31'),
(71, 'PS_SHOP_EMAIL', 'obchod@abceshop.sk', '2011-02-27 18:38:26', '2011-03-06 14:32:31'),
(72, 'PS_MAIL_METHOD', '1', '2011-02-27 18:38:26', '2011-02-27 18:38:26'),
(73, 'BLOCK_CATEG_MAX_DEPTH', '3', '2011-02-27 19:16:07', '2011-03-06 15:52:59'),
(74, 'BLOCK_CATEG_DHTML', '0', '2011-02-27 19:16:07', '2011-03-06 15:52:59'),
(75, 'PS_BASE_URI', '/abceshop.sk/www/', '2011-02-28 22:02:57', '2011-03-06 14:30:10'),
(76, 'PS_MAINTENANCE_IP', '', '2011-02-28 22:02:57', '2011-03-06 14:30:10'),
(77, 'PS_TOKEN_ENABLE', '1', '2011-02-28 22:02:57', '2011-03-06 14:30:10'),
(78, 'PS_GIFT_WRAPPING_TAX', '0', '2011-02-28 22:02:57', '2011-03-06 14:30:10'),
(79, 'PS_CART_FOLLOWING', '0', '2011-02-28 22:02:57', '2011-03-06 14:30:10'),
(80, 'PAYPAL_BUSINESS', 'paypal@prestashop.com', '2011-03-01 23:54:16', '2011-03-01 23:54:16'),
(81, 'PAYPAL_SANDBOX', '1', '2011-03-01 23:54:16', '2011-03-01 23:54:16'),
(82, 'PS_ECOTAX_TAX_ID', '0', '2011-03-05 09:35:47', '2011-03-05 09:35:47'),
(83, 'PS_SHOP_DETAILS', '', '2011-03-06 14:32:31', '2011-03-06 14:32:31'),
(84, 'PS_SHOP_ADDR1', '', '2011-03-06 14:32:31', '2011-03-06 14:32:31'),
(85, 'PS_SHOP_ADDR2', '', '2011-03-06 14:32:31', '2011-03-06 14:32:31'),
(86, 'PS_SHOP_CODE', '', '2011-03-06 14:32:31', '2011-03-06 14:32:31'),
(87, 'PS_SHOP_CITY', '', '2011-03-06 14:32:31', '2011-03-06 14:32:31'),
(88, 'PS_SHOP_STATE', '', '2011-03-06 14:32:31', '2011-03-06 14:32:31'),
(89, 'PS_SHOP_COUNTRY', '', '2011-03-06 14:32:31', '2011-03-06 14:32:31'),
(90, 'PS_SHOP_PHONE', '', '2011-03-06 14:32:31', '2011-03-06 14:32:31'),
(91, 'PS_SHOP_FAX', '', '2011-03-06 14:32:31', '2011-03-06 14:32:31'),
(92, 'PS_PDF_ENCODING_EN', 'cp1250', '2011-03-06 14:33:50', '2011-03-06 14:33:50'),
(93, 'PS_PDF_ENCODING_SK', 'cp1250', '2011-03-06 14:33:50', '2011-03-06 14:33:50'),
(94, 'PS_PDF_FONT_EN', 'helvetica', '2011-03-06 14:33:50', '2011-03-06 14:33:50'),
(95, 'PS_PDF_FONT_SK', 'courier', '2011-03-06 14:33:50', '2011-03-06 14:33:50'),
(96, 'PS_STATS_RENDER', 'graphgooglechart', '2011-03-06 15:49:37', '2011-03-06 15:49:37'),
(97, 'PS_STATS_GRID_RENDER', 'gridextjs', '2011-03-06 15:49:37', '2011-03-06 15:49:37'),
(98, 'HOME_FEATURED_NBR', '8', '2011-03-06 15:49:37', '2011-03-06 15:49:37');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_configuration_lang`
--

CREATE TABLE IF NOT EXISTS `ps_configuration_lang` (
  `id_configuration` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_configuration_lang`
--

INSERT INTO `ps_configuration_lang` (`id_configuration`, `id_lang`, `value`, `date_upd`) VALUES
(36, 1, 'IN', '2011-02-27 18:37:04'),
(38, 1, 'DE', '2011-02-27 18:37:04'),
(46, 1, 'a|the|of|on|in|and|to', '2011-02-27 18:37:04'),
(36, 4, 'FA', '2010-01-01 12:00:00'),
(38, 4, 'DL', '2010-01-01 12:00:00'),
(46, 4, 'a|s|na|pre|za|do|z', '2010-10-01 12:00:00');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_connections`
--

CREATE TABLE IF NOT EXISTS `ps_connections` (
  `id_connections` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_guest` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `ip_address` int(11) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_connections`),
  KEY `id_guest` (`id_guest`),
  KEY `date_add` (`date_add`),
  KEY `id_page` (`id_page`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Sťahujem dáta pre tabuľku `ps_connections`
--

INSERT INTO `ps_connections` (`id_connections`, `id_guest`, `id_page`, `ip_address`, `date_add`, `http_referer`) VALUES
(1, 1, 1, 2130706433, '2011-03-06 15:51:47', ''),
(2, 2, 1, 2130706433, '2011-03-20 12:20:04', ''),
(3, 2, 1, 2130706433, '2011-03-26 13:25:44', ''),
(4, 2, 1, 2130706433, '2011-03-26 14:12:03', '');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_connections_page`
--

CREATE TABLE IF NOT EXISTS `ps_connections_page` (
  `id_connections` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id_connections`,`id_page`,`time_start`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_connections_page`
--

INSERT INTO `ps_connections_page` (`id_connections`, `id_page`, `time_start`, `time_end`) VALUES
(1, 1, '2011-03-06 15:51:47', NULL),
(1, 1, '2011-03-06 15:54:54', NULL),
(1, 1, '2011-03-06 15:59:17', NULL),
(1, 2, '2011-03-06 15:59:46', NULL),
(1, 1, '2011-03-06 16:00:04', NULL),
(1, 1, '2011-03-06 16:03:53', NULL),
(1, 1, '2011-03-06 16:04:46', NULL),
(1, 1, '2011-03-06 16:08:50', NULL),
(1, 1, '2011-03-06 16:09:33', NULL),
(1, 1, '2011-03-06 16:13:06', NULL),
(1, 1, '2011-03-06 16:13:36', NULL),
(1, 1, '2011-03-06 16:14:50', NULL),
(1, 1, '2011-03-06 16:15:46', NULL),
(1, 1, '2011-03-06 16:16:34', NULL),
(1, 1, '2011-03-06 16:16:53', NULL),
(1, 1, '2011-03-06 16:17:24', NULL),
(1, 1, '2011-03-06 16:21:08', NULL),
(1, 1, '2011-03-06 16:22:21', NULL),
(1, 1, '2011-03-06 16:25:15', NULL),
(1, 1, '2011-03-06 16:25:45', NULL),
(1, 1, '2011-03-06 16:26:47', NULL),
(1, 1, '2011-03-06 16:27:10', NULL),
(1, 1, '2011-03-06 16:27:59', NULL),
(1, 1, '2011-03-06 16:28:21', NULL),
(1, 1, '2011-03-06 16:28:37', NULL),
(1, 1, '2011-03-06 16:29:04', NULL),
(1, 1, '2011-03-06 16:29:21', NULL),
(1, 1, '2011-03-06 16:29:49', NULL),
(1, 1, '2011-03-06 16:29:55', NULL),
(1, 1, '2011-03-06 16:30:03', NULL),
(1, 1, '2011-03-06 16:30:09', NULL),
(1, 1, '2011-03-06 16:30:16', NULL),
(1, 1, '2011-03-06 16:30:22', NULL),
(1, 1, '2011-03-06 16:30:29', NULL),
(1, 1, '2011-03-06 16:32:35', NULL),
(1, 1, '2011-03-06 16:32:50', NULL),
(2, 1, '2011-03-20 12:20:04', NULL),
(2, 1, '2011-03-20 12:25:10', NULL),
(2, 1, '2011-03-20 12:49:14', NULL),
(2, 1, '2011-03-20 12:50:04', NULL),
(2, 1, '2011-03-20 12:52:45', NULL),
(2, 1, '2011-03-20 12:55:30', NULL),
(2, 1, '2011-03-20 13:01:00', NULL),
(2, 1, '2011-03-20 13:01:22', NULL),
(2, 1, '2011-03-20 13:03:05', NULL),
(2, 1, '2011-03-20 13:10:12', NULL),
(2, 1, '2011-03-20 13:11:20', NULL),
(3, 1, '2011-03-26 13:25:44', NULL),
(4, 1, '2011-03-26 14:12:03', NULL),
(4, 1, '2011-03-26 14:14:16', NULL),
(4, 1, '2011-03-26 14:18:06', NULL),
(4, 3, '2011-03-26 14:18:17', NULL),
(4, 3, '2011-03-26 14:20:06', NULL),
(4, 1, '2011-03-26 14:23:36', NULL),
(4, 1, '2011-03-26 14:24:03', NULL),
(4, 1, '2011-03-26 14:25:03', NULL),
(4, 1, '2011-03-26 14:25:05', NULL),
(4, 1, '2011-03-26 14:27:44', NULL),
(4, 1, '2011-03-26 14:28:27', NULL),
(4, 1, '2011-03-26 14:31:03', NULL),
(4, 1, '2011-03-26 14:35:06', NULL),
(4, 1, '2011-03-26 14:35:59', NULL),
(4, 1, '2011-03-26 14:36:25', NULL),
(4, 1, '2011-03-26 14:38:28', NULL),
(4, 1, '2011-03-26 14:39:40', NULL),
(4, 1, '2011-03-26 14:39:48', NULL),
(4, 1, '2011-03-26 14:40:54', NULL),
(4, 1, '2011-03-26 14:44:49', NULL),
(4, 1, '2011-03-26 14:44:59', NULL),
(4, 1, '2011-03-26 14:45:49', NULL),
(4, 1, '2011-03-26 14:46:10', NULL),
(4, 1, '2011-03-26 14:47:04', NULL),
(4, 1, '2011-03-26 14:47:10', NULL),
(4, 1, '2011-03-26 14:47:16', NULL),
(4, 1, '2011-03-26 14:47:37', NULL),
(4, 1, '2011-03-26 14:48:44', NULL),
(4, 1, '2011-03-26 14:48:45', NULL),
(4, 1, '2011-03-26 14:49:39', NULL),
(4, 1, '2011-03-26 14:49:46', NULL),
(4, 1, '2011-03-26 14:50:16', NULL),
(4, 1, '2011-03-26 14:51:15', NULL),
(4, 1, '2011-03-26 14:51:24', NULL),
(4, 3, '2011-03-26 14:51:29', NULL),
(4, 1, '2011-03-26 14:52:10', NULL),
(4, 1, '2011-03-26 14:52:20', NULL),
(4, 1, '2011-03-26 14:52:22', NULL),
(4, 1, '2011-03-26 14:52:52', NULL),
(4, 1, '2011-03-26 14:53:09', NULL),
(4, 1, '2011-03-26 14:55:10', NULL),
(4, 1, '2011-03-26 15:02:05', NULL),
(4, 1, '2011-03-26 15:11:30', NULL),
(4, 1, '2011-03-26 15:16:37', NULL),
(4, 1, '2011-03-26 15:17:56', NULL),
(4, 1, '2011-03-26 15:17:57', NULL),
(4, 1, '2011-03-26 15:19:06', NULL),
(4, 1, '2011-03-26 15:19:15', NULL),
(4, 1, '2011-03-26 15:19:50', NULL),
(4, 1, '2011-03-26 15:22:08', NULL),
(4, 1, '2011-03-26 15:22:47', NULL),
(4, 1, '2011-03-26 15:23:27', NULL),
(4, 1, '2011-03-26 15:23:40', NULL),
(4, 1, '2011-03-26 15:24:10', NULL),
(4, 1, '2011-03-26 15:29:55', NULL),
(4, 3, '2011-03-26 15:30:11', NULL),
(4, 3, '2011-03-26 16:26:34', NULL),
(4, 3, '2011-03-26 16:28:04', NULL),
(4, 3, '2011-03-26 16:28:07', NULL),
(4, 3, '2011-03-26 16:32:26', NULL),
(4, 1, '2011-03-26 16:32:55', NULL),
(4, 3, '2011-03-26 16:34:06', NULL),
(4, 3, '2011-03-26 16:34:11', NULL),
(4, 3, '2011-03-26 16:36:03', NULL),
(4, 3, '2011-03-26 16:36:29', NULL),
(0, 1, '2011-03-26 16:36:52', NULL),
(4, 3, '2011-03-26 16:38:02', NULL),
(0, 1, '2011-03-26 16:38:10', NULL),
(0, 1, '2011-03-26 16:38:21', NULL),
(0, 3, '2011-03-26 16:40:17', NULL),
(0, 3, '2011-03-26 16:43:01', NULL),
(4, 3, '2011-03-26 16:43:10', NULL),
(4, 3, '2011-03-26 16:43:16', NULL),
(4, 3, '2011-03-26 16:43:25', NULL),
(4, 3, '2011-03-26 16:44:59', NULL),
(4, 3, '2011-03-26 16:45:04', NULL),
(4, 3, '2011-03-26 16:45:31', NULL),
(4, 3, '2011-03-26 16:45:37', NULL),
(4, 3, '2011-03-26 16:45:51', NULL),
(4, 3, '2011-03-26 16:45:55', NULL),
(0, 3, '2011-03-26 16:46:23', NULL),
(4, 3, '2011-03-26 17:22:34', NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_connections_source`
--

CREATE TABLE IF NOT EXISTS `ps_connections_source` (
  `id_connections_source` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_connections` int(10) unsigned NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_connections_source`),
  KEY `connections` (`id_connections`),
  KEY `orderby` (`date_add`),
  KEY `http_referer` (`http_referer`),
  KEY `request_uri` (`request_uri`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_connections_source`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_contact`
--

CREATE TABLE IF NOT EXISTS `ps_contact` (
  `id_contact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `position` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_contact`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Sťahujem dáta pre tabuľku `ps_contact`
--

INSERT INTO `ps_contact` (`id_contact`, `email`, `position`) VALUES
(1, 'andfurto@gmail.com', 0),
(2, 'andfurto@gmail.com', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_contact_lang`
--

CREATE TABLE IF NOT EXISTS `ps_contact_lang` (
  `id_contact` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text,
  UNIQUE KEY `contact_lang_index` (`id_contact`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_contact_lang`
--

INSERT INTO `ps_contact_lang` (`id_contact`, `id_lang`, `name`, `description`) VALUES
(1, 1, 'Webmaster', 'If a technical problem occurs on this website'),
(2, 1, 'Customer service', 'For any question about a product, an order'),
(1, 4, 'Technická podpora', 'Otázky ohľadne technických problémov na stránkach'),
(2, 4, 'Pomoc zákazníkom', 'Otázky ohľadne produktov a vašich objednávok');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_country`
--

CREATE TABLE IF NOT EXISTS `ps_country` (
  `id_country` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_zone` int(10) unsigned NOT NULL,
  `iso_code` varchar(3) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contains_states` tinyint(1) NOT NULL DEFAULT '0',
  `need_identification_number` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_country`),
  KEY `country_iso_code` (`iso_code`),
  KEY `country_` (`id_zone`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=245 ;

--
-- Sťahujem dáta pre tabuľku `ps_country`
--

INSERT INTO `ps_country` (`id_country`, `id_zone`, `iso_code`, `active`, `contains_states`, `need_identification_number`) VALUES
(1, 1, 'DE', 1, 0, 0),
(2, 1, 'AT', 1, 0, 0),
(3, 1, 'BE', 1, 0, 0),
(4, 2, 'CA', 1, 1, 0),
(5, 3, 'CN', 1, 1, 0),
(6, 1, 'ES', 1, 0, 1),
(7, 1, 'FI', 1, 0, 0),
(8, 1, 'FR', 1, 0, 0),
(9, 1, 'GR', 1, 0, 0),
(10, 1, 'IT', 1, 0, 0),
(11, 3, 'JP', 1, 0, 0),
(12, 1, 'LU', 1, 0, 0),
(13, 1, 'NL', 1, 0, 0),
(14, 1, 'PL', 1, 0, 0),
(15, 1, 'PT', 1, 0, 0),
(16, 1, 'CZ', 1, 0, 0),
(17, 1, 'GB', 1, 0, 0),
(18, 1, 'SE', 1, 0, 0),
(19, 1, 'CH', 1, 0, 0),
(20, 1, 'DK', 1, 0, 0),
(21, 2, 'US', 1, 1, 0),
(22, 3, 'HK', 1, 0, 0),
(23, 1, 'NO', 1, 0, 0),
(24, 5, 'AU', 1, 0, 0),
(25, 3, 'SG', 1, 0, 0),
(26, 1, 'IE', 1, 0, 0),
(27, 5, 'NZ', 1, 0, 0),
(28, 3, 'KR', 1, 0, 0),
(29, 3, 'IL', 1, 0, 0),
(30, 4, 'ZA', 1, 0, 0),
(31, 4, 'NG', 1, 0, 0),
(32, 4, 'CI', 1, 0, 0),
(33, 4, 'TG', 1, 0, 0),
(34, 2, 'BO', 1, 0, 0),
(35, 4, 'MU', 1, 0, 0),
(36, 1, 'RO', 1, 0, 0),
(37, 1, 'SK', 1, 0, 0),
(38, 4, 'DZ', 1, 0, 0),
(39, 2, 'AS', 1, 0, 0),
(40, 1, 'AD', 1, 0, 0),
(41, 4, 'AO', 1, 0, 0),
(42, 2, 'AI', 1, 0, 0),
(43, 2, 'AG', 1, 0, 0),
(44, 2, 'AR', 1, 0, 0),
(45, 3, 'AM', 1, 0, 0),
(46, 2, 'AW', 1, 0, 0),
(47, 3, 'AZ', 1, 0, 0),
(48, 2, 'BS', 1, 0, 0),
(49, 3, 'BH', 1, 0, 0),
(50, 3, 'BD', 1, 0, 0),
(51, 2, 'BB', 1, 0, 0),
(52, 1, 'BY', 1, 0, 0),
(53, 2, 'BZ', 1, 0, 0),
(54, 4, 'BJ', 1, 0, 0),
(55, 2, 'BM', 1, 0, 0),
(56, 3, 'BT', 1, 0, 0),
(57, 4, 'BW', 1, 0, 0),
(58, 2, 'BR', 1, 1, 0),
(59, 3, 'BN', 1, 0, 0),
(60, 4, 'BF', 1, 0, 0),
(61, 3, 'MM', 1, 0, 0),
(62, 4, 'BI', 1, 0, 0),
(63, 3, 'KH', 1, 0, 0),
(64, 4, 'CM', 1, 0, 0),
(65, 4, 'CV', 1, 0, 0),
(66, 4, 'CF', 1, 0, 0),
(67, 4, 'TD', 1, 0, 0),
(68, 2, 'CL', 1, 0, 0),
(69, 2, 'CO', 1, 0, 0),
(70, 4, 'KM', 1, 0, 0),
(71, 4, 'CD', 1, 0, 0),
(72, 4, 'CG', 1, 0, 0),
(73, 2, 'CR', 1, 0, 0),
(74, 1, 'HR', 1, 0, 0),
(75, 2, 'CU', 1, 0, 0),
(76, 1, 'CY', 1, 0, 0),
(77, 4, 'DJ', 1, 0, 0),
(78, 2, 'DM', 1, 0, 0),
(79, 2, 'DO', 1, 0, 0),
(80, 3, 'TL', 1, 0, 0),
(81, 2, 'EC', 1, 0, 0),
(82, 4, 'EG', 1, 0, 0),
(83, 2, 'SV', 1, 0, 0),
(84, 4, 'GQ', 1, 0, 0),
(85, 4, 'ER', 1, 0, 0),
(86, 1, 'EE', 1, 0, 0),
(87, 4, 'ET', 1, 0, 0),
(88, 2, 'FK', 1, 0, 0),
(89, 1, 'FO', 1, 0, 0),
(90, 5, 'FJ', 1, 0, 0),
(91, 4, 'GA', 1, 0, 0),
(92, 4, 'GM', 1, 0, 0),
(93, 3, 'GE', 1, 0, 0),
(94, 4, 'GH', 1, 0, 0),
(95, 2, 'GD', 1, 0, 0),
(96, 1, 'GL', 1, 0, 0),
(97, 1, 'GI', 1, 0, 0),
(98, 2, 'GP', 1, 0, 0),
(99, 2, 'GU', 1, 0, 0),
(100, 2, 'GT', 1, 0, 0),
(101, 1, 'GG', 1, 0, 0),
(102, 4, 'GN', 1, 0, 0),
(103, 4, 'GW', 1, 0, 0),
(104, 2, 'GY', 1, 0, 0),
(105, 2, 'HT', 1, 0, 0),
(106, 5, 'HM', 1, 0, 0),
(107, 1, 'VA', 1, 0, 0),
(108, 2, 'HN', 1, 0, 0),
(109, 1, 'IS', 1, 0, 0),
(110, 3, 'IN', 1, 0, 0),
(111, 3, 'ID', 1, 0, 0),
(112, 3, 'IR', 1, 0, 0),
(113, 3, 'IQ', 1, 0, 0),
(114, 1, 'IM', 1, 0, 0),
(115, 2, 'JM', 1, 0, 0),
(116, 1, 'JE', 1, 0, 0),
(117, 3, 'JO', 1, 0, 0),
(118, 3, 'KZ', 1, 0, 0),
(119, 4, 'KE', 1, 0, 0),
(120, 1, 'KI', 1, 0, 0),
(121, 3, 'KP', 1, 0, 0),
(122, 3, 'KW', 1, 0, 0),
(123, 3, 'KG', 1, 0, 0),
(124, 3, 'LA', 1, 0, 0),
(125, 1, 'LV', 1, 0, 0),
(126, 3, 'LB', 1, 0, 0),
(127, 4, 'LS', 1, 0, 0),
(128, 4, 'LR', 1, 0, 0),
(129, 4, 'LY', 1, 0, 0),
(130, 1, 'LI', 1, 0, 0),
(131, 1, 'LT', 1, 0, 0),
(132, 3, 'MO', 1, 0, 0),
(133, 1, 'MK', 1, 0, 0),
(134, 4, 'MG', 1, 0, 0),
(135, 4, 'MW', 1, 0, 0),
(136, 3, 'MY', 1, 0, 0),
(137, 3, 'MV', 1, 0, 0),
(138, 4, 'ML', 1, 0, 0),
(139, 1, 'MT', 1, 0, 0),
(140, 5, 'MH', 1, 0, 0),
(141, 2, 'MQ', 1, 0, 0),
(142, 4, 'MR', 1, 0, 0),
(143, 1, 'HU', 1, 0, 0),
(144, 4, 'YT', 1, 0, 0),
(145, 2, 'MX', 1, 1, 0),
(146, 5, 'FM', 1, 0, 0),
(147, 1, 'MD', 1, 0, 0),
(148, 1, 'MC', 1, 0, 0),
(149, 3, 'MN', 1, 0, 0),
(150, 1, 'ME', 1, 0, 0),
(151, 2, 'MS', 1, 0, 0),
(152, 4, 'MA', 1, 0, 0),
(153, 4, 'MZ', 1, 0, 0),
(154, 4, 'NA', 1, 0, 0),
(155, 5, 'NR', 1, 0, 0),
(156, 3, 'NP', 1, 0, 0),
(157, 2, 'AN', 1, 0, 0),
(158, 5, 'NC', 1, 0, 0),
(159, 2, 'NI', 1, 0, 0),
(160, 4, 'NE', 1, 0, 0),
(161, 5, 'NU', 1, 0, 0),
(162, 5, 'NF', 1, 0, 0),
(163, 5, 'MP', 1, 0, 0),
(164, 3, 'OM', 1, 0, 0),
(165, 3, 'PK', 1, 0, 0),
(166, 5, 'PW', 1, 0, 0),
(167, 3, 'PS', 1, 0, 0),
(168, 2, 'PA', 1, 0, 0),
(169, 5, 'PG', 1, 0, 0),
(170, 2, 'PY', 1, 0, 0),
(171, 2, 'PE', 1, 0, 0),
(172, 3, 'PH', 1, 0, 0),
(173, 5, 'PN', 1, 0, 0),
(174, 2, 'PR', 1, 0, 0),
(175, 3, 'QA', 1, 0, 0),
(176, 4, 'RE', 1, 0, 0),
(177, 1, 'RU', 1, 0, 0),
(178, 4, 'RW', 1, 0, 0),
(179, 2, 'BL', 1, 0, 0),
(180, 2, 'KN', 1, 0, 0),
(181, 2, 'LC', 1, 0, 0),
(182, 2, 'MF', 1, 0, 0),
(183, 2, 'PM', 1, 0, 0),
(184, 2, 'VC', 1, 0, 0),
(185, 5, 'WS', 1, 0, 0),
(186, 1, 'SM', 1, 0, 0),
(187, 4, 'ST', 1, 0, 0),
(188, 3, 'SA', 1, 0, 0),
(189, 4, 'SN', 1, 0, 0),
(190, 1, 'RS', 1, 0, 0),
(191, 4, 'SC', 1, 0, 0),
(192, 4, 'SL', 1, 0, 0),
(193, 1, 'SI', 1, 0, 0),
(194, 5, 'SB', 1, 0, 0),
(195, 4, 'SO', 1, 0, 0),
(196, 2, 'GS', 1, 0, 0),
(197, 3, 'LK', 1, 0, 0),
(198, 4, 'SD', 1, 0, 0),
(199, 2, 'SR', 1, 0, 0),
(200, 1, 'SJ', 1, 0, 0),
(201, 4, 'SZ', 1, 0, 0),
(202, 3, 'SY', 1, 0, 0),
(203, 3, 'TW', 1, 0, 0),
(204, 3, 'TJ', 1, 0, 0),
(205, 4, 'TZ', 1, 0, 0),
(206, 3, 'TH', 1, 0, 0),
(207, 5, 'TK', 1, 0, 0),
(208, 5, 'TO', 1, 0, 0),
(209, 2, 'TT', 1, 0, 0),
(210, 4, 'TN', 1, 0, 0),
(211, 1, 'TR', 1, 0, 0),
(212, 3, 'TM', 1, 0, 0),
(213, 2, 'TC', 1, 0, 0),
(214, 5, 'TV', 1, 0, 0),
(215, 4, 'UG', 1, 0, 0),
(216, 1, 'UA', 1, 0, 0),
(217, 3, 'AE', 1, 0, 0),
(218, 2, 'UY', 1, 0, 0),
(219, 3, 'UZ', 1, 0, 0),
(220, 5, 'VU', 1, 0, 0),
(221, 2, 'VE', 1, 0, 0),
(222, 3, 'VN', 1, 0, 0),
(223, 2, 'VG', 1, 0, 0),
(224, 2, 'VI', 1, 0, 0),
(225, 5, 'WF', 1, 0, 0),
(226, 4, 'EH', 1, 0, 0),
(227, 3, 'YE', 1, 0, 0),
(228, 4, 'ZM', 1, 0, 0),
(229, 4, 'ZW', 1, 0, 0),
(230, 1, 'AL', 1, 0, 0),
(231, 3, 'AF', 1, 0, 0),
(232, 5, 'AQ', 1, 0, 0),
(233, 1, 'BA', 1, 0, 0),
(234, 5, 'BV', 1, 0, 0),
(235, 5, 'IO', 1, 0, 0),
(236, 1, 'BG', 1, 0, 0),
(237, 2, 'KY', 1, 0, 0),
(238, 3, 'CX', 1, 0, 0),
(239, 3, 'CC', 1, 0, 0),
(240, 5, 'CK', 1, 0, 0),
(241, 2, 'GF', 1, 0, 0),
(242, 5, 'PF', 1, 0, 0),
(243, 5, 'TF', 1, 0, 0),
(244, 1, 'AX', 1, 0, 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_country_lang`
--

CREATE TABLE IF NOT EXISTS `ps_country_lang` (
  `id_country` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  UNIQUE KEY `country_lang_index` (`id_country`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_country_lang`
--

INSERT INTO `ps_country_lang` (`id_country`, `id_lang`, `name`) VALUES
(1, 1, 'Germany'),
(2, 1, 'Austria'),
(3, 1, 'Belgium'),
(4, 1, 'Canada'),
(5, 1, 'China'),
(6, 1, 'Spain'),
(7, 1, 'Finland'),
(8, 1, 'France'),
(9, 1, 'Greece'),
(10, 1, 'Italy'),
(11, 1, 'Japan'),
(12, 1, 'Luxemburg'),
(13, 1, 'Netherlands'),
(14, 1, 'Poland'),
(15, 1, 'Portugal'),
(16, 1, 'Czech Republic'),
(17, 1, 'United Kingdom'),
(18, 1, 'Sweden'),
(19, 1, 'Switzerland'),
(20, 1, 'Denmark'),
(21, 1, 'USA'),
(22, 1, 'HongKong'),
(23, 1, 'Norway'),
(24, 1, 'Australia'),
(25, 1, 'Singapore'),
(26, 1, 'Ireland'),
(27, 1, 'New Zealand'),
(28, 1, 'South Korea'),
(29, 1, 'Israel'),
(30, 1, 'South Africa'),
(31, 1, 'Nigeria'),
(32, 1, 'Ivory Coast'),
(33, 1, 'Togo'),
(34, 1, 'Bolivia'),
(35, 1, 'Mauritius'),
(143, 1, 'Hungary'),
(36, 1, 'Romania'),
(37, 1, 'Slovakia'),
(38, 1, 'Algeria'),
(39, 1, 'American Samoa'),
(40, 1, 'Andorra'),
(41, 1, 'Angola'),
(42, 1, 'Anguilla'),
(43, 1, 'Antigua and Barbuda'),
(44, 1, 'Argentina'),
(45, 1, 'Armenia'),
(46, 1, 'Aruba'),
(47, 1, 'Azerbaijan'),
(48, 1, 'Bahamas'),
(49, 1, 'Bahrain'),
(50, 1, 'Bangladesh'),
(51, 1, 'Barbados'),
(52, 1, 'Belarus'),
(53, 1, 'Belize'),
(54, 1, 'Benin'),
(55, 1, 'Bermuda'),
(56, 1, 'Bhutan'),
(57, 1, 'Botswana'),
(58, 1, 'Brazil'),
(59, 1, 'Brunei'),
(60, 1, 'Burkina Faso'),
(61, 1, 'Burma (Myanmar)'),
(62, 1, 'Burundi'),
(63, 1, 'Cambodia'),
(64, 1, 'Cameroon'),
(65, 1, 'Cape Verde'),
(66, 1, 'Central African Republic'),
(67, 1, 'Chad'),
(68, 1, 'Chile'),
(69, 1, 'Colombia'),
(70, 1, 'Comoros'),
(71, 1, 'Congo, Dem. Republic'),
(72, 1, 'Congo, Republic'),
(73, 1, 'Costa Rica'),
(74, 1, 'Croatia'),
(75, 1, 'Cuba'),
(76, 1, 'Cyprus'),
(77, 1, 'Djibouti'),
(78, 1, 'Dominica'),
(79, 1, 'Dominican Republic'),
(80, 1, 'East Timor'),
(81, 1, 'Ecuador'),
(82, 1, 'Egypt'),
(83, 1, 'El Salvador'),
(84, 1, 'Equatorial Guinea'),
(85, 1, 'Eritrea'),
(86, 1, 'Estonia'),
(87, 1, 'Ethiopia'),
(88, 1, 'Falkland Islands'),
(89, 1, 'Faroe Islands'),
(90, 1, 'Fiji'),
(91, 1, 'Gabon'),
(92, 1, 'Gambia'),
(93, 1, 'Georgia'),
(94, 1, 'Ghana'),
(95, 1, 'Grenada'),
(96, 1, 'Greenland'),
(97, 1, 'Gibraltar'),
(98, 1, 'Guadeloupe'),
(99, 1, 'Guam'),
(100, 1, 'Guatemala'),
(101, 1, 'Guernsey'),
(102, 1, 'Guinea'),
(103, 1, 'Guinea-Bissau'),
(104, 1, 'Guyana'),
(105, 1, 'Haiti'),
(106, 1, 'Heard Island and McDonald Islands'),
(107, 1, 'Vatican City State'),
(108, 1, 'Honduras'),
(109, 1, 'Iceland'),
(110, 1, 'India'),
(111, 1, 'Indonesia'),
(112, 1, 'Iran'),
(113, 1, 'Iraq'),
(114, 1, 'Isle of Man'),
(115, 1, 'Jamaica'),
(116, 1, 'Jersey'),
(117, 1, 'Jordan'),
(118, 1, 'Kazakhstan'),
(119, 1, 'Kenya'),
(120, 1, 'Kiribati'),
(121, 1, 'Korea, Dem. Republic of'),
(122, 1, 'Kuwait'),
(123, 1, 'Kyrgyzstan'),
(124, 1, 'Laos'),
(125, 1, 'Latvia'),
(126, 1, 'Lebanon'),
(127, 1, 'Lesotho'),
(128, 1, 'Liberia'),
(129, 1, 'Libya'),
(130, 1, 'Liechtenstein'),
(131, 1, 'Lithuania'),
(132, 1, 'Macau'),
(133, 1, 'Macedonia'),
(134, 1, 'Madagascar'),
(135, 1, 'Malawi'),
(136, 1, 'Malaysia'),
(137, 1, 'Maldives'),
(138, 1, 'Mali'),
(139, 1, 'Malta'),
(140, 1, 'Marshall Islands'),
(141, 1, 'Martinique'),
(142, 1, 'Mauritania'),
(144, 1, 'Mayotte'),
(145, 1, 'Mexico'),
(146, 1, 'Micronesia'),
(147, 1, 'Moldova'),
(148, 1, 'Monaco'),
(149, 1, 'Mongolia'),
(150, 1, 'Montenegro'),
(151, 1, 'Montserrat'),
(152, 1, 'Morocco'),
(153, 1, 'Mozambique'),
(154, 1, 'Namibia'),
(155, 1, 'Nauru'),
(156, 1, 'Nepal'),
(157, 1, 'Netherlands Antilles'),
(158, 1, 'New Caledonia'),
(159, 1, 'Nicaragua'),
(160, 1, 'Niger'),
(161, 1, 'Niue'),
(162, 1, 'Norfolk Island'),
(163, 1, 'Northern Mariana Islands'),
(164, 1, 'Oman'),
(165, 1, 'Pakistan'),
(166, 1, 'Palau'),
(167, 1, 'Palestinian Territories'),
(168, 1, 'Panama'),
(169, 1, 'Papua New Guinea'),
(170, 1, 'Paraguay'),
(171, 1, 'Peru'),
(172, 1, 'Philippines'),
(173, 1, 'Pitcairn'),
(174, 1, 'Puerto Rico'),
(175, 1, 'Qatar'),
(176, 1, 'Réunion'),
(177, 1, 'Russian Federation'),
(178, 1, 'Rwanda'),
(179, 1, 'Saint Barthélemy'),
(180, 1, 'Saint Kitts and Nevis'),
(181, 1, 'Saint Lucia'),
(182, 1, 'Saint Martin'),
(183, 1, 'Saint Pierre and Miquelon'),
(184, 1, 'Saint Vincent and the Grenadines'),
(185, 1, 'Samoa'),
(186, 1, 'San Marino'),
(187, 1, 'São Tomé and Príncipe'),
(188, 1, 'Saudi Arabia'),
(189, 1, 'Senegal'),
(190, 1, 'Serbia'),
(191, 1, 'Seychelles'),
(192, 1, 'Sierra Leone'),
(193, 1, 'Slovenia'),
(194, 1, 'Solomon Islands'),
(195, 1, 'Somalia'),
(196, 1, 'South Georgia and the South Sandwich Islands'),
(197, 1, 'Sri Lanka'),
(198, 1, 'Sudan'),
(199, 1, 'Suriname'),
(200, 1, 'Svalbard and Jan Mayen'),
(201, 1, 'Swaziland'),
(202, 1, 'Syria'),
(203, 1, 'Taiwan'),
(204, 1, 'Tajikistan'),
(205, 1, 'Tanzania'),
(206, 1, 'Thailand'),
(207, 1, 'Tokelau'),
(208, 1, 'Tonga'),
(209, 1, 'Trinidad and Tobago'),
(210, 1, 'Tunisia'),
(211, 1, 'Turkey'),
(212, 1, 'Turkmenistan'),
(213, 1, 'Turks and Caicos Islands'),
(214, 1, 'Tuvalu'),
(215, 1, 'Uganda'),
(216, 1, 'Ukraine'),
(217, 1, 'United Arab Emirates'),
(218, 1, 'Uruguay'),
(219, 1, 'Uzbekistan'),
(220, 1, 'Vanuatu'),
(221, 1, 'Venezuela'),
(222, 1, 'Vietnam'),
(223, 1, 'Virgin Islands (British)'),
(224, 1, 'Virgin Islands (U.S.)'),
(225, 1, 'Wallis and Futuna'),
(226, 1, 'Western Sahara'),
(227, 1, 'Yemen'),
(228, 1, 'Zambia'),
(229, 1, 'Zimbabwe'),
(230, 1, 'Albania'),
(231, 1, 'Afghanistan'),
(232, 1, 'Antarctica'),
(233, 1, 'Bosnia and Herzegovina'),
(234, 1, 'Bouvet Island'),
(235, 1, 'British Indian Ocean Territory'),
(236, 1, 'Bulgaria'),
(237, 1, 'Cayman Islands'),
(238, 1, 'Christmas Island'),
(239, 1, 'Cocos (Keeling) Islands'),
(240, 1, 'Cook Islands'),
(241, 1, 'French Guiana'),
(242, 1, 'French Polynesia'),
(243, 1, 'French Southern Territories'),
(244, 1, 'Åland Islands'),
(1, 4, 'Nemecko'),
(2, 4, 'Rakúsko'),
(3, 4, 'Belgicko'),
(4, 4, 'Kanada'),
(5, 4, 'Čína'),
(6, 4, 'Španielsko'),
(7, 4, 'Fínsko'),
(8, 4, 'Francúzsko'),
(9, 4, 'Grécko'),
(10, 4, 'Taliansko'),
(11, 4, 'Japonsko'),
(12, 4, 'Luxembursko'),
(13, 4, 'Holandsko'),
(14, 4, 'Poľsko'),
(15, 4, 'Portugalsko'),
(16, 4, 'Česká republika'),
(17, 4, 'Spojené štáty'),
(18, 4, 'Švédsko'),
(19, 4, 'Švajčiarsko'),
(20, 4, 'Dánsko'),
(21, 4, 'USA'),
(22, 4, 'Hong Kong'),
(23, 4, 'Nórsko'),
(24, 4, 'Austrália'),
(25, 4, 'Singapur'),
(26, 4, 'Írsko'),
(27, 4, 'Nový Zéland'),
(28, 4, 'Južná Kórea'),
(29, 4, 'Izrael'),
(30, 4, 'Južná Afrika'),
(31, 4, 'Nigéria'),
(32, 4, 'Pobrežie slonoviny'),
(33, 4, 'Togo'),
(34, 4, 'Bolívia'),
(35, 4, 'Maurícius'),
(36, 4, 'Rumunsko'),
(37, 4, 'Slovensko'),
(38, 4, 'Algeria'),
(39, 4, 'Americká Samoa'),
(40, 4, 'Andorra'),
(41, 4, 'Angola'),
(42, 4, 'Anguilla'),
(43, 4, 'Antigua a Barbuda'),
(44, 4, 'Argentína'),
(45, 4, 'Arménia'),
(46, 4, 'Aruba'),
(47, 4, 'Azerbajdžan'),
(48, 4, 'Bahamy'),
(49, 4, 'Bahrajn'),
(50, 4, 'Bangladéš'),
(51, 4, 'Barbados'),
(52, 4, 'Bielorusko'),
(53, 4, 'Belize'),
(54, 4, 'Benin'),
(55, 4, 'Bermudy'),
(56, 4, 'Bhután'),
(57, 4, 'Botswana'),
(58, 4, 'Brazília'),
(59, 4, 'Brunej'),
(60, 4, 'Burkina Faso'),
(61, 4, 'Burma (Myanmar)'),
(62, 4, 'Burundi'),
(63, 4, 'Kambodža'),
(64, 4, 'Kamerun'),
(65, 4, 'Cape Verde'),
(66, 4, 'Centrálna Africká Republika'),
(67, 4, 'Chad'),
(68, 4, 'Chile'),
(69, 4, 'Kolumbia'),
(70, 4, 'Comoros'),
(71, 4, 'Kongo, Dem. Republika'),
(72, 4, 'Kongo, Republika'),
(73, 4, 'Costa Rica'),
(74, 4, 'Chorvátsko'),
(75, 4, 'Kuba'),
(76, 4, 'Cyprus'),
(77, 4, 'Djibouti'),
(78, 4, 'Dominica'),
(79, 4, 'Dominikánska Republika'),
(80, 4, 'Východný Timor'),
(81, 4, 'Ekvádor'),
(82, 4, 'Egypt'),
(83, 4, 'El Salvador'),
(84, 4, 'Equatoriálna Guinea'),
(85, 4, 'Eritrea'),
(86, 4, 'Estónsko'),
(87, 4, 'Etiópia'),
(88, 4, 'Faklandské ostrovy'),
(89, 4, 'Faroe ostrovy'),
(90, 4, 'Fidži'),
(91, 4, 'Gabon'),
(92, 4, 'Gambia'),
(93, 4, 'Georgia'),
(94, 4, 'Ghana'),
(95, 4, 'Grenada'),
(96, 4, 'Greenland'),
(97, 4, 'Gibraltár'),
(98, 4, 'Guadeloupe'),
(99, 4, 'Guam'),
(100, 4, 'Guatemala'),
(101, 4, 'Guernsey'),
(102, 4, 'Guinea'),
(103, 4, 'Guinea-Bissau'),
(104, 4, 'Guyana'),
(105, 4, 'Haiti'),
(106, 4, 'Heardov ostrov a ostrovy McDonald'),
(107, 4, 'Vatikán - mestský štát'),
(108, 4, 'Honduras'),
(109, 4, 'Island'),
(110, 4, 'India'),
(111, 4, 'Indonézia'),
(112, 4, 'Irán'),
(113, 4, 'Irak'),
(114, 4, 'Isle of Man'),
(115, 4, 'Jamajka'),
(116, 4, 'Jersey'),
(117, 4, 'Jordánsko'),
(118, 4, 'Kazachstan'),
(119, 4, 'Keňa'),
(120, 4, 'Kiribati'),
(121, 4, 'Kórea, Dem. Republika'),
(122, 4, 'Kuwait'),
(123, 4, 'Kyrgizstan'),
(124, 4, 'Laos'),
(125, 4, 'Lotyšsko'),
(126, 4, 'Libanon'),
(127, 4, 'Lesotho'),
(128, 4, 'Libéria'),
(129, 4, 'Líbya'),
(130, 4, 'Lichtenštajnsko'),
(131, 4, 'Litva'),
(132, 4, 'Macau'),
(133, 4, 'Macedónia'),
(134, 4, 'Madagaskar'),
(135, 4, 'Malawi'),
(136, 4, 'Malajzia'),
(137, 4, 'Maldivy'),
(138, 4, 'Mali'),
(139, 4, 'Malta'),
(140, 4, 'Marshallove ostrovy'),
(141, 4, 'Martinique'),
(142, 4, 'Mauritánia'),
(143, 4, 'Maďarsko'),
(144, 4, 'Mayotte'),
(145, 4, 'Mexiko'),
(146, 4, 'Mikronézia'),
(147, 4, 'Moldavsko'),
(148, 4, 'Monaco'),
(149, 4, 'Mongolsko'),
(150, 4, 'Montenegro'),
(151, 4, 'Montserrat'),
(152, 4, 'Morocco'),
(153, 4, 'Mozambik'),
(154, 4, 'Namíbia'),
(155, 4, 'Nauru'),
(156, 4, 'Nepál'),
(157, 4, 'Netherlands Antilles'),
(158, 4, 'Nová Kaledónia'),
(159, 4, 'Nikaragua'),
(160, 4, 'Niger'),
(161, 4, 'Niue'),
(162, 4, 'Norfolkské ostrovy'),
(163, 4, 'Severná Mariana, ostrovy'),
(164, 4, 'Oman'),
(165, 4, 'Pakistan'),
(166, 4, 'Palau'),
(167, 4, 'Palestíske teritóriá'),
(168, 4, 'Panama'),
(169, 4, 'Papua Nová Guinea'),
(170, 4, 'Paraguaj'),
(171, 4, 'Peru'),
(172, 4, 'Filipíny'),
(173, 4, 'Pitcairn'),
(174, 4, 'Portoriko'),
(175, 4, 'Katar'),
(176, 4, 'Réunion'),
(177, 4, 'Ruská federácia'),
(178, 4, 'Rwanda'),
(179, 4, 'Sväté Barthélemy'),
(180, 4, 'Svätý Kitts a Nevis'),
(181, 4, 'Svätá Lucia'),
(182, 4, 'Svätý Martin'),
(183, 4, 'Svätý Pierre a Miquelon'),
(184, 4, 'Svätý Vincent a Grenadína'),
(185, 4, 'Samoa'),
(186, 4, 'San Marino'),
(187, 4, 'Sao Tome a Principe'),
(188, 4, 'Saudská Arábia'),
(189, 4, 'Senegal'),
(190, 4, 'Srbsko'),
(191, 4, 'Seychelské ostrovy'),
(192, 4, 'Sierra Leone'),
(193, 4, 'Slovinsko'),
(194, 4, 'Šalamúnske ostrovy'),
(195, 4, 'Somálsko'),
(196, 4, 'Južná Georgia a Južné Sandwich ostrovy'),
(197, 4, 'Sri Lanka'),
(198, 4, 'Sudán'),
(199, 4, 'Suriname'),
(200, 4, 'Svalbard a Jan Mayen'),
(201, 4, 'Švajčiarsko'),
(202, 4, 'Sýria'),
(203, 4, 'Taiwan'),
(204, 4, 'Tadžikistan'),
(205, 4, 'Tanzánia'),
(206, 4, 'Thajsko'),
(207, 4, 'Tokelau'),
(208, 4, 'Tonga'),
(209, 4, 'Trinidad a Tobago'),
(210, 4, 'Tunis'),
(211, 4, 'Turecko'),
(212, 4, 'Turkmenistán'),
(213, 4, 'Turks a Caicos ostrovy'),
(214, 4, 'Tuvalu'),
(215, 4, 'Uganda'),
(216, 4, 'Ukrajina'),
(217, 4, 'Spojené Arabské Emiráty'),
(218, 4, 'Uruguaj'),
(219, 4, 'Uzbekistan'),
(220, 4, 'Vanuatu'),
(221, 4, 'Venezuela'),
(222, 4, 'Vietnam'),
(223, 4, 'Panenské Ostrovy (Britské)'),
(224, 4, 'Panenské Ostrovy (U.S.)'),
(225, 4, 'Wallis a Futuna'),
(226, 4, 'Západná Sahara'),
(227, 4, 'Jemen'),
(228, 4, 'Zambia'),
(229, 4, 'Zimbabwe'),
(230, 4, 'Albánsko'),
(231, 4, 'Afganistan'),
(232, 4, 'Antarktída'),
(233, 4, 'Bosna a Hercegovina'),
(234, 4, 'Bouvetove ostrovy'),
(235, 4, 'British Indian Ocean Territory'),
(236, 4, 'Bulharsko'),
(237, 4, 'Kajmanské ostrovy'),
(238, 4, 'Vianočné ostrovy'),
(239, 4, 'Cocos (Keeling) ostrovy'),
(240, 4, 'Cookove ostrovy'),
(241, 4, 'Francúzka Guiana'),
(242, 4, 'Francúzska Polynézia'),
(243, 4, 'Francúzske Južné Teritóriá'),
(244, 4, 'Alandove ostrovy');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_currency`
--

CREATE TABLE IF NOT EXISTS `ps_currency` (
  `id_currency` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `iso_code` varchar(3) NOT NULL DEFAULT '0',
  `sign` varchar(8) NOT NULL,
  `blank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `format` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_currency`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Sťahujem dáta pre tabuľku `ps_currency`
--

INSERT INTO `ps_currency` (`id_currency`, `name`, `iso_code`, `sign`, `blank`, `format`, `decimals`, `conversion_rate`, `deleted`) VALUES
(1, 'Euro', 'EUR', '€', 1, 2, 1, '1.000000', 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_customer`
--

CREATE TABLE IF NOT EXISTS `ps_customer` (
  `id_customer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_gender` int(10) unsigned NOT NULL,
  `id_default_group` int(10) unsigned NOT NULL DEFAULT '1',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `newsletter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer`),
  UNIQUE KEY `customer_email` (`email`),
  KEY `customer_login` (`email`,`passwd`),
  KEY `id_customer_passwd` (`id_customer`,`passwd`),
  KEY `id_gender` (`id_gender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_customer`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_customer_group`
--

CREATE TABLE IF NOT EXISTS `ps_customer_group` (
  `id_customer` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_customer`,`id_group`),
  KEY `customer_login` (`id_group`),
  KEY `id_customer` (`id_customer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_customer_group`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_customization`
--

CREATE TABLE IF NOT EXISTS `ps_customization` (
  `id_customization` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `quantity_refunded` int(11) NOT NULL DEFAULT '0',
  `quantity_returned` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customization`,`id_cart`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_customization`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_customization_field`
--

CREATE TABLE IF NOT EXISTS `ps_customization_field` (
  `id_customization_field` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_customization_field`),
  KEY `id_product` (`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_customization_field`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_customization_field_lang`
--

CREATE TABLE IF NOT EXISTS `ps_customization_field_lang` (
  `id_customization_field` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization_field`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_customization_field_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_customized_data`
--

CREATE TABLE IF NOT EXISTS `ps_customized_data` (
  `id_customization` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int(3) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization`,`type`,`index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_customized_data`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_date_range`
--

CREATE TABLE IF NOT EXISTS `ps_date_range` (
  `id_date_range` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  PRIMARY KEY (`id_date_range`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_date_range`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_delivery`
--

CREATE TABLE IF NOT EXISTS `ps_delivery` (
  `id_delivery` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_range_price` int(10) unsigned DEFAULT NULL,
  `id_range_weight` int(10) unsigned DEFAULT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY (`id_delivery`),
  KEY `id_zone` (`id_zone`),
  KEY `id_carrier` (`id_carrier`,`id_zone`),
  KEY `id_range_price` (`id_range_price`),
  KEY `id_range_weight` (`id_range_weight`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_delivery`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_discount`
--

CREATE TABLE IF NOT EXISTS `ps_discount` (
  `id_discount` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_discount_type` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity_per_user` int(10) unsigned NOT NULL DEFAULT '1',
  `cumulable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cumulable_reduction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `minimal` decimal(17,2) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_discount`),
  KEY `discount_name` (`name`),
  KEY `discount_customer` (`id_customer`),
  KEY `id_discount_type` (`id_discount_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_discount`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_discount_category`
--

CREATE TABLE IF NOT EXISTS `ps_discount_category` (
  `id_category` int(11) unsigned NOT NULL,
  `id_discount` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_category`,`id_discount`),
  KEY `discount` (`id_discount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_discount_category`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_discount_lang`
--

CREATE TABLE IF NOT EXISTS `ps_discount_lang` (
  `id_discount` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  PRIMARY KEY (`id_discount`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_discount_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_discount_quantity`
--

CREATE TABLE IF NOT EXISTS `ps_discount_quantity` (
  `id_discount_quantity` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_discount_type` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL,
  `value` decimal(17,2) unsigned NOT NULL,
  PRIMARY KEY (`id_discount_quantity`),
  KEY `id_discount_type` (`id_discount_type`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_discount_quantity`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_discount_type`
--

CREATE TABLE IF NOT EXISTS `ps_discount_type` (
  `id_discount_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_discount_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Sťahujem dáta pre tabuľku `ps_discount_type`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_discount_type_lang`
--

CREATE TABLE IF NOT EXISTS `ps_discount_type_lang` (
  `id_discount_type` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_discount_type`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_discount_type_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_employee`
--

CREATE TABLE IF NOT EXISTS `ps_employee` (
  `id_employee` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_profile` int(10) unsigned NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats_date_from` date DEFAULT NULL,
  `stats_date_to` date DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_employee`),
  KEY `employee_login` (`email`,`passwd`),
  KEY `id_employee_passwd` (`id_employee`,`passwd`),
  KEY `id_profile` (`id_profile`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Sťahujem dáta pre tabuľku `ps_employee`
--

INSERT INTO `ps_employee` (`id_employee`, `id_profile`, `lastname`, `firstname`, `email`, `passwd`, `last_passwd_gen`, `stats_date_from`, `stats_date_to`, `active`) VALUES
(1, 1, 'FURTAK', 'Andrej', 'andfurto@gmail.com', 'a74a88e844dd268127afc70767d47e66', '2011-02-27 12:38:26', '2011-01-01', '2011-12-31', 1),
(2, 1, 'Peťko', 'Stano', 'stano@stanopetko.eu', '65e79f587bb0d5d92525b3172b697604', '2011-03-06 08:36:20', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_feature`
--

CREATE TABLE IF NOT EXISTS `ps_feature` (
  `id_feature` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_feature`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_feature`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_feature_lang`
--

CREATE TABLE IF NOT EXISTS `ps_feature_lang` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_feature_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_feature_product`
--

CREATE TABLE IF NOT EXISTS `ps_feature_product` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_feature_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_product`),
  KEY `id_feature_value` (`id_feature_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_feature_product`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_feature_value`
--

CREATE TABLE IF NOT EXISTS `ps_feature_value` (
  `id_feature_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_feature` int(10) unsigned NOT NULL,
  `custom` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`),
  KEY `feature` (`id_feature`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_feature_value`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_feature_value_lang`
--

CREATE TABLE IF NOT EXISTS `ps_feature_value_lang` (
  `id_feature_value` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_feature_value_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_group`
--

CREATE TABLE IF NOT EXISTS `ps_group` (
  `id_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reduction` decimal(17,2) NOT NULL DEFAULT '0.00',
  `price_display_method` tinyint(4) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Sťahujem dáta pre tabuľku `ps_group`
--

INSERT INTO `ps_group` (`id_group`, `reduction`, `price_display_method`, `date_add`, `date_upd`) VALUES
(1, '0.00', 0, '2011-02-27 18:37:04', '2011-02-27 18:37:04');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_group_lang`
--

CREATE TABLE IF NOT EXISTS `ps_group_lang` (
  `id_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  UNIQUE KEY `attribute_lang_index` (`id_group`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_group_lang`
--

INSERT INTO `ps_group_lang` (`id_group`, `id_lang`, `name`) VALUES
(1, 1, 'Default'),
(1, 4, 'Zákazníci');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_guest`
--

CREATE TABLE IF NOT EXISTS `ps_guest` (
  `id_guest` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_operating_system` int(10) unsigned DEFAULT NULL,
  `id_web_browser` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `javascript` tinyint(1) DEFAULT '0',
  `screen_resolution_x` smallint(5) unsigned DEFAULT NULL,
  `screen_resolution_y` smallint(5) unsigned DEFAULT NULL,
  `screen_color` tinyint(3) unsigned DEFAULT NULL,
  `sun_java` tinyint(1) DEFAULT NULL,
  `adobe_flash` tinyint(1) DEFAULT NULL,
  `adobe_director` tinyint(1) DEFAULT NULL,
  `apple_quicktime` tinyint(1) DEFAULT NULL,
  `real_player` tinyint(1) DEFAULT NULL,
  `windows_media` tinyint(1) DEFAULT NULL,
  `accept_language` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id_guest`),
  KEY `id_customer` (`id_customer`),
  KEY `id_operating_system` (`id_operating_system`),
  KEY `id_web_browser` (`id_web_browser`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Sťahujem dáta pre tabuľku `ps_guest`
--

INSERT INTO `ps_guest` (`id_guest`, `id_operating_system`, `id_web_browser`, `id_customer`, `javascript`, `screen_resolution_x`, `screen_resolution_y`, `screen_color`, `sun_java`, `adobe_flash`, `adobe_director`, `apple_quicktime`, `real_player`, `windows_media`, `accept_language`) VALUES
(1, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'sk'),
(2, 2, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'en');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_hook`
--

CREATE TABLE IF NOT EXISTS `ps_hook` (
  `id_hook` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_hook`),
  UNIQUE KEY `hook_name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Sťahujem dáta pre tabuľku `ps_hook`
--

INSERT INTO `ps_hook` (`id_hook`, `name`, `title`, `description`, `position`) VALUES
(1, 'payment', 'Payment', NULL, 1),
(2, 'newOrder', 'New orders', NULL, 0),
(3, 'paymentConfirm', 'Payment confirmation', NULL, 0),
(4, 'paymentReturn', 'Payment return', NULL, 0),
(5, 'updateQuantity', 'Quantity update', 'Quantity is updated only when the customer effectively <b>place</b> his order.', 0),
(6, 'rightColumn', 'Right column blocks', NULL, 1),
(7, 'leftColumn', 'Left column blocks', NULL, 1),
(8, 'home', 'Homepage content', NULL, 1),
(9, 'header', 'Header of pages', 'A hook which allow you to do things in the header of each pages', 1),
(10, 'cart', 'Cart creation and update', NULL, 0),
(11, 'authentication', 'Successful customer authentication', NULL, 0),
(12, 'addproduct', 'Product creation', NULL, 0),
(13, 'updateproduct', 'Product Update', NULL, 0),
(14, 'top', 'Top of pages', 'A hook which allow you to do things a the top of each pages.', 1),
(15, 'extraRight', 'Extra actions on the product page (right column).', NULL, 0),
(16, 'deleteproduct', 'Product deletion', 'This hook is called when a product is deleted', 0),
(17, 'productfooter', 'Product footer', 'Add new blocks under the product description', 1),
(18, 'invoice', 'Invoice', 'Add blocks to invoice (order)', 1),
(19, 'updateOrderStatus', 'Order''s status update event', 'Launch modules when the order''s status of an order change.', 0),
(20, 'adminOrder', 'Display in Back-Office, tab AdminOrder', 'Launch modules when the tab AdminOrder is displayed on back-office.', 0),
(21, 'footer', 'Footer', 'Add block in footer', 1),
(22, 'PDFInvoice', 'PDF Invoice', 'Allow the display of extra informations into the PDF invoice', 0),
(23, 'adminCustomers', 'Display in Back-Office, tab AdminCustomers', 'Launch modules when the tab AdminCustomers is displayed on back-office.', 0),
(24, 'orderConfirmation', 'Order confirmation page', 'Called on order confirmation page', 0),
(25, 'createAccount', 'Successful customer create account', 'Called when new customer create account successfuled', 0),
(26, 'customerAccount', 'Customer account page display in front office', 'Display on page account of the customer', 1),
(27, 'orderSlip', 'Called when a order slip is created', 'Called when a quantity of one product change in an order.', 0),
(28, 'productTab', 'Tabs on product page', 'Called on order product page tabs', 0),
(29, 'productTabContent', 'Content of tabs on product page', 'Called on order product page tabs', 0),
(30, 'shoppingCart', 'Shopping cart footer', 'Display some specific informations on the shopping cart page', 0),
(31, 'createAccountForm', 'Customer account creation form', 'Display some information on the form to create a customer account', 1),
(32, 'AdminStatsModules', 'Stats - Modules', NULL, 1),
(33, 'GraphEngine', 'Graph Engines', NULL, 0),
(34, 'orderReturn', 'Product returned', NULL, 0),
(35, 'productActions', 'Product actions', 'Put new action buttons on product page', 1),
(36, 'backOfficeHome', 'Administration panel homepage', NULL, 1),
(37, 'GridEngine', 'Grid Engines', NULL, 0),
(38, 'watermark', 'Watermark', NULL, 0),
(39, 'cancelProduct', 'Product cancelled', 'This hook is called when you cancel a product in an order', 0),
(40, 'extraLeft', 'Extra actions on the product page (left column).', NULL, 0),
(41, 'productOutOfStock', 'Product out of stock', 'Make action while product is out of stock', 1),
(42, 'updateProductAttribute', 'Product attribute update', NULL, 0),
(43, 'extraCarrier', 'Extra carrier (module mode)', NULL, 0),
(44, 'shoppingCartExtra', 'Shopping cart extra button', 'Display some specific informations', 1),
(45, 'search', 'Search', NULL, 0),
(46, 'backBeforePayment', 'Redirect in order process', 'Redirect user to the module instead of displaying payment modules', 0),
(47, 'updateCarrier', 'Carrier Update', 'This hook is called when a carrier is updated', 0),
(48, 'postUpdateOrderStatus', 'Post update of order status', NULL, 0),
(49, 'createAccountTop', 'Block above the form for create an account', NULL, 1),
(50, 'backOfficeHeader', 'Administration panel header', NULL, 0),
(51, 'backOfficeTop', 'Administration panel hover the tabs', NULL, 1),
(52, 'backOfficeFooter', 'Administration panel footer', NULL, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_hook_module`
--

CREATE TABLE IF NOT EXISTS `ps_hook_module` (
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_hook`),
  KEY `id_hook` (`id_hook`),
  KEY `id_module` (`id_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_hook_module`
--

INSERT INTO `ps_hook_module` (`id_module`, `id_hook`, `position`) VALUES
(6, 8, 1),
(7, 33, 1),
(8, 37, 1),
(9, 1, 1),
(9, 4, 1),
(10, 8, 2),
(11, 6, 1),
(12, 7, 1),
(18, 6, 2),
(15, 21, 1),
(16, 32, 1),
(17, 21, 2),
(17, 11, 1),
(17, 25, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_hook_module_exceptions`
--

CREATE TABLE IF NOT EXISTS `ps_hook_module_exceptions` (
  `id_hook_module_exceptions` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_hook_module_exceptions`),
  KEY `id_module` (`id_module`),
  KEY `id_hook` (`id_hook`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_hook_module_exceptions`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_image`
--

CREATE TABLE IF NOT EXISTS `ps_image` (
  `id_image` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `cover` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_image`),
  UNIQUE KEY `product_position` (`id_product`,`position`),
  KEY `image_product` (`id_product`),
  KEY `id_product_cover` (`id_product`,`cover`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_image`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_image_lang`
--

CREATE TABLE IF NOT EXISTS `ps_image_lang` (
  `id_image` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `legend` varchar(128) DEFAULT NULL,
  UNIQUE KEY `image_lang_index` (`id_image`,`id_lang`),
  KEY `id_image` (`id_image`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_image_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_image_type`
--

CREATE TABLE IF NOT EXISTS `ps_image_type` (
  `id_image_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `products` tinyint(1) NOT NULL DEFAULT '1',
  `categories` tinyint(1) NOT NULL DEFAULT '1',
  `manufacturers` tinyint(1) NOT NULL DEFAULT '1',
  `suppliers` tinyint(1) NOT NULL DEFAULT '1',
  `scenes` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_image_type`),
  KEY `image_type_name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Sťahujem dáta pre tabuľku `ps_image_type`
--

INSERT INTO `ps_image_type` (`id_image_type`, `name`, `width`, `height`, `products`, `categories`, `manufacturers`, `suppliers`, `scenes`) VALUES
(1, 'small', 45, 45, 1, 1, 1, 1, 0),
(2, 'medium', 80, 80, 1, 1, 1, 1, 0),
(3, 'large', 300, 300, 1, 1, 1, 1, 0),
(4, 'thickbox', 600, 600, 1, 0, 0, 0, 0),
(5, 'category', 500, 150, 0, 1, 0, 0, 0),
(6, 'home', 129, 129, 1, 0, 0, 0, 0),
(7, 'large_scene', 556, 200, 0, 0, 0, 0, 1),
(8, 'thumb_scene', 161, 58, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_lang`
--

CREATE TABLE IF NOT EXISTS `ps_lang` (
  `id_lang` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `iso_code` char(2) NOT NULL,
  PRIMARY KEY (`id_lang`),
  KEY `lang_iso_code` (`iso_code`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Sťahujem dáta pre tabuľku `ps_lang`
--

INSERT INTO `ps_lang` (`id_lang`, `name`, `active`, `iso_code`) VALUES
(1, 'English (Anglický)', 1, 'en'),
(4, 'Slovenský (Slovenský)', 1, 'sk');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_loyalty_state_lang`
--

CREATE TABLE IF NOT EXISTS `ps_loyalty_state_lang` (
  `id_loyalty_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  UNIQUE KEY `index_unique_loyalty_state_lang` (`id_loyalty_state`,`id_lang`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Sťahujem dáta pre tabuľku `ps_loyalty_state_lang`
--

INSERT INTO `ps_loyalty_state_lang` (`id_loyalty_state`, `id_lang`, `name`) VALUES
(1, 4, 'Potvrdený'),
(2, 4, 'Dostupný'),
(3, 4, 'Zrušený'),
(4, 4, 'Konvertovaný'),
(5, 4, 'Nedostupný pre nákup');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_manufacturer`
--

CREATE TABLE IF NOT EXISTS `ps_manufacturer` (
  `id_manufacturer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_manufacturer`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Sťahujem dáta pre tabuľku `ps_manufacturer`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_manufacturer_lang`
--

CREATE TABLE IF NOT EXISTS `ps_manufacturer_lang` (
  `id_manufacturer` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `short_description` varchar(254) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_manufacturer_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_message`
--

CREATE TABLE IF NOT EXISTS `ps_message` (
  `id_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cart` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `private` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `message_order` (`id_order`),
  KEY `id_cart` (`id_cart`),
  KEY `id_customer` (`id_customer`),
  KEY `id_employee` (`id_employee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_message`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_message_readed`
--

CREATE TABLE IF NOT EXISTS `ps_message_readed` (
  `id_message` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`,`id_employee`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_message_readed`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_meta`
--

CREATE TABLE IF NOT EXISTS `ps_meta` (
  `id_meta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(64) NOT NULL,
  PRIMARY KEY (`id_meta`),
  KEY `meta_name` (`page`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Sťahujem dáta pre tabuľku `ps_meta`
--

INSERT INTO `ps_meta` (`id_meta`, `page`) VALUES
(1, '404'),
(2, 'best-sales'),
(3, 'contact-form'),
(4, 'index'),
(5, 'manufacturer'),
(6, 'new-products'),
(7, 'password'),
(8, 'prices-drop'),
(9, 'sitemap'),
(10, 'supplier');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_meta_lang`
--

CREATE TABLE IF NOT EXISTS `ps_meta_lang` (
  `id_meta` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_meta`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_meta_lang`
--

INSERT INTO `ps_meta_lang` (`id_meta`, `id_lang`, `title`, `description`, `keywords`) VALUES
(1, 1, '404 error', 'This page cannot be found', 'error, 404, not found'),
(2, 1, 'Best sales', 'Our best sales', 'best sales'),
(3, 1, 'Contact us', 'Use our form to contact us', 'contact, form, e-mail'),
(4, 1, NULL, 'Shop powered by PrestaShop', 'shop, prestashop'),
(5, 1, 'Manufacturers', 'Manufacturers list', 'manufacturer'),
(6, 1, 'New products', 'Our new products', 'new, products'),
(7, 1, 'Forgot your password', 'Enter your e-mail address used to register in goal to get e-mail with your new password', 'forgot, password, e-mail, new, reset'),
(8, 1, 'Specials', 'Our special products', 'special, prices drop'),
(9, 1, 'Sitemap', 'Lost ? Find what your are looking for', 'sitemap'),
(10, 1, 'Suppliers', 'Suppliers list', 'supplier'),
(1, 4, 'Stránka nenájdená', 'Chyba 404. Požadovanú stránku sa nepodarilo nájsť.', 'chyba, 404'),
(2, 4, 'Najpredávanejšie', 'Najpredávanejší sortiment nášho obchodu.', 'najpredávanejšie, produkty'),
(3, 4, 'Kontakty a adresy', 'Kontaktné informácie na prevádzkovateľa internetového obchodu.', 'kontakt, e-mail'),
(4, 4, 'Vitajte', 'Vitajte v internetovom obchode.', 'obchod'),
(5, 4, 'Výrobcovia a značky', 'Zoznam výrobcov a značiek predávaných v našom internetového obchode.', 'výrobcovia, značky'),
(6, 4, 'Nové produkty', 'Zoznam produktov naposledy pridaných do sortimentu nášho internetového obchodu.', 'nové, produkty'),
(7, 4, 'Obnova zabudnutého hesla', 'Ak ste stratili heslo do svojho účtu, zadajte prosím vašu e-mailovú adresu a systém vám zašle nové heslo.', 'zabudnuté, nové, heslo, obnova'),
(8, 4, 'Akcie a zľavy', 'Produkty obchodu za akciové a zvýhodnené ceny. Nakupujte u nás výhodne!', 'akcie, zľavy'),
(9, 4, 'Mapa obchodu', 'Neviete niečo nájsť v našom obchode? Použite mapu stránok.', 'sitemap, mapa, mapa webu'),
(10, 4, 'Dodávatelia', 'Zoznam dodávateľov tovaru v našom internetovom obchode.', 'dodávatelia, sortiment');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_module`
--

CREATE TABLE IF NOT EXISTS `ps_module` (
  `id_module` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_module`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Sťahujem dáta pre tabuľku `ps_module`
--

INSERT INTO `ps_module` (`id_module`, `name`, `active`) VALUES
(6, 'editorial', 1),
(7, 'graphgooglechart', 1),
(8, 'gridextjs', 1),
(9, 'cashondelivery', 1),
(10, 'homefeatured', 1),
(11, 'blockcart', 1),
(12, 'blockcategories', 1),
(18, 'blocksearch', 1),
(15, 'blockvariouslinks', 1),
(16, 'statscatalog', 1),
(17, 'statsdata', 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_module_country`
--

CREATE TABLE IF NOT EXISTS `ps_module_country` (
  `id_module` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_country`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_module_country`
--

INSERT INTO `ps_module_country` (`id_module`, `id_country`) VALUES
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(9, 8),
(9, 9),
(9, 10),
(9, 11),
(9, 12),
(9, 13),
(9, 14),
(9, 15),
(9, 16),
(9, 17),
(9, 18),
(9, 19),
(9, 20),
(9, 21),
(9, 22),
(9, 23),
(9, 24),
(9, 25),
(9, 26),
(9, 27),
(9, 28),
(9, 29),
(9, 30),
(9, 31),
(9, 32),
(9, 33),
(9, 34),
(9, 35),
(9, 36),
(9, 37),
(9, 38),
(9, 39),
(9, 40),
(9, 41),
(9, 42),
(9, 43),
(9, 44),
(9, 45),
(9, 46),
(9, 47),
(9, 48),
(9, 49),
(9, 50),
(9, 51),
(9, 52),
(9, 53),
(9, 54),
(9, 55),
(9, 56),
(9, 57),
(9, 58),
(9, 59),
(9, 60),
(9, 61),
(9, 62),
(9, 63),
(9, 64),
(9, 65),
(9, 66),
(9, 67),
(9, 68),
(9, 69),
(9, 70),
(9, 71),
(9, 72),
(9, 73),
(9, 74),
(9, 75),
(9, 76),
(9, 77),
(9, 78),
(9, 79),
(9, 80),
(9, 81),
(9, 82),
(9, 83),
(9, 84),
(9, 85),
(9, 86),
(9, 87),
(9, 88),
(9, 89),
(9, 90),
(9, 91),
(9, 92),
(9, 93),
(9, 94),
(9, 95),
(9, 96),
(9, 97),
(9, 98),
(9, 99),
(9, 100),
(9, 101),
(9, 102),
(9, 103),
(9, 104),
(9, 105),
(9, 106),
(9, 107),
(9, 108),
(9, 109),
(9, 110),
(9, 111),
(9, 112),
(9, 113),
(9, 114),
(9, 115),
(9, 116),
(9, 117),
(9, 118),
(9, 119),
(9, 120),
(9, 121),
(9, 122),
(9, 123),
(9, 124),
(9, 125),
(9, 126),
(9, 127),
(9, 128),
(9, 129),
(9, 130),
(9, 131),
(9, 132),
(9, 133),
(9, 134),
(9, 135),
(9, 136),
(9, 137),
(9, 138),
(9, 139),
(9, 140),
(9, 141),
(9, 142),
(9, 143),
(9, 144),
(9, 145),
(9, 146),
(9, 147),
(9, 148),
(9, 149),
(9, 150),
(9, 151),
(9, 152),
(9, 153),
(9, 154),
(9, 155),
(9, 156),
(9, 157),
(9, 158),
(9, 159),
(9, 160),
(9, 161),
(9, 162),
(9, 163),
(9, 164),
(9, 165),
(9, 166),
(9, 167),
(9, 168),
(9, 169),
(9, 170),
(9, 171),
(9, 172),
(9, 173),
(9, 174),
(9, 175),
(9, 176),
(9, 177),
(9, 178),
(9, 179),
(9, 180),
(9, 181),
(9, 182),
(9, 183),
(9, 184),
(9, 185),
(9, 186),
(9, 187),
(9, 188),
(9, 189),
(9, 190),
(9, 191),
(9, 192),
(9, 193),
(9, 194),
(9, 195),
(9, 196),
(9, 197),
(9, 198),
(9, 199),
(9, 200),
(9, 201),
(9, 202),
(9, 203),
(9, 204),
(9, 205),
(9, 206),
(9, 207),
(9, 208),
(9, 209),
(9, 210),
(9, 211),
(9, 212),
(9, 213),
(9, 214),
(9, 215),
(9, 216),
(9, 217),
(9, 218),
(9, 219),
(9, 220),
(9, 221),
(9, 222),
(9, 223),
(9, 224),
(9, 225),
(9, 226),
(9, 227),
(9, 228),
(9, 229),
(9, 230),
(9, 231),
(9, 232),
(9, 233),
(9, 234),
(9, 235),
(9, 236),
(9, 237),
(9, 238),
(9, 239),
(9, 240),
(9, 241),
(9, 242),
(9, 243),
(9, 244);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_module_currency`
--

CREATE TABLE IF NOT EXISTS `ps_module_currency` (
  `id_module` int(10) unsigned NOT NULL,
  `id_currency` int(11) NOT NULL,
  PRIMARY KEY (`id_module`,`id_currency`),
  KEY `id_module` (`id_module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_module_currency`
--

INSERT INTO `ps_module_currency` (`id_module`, `id_currency`) VALUES
(9, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_module_group`
--

CREATE TABLE IF NOT EXISTS `ps_module_group` (
  `id_module` int(10) unsigned NOT NULL,
  `id_group` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_module_group`
--

INSERT INTO `ps_module_group` (`id_module`, `id_group`) VALUES
(9, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_operating_system`
--

CREATE TABLE IF NOT EXISTS `ps_operating_system` (
  `id_operating_system` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_operating_system`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Sťahujem dáta pre tabuľku `ps_operating_system`
--

INSERT INTO `ps_operating_system` (`id_operating_system`, `name`) VALUES
(1, 'Windows XP'),
(2, 'Windows Vista'),
(3, 'MacOsX'),
(4, 'Linux');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_orders`
--

CREATE TABLE IF NOT EXISTS `ps_orders` (
  `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `payment` varchar(255) NOT NULL,
  `module` varchar(255) DEFAULT NULL,
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `shipping_number` varchar(32) DEFAULT NULL,
  `total_discounts` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_real` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products_wt` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `invoice_number` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_number` int(10) unsigned NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `valid` int(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_customer` (`id_customer`),
  KEY `id_cart` (`id_cart`),
  KEY `invoice_number` (`invoice_number`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_orders`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_order_detail`
--

CREATE TABLE IF NOT EXISTS `ps_order_detail` (
  `id_order_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_attribute_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_in_stock` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_refunded` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_return` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_reinjected` int(10) unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `group_reduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_quantity_discount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_ean13` varchar(13) DEFAULT NULL,
  `product_reference` varchar(32) DEFAULT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_weight` float NOT NULL,
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `ecotax` decimal(21,6) NOT NULL DEFAULT '0.000000',
  `ecotax_tax_rate` decimal(5,3) NOT NULL,
  `discount_quantity_applied` tinyint(1) NOT NULL DEFAULT '0',
  `download_hash` varchar(255) DEFAULT NULL,
  `download_nb` int(10) unsigned DEFAULT '0',
  `download_deadline` datetime DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_order_detail`),
  KEY `order_detail_order` (`id_order`),
  KEY `product_id` (`product_id`),
  KEY `product_attribute_id` (`product_attribute_id`),
  KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_order_detail`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_order_discount`
--

CREATE TABLE IF NOT EXISTS `ps_order_discount` (
  `id_order_discount` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_discount` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id_order_discount`),
  KEY `order_discount_order` (`id_order`),
  KEY `id_discount` (`id_discount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_order_discount`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_order_history`
--

CREATE TABLE IF NOT EXISTS `ps_order_history` (
  `id_order_history` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_employee` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_state` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_history`),
  KEY `order_history_order` (`id_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_order_state` (`id_order_state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_order_history`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_order_message`
--

CREATE TABLE IF NOT EXISTS `ps_order_message` (
  `id_order_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_message`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_order_message`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_order_message_lang`
--

CREATE TABLE IF NOT EXISTS `ps_order_message_lang` (
  `id_order_message` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id_order_message`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_order_message_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_order_return`
--

CREATE TABLE IF NOT EXISTS `ps_order_return` (
  `id_order_return` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `question` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_return`),
  KEY `order_return_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_order_return`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_order_return_detail`
--

CREATE TABLE IF NOT EXISTS `ps_order_return_detail` (
  `id_order_return` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `id_customization` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_return`,`id_order_detail`,`id_customization`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_order_return_detail`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_order_return_state`
--

CREATE TABLE IF NOT EXISTS `ps_order_return_state` (
  `id_order_return_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_order_return_state`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Sťahujem dáta pre tabuľku `ps_order_return_state`
--

INSERT INTO `ps_order_return_state` (`id_order_return_state`, `color`) VALUES
(5, '#FFFFBB'),
(4, '#FFD3D3'),
(3, '#DDFFAA'),
(2, '#EEDDFF'),
(1, '#ADD8E6');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_order_return_state_lang`
--

CREATE TABLE IF NOT EXISTS `ps_order_return_state_lang` (
  `id_order_return_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  UNIQUE KEY `order_state_lang_index` (`id_order_return_state`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_order_return_state_lang`
--

INSERT INTO `ps_order_return_state_lang` (`id_order_return_state`, `id_lang`, `name`) VALUES
(1, 4, 'Waiting for confirmation'),
(2, 4, 'Waiting for package'),
(3, 4, 'Package received'),
(4, 4, 'Return denied'),
(5, 4, 'Return completed'),
(5, 1, 'Return completed'),
(4, 1, 'Return denied'),
(3, 1, 'Package received'),
(2, 1, 'Waiting for package'),
(1, 1, 'Waiting for confirmation');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_order_slip`
--

CREATE TABLE IF NOT EXISTS `ps_order_slip` (
  `id_order_slip` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `shipping_cost` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_slip`),
  KEY `order_slip_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_order_slip`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_order_slip_detail`
--

CREATE TABLE IF NOT EXISTS `ps_order_slip_detail` (
  `id_order_slip` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_slip`,`id_order_detail`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_order_slip_detail`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_order_state`
--

CREATE TABLE IF NOT EXISTS `ps_order_state` (
  `id_order_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice` tinyint(1) unsigned DEFAULT '0',
  `send_email` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL,
  `unremovable` tinyint(1) unsigned NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logable` tinyint(1) NOT NULL DEFAULT '0',
  `delivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_state`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Sťahujem dáta pre tabuľku `ps_order_state`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_order_state_lang`
--

CREATE TABLE IF NOT EXISTS `ps_order_state_lang` (
  `id_order_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL,
  UNIQUE KEY `order_state_lang_index` (`id_order_state`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_order_state_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_pack`
--

CREATE TABLE IF NOT EXISTS `ps_pack` (
  `id_product_pack` int(10) unsigned NOT NULL,
  `id_product_item` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_pack`,`id_product_item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_pack`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_page`
--

CREATE TABLE IF NOT EXISTS `ps_page` (
  `id_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_page_type` int(10) unsigned NOT NULL,
  `id_object` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `id_page_type` (`id_page_type`),
  KEY `id_object` (`id_object`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Sťahujem dáta pre tabuľku `ps_page`
--

INSERT INTO `ps_page` (`id_page`, `id_page_type`, `id_object`) VALUES
(1, 5, NULL),
(2, 6, NULL),
(3, 7, NULL);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_page_type`
--

CREATE TABLE IF NOT EXISTS `ps_page_type` (
  `id_page_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_page_type`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Sťahujem dáta pre tabuľku `ps_page_type`
--

INSERT INTO `ps_page_type` (`id_page_type`, `name`) VALUES
(1, 'product.php'),
(2, 'category.php'),
(3, 'order.php'),
(4, 'manufacturer.php'),
(5, 'index.php'),
(6, 'cms.php'),
(7, 'search.php');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_page_viewed`
--

CREATE TABLE IF NOT EXISTS `ps_page_viewed` (
  `id_page` int(10) unsigned NOT NULL,
  `id_date_range` int(10) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_page`,`id_date_range`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_page_viewed`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_product`
--

CREATE TABLE IF NOT EXISTS `ps_product` (
  `id_product` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(10) unsigned DEFAULT NULL,
  `id_manufacturer` int(10) unsigned DEFAULT NULL,
  `id_tax` int(10) unsigned NOT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_color_default` int(10) unsigned DEFAULT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `ecotax` decimal(17,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_price` decimal(17,2) DEFAULT NULL,
  `reduction_percent` float DEFAULT NULL,
  `reduction_from` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `reduction_to` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `weight` float NOT NULL DEFAULT '0',
  `out_of_stock` int(10) unsigned NOT NULL DEFAULT '2',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `product_supplier` (`id_supplier`),
  KEY `product_manufacturer` (`id_manufacturer`),
  KEY `id_tax` (`id_tax`),
  KEY `id_category_default` (`id_category_default`),
  KEY `id_color_default` (`id_color_default`),
  KEY `date_add` (`date_add`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_product`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_product_attachment`
--

CREATE TABLE IF NOT EXISTS `ps_product_attachment` (
  `id_product` int(10) unsigned NOT NULL,
  `id_attachment` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_attachment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_product_attachment`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_product_attribute`
--

CREATE TABLE IF NOT EXISTS `ps_product_attribute` (
  `id_product_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(17,2) NOT NULL DEFAULT '0.00',
  `ecotax` decimal(17,2) NOT NULL DEFAULT '0.00',
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `weight` float NOT NULL DEFAULT '0',
  `default_on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product_attribute`),
  KEY `product_attribute_product` (`id_product`),
  KEY `reference` (`reference`),
  KEY `supplier_reference` (`supplier_reference`),
  KEY `product_default` (`id_product`,`default_on`),
  KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_product_attribute`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_product_attribute_combination`
--

CREATE TABLE IF NOT EXISTS `ps_product_attribute_combination` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_product_attribute`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_product_attribute_combination`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_product_attribute_image`
--

CREATE TABLE IF NOT EXISTS `ps_product_attribute_image` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_image`),
  KEY `id_image` (`id_image`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_product_attribute_image`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_product_download`
--

CREATE TABLE IF NOT EXISTS `ps_product_download` (
  `id_product_download` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `physically_filename` varchar(255) DEFAULT NULL,
  `date_deposit` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int(10) unsigned DEFAULT NULL,
  `nb_downloadable` int(10) unsigned DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_download`),
  KEY `product_active` (`id_product`,`active`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_product_download`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_product_lang`
--

CREATE TABLE IF NOT EXISTS `ps_product_lang` (
  `id_product` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL,
  UNIQUE KEY `product_lang_index` (`id_product`,`id_lang`),
  KEY `id_lang` (`id_lang`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_product_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_product_sale`
--

CREATE TABLE IF NOT EXISTS `ps_product_sale` (
  `id_product` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `sale_nbr` int(10) unsigned NOT NULL DEFAULT '0',
  `date_upd` date NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_product_sale`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_product_tag`
--

CREATE TABLE IF NOT EXISTS `ps_product_tag` (
  `id_product` int(10) unsigned NOT NULL,
  `id_tag` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_tag`),
  KEY `id_tag` (`id_tag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_product_tag`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_profile`
--

CREATE TABLE IF NOT EXISTS `ps_profile` (
  `id_profile` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_profile`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Sťahujem dáta pre tabuľku `ps_profile`
--

INSERT INTO `ps_profile` (`id_profile`) VALUES
(1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_profile_lang`
--

CREATE TABLE IF NOT EXISTS `ps_profile_lang` (
  `id_lang` int(10) unsigned NOT NULL,
  `id_profile` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_profile_lang`
--

INSERT INTO `ps_profile_lang` (`id_lang`, `id_profile`, `name`) VALUES
(1, 1, 'Administrator'),
(4, 1, 'Administrátor');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_quick_access`
--

CREATE TABLE IF NOT EXISTS `ps_quick_access` (
  `id_quick_access` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(128) NOT NULL,
  PRIMARY KEY (`id_quick_access`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Sťahujem dáta pre tabuľku `ps_quick_access`
--

INSERT INTO `ps_quick_access` (`id_quick_access`, `new_window`, `link`) VALUES
(1, 0, 'index.php'),
(2, 1, '../'),
(3, 0, 'index.php?tab=AdminCatalog&addcategory'),
(4, 0, 'index.php?tab=AdminCatalog&addproduct'),
(5, 0, 'index.php?tab=AdminDiscounts&adddiscount');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_quick_access_lang`
--

CREATE TABLE IF NOT EXISTS `ps_quick_access_lang` (
  `id_quick_access` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_quick_access`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_quick_access_lang`
--

INSERT INTO `ps_quick_access_lang` (`id_quick_access`, `id_lang`, `name`) VALUES
(1, 1, 'Home'),
(2, 1, 'My Shop'),
(3, 1, 'New category'),
(4, 1, 'New product'),
(5, 1, 'New voucher'),
(1, 4, '02.Administrácia'),
(2, 4, '01.Obchod'),
(3, 4, '04.Nová kategória'),
(4, 4, '03.Nový produkt'),
(5, 4, '05.Nový kupón');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_range_price`
--

CREATE TABLE IF NOT EXISTS `ps_range_price` (
  `id_range_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_price`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_range_price`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_range_weight`
--

CREATE TABLE IF NOT EXISTS `ps_range_weight` (
  `id_range_weight` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_weight`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_range_weight`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_referrer`
--

CREATE TABLE IF NOT EXISTS `ps_referrer` (
  `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `http_referer_regexp` varchar(64) DEFAULT NULL,
  `http_referer_like` varchar(64) DEFAULT NULL,
  `request_uri_regexp` varchar(64) DEFAULT NULL,
  `request_uri_like` varchar(64) DEFAULT NULL,
  `http_referer_regexp_not` varchar(64) DEFAULT NULL,
  `http_referer_like_not` varchar(64) DEFAULT NULL,
  `request_uri_regexp_not` varchar(64) DEFAULT NULL,
  `request_uri_like_not` varchar(64) DEFAULT NULL,
  `base_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `percent_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `click_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `cache_visitors` int(11) DEFAULT NULL,
  `cache_visits` int(11) DEFAULT NULL,
  `cache_pages` int(11) DEFAULT NULL,
  `cache_registrations` int(11) DEFAULT NULL,
  `cache_orders` int(11) DEFAULT NULL,
  `cache_sales` decimal(17,2) DEFAULT NULL,
  `cache_reg_rate` decimal(5,4) DEFAULT NULL,
  `cache_order_rate` decimal(5,4) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_referrer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_referrer`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_referrer_cache`
--

CREATE TABLE IF NOT EXISTS `ps_referrer_cache` (
  `id_connections_source` int(11) unsigned NOT NULL,
  `id_referrer` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_connections_source`,`id_referrer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_referrer_cache`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_scene`
--

CREATE TABLE IF NOT EXISTS `ps_scene` (
  `id_scene` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_scene`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_scene`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_scene_category`
--

CREATE TABLE IF NOT EXISTS `ps_scene_category` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_scene_category`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_scene_lang`
--

CREATE TABLE IF NOT EXISTS `ps_scene_lang` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_scene_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_scene_products`
--

CREATE TABLE IF NOT EXISTS `ps_scene_products` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `x_axis` int(4) NOT NULL,
  `y_axis` int(4) NOT NULL,
  `zone_width` int(3) NOT NULL,
  `zone_height` int(3) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_product`,`x_axis`,`y_axis`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_scene_products`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_search_engine`
--

CREATE TABLE IF NOT EXISTS `ps_search_engine` (
  `id_search_engine` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL,
  PRIMARY KEY (`id_search_engine`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Sťahujem dáta pre tabuľku `ps_search_engine`
--

INSERT INTO `ps_search_engine` (`id_search_engine`, `server`, `getvar`) VALUES
(1, 'google', 'q'),
(2, 'aol', 'q'),
(3, 'yandex', 'text'),
(4, 'ask.com', 'q'),
(5, 'nhl.com', 'q'),
(6, 'yahoo', 'p'),
(7, 'baidu', 'wd'),
(8, 'lycos', 'query'),
(9, 'exalead', 'q'),
(10, 'search.live', 'q'),
(11, 'voila', 'rdata'),
(12, 'altavista', 'q'),
(13, 'bing', 'q'),
(14, 'daum', 'q'),
(15, 'eniro', 'search_word'),
(16, 'naver', 'query'),
(17, 'msn', 'q'),
(18, 'netscape', 'query'),
(19, 'cnn', 'query'),
(20, 'about', 'terms'),
(21, 'mamma', 'query'),
(22, 'alltheweb', 'q'),
(23, 'virgilio', 'qs'),
(24, 'alice', 'qs'),
(25, 'najdi', 'q'),
(26, 'mama', 'query'),
(27, 'seznam', 'q'),
(28, 'onet', 'qt'),
(29, 'szukacz', 'q'),
(30, 'yam', 'k'),
(31, 'pchome', 'q'),
(32, 'kvasir', 'q'),
(33, 'sesam', 'q'),
(34, 'ozu', 'q'),
(35, 'terra', 'query'),
(36, 'mynet', 'q'),
(37, 'ekolay', 'q'),
(38, 'rambler', 'words');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_search_index`
--

CREATE TABLE IF NOT EXISTS `ps_search_index` (
  `id_product` int(11) unsigned NOT NULL,
  `id_word` int(11) unsigned NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_word`,`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_search_index`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_search_word`
--

CREATE TABLE IF NOT EXISTS `ps_search_word` (
  `id_word` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `word` varchar(15) NOT NULL,
  PRIMARY KEY (`id_word`),
  UNIQUE KEY `id_lang` (`id_lang`,`word`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_search_word`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_state`
--

CREATE TABLE IF NOT EXISTS `ps_state` (
  `id_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(11) unsigned NOT NULL,
  `id_zone` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` char(4) NOT NULL,
  `tax_behavior` smallint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_state`),
  KEY `id_country` (`id_country`),
  KEY `id_zone` (`id_zone`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=156 ;

--
-- Sťahujem dáta pre tabuľku `ps_state`
--

INSERT INTO `ps_state` (`id_state`, `id_country`, `id_zone`, `name`, `iso_code`, `tax_behavior`, `active`) VALUES
(1, 21, 2, 'Alabama', 'AL', 0, 1),
(2, 21, 2, 'Alaska', 'AK', 0, 1),
(3, 21, 2, 'Arizona', 'AZ', 0, 1),
(4, 21, 2, 'Arkansas', 'AR', 0, 1),
(5, 21, 2, 'California', 'CA', 0, 1),
(6, 21, 2, 'Colorado', 'CO', 0, 1),
(7, 21, 2, 'Connecticut', 'CT', 0, 1),
(8, 21, 2, 'Delaware', 'DE', 0, 1),
(9, 21, 2, 'Florida', 'FL', 0, 1),
(10, 21, 2, 'Georgia', 'GA', 0, 1),
(11, 21, 2, 'Hawaii', 'HI', 0, 1),
(12, 21, 2, 'Idaho', 'ID', 0, 1),
(13, 21, 2, 'Illinois', 'IL', 0, 1),
(14, 21, 2, 'Indiana', 'IN', 0, 1),
(15, 21, 2, 'Iowa', 'IA', 0, 1),
(16, 21, 2, 'Kansas', 'KS', 0, 1),
(17, 21, 2, 'Kentucky', 'KY', 0, 1),
(18, 21, 2, 'Louisiana', 'LA', 0, 1),
(19, 21, 2, 'Maine', 'ME', 0, 1),
(20, 21, 2, 'Maryland', 'MD', 0, 1),
(21, 21, 2, 'Massachusetts', 'MA', 0, 1),
(22, 21, 2, 'Michigan', 'MI', 0, 1),
(23, 21, 2, 'Minnesota', 'MN', 0, 1),
(24, 21, 2, 'Mississippi', 'MS', 0, 1),
(25, 21, 2, 'Missouri', 'MO', 0, 1),
(26, 21, 2, 'Montana', 'MT', 0, 1),
(27, 21, 2, 'Nebraska', 'NE', 0, 1),
(28, 21, 2, 'Nevada', 'NV', 0, 1),
(29, 21, 2, 'New Hampshire', 'NH', 0, 1),
(30, 21, 2, 'New Jersey', 'NJ', 0, 1),
(31, 21, 2, 'New Mexico', 'NM', 0, 1),
(32, 21, 2, 'New York', 'NY', 0, 1),
(33, 21, 2, 'North Carolina', 'NC', 0, 1),
(34, 21, 2, 'North Dakota', 'ND', 0, 1),
(35, 21, 2, 'Ohio', 'OH', 0, 1),
(36, 21, 2, 'Oklahoma', 'OK', 0, 1),
(37, 21, 2, 'Oregon', 'OR', 0, 1),
(38, 21, 2, 'Pennsylvania', 'PA', 0, 1),
(39, 21, 2, 'Rhode Island', 'RI', 0, 1),
(40, 21, 2, 'South Carolina', 'SC', 0, 1),
(41, 21, 2, 'South Dakota', 'SD', 0, 1),
(42, 21, 2, 'Tennessee', 'TN', 0, 1),
(43, 21, 2, 'Texas', 'TX', 0, 1),
(44, 21, 2, 'Utah', 'UT', 0, 1),
(45, 21, 2, 'Vermont', 'VT', 0, 1),
(46, 21, 2, 'Virginia', 'VA', 0, 1),
(47, 21, 2, 'Washington', 'WA', 0, 1),
(48, 21, 2, 'West Virginia', 'WV', 0, 1),
(49, 21, 2, 'Wisconsin', 'WI', 0, 1),
(50, 21, 2, 'Wyoming', 'WY', 0, 1),
(51, 21, 2, 'Puerto Rico', 'PR', 0, 1),
(52, 21, 2, 'US Virgin Islands', 'VI', 0, 1),
(53, 21, 2, 'District of Columbia', 'DC', 0, 1),
(54, 145, 2, 'Aguascalientes', 'AGS', 0, 1),
(55, 145, 2, 'Baja California', 'BCN', 0, 1),
(56, 145, 2, 'Baja California Sur', 'BCS', 0, 1),
(57, 145, 2, 'Campeche', 'CAM', 0, 1),
(58, 145, 2, 'Chiapas', 'CHP', 0, 1),
(59, 145, 2, 'Chihuahua', 'CHH', 0, 1),
(60, 145, 2, 'Coahuila', 'COA', 0, 1),
(61, 145, 2, 'Colima', 'COL', 0, 1),
(62, 145, 2, 'Distrito Federal', 'DIF', 0, 1),
(63, 145, 2, 'Durango', 'DUR', 0, 1),
(64, 145, 2, 'Guanajuato', 'GUA', 0, 1),
(65, 145, 2, 'Guerrero', 'GRO', 0, 1),
(66, 145, 2, 'Hidalgo', 'HID', 0, 1),
(67, 145, 2, 'Jalisco', 'JAL', 0, 1),
(68, 145, 2, 'Estado de México', 'MEX', 0, 1),
(69, 145, 2, 'Michoacán', 'MIC', 0, 1),
(70, 145, 2, 'Morelos', 'MOR', 0, 1),
(71, 145, 2, 'Nayarit', 'NAY', 0, 1),
(72, 145, 2, 'Nuevo León', 'NLE', 0, 1),
(73, 145, 2, 'Oaxaca', 'OAX', 0, 1),
(74, 145, 2, 'Puebla', 'PUE', 0, 1),
(75, 145, 2, 'Querétaro', 'QUE', 0, 1),
(76, 145, 2, 'Quintana Roo', 'ROO', 0, 1),
(77, 145, 2, 'San Luis Potosí', 'SLP', 0, 1),
(78, 145, 2, 'Sinaloa', 'SIN', 0, 1),
(79, 145, 2, 'Sonora', 'SON', 0, 1),
(80, 145, 2, 'Tabasco', 'TAB', 0, 1),
(81, 145, 2, 'Tamaulipas', 'TAM', 0, 1),
(82, 145, 2, 'Tlaxcala', 'TLA', 0, 1),
(83, 145, 2, 'Veracruz', 'VER', 0, 1),
(84, 145, 2, 'Yucatán', 'YUC', 0, 1),
(85, 145, 2, 'Zacatecas', 'ZAC', 0, 1),
(86, 4, 2, 'Ontario', 'ON', 0, 1),
(87, 4, 2, 'Quebec', 'QC', 0, 1),
(88, 4, 2, 'British Columbia', 'BC', 0, 1),
(89, 4, 2, 'Alberta', 'AB', 0, 1),
(90, 4, 2, 'Manitoba', 'MB', 0, 1),
(91, 4, 2, 'Saskatchewan', 'SK', 0, 1),
(92, 4, 2, 'Nova Scotia', 'NS', 0, 1),
(93, 4, 2, 'New Brunswick', 'NB', 0, 1),
(94, 4, 2, 'Newfoundland and Labrador', 'NL', 0, 1),
(95, 4, 2, 'Prince Edward Island', 'PE', 0, 1),
(96, 4, 2, 'Northwest Territories', 'NT', 0, 1),
(97, 4, 2, 'Yukon', 'YT', 0, 1),
(98, 4, 2, 'Nunavut', 'NU', 0, 1),
(99, 58, 2, 'Acre', 'AC', 0, 1),
(100, 58, 2, 'Alagoas', 'AL', 0, 1),
(101, 58, 2, 'Amapá', 'AP', 0, 1),
(102, 58, 2, 'Amazonas', 'AM', 0, 1),
(103, 58, 2, 'Bahia', 'BA', 0, 1),
(104, 58, 2, 'Ceará', 'CE', 0, 1),
(105, 58, 2, 'Distrito Federal', 'DF', 0, 1),
(106, 58, 2, 'Espírito Santo', 'ES', 0, 1),
(107, 58, 2, 'Goiás', 'GO', 0, 1),
(108, 58, 2, 'Maranhão', 'MA', 0, 1),
(109, 58, 2, 'Mato Grosso', 'MT', 0, 1),
(110, 58, 2, 'Mato Grosso do Sul', 'MS', 0, 1),
(111, 58, 2, 'Minas Gerais', 'MG', 0, 1),
(112, 58, 2, 'Pará', 'PA', 0, 1),
(113, 58, 2, 'Paraíba', 'PB', 0, 1),
(114, 58, 2, 'Paraná', 'PR', 0, 1),
(115, 58, 2, 'Pernambuco', 'PE', 0, 1),
(116, 58, 2, 'Piauí', 'PI', 0, 1),
(117, 58, 2, 'Rio de Janeiro', 'RJ', 0, 1),
(118, 58, 2, 'Rio Grande do Norte', 'RN', 0, 1),
(119, 58, 2, 'Rio Grande do Sul', 'RS', 0, 1),
(120, 58, 2, 'Rondônia', 'RO', 0, 1),
(121, 58, 2, 'Roraima', 'RR', 0, 1),
(122, 58, 2, 'Santa Catarina', 'SC', 0, 1),
(123, 58, 2, 'São Paulo', 'SP', 0, 1),
(124, 58, 2, 'Sergipe', 'SE', 0, 1),
(125, 58, 2, 'Tocantins', 'TO', 0, 1),
(126, 5, 3, 'Beijing', '11', 0, 1),
(127, 5, 3, 'Chongqing', '50', 0, 1),
(128, 5, 3, 'Shanghaï', '31', 0, 1),
(129, 5, 3, 'Tianjin', '12', 0, 1),
(130, 5, 3, 'Anhui', '34', 0, 1),
(131, 5, 3, 'Fujian', '35', 0, 1),
(132, 5, 3, 'Gansu', '62', 0, 1),
(133, 5, 3, 'Guangdong', '44', 0, 1),
(134, 5, 3, 'Guizhou', '52', 0, 1),
(135, 5, 3, 'Hainan', '46', 0, 1),
(136, 5, 3, 'Hebei', '13', 0, 1),
(137, 5, 3, 'Heilongjiang', '23', 0, 1),
(138, 5, 3, 'Henan', '41', 0, 1),
(139, 5, 3, 'Hubei', '42', 0, 1),
(140, 5, 3, 'Hunan', '43', 0, 1),
(141, 5, 3, 'Jiangsu', '32', 0, 1),
(142, 5, 3, 'Jiangxi', '36', 0, 1),
(143, 5, 3, 'Jilin', '22', 0, 1),
(144, 5, 3, 'Liaoning', '21', 0, 1),
(145, 5, 3, 'Qinghai', '63', 0, 1),
(146, 5, 3, 'Shaanxi', '61', 0, 1),
(147, 5, 3, 'Shandong', '37', 0, 1),
(148, 5, 3, 'Shanxi', '14', 0, 1),
(149, 5, 3, 'Sichuan', '51', 0, 1),
(150, 5, 3, 'Taïwan', '71', 0, 1),
(151, 5, 3, 'Yunnan', '53', 0, 1),
(152, 5, 3, 'Guangxi', '45', 0, 1),
(153, 5, 3, 'Neimenggu', '15', 0, 1),
(154, 5, 3, 'Ningxia', '64', 0, 1),
(155, 5, 3, 'Xinjiang', '65', 0, 1);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_subdomain`
--

CREATE TABLE IF NOT EXISTS `ps_subdomain` (
  `id_subdomain` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id_subdomain`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Sťahujem dáta pre tabuľku `ps_subdomain`
--

INSERT INTO `ps_subdomain` (`id_subdomain`, `name`) VALUES
(1, 'www');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_supplier`
--

CREATE TABLE IF NOT EXISTS `ps_supplier` (
  `id_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_supplier`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_supplier_lang`
--

CREATE TABLE IF NOT EXISTS `ps_supplier_lang` (
  `id_supplier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_supplier_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_tab`
--

CREATE TABLE IF NOT EXISTS `ps_tab` (
  `id_tab` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL,
  `class_name` varchar(64) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `position` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_tab`),
  KEY `class_name` (`class_name`),
  KEY `id_parent` (`id_parent`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=69 ;

--
-- Sťahujem dáta pre tabuľku `ps_tab`
--

INSERT INTO `ps_tab` (`id_tab`, `id_parent`, `class_name`, `module`, `position`) VALUES
(1, 0, 'AdminCatalog', NULL, 1),
(2, 0, 'AdminCustomers', NULL, 2),
(3, 0, 'AdminOrders', NULL, 3),
(4, 0, 'AdminPayment', NULL, 4),
(5, 0, 'AdminShipping', NULL, 5),
(6, 0, 'AdminStats', NULL, 6),
(7, 0, 'AdminModules', NULL, 7),
(29, 0, 'AdminEmployees', NULL, 8),
(8, 0, 'AdminPreferences', NULL, 9),
(9, 0, 'AdminTools', NULL, 10),
(60, 1, 'AdminTracking', NULL, 1),
(10, 1, 'AdminManufacturers', NULL, 2),
(34, 1, 'AdminSuppliers', NULL, 3),
(11, 1, 'AdminAttributesGroups', NULL, 4),
(36, 1, 'AdminFeatures', NULL, 5),
(58, 1, 'AdminScenes', NULL, 6),
(66, 1, 'AdminTags', NULL, 7),
(68, 1, 'AdminAttachments', NULL, 7),
(12, 2, 'AdminAddresses', NULL, 1),
(63, 2, 'AdminGroups', NULL, 2),
(65, 2, 'AdminCarts', NULL, 3),
(42, 3, 'AdminInvoices', NULL, 1),
(55, 3, 'AdminDeliverySlip', NULL, 2),
(47, 3, 'AdminReturn', NULL, 3),
(49, 3, 'AdminSlip', NULL, 4),
(59, 3, 'AdminMessages', NULL, 5),
(13, 3, 'AdminStatuses', NULL, 6),
(54, 3, 'AdminOrderMessage', NULL, 7),
(14, 4, 'AdminDiscounts', NULL, 3),
(15, 4, 'AdminCurrencies', NULL, 1),
(16, 4, 'AdminTaxes', NULL, 2),
(17, 5, 'AdminCarriers', NULL, 1),
(46, 5, 'AdminStates', NULL, 2),
(18, 5, 'AdminCountries', NULL, 3),
(19, 5, 'AdminZones', NULL, 4),
(20, 5, 'AdminRangePrice', NULL, 5),
(21, 5, 'AdminRangeWeight', NULL, 6),
(50, 6, 'AdminStatsModules', NULL, 1),
(51, 6, 'AdminStatsConf', NULL, 2),
(61, 6, 'AdminSearchEngines', NULL, 3),
(62, 6, 'AdminReferrers', NULL, 4),
(22, 7, 'AdminModulesPositions', NULL, 1),
(30, 29, 'AdminProfiles', NULL, 1),
(31, 29, 'AdminAccess', NULL, 2),
(28, 29, 'AdminContacts', NULL, 3),
(39, 8, 'AdminContact', NULL, 1),
(38, 8, 'AdminAppearance', NULL, 2),
(56, 8, 'AdminMeta', NULL, 3),
(27, 8, 'AdminPPreferences', NULL, 4),
(24, 8, 'AdminEmails', NULL, 5),
(26, 8, 'AdminImages', NULL, 6),
(23, 8, 'AdminDb', NULL, 7),
(48, 8, 'AdminPDF', NULL, 8),
(44, 8, 'AdminLocalization', NULL, 9),
(67, 8, 'AdminSearchConf', NULL, 10),
(32, 9, 'AdminLanguages', NULL, 1),
(33, 9, 'AdminTranslations', NULL, 2),
(35, 9, 'AdminTabs', NULL, 3),
(37, 9, 'AdminQuickAccesses', NULL, 4),
(40, 9, 'AdminAliases', NULL, 5),
(41, 9, 'AdminImport', NULL, 6),
(52, 9, 'AdminSubDomains', NULL, 7),
(53, 9, 'AdminBackup', NULL, 8),
(57, 9, 'AdminCMS', NULL, 9),
(64, 9, 'AdminGenerator', NULL, 10),
(43, -1, 'AdminSearch', NULL, 0);

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_tab_lang`
--

CREATE TABLE IF NOT EXISTS `ps_tab_lang` (
  `id_lang` int(10) unsigned NOT NULL,
  `id_tab` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_tab`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_tab_lang`
--

INSERT INTO `ps_tab_lang` (`id_lang`, `id_tab`, `name`) VALUES
(1, 1, 'Catalog'),
(1, 2, 'Customers'),
(1, 3, 'Orders'),
(1, 4, 'Payment'),
(1, 5, 'Shipping'),
(1, 6, 'Stats'),
(1, 7, 'Modules'),
(1, 8, 'Preferences'),
(1, 9, 'Tools'),
(1, 10, 'Manufacturers'),
(1, 11, 'Attributes and groups'),
(1, 12, 'Addresses'),
(1, 13, 'Statuses'),
(1, 14, 'Vouchers'),
(1, 15, 'Currencies'),
(1, 16, 'Taxes'),
(1, 17, 'Carriers'),
(1, 18, 'Countries'),
(1, 19, 'Zones'),
(1, 20, 'Price ranges'),
(1, 21, 'Weight ranges'),
(1, 22, 'Positions'),
(1, 23, 'Database'),
(1, 24, 'Email'),
(1, 26, 'Image'),
(1, 27, 'Products'),
(1, 28, 'Contacts'),
(1, 29, 'Employees'),
(1, 30, 'Profiles'),
(1, 31, 'Permissions'),
(1, 32, 'Languages'),
(1, 33, 'Translations'),
(1, 34, 'Suppliers'),
(1, 35, 'Tabs'),
(1, 36, 'Features'),
(1, 37, 'Quick Accesses'),
(1, 38, 'Appearance'),
(1, 39, 'Contact'),
(1, 40, 'Aliases'),
(1, 41, 'Import'),
(1, 42, 'Invoices'),
(1, 43, 'Search'),
(1, 44, 'Localization'),
(1, 46, 'States'),
(1, 47, 'Merchandise return'),
(1, 48, 'PDF'),
(1, 49, 'Credit slips'),
(1, 50, 'Modules'),
(1, 51, 'Settings'),
(1, 52, 'Subdomains'),
(1, 53, 'DB backup'),
(1, 54, 'Order Messages'),
(1, 55, 'Delivery slips'),
(1, 56, 'Meta-Tags'),
(1, 57, 'CMS'),
(1, 58, 'Image mapping'),
(1, 59, 'Customer messages'),
(1, 60, 'Tracking'),
(1, 61, 'Search engines'),
(1, 62, 'Referrers'),
(1, 63, 'Groups'),
(1, 64, 'Generators'),
(1, 65, 'Carts'),
(1, 66, 'Tags'),
(1, 67, 'Search'),
(1, 68, 'Attachments'),
(4, 1, 'Katalóg'),
(4, 2, 'Zákazníci'),
(4, 3, 'Objednávky'),
(4, 4, 'Platobné brány'),
(4, 5, 'Doprava'),
(4, 6, 'Štatistiky'),
(4, 7, 'Moduly'),
(4, 29, 'Zamestnanci'),
(4, 8, 'Nastavenia'),
(4, 9, 'Nástroje'),
(4, 60, 'Sledovanie'),
(4, 10, 'Výrobcovia / značky'),
(4, 34, 'Dodávatelia'),
(4, 11, 'Parametre'),
(4, 36, 'Vlastnosti'),
(4, 58, 'Obrázkové mapy'),
(4, 66, 'Štítky'),
(4, 68, 'Prílohy'),
(4, 12, 'Adresy'),
(4, 63, 'Skupiny'),
(4, 65, 'Košíky'),
(4, 42, 'Faktúry'),
(4, 55, 'Dodacie listy'),
(4, 47, 'Vrátenie tovaru'),
(4, 49, 'Dobropisy'),
(4, 59, 'Odkazy zákazníkov'),
(4, 13, 'Stavy objednávok'),
(4, 54, 'Správy k objednávkam'),
(4, 14, 'Kupóny'),
(4, 15, 'Meny'),
(4, 16, 'Dane'),
(4, 17, 'Dopravcovia'),
(4, 46, 'Štáty / Regióny'),
(4, 18, 'Krajiny'),
(4, 19, 'Zóny'),
(4, 20, 'Cenové rozsahy'),
(4, 21, 'Hmotnostné rozsahy'),
(4, 50, 'Moduly'),
(4, 51, 'Nastavenia'),
(4, 61, 'Vyhľadávače'),
(4, 62, 'Odkazovania'),
(4, 22, 'Pozície modulov'),
(4, 30, 'Profily'),
(4, 31, 'Oprávnenia'),
(4, 28, 'Kontakty'),
(4, 39, 'Kontakt'),
(4, 38, 'Vzhľad'),
(4, 56, 'Meta-tágy'),
(4, 27, 'Produkty'),
(4, 24, 'E-mail'),
(4, 26, 'Obrázky'),
(4, 23, 'Databáza'),
(4, 48, 'PDF'),
(4, 44, 'Jednotky'),
(4, 67, 'Indexácia a vyhľadávanie'),
(4, 32, 'Jazyky'),
(4, 33, 'Preklady'),
(4, 35, 'Karty'),
(4, 37, 'Rýchle prístupy'),
(4, 40, 'Aliasy'),
(4, 41, 'Import'),
(4, 52, 'Subdomény'),
(4, 53, 'Záloha databázy'),
(4, 57, 'Redakčný systém'),
(4, 64, 'Generátory'),
(4, 43, 'Vyhľadávanie');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_tag`
--

CREATE TABLE IF NOT EXISTS `ps_tag` (
  `id_tag` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tag`),
  KEY `tag_name` (`name`),
  KEY `id_lang` (`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Sťahujem dáta pre tabuľku `ps_tag`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_tax`
--

CREATE TABLE IF NOT EXISTS `ps_tax` (
  `id_tax` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rate` decimal(10,3) NOT NULL,
  PRIMARY KEY (`id_tax`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Sťahujem dáta pre tabuľku `ps_tax`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_tax_lang`
--

CREATE TABLE IF NOT EXISTS `ps_tax_lang` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  UNIQUE KEY `tax_lang_index` (`id_tax`,`id_lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_tax_lang`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_tax_state`
--

CREATE TABLE IF NOT EXISTS `ps_tax_state` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned NOT NULL,
  KEY `tax_state_index` (`id_tax`,`id_state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_tax_state`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_tax_zone`
--

CREATE TABLE IF NOT EXISTS `ps_tax_zone` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  KEY `tax_zone_index` (`id_tax`,`id_zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Sťahujem dáta pre tabuľku `ps_tax_zone`
--


-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_timezone`
--

CREATE TABLE IF NOT EXISTS `ps_timezone` (
  `id_timezone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_timezone`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=561 ;

--
-- Sťahujem dáta pre tabuľku `ps_timezone`
--

INSERT INTO `ps_timezone` (`id_timezone`, `name`) VALUES
(1, 'Africa/Abidjan'),
(2, 'Africa/Accra'),
(3, 'Africa/Addis_Ababa'),
(4, 'Africa/Algiers'),
(5, 'Africa/Asmara'),
(6, 'Africa/Asmera'),
(7, 'Africa/Bamako'),
(8, 'Africa/Bangui'),
(9, 'Africa/Banjul'),
(10, 'Africa/Bissau'),
(11, 'Africa/Blantyre'),
(12, 'Africa/Brazzaville'),
(13, 'Africa/Bujumbura'),
(14, 'Africa/Cairo'),
(15, 'Africa/Casablanca'),
(16, 'Africa/Ceuta'),
(17, 'Africa/Conakry'),
(18, 'Africa/Dakar'),
(19, 'Africa/Dar_es_Salaam'),
(20, 'Africa/Djibouti'),
(21, 'Africa/Douala'),
(22, 'Africa/El_Aaiun'),
(23, 'Africa/Freetown'),
(24, 'Africa/Gaborone'),
(25, 'Africa/Harare'),
(26, 'Africa/Johannesburg'),
(27, 'Africa/Kampala'),
(28, 'Africa/Khartoum'),
(29, 'Africa/Kigali'),
(30, 'Africa/Kinshasa'),
(31, 'Africa/Lagos'),
(32, 'Africa/Libreville'),
(33, 'Africa/Lome'),
(34, 'Africa/Luanda'),
(35, 'Africa/Lubumbashi'),
(36, 'Africa/Lusaka'),
(37, 'Africa/Malabo'),
(38, 'Africa/Maputo'),
(39, 'Africa/Maseru'),
(40, 'Africa/Mbabane'),
(41, 'Africa/Mogadishu'),
(42, 'Africa/Monrovia'),
(43, 'Africa/Nairobi'),
(44, 'Africa/Ndjamena'),
(45, 'Africa/Niamey'),
(46, 'Africa/Nouakchott'),
(47, 'Africa/Ouagadougou'),
(48, 'Africa/Porto-Novo'),
(49, 'Africa/Sao_Tome'),
(50, 'Africa/Timbuktu'),
(51, 'Africa/Tripoli'),
(52, 'Africa/Tunis'),
(53, 'Africa/Windhoek'),
(54, 'America/Adak'),
(55, 'America/Anchorage '),
(56, 'America/Anguilla'),
(57, 'America/Antigua'),
(58, 'America/Araguaina'),
(59, 'America/Argentina/Buenos_Aires'),
(60, 'America/Argentina/Catamarca'),
(61, 'America/Argentina/ComodRivadavia'),
(62, 'America/Argentina/Cordoba'),
(63, 'America/Argentina/Jujuy'),
(64, 'America/Argentina/La_Rioja'),
(65, 'America/Argentina/Mendoza'),
(66, 'America/Argentina/Rio_Gallegos'),
(67, 'America/Argentina/Salta'),
(68, 'America/Argentina/San_Juan'),
(69, 'America/Argentina/San_Luis'),
(70, 'America/Argentina/Tucuman'),
(71, 'America/Argentina/Ushuaia'),
(72, 'America/Aruba'),
(73, 'America/Asuncion'),
(74, 'America/Atikokan'),
(75, 'America/Atka'),
(76, 'America/Bahia'),
(77, 'America/Barbados'),
(78, 'America/Belem'),
(79, 'America/Belize'),
(80, 'America/Blanc-Sablon'),
(81, 'America/Boa_Vista'),
(82, 'America/Bogota'),
(83, 'America/Boise'),
(84, 'America/Buenos_Aires'),
(85, 'America/Cambridge_Bay'),
(86, 'America/Campo_Grande'),
(87, 'America/Cancun'),
(88, 'America/Caracas'),
(89, 'America/Catamarca'),
(90, 'America/Cayenne'),
(91, 'America/Cayman'),
(92, 'America/Chicago'),
(93, 'America/Chihuahua'),
(94, 'America/Coral_Harbour'),
(95, 'America/Cordoba'),
(96, 'America/Costa_Rica'),
(97, 'America/Cuiaba'),
(98, 'America/Curacao'),
(99, 'America/Danmarkshavn'),
(100, 'America/Dawson'),
(101, 'America/Dawson_Creek'),
(102, 'America/Denver'),
(103, 'America/Detroit'),
(104, 'America/Dominica'),
(105, 'America/Edmonton'),
(106, 'America/Eirunepe'),
(107, 'America/El_Salvador'),
(108, 'America/Ensenada'),
(109, 'America/Fort_Wayne'),
(110, 'America/Fortaleza'),
(111, 'America/Glace_Bay'),
(112, 'America/Godthab'),
(113, 'America/Goose_Bay'),
(114, 'America/Grand_Turk'),
(115, 'America/Grenada'),
(116, 'America/Guadeloupe'),
(117, 'America/Guatemala'),
(118, 'America/Guayaquil'),
(119, 'America/Guyana'),
(120, 'America/Halifax'),
(121, 'America/Havana'),
(122, 'America/Hermosillo'),
(123, 'America/Indiana/Indianapolis'),
(124, 'America/Indiana/Knox'),
(125, 'America/Indiana/Marengo'),
(126, 'America/Indiana/Petersburg'),
(127, 'America/Indiana/Tell_City'),
(128, 'America/Indiana/Vevay'),
(129, 'America/Indiana/Vincennes'),
(130, 'America/Indiana/Winamac'),
(131, 'America/Indianapolis'),
(132, 'America/Inuvik'),
(133, 'America/Iqaluit'),
(134, 'America/Jamaica'),
(135, 'America/Jujuy'),
(136, 'America/Juneau'),
(137, 'America/Kentucky/Louisville'),
(138, 'America/Kentucky/Monticello'),
(139, 'America/Knox_IN'),
(140, 'America/La_Paz'),
(141, 'America/Lima'),
(142, 'America/Los_Angeles'),
(143, 'America/Louisville'),
(144, 'America/Maceio'),
(145, 'America/Managua'),
(146, 'America/Manaus'),
(147, 'America/Marigot'),
(148, 'America/Martinique'),
(149, 'America/Mazatlan'),
(150, 'America/Mendoza'),
(151, 'America/Menominee'),
(152, 'America/Merida'),
(153, 'America/Mexico_City'),
(154, 'America/Miquelon'),
(155, 'America/Moncton'),
(156, 'America/Monterrey'),
(157, 'America/Montevideo'),
(158, 'America/Montreal'),
(159, 'America/Montserrat'),
(160, 'America/Nassau'),
(161, 'America/New_York'),
(162, 'America/Nipigon'),
(163, 'America/Nome'),
(164, 'America/Noronha'),
(165, 'America/North_Dakota/Center'),
(166, 'America/North_Dakota/New_Salem'),
(167, 'America/Panama'),
(168, 'America/Pangnirtung'),
(169, 'America/Paramaribo'),
(170, 'America/Phoenix'),
(171, 'America/Port-au-Prince'),
(172, 'America/Port_of_Spain'),
(173, 'America/Porto_Acre'),
(174, 'America/Porto_Velho'),
(175, 'America/Puerto_Rico'),
(176, 'America/Rainy_River'),
(177, 'America/Rankin_Inlet'),
(178, 'America/Recife'),
(179, 'America/Regina'),
(180, 'America/Resolute'),
(181, 'America/Rio_Branco'),
(182, 'America/Rosario'),
(183, 'America/Santarem'),
(184, 'America/Santiago'),
(185, 'America/Santo_Domingo'),
(186, 'America/Sao_Paulo'),
(187, 'America/Scoresbysund'),
(188, 'America/Shiprock'),
(189, 'America/St_Barthelemy'),
(190, 'America/St_Johns'),
(191, 'America/St_Kitts'),
(192, 'America/St_Lucia'),
(193, 'America/St_Thomas'),
(194, 'America/St_Vincent'),
(195, 'America/Swift_Current'),
(196, 'America/Tegucigalpa'),
(197, 'America/Thule'),
(198, 'America/Thunder_Bay'),
(199, 'America/Tijuana'),
(200, 'America/Toronto'),
(201, 'America/Tortola'),
(202, 'America/Vancouver'),
(203, 'America/Virgin'),
(204, 'America/Whitehorse'),
(205, 'America/Winnipeg'),
(206, 'America/Yakutat'),
(207, 'America/Yellowknife'),
(208, 'Antarctica/Casey'),
(209, 'Antarctica/Davis'),
(210, 'Antarctica/DumontDUrville'),
(211, 'Antarctica/Mawson'),
(212, 'Antarctica/McMurdo'),
(213, 'Antarctica/Palmer'),
(214, 'Antarctica/Rothera'),
(215, 'Antarctica/South_Pole'),
(216, 'Antarctica/Syowa'),
(217, 'Antarctica/Vostok'),
(218, 'Arctic/Longyearbyen'),
(219, 'Asia/Aden'),
(220, 'Asia/Almaty'),
(221, 'Asia/Amman'),
(222, 'Asia/Anadyr'),
(223, 'Asia/Aqtau'),
(224, 'Asia/Aqtobe'),
(225, 'Asia/Ashgabat'),
(226, 'Asia/Ashkhabad'),
(227, 'Asia/Baghdad'),
(228, 'Asia/Bahrain'),
(229, 'Asia/Baku'),
(230, 'Asia/Bangkok'),
(231, 'Asia/Beirut'),
(232, 'Asia/Bishkek'),
(233, 'Asia/Brunei'),
(234, 'Asia/Calcutta'),
(235, 'Asia/Choibalsan'),
(236, 'Asia/Chongqing'),
(237, 'Asia/Chungking'),
(238, 'Asia/Colombo'),
(239, 'Asia/Dacca'),
(240, 'Asia/Damascus'),
(241, 'Asia/Dhaka'),
(242, 'Asia/Dili'),
(243, 'Asia/Dubai'),
(244, 'Asia/Dushanbe'),
(245, 'Asia/Gaza'),
(246, 'Asia/Harbin'),
(247, 'Asia/Ho_Chi_Minh'),
(248, 'Asia/Hong_Kong'),
(249, 'Asia/Hovd'),
(250, 'Asia/Irkutsk'),
(251, 'Asia/Istanbul'),
(252, 'Asia/Jakarta'),
(253, 'Asia/Jayapura'),
(254, 'Asia/Jerusalem'),
(255, 'Asia/Kabul'),
(256, 'Asia/Kamchatka'),
(257, 'Asia/Karachi'),
(258, 'Asia/Kashgar'),
(259, 'Asia/Kathmandu'),
(260, 'Asia/Katmandu'),
(261, 'Asia/Kolkata'),
(262, 'Asia/Krasnoyarsk'),
(263, 'Asia/Kuala_Lumpur'),
(264, 'Asia/Kuching'),
(265, 'Asia/Kuwait'),
(266, 'Asia/Macao'),
(267, 'Asia/Macau'),
(268, 'Asia/Magadan'),
(269, 'Asia/Makassar'),
(270, 'Asia/Manila'),
(271, 'Asia/Muscat'),
(272, 'Asia/Nicosia'),
(273, 'Asia/Novosibirsk'),
(274, 'Asia/Omsk'),
(275, 'Asia/Oral'),
(276, 'Asia/Phnom_Penh'),
(277, 'Asia/Pontianak'),
(278, 'Asia/Pyongyang'),
(279, 'Asia/Qatar'),
(280, 'Asia/Qyzylorda'),
(281, 'Asia/Rangoon'),
(282, 'Asia/Riyadh'),
(283, 'Asia/Saigon'),
(284, 'Asia/Sakhalin'),
(285, 'Asia/Samarkand'),
(286, 'Asia/Seoul'),
(287, 'Asia/Shanghai'),
(288, 'Asia/Singapore'),
(289, 'Asia/Taipei'),
(290, 'Asia/Tashkent'),
(291, 'Asia/Tbilisi'),
(292, 'Asia/Tehran'),
(293, 'Asia/Tel_Aviv'),
(294, 'Asia/Thimbu'),
(295, 'Asia/Thimphu'),
(296, 'Asia/Tokyo'),
(297, 'Asia/Ujung_Pandang'),
(298, 'Asia/Ulaanbaatar'),
(299, 'Asia/Ulan_Bator'),
(300, 'Asia/Urumqi'),
(301, 'Asia/Vientiane'),
(302, 'Asia/Vladivostok'),
(303, 'Asia/Yakutsk'),
(304, 'Asia/Yekaterinburg'),
(305, 'Asia/Yerevan'),
(306, 'Atlantic/Azores'),
(307, 'Atlantic/Bermuda'),
(308, 'Atlantic/Canary'),
(309, 'Atlantic/Cape_Verde'),
(310, 'Atlantic/Faeroe'),
(311, 'Atlantic/Faroe'),
(312, 'Atlantic/Jan_Mayen'),
(313, 'Atlantic/Madeira'),
(314, 'Atlantic/Reykjavik'),
(315, 'Atlantic/South_Georgia'),
(316, 'Atlantic/St_Helena'),
(317, 'Atlantic/Stanley'),
(318, 'Australia/ACT'),
(319, 'Australia/Adelaide'),
(320, 'Australia/Brisbane'),
(321, 'Australia/Broken_Hill'),
(322, 'Australia/Canberra'),
(323, 'Australia/Currie'),
(324, 'Australia/Darwin'),
(325, 'Australia/Eucla'),
(326, 'Australia/Hobart'),
(327, 'Australia/LHI'),
(328, 'Australia/Lindeman'),
(329, 'Australia/Lord_Howe'),
(330, 'Australia/Melbourne'),
(331, 'Australia/North'),
(332, 'Australia/NSW'),
(333, 'Australia/Perth'),
(334, 'Australia/Queensland'),
(335, 'Australia/South'),
(336, 'Australia/Sydney'),
(337, 'Australia/Tasmania'),
(338, 'Australia/Victoria'),
(339, 'Australia/West'),
(340, 'Australia/Yancowinna'),
(341, 'Europe/Amsterdam'),
(342, 'Europe/Andorra'),
(343, 'Europe/Athens'),
(344, 'Europe/Belfast'),
(345, 'Europe/Belgrade'),
(346, 'Europe/Berlin'),
(347, 'Europe/Bratislava'),
(348, 'Europe/Brussels'),
(349, 'Europe/Bucharest'),
(350, 'Europe/Budapest'),
(351, 'Europe/Chisinau'),
(352, 'Europe/Copenhagen'),
(353, 'Europe/Dublin'),
(354, 'Europe/Gibraltar'),
(355, 'Europe/Guernsey'),
(356, 'Europe/Helsinki'),
(357, 'Europe/Isle_of_Man'),
(358, 'Europe/Istanbul'),
(359, 'Europe/Jersey'),
(360, 'Europe/Kaliningrad'),
(361, 'Europe/Kiev'),
(362, 'Europe/Lisbon'),
(363, 'Europe/Ljubljana'),
(364, 'Europe/London'),
(365, 'Europe/Luxembourg'),
(366, 'Europe/Madrid'),
(367, 'Europe/Malta'),
(368, 'Europe/Mariehamn'),
(369, 'Europe/Minsk'),
(370, 'Europe/Monaco'),
(371, 'Europe/Moscow'),
(372, 'Europe/Nicosia'),
(373, 'Europe/Oslo'),
(374, 'Europe/Paris'),
(375, 'Europe/Podgorica'),
(376, 'Europe/Prague'),
(377, 'Europe/Riga'),
(378, 'Europe/Rome'),
(379, 'Europe/Samara'),
(380, 'Europe/San_Marino'),
(381, 'Europe/Sarajevo'),
(382, 'Europe/Simferopol'),
(383, 'Europe/Skopje'),
(384, 'Europe/Sofia'),
(385, 'Europe/Stockholm'),
(386, 'Europe/Tallinn'),
(387, 'Europe/Tirane'),
(388, 'Europe/Tiraspol'),
(389, 'Europe/Uzhgorod'),
(390, 'Europe/Vaduz'),
(391, 'Europe/Vatican'),
(392, 'Europe/Vienna'),
(393, 'Europe/Vilnius'),
(394, 'Europe/Volgograd'),
(395, 'Europe/Warsaw'),
(396, 'Europe/Zagreb'),
(397, 'Europe/Zaporozhye'),
(398, 'Europe/Zurich'),
(399, 'Indian/Antananarivo'),
(400, 'Indian/Chagos'),
(401, 'Indian/Christmas'),
(402, 'Indian/Cocos'),
(403, 'Indian/Comoro'),
(404, 'Indian/Kerguelen'),
(405, 'Indian/Mahe'),
(406, 'Indian/Maldives'),
(407, 'Indian/Mauritius'),
(408, 'Indian/Mayotte'),
(409, 'Indian/Reunion'),
(410, 'Pacific/Apia'),
(411, 'Pacific/Auckland'),
(412, 'Pacific/Chatham'),
(413, 'Pacific/Easter'),
(414, 'Pacific/Efate'),
(415, 'Pacific/Enderbury'),
(416, 'Pacific/Fakaofo'),
(417, 'Pacific/Fiji'),
(418, 'Pacific/Funafuti'),
(419, 'Pacific/Galapagos'),
(420, 'Pacific/Gambier'),
(421, 'Pacific/Guadalcanal'),
(422, 'Pacific/Guam'),
(423, 'Pacific/Honolulu'),
(424, 'Pacific/Johnston'),
(425, 'Pacific/Kiritimati'),
(426, 'Pacific/Kosrae'),
(427, 'Pacific/Kwajalein'),
(428, 'Pacific/Majuro'),
(429, 'Pacific/Marquesas'),
(430, 'Pacific/Midway'),
(431, 'Pacific/Nauru'),
(432, 'Pacific/Niue'),
(433, 'Pacific/Norfolk'),
(434, 'Pacific/Noumea'),
(435, 'Pacific/Pago_Pago'),
(436, 'Pacific/Palau'),
(437, 'Pacific/Pitcairn'),
(438, 'Pacific/Ponape'),
(439, 'Pacific/Port_Moresby'),
(440, 'Pacific/Rarotonga'),
(441, 'Pacific/Saipan'),
(442, 'Pacific/Samoa'),
(443, 'Pacific/Tahiti'),
(444, 'Pacific/Tarawa'),
(445, 'Pacific/Tongatapu'),
(446, 'Pacific/Truk'),
(447, 'Pacific/Wake'),
(448, 'Pacific/Wallis'),
(449, 'Pacific/Yap'),
(450, 'Brazil/Acre'),
(451, 'Brazil/DeNoronha'),
(452, 'Brazil/East'),
(453, 'Brazil/West'),
(454, 'Canada/Atlantic'),
(455, 'Canada/Central'),
(456, 'Canada/East-Saskatchewan'),
(457, 'Canada/Eastern'),
(458, 'Canada/Mountain'),
(459, 'Canada/Newfoundland'),
(460, 'Canada/Pacific'),
(461, 'Canada/Saskatchewan'),
(462, 'Canada/Yukon'),
(463, 'CET'),
(464, 'Chile/Continental'),
(465, 'Chile/EasterIsland'),
(466, 'CST6CDT'),
(467, 'Cuba'),
(468, 'EET'),
(469, 'Egypt'),
(470, 'Eire'),
(471, 'EST'),
(472, 'EST5EDT'),
(473, 'Etc/GMT'),
(474, 'Etc/GMT+0'),
(475, 'Etc/GMT+1'),
(476, 'Etc/GMT+10'),
(477, 'Etc/GMT+11'),
(478, 'Etc/GMT+12'),
(479, 'Etc/GMT+2'),
(480, 'Etc/GMT+3'),
(481, 'Etc/GMT+4'),
(482, 'Etc/GMT+5'),
(483, 'Etc/GMT+6'),
(484, 'Etc/GMT+7'),
(485, 'Etc/GMT+8'),
(486, 'Etc/GMT+9'),
(487, 'Etc/GMT-0'),
(488, 'Etc/GMT-1'),
(489, 'Etc/GMT-10'),
(490, 'Etc/GMT-11'),
(491, 'Etc/GMT-12'),
(492, 'Etc/GMT-13'),
(493, 'Etc/GMT-14'),
(494, 'Etc/GMT-2'),
(495, 'Etc/GMT-3'),
(496, 'Etc/GMT-4'),
(497, 'Etc/GMT-5'),
(498, 'Etc/GMT-6'),
(499, 'Etc/GMT-7'),
(500, 'Etc/GMT-8'),
(501, 'Etc/GMT-9'),
(502, 'Etc/GMT0'),
(503, 'Etc/Greenwich'),
(504, 'Etc/UCT'),
(505, 'Etc/Universal'),
(506, 'Etc/UTC'),
(507, 'Etc/Zulu'),
(508, 'Factory'),
(509, 'GB'),
(510, 'GB-Eire'),
(511, 'GMT'),
(512, 'GMT+0'),
(513, 'GMT-0'),
(514, 'GMT0'),
(515, 'Greenwich'),
(516, 'Hongkong'),
(517, 'HST'),
(518, 'Iceland'),
(519, 'Iran'),
(520, 'Israel'),
(521, 'Jamaica'),
(522, 'Japan'),
(523, 'Kwajalein'),
(524, 'Libya'),
(525, 'MET'),
(526, 'Mexico/BajaNorte'),
(527, 'Mexico/BajaSur'),
(528, 'Mexico/General'),
(529, 'MST'),
(530, 'MST7MDT'),
(531, 'Navajo'),
(532, 'NZ'),
(533, 'NZ-CHAT'),
(534, 'Poland'),
(535, 'Portugal'),
(536, 'PRC'),
(537, 'PST8PDT'),
(538, 'ROC'),
(539, 'ROK'),
(540, 'Singapore'),
(541, 'Turkey'),
(542, 'UCT'),
(543, 'Universal'),
(544, 'US/Alaska'),
(545, 'US/Aleutian'),
(546, 'US/Arizona'),
(547, 'US/Central'),
(548, 'US/East-Indiana'),
(549, 'US/Eastern'),
(550, 'US/Hawaii'),
(551, 'US/Indiana-Starke'),
(552, 'US/Michigan'),
(553, 'US/Mountain'),
(554, 'US/Pacific'),
(555, 'US/Pacific-New'),
(556, 'US/Samoa'),
(557, 'UTC'),
(558, 'W-SU'),
(559, 'WET'),
(560, 'Zulu');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_web_browser`
--

CREATE TABLE IF NOT EXISTS `ps_web_browser` (
  `id_web_browser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_web_browser`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Sťahujem dáta pre tabuľku `ps_web_browser`
--

INSERT INTO `ps_web_browser` (`id_web_browser`, `name`) VALUES
(1, 'Safari'),
(2, 'Firefox 2.x'),
(3, 'Firefox 3.x'),
(4, 'Opera'),
(5, 'IE 6.x'),
(6, 'IE 7.x'),
(7, 'IE 8.x'),
(8, 'Google Chrome');

-- --------------------------------------------------------

--
-- Štruktúra tabuľky pre tabuľku `ps_zone`
--

CREATE TABLE IF NOT EXISTS `ps_zone` (
  `id_zone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_zone`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Sťahujem dáta pre tabuľku `ps_zone`
--

INSERT INTO `ps_zone` (`id_zone`, `name`, `active`) VALUES
(1, 'Európa', 1),
(2, 'Amerika', 0),
(3, 'Ázia', 0),
(4, 'Afrika', 0),
(5, 'Oceánia', 0);
