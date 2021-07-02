-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 02-Jul-2021 às 23:03
-- Versão do servidor: 8.0.21
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `teste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_addresses`
--

DROP TABLE IF EXISTS `bt_addresses`;
CREATE TABLE IF NOT EXISTS `bt_addresses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_street_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_street_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_id` int UNSIGNED DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_vat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_vat_registered` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_addresses`
--

INSERT INTO `bt_addresses` (`id`, `name`, `address_street_1`, `address_street_2`, `city`, `state`, `country_id`, `zip`, `phone`, `fax`, `type`, `customer_id`, `company_id`, `created_at`, `updated_at`, `company_name`, `company_vat`, `company_vat_registered`) VALUES
(1, 'Default', 'Овча купел 1', NULL, 'София', NULL, NULL, '1000', '123456789', NULL, 'shipping', 2, NULL, '2021-04-29 10:53:25', '2021-04-29 10:53:25', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_attributes`
--

DROP TABLE IF EXISTS `bt_attributes`;
CREATE TABLE IF NOT EXISTS `bt_attributes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `attribute_name` text COLLATE utf8_unicode_ci,
  `attribute_value` longtext COLLATE utf8_unicode_ci,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_cart`
--

DROP TABLE IF EXISTS `bt_cart`;
CREATE TABLE IF NOT EXISTS `bt_cart` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` longtext COLLATE utf8_unicode_ci,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` int DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `other_info` longtext COLLATE utf8_unicode_ci,
  `order_completed` int DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skip_promo_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `custom_fields_data` longtext COLLATE utf8_unicode_ci,
  `custom_fields_json` longtext COLLATE utf8_unicode_ci,
  `item_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_cart`
--

INSERT INTO `bt_cart` (`id`, `title`, `is_active`, `rel_id`, `rel_type`, `updated_at`, `created_at`, `price`, `currency`, `session_id`, `qty`, `other_info`, `order_completed`, `order_id`, `skip_promo_code`, `created_by`, `custom_fields_data`, `custom_fields_json`, `item_image`, `link`, `description`) VALUES
(1, 'JBL speaker WI-FI', NULL, 10, 'content', '2020-02-13 15:19:14', '2020-02-13 15:19:14', 59.85, NULL, 'nQMJBj8fxwPXfFF6ZWn6CWp08n6VtDdsucEZxRov', 1, NULL, 0, NULL, NULL, NULL, '', 'null', NULL, NULL, NULL),
(4, 'JBL speaker WI-FI', NULL, 10, 'content', '2020-02-16 20:05:38', '2020-02-16 20:05:38', 59.85, NULL, 'RuxtCYRbGmV5Q3V9f9ztEB3BYOazeOfYJVqikbf9', 1, NULL, 0, NULL, NULL, NULL, '', 'null', NULL, NULL, NULL),
(14, 'Apple Computer', NULL, 11, 'content', '2020-02-17 14:55:01', '2020-02-17 14:55:01', 305.99, NULL, 'V2HIkzaREdU64guxXHk6OZlGkQMHDWksQ95BEj9n', 1, NULL, 0, NULL, NULL, NULL, '', 'null', NULL, NULL, NULL),
(15, 'Camera', NULL, 15, 'content', '2020-02-17 14:55:23', '2020-02-17 14:55:23', 19.00, NULL, 'V2HIkzaREdU64guxXHk6OZlGkQMHDWksQ95BEj9n', 1, NULL, 0, NULL, NULL, NULL, '', 'null', NULL, NULL, NULL),
(16, 'JBL speaker WI-FI', NULL, 10, 'content', '2020-02-17 15:59:27', '2020-02-17 15:59:27', 59.85, NULL, 'QKDJp5owQQARLDYAEmvQSYVADDLrZyQOjyyclZBK', 1, NULL, 0, NULL, NULL, NULL, '', 'null', NULL, NULL, NULL),
(17, 'JBL speaker WI-FI', NULL, 10, 'content', '2020-02-17 15:59:49', '2020-02-17 15:59:49', 59.85, NULL, 'oAd0kU5VGzEQByLpMnYxY3xXkyyJnaQfw9CxeVt6', 1, NULL, 0, NULL, NULL, NULL, '', 'null', NULL, NULL, NULL),
(18, 'Apple Computer', NULL, 11, 'content', '2020-02-17 16:00:04', '2020-02-17 16:00:04', 305.99, NULL, 'ahZ3xIGRDdH9HnCdZyh1tpctQIQvpMBDtocc6PLz', 1, NULL, 0, NULL, NULL, NULL, '', 'null', NULL, NULL, NULL),
(19, 'Apple Computer', NULL, 11, 'content', '2020-02-17 16:11:50', '2020-02-17 16:11:50', 305.99, NULL, 'QKDJp5owQQARLDYAEmvQSYVADDLrZyQOjyyclZBK', 1, NULL, 0, NULL, NULL, NULL, '', 'null', NULL, NULL, NULL),
(20, 'Modern Golder Watch', NULL, 9, 'content', '2021-02-09 12:45:41', '2021-02-09 12:45:30', 30.99, NULL, 'z5j6HBnP6RQzJtZ8riJXpzsG6YKGDuPESCZr6wAP', 2, NULL, 0, NULL, NULL, 1, '', 'null', NULL, NULL, NULL),
(24, 'Modern Golder Watch', NULL, 9, 'content', '2021-02-10 14:49:17', '2021-02-10 14:45:59', 30.99, NULL, '6htQ11gb3YEYCUyURKKBGQ0C2auInlxCKLchZDWK', 1, NULL, 1, '6', NULL, NULL, '', 'null', NULL, NULL, NULL),
(25, 'JBL speaker WI-FI', NULL, 10, 'content', '2021-02-10 14:49:17', '2021-02-10 14:46:03', 59.85, NULL, '6htQ11gb3YEYCUyURKKBGQ0C2auInlxCKLchZDWK', 1, NULL, 1, '6', NULL, NULL, '', 'null', NULL, NULL, NULL),
(26, 'JBL speaker WI-FI', NULL, 10, 'content', '2021-04-12 14:22:15', '2021-04-12 14:22:15', 59.85, NULL, 'TKd7nQ2A0JoI46gqRg2dvtE47xZx5YqgVkoIW5kK', 1, NULL, 0, NULL, NULL, NULL, '', 'null', NULL, NULL, NULL),
(27, 'Apple Computer', NULL, 11, 'content', '2021-04-12 14:23:29', '2021-04-12 14:23:29', 305.99, NULL, 'TKd7nQ2A0JoI46gqRg2dvtE47xZx5YqgVkoIW5kK', 1, NULL, 0, NULL, NULL, NULL, '', 'null', NULL, NULL, NULL),
(30, 'JBL speaker WI-FI', NULL, 10, 'content', '2021-04-29 07:53:01', '2021-04-29 07:53:01', 59.85, NULL, 'b45inIYIQFHbS3ciMlUAjYzsbFz0DqwMZpEsYkvK', 1, NULL, 1, '7', NULL, NULL, '', 'null', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_cart_coupons`
--

DROP TABLE IF EXISTS `bt_cart_coupons`;
CREATE TABLE IF NOT EXISTS `bt_cart_coupons` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uses_per_coupon` int DEFAULT NULL,
  `uses_per_customer` int DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_cart_coupons`
--

INSERT INTO `bt_cart_coupons` (`id`, `coupon_name`, `coupon_code`, `discount_type`, `discount_value`, `total_amount`, `uses_per_coupon`, `uses_per_customer`, `is_active`) VALUES
(2, 'Microweber', '5f612dbb', 'percentage', '5', '1', 100, 100, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_cart_coupon_logs`
--

DROP TABLE IF EXISTS `bt_cart_coupon_logs`;
CREATE TABLE IF NOT EXISTS `bt_cart_coupon_logs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `coupon_id` int DEFAULT NULL,
  `coupon_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uses_count` int DEFAULT NULL,
  `use_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_cart_orders`
--

DROP TABLE IF EXISTS `bt_cart_orders`;
CREATE TABLE IF NOT EXISTS `bt_cart_orders` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `order_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `transaction_id` longtext COLLATE utf8_unicode_ci,
  `shipping_service` longtext COLLATE utf8_unicode_ci,
  `shipping` double(8,2) DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` longtext COLLATE utf8_unicode_ci,
  `last_name` longtext COLLATE utf8_unicode_ci,
  `email` longtext COLLATE utf8_unicode_ci,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` text COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8_unicode_ci,
  `address2` longtext COLLATE utf8_unicode_ci,
  `phone` text COLLATE utf8_unicode_ci,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `order_completed` int DEFAULT NULL,
  `is_paid` int DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `user_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `items_count` int DEFAULT NULL,
  `custom_fields_data` longtext COLLATE utf8_unicode_ci,
  `payment_gw` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_verify_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_amount` double(8,2) DEFAULT NULL,
  `payment_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_email` text COLLATE utf8_unicode_ci,
  `payment_receiver_email` text COLLATE utf8_unicode_ci,
  `payment_name` text COLLATE utf8_unicode_ci,
  `payment_country` text COLLATE utf8_unicode_ci,
  `payment_address` text COLLATE utf8_unicode_ci,
  `payment_city` text COLLATE utf8_unicode_ci,
  `payment_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_id` text COLLATE utf8_unicode_ci,
  `payer_status` text COLLATE utf8_unicode_ci,
  `payment_type` text COLLATE utf8_unicode_ci,
  `payment_data` longtext COLLATE utf8_unicode_ci,
  `order_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_shipping` double(8,2) DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `rel_id` int DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` double(8,2) DEFAULT NULL,
  `other_info` longtext COLLATE utf8_unicode_ci,
  `promo_code` longtext COLLATE utf8_unicode_ci,
  `skip_promo_code` int DEFAULT NULL,
  `coupon_id` int DEFAULT NULL,
  `discount_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discount_value` double(8,2) DEFAULT NULL,
  `taxes_amount` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_cart_orders`
--

INSERT INTO `bt_cart_orders` (`id`, `updated_at`, `created_at`, `order_id`, `amount`, `transaction_id`, `shipping_service`, `shipping`, `currency`, `currency_code`, `first_name`, `last_name`, `email`, `country`, `city`, `state`, `zip`, `address`, `address2`, `phone`, `created_by`, `edited_by`, `session_id`, `customer_id`, `order_completed`, `is_paid`, `url`, `user_ip`, `items_count`, `custom_fields_data`, `payment_gw`, `payment_verify_token`, `payment_amount`, `payment_currency`, `payment_status`, `payment_email`, `payment_receiver_email`, `payment_name`, `payment_country`, `payment_address`, `payment_city`, `payment_state`, `payment_zip`, `payment_phone`, `payer_id`, `payer_status`, `payment_type`, `payment_data`, `order_status`, `payment_shipping`, `is_active`, `rel_id`, `rel_type`, `price`, `other_info`, `promo_code`, `skip_promo_code`, `coupon_id`, `discount_type`, `discount_value`, `taxes_amount`) VALUES
(3, '2021-02-10 13:31:20', '2021-02-10 13:31:20', NULL, 188.22, NULL, 'shop/shipping/gateways/country', 0.00, 'USD', NULL, 'John', 'Doe', 'johndoe@microweber.com', 'Bulgaria', 'Sofia', 'Sofia', '1000', 'Cherni Vruh 47', NULL, '123456789', NULL, NULL, 'pBCS7FW85pA1zOsIMpd2EbVur1YpazcZfDay8MoU', NULL, 0, NULL, '{SITE_URL}en/shop', '127.0.0.1', 2, NULL, 'shop/payments/gateways/paypal_pro', '3679c84b7bd9318b599a365e129ff4d2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Additional information message', NULL, NULL, NULL, NULL, NULL, 31.37),
(4, '2021-02-10 13:31:24', '2021-02-10 13:31:24', NULL, 188.22, NULL, 'shop/shipping/gateways/country', 0.00, 'USD', NULL, 'John', 'Doe', 'johndoe@microweber.com', 'Bulgaria', 'Sofia', 'Sofia', '1000', 'Cherni Vruh 47', NULL, '123456789', NULL, NULL, 'pBCS7FW85pA1zOsIMpd2EbVur1YpazcZfDay8MoU', NULL, 0, NULL, '{SITE_URL}en/shop', '127.0.0.1', 2, NULL, 'shop/payments/gateways/paypal_pro', 'f2d2e1faf1d224a5f421ab2785a6b226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Additional information message', NULL, NULL, NULL, NULL, NULL, 31.37),
(6, '2021-02-10 14:46:39', '2021-02-10 14:46:39', NULL, 109.01, NULL, 'shop/shipping/gateways/country', 0.00, 'USD', NULL, 'John', 'Doe', 'john@testmail.com', 'Bulgaria', 'Sofia', 'Sofia', '1000', 'Cherni Vruh 47', NULL, '123456789', NULL, NULL, 'BeGNeBURZlatv8EhMwpHt86Qid0LzgdMRmKLfvon', NULL, 1, NULL, '{SITE_URL}en/shop', '127.0.0.1', 2, NULL, 'shop/payments/gateways/bank_transfer', 'fe331c98c58db0b835860420c1494500', 109.01, 'USD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, NULL, NULL, NULL, 'Additional information message', NULL, NULL, NULL, NULL, NULL, 18.17),
(7, '2021-04-29 07:53:25', '2021-04-29 07:53:25', NULL, 71.82, NULL, 'shop/shipping/gateways/country', 0.00, 'USD', NULL, 'John', 'Doe', 'johndoe@mail.com', 'Afghanistan', 'София', NULL, '1000', 'Овча купел 1', NULL, '123456789', 1, 1, 'b45inIYIQFHbS3ciMlUAjYzsbFz0DqwMZpEsYkvK', 2, 1, NULL, '{SITE_URL}checkout/payment-method', '127.0.0.1', 1, NULL, 'shop/payments/gateways/pay_on_delivery', '4b6cbe4b9fbf0da2ab5402e7510b8a76', 71.82, 'USD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'new', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11.97);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_cart_shipping`
--

DROP TABLE IF EXISTS `bt_cart_shipping`;
CREATE TABLE IF NOT EXISTS `bt_cart_shipping` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_active` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `shipping_cost_max` double(8,2) DEFAULT NULL,
  `shipping_cost_above` double(8,2) DEFAULT NULL,
  `shipping_country` longtext COLLATE utf8_unicode_ci,
  `position` int DEFAULT NULL,
  `shipping_type` longtext COLLATE utf8_unicode_ci,
  `shipping_price_per_size` double(8,2) DEFAULT NULL,
  `shipping_price_per_weight` double(8,2) DEFAULT NULL,
  `shipping_price_per_item` double(8,2) DEFAULT NULL,
  `shipping_price_custom` double(8,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_cart_shipping`
--

INSERT INTO `bt_cart_shipping` (`id`, `updated_at`, `created_at`, `is_active`, `shipping_cost`, `shipping_cost_max`, `shipping_cost_above`, `shipping_country`, `position`, `shipping_type`, `shipping_price_per_size`, `shipping_price_per_weight`, `shipping_price_per_item`, `shipping_price_custom`) VALUES
(2, '2021-02-10 12:06:46', '2021-02-10 12:06:46', '1', 0.00, 0.00, 0.00, 'Worldwide', NULL, 'fixed', 0.00, 0.00, 0.00, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_categories`
--

DROP TABLE IF EXISTS `bt_categories`;
CREATE TABLE IF NOT EXISTS `bt_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `data_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci,
  `url` longtext COLLATE utf8_unicode_ci,
  `parent_id` int DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content` longtext COLLATE utf8_unicode_ci,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `is_deleted` int DEFAULT '0',
  `is_hidden` int DEFAULT '0',
  `users_can_create_subcategories` int DEFAULT NULL,
  `users_can_create_content` int DEFAULT NULL,
  `users_can_create_content_allowed_usergroups` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_meta_title` text COLLATE utf8_unicode_ci,
  `category_meta_keywords` text COLLATE utf8_unicode_ci,
  `category_meta_description` text COLLATE utf8_unicode_ci,
  `category_subtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_subtype_settings` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_categories`
--

INSERT INTO `bt_categories` (`id`, `updated_at`, `created_at`, `created_by`, `edited_by`, `data_type`, `title`, `url`, `parent_id`, `description`, `content`, `rel_type`, `rel_id`, `position`, `is_deleted`, `is_hidden`, `users_can_create_subcategories`, `users_can_create_content`, `users_can_create_content_allowed_usergroups`, `category_meta_title`, `category_meta_keywords`, `category_meta_description`, `category_subtype`, `category_subtype_settings`) VALUES
(1, '2020-02-04 13:50:41', '2020-02-04 13:50:41', 1, 1, 'category', 'Accessoaries', 'accessoaries', 0, '', NULL, 'content', 8, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'default', NULL),
(2, '2020-02-04 13:50:58', '2020-02-04 13:50:58', 1, 1, 'category', 'Clothes', 'clothes', 0, '', NULL, 'content', 8, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'default', NULL),
(3, '2020-02-04 13:51:05', '2020-02-04 13:51:05', 1, 1, 'category', 'Decor', 'decor', 0, '', NULL, 'content', 8, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'default', NULL),
(4, '2020-02-04 13:51:14', '2020-02-04 13:51:14', 1, 1, 'category', 'Hoodies', 'hoodies', 0, '', NULL, 'content', 8, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'default', NULL),
(5, '2020-02-04 13:51:42', '2020-02-04 13:51:42', 1, 1, 'category', 'Sound Systems', 'sound-systems', 0, '', NULL, 'content', 8, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'default', NULL),
(6, '2020-02-04 13:51:53', '2020-02-04 13:51:53', 1, 1, 'category', 'T-shirts', 't-shirts', 0, '', NULL, 'content', 8, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'default', NULL),
(7, '2020-02-04 13:52:04', '2020-02-04 13:52:04', 1, 1, 'category', 'Others', 'others', 0, '', NULL, 'content', 8, 0, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, 'default', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_categories_items`
--

DROP TABLE IF EXISTS `bt_categories_items`;
CREATE TABLE IF NOT EXISTS `bt_categories_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` int DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_categories_items`
--

INSERT INTO `bt_categories_items` (`id`, `parent_id`, `rel_type`, `rel_id`) VALUES
(1, 1, 'content', 9),
(2, 7, 'content', 9),
(3, 5, 'content', 10),
(4, 7, 'content', 10),
(5, 7, 'content', 11),
(6, 5, 'content', 12),
(7, 7, 'content', 12),
(8, 5, 'content', 13),
(9, 7, 'content', 13),
(10, 5, 'content', 14),
(11, 7, 'content', 14),
(12, 1, 'content', 15),
(13, 7, 'content', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_comments`
--

DROP TABLE IF EXISTS `bt_comments`;
CREATE TABLE IF NOT EXISTS `bt_comments` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `rel_type` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `rel_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `comment_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `comment_body` longtext COLLATE utf8_unicode_ci,
  `comment_email` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `comment_website` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `is_moderated` int DEFAULT NULL,
  `from_url` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `comment_subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `is_new` int DEFAULT NULL,
  `is_sent_email` int DEFAULT NULL,
  `is_subscribed_for_notification` int DEFAULT NULL,
  `session_id` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `is_spam` int DEFAULT NULL,
  `for_newsletter` int DEFAULT NULL,
  `user_ip` text COLLATE utf8_unicode_ci,
  `reply_to_comment_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_comments`
--

INSERT INTO `bt_comments` (`id`, `rel_type`, `rel_id`, `updated_at`, `created_at`, `created_by`, `edited_by`, `comment_name`, `comment_body`, `comment_email`, `comment_website`, `is_moderated`, `from_url`, `comment_subject`, `is_new`, `is_sent_email`, `is_subscribed_for_notification`, `session_id`, `is_spam`, `for_newsletter`, `user_ip`, `reply_to_comment_id`) VALUES
(1, 'content', '20', '2021-02-10 14:44:08', '2021-02-10 14:44:08', NULL, NULL, 'John Doe', '<p>Very good article. This is test comment from the blog on this article.</p>\n', 'john@testmail.com', NULL, 1, '{SITE_URL}en/around-the-world', NULL, NULL, NULL, NULL, 'BeGNeBURZlatv8EhMwpHt86Qid0LzgdMRmKLfvon', NULL, NULL, '127.0.0.1', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_content`
--

DROP TABLE IF EXISTS `bt_content`;
CREATE TABLE IF NOT EXISTS `bt_content` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subtype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `parent` int DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `position` int DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `content_body` longtext COLLATE utf8_unicode_ci,
  `is_active` int DEFAULT '1',
  `subtype_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_type_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active_site_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout_style` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `original_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_home` int DEFAULT '0',
  `is_pinged` int DEFAULT '0',
  `is_shop` int DEFAULT '0',
  `is_deleted` int DEFAULT '0',
  `require_login` int DEFAULT '0',
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_meta_title` text COLLATE utf8_unicode_ci,
  `content_meta_keywords` text COLLATE utf8_unicode_ci,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `posted_at` datetime DEFAULT NULL,
  `draft_of` int DEFAULT NULL,
  `copy_of` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_content`
--

INSERT INTO `bt_content` (`id`, `content_type`, `subtype`, `url`, `title`, `parent`, `description`, `position`, `content`, `content_body`, `is_active`, `subtype_value`, `custom_type`, `custom_type_value`, `active_site_template`, `layout_file`, `layout_name`, `layout_style`, `content_filename`, `original_link`, `is_home`, `is_pinged`, `is_shop`, `is_deleted`, `require_login`, `status`, `content_meta_title`, `content_meta_keywords`, `session_id`, `updated_at`, `created_at`, `expires_at`, `created_by`, `edited_by`, `posted_at`, `draft_of`, `copy_of`) VALUES
(1, 'page', 'static', 'home', 'Home', 0, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'index.php', NULL, NULL, NULL, NULL, 1, 0, 0, 0, 0, NULL, NULL, NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', '2021-07-02 19:55:22', '2020-01-21 10:14:04', NULL, 1, 1, NULL, NULL, NULL),
(2, 'page', 'dynamic', 'blog', 'Blog', 0, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, 'default', 'layouts__blog.php', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'IVMvLPCGtBaAtGfgaj27YIgDlvk14VSmrf45Fgn9', '2021-04-27 12:50:15', '2020-01-21 10:33:19', NULL, 1, 1, '2020-02-17 08:30:46', NULL, NULL),
(5, 'page', 'static', 'contact-us', 'Contact Us', 0, NULL, -5, NULL, NULL, 1, NULL, NULL, NULL, 'default', 'layouts__contacts.php', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'BtpiKWhd9jzliV5qThNyZzVY1yCq1kttlBDKmiyP', '2021-04-27 13:33:29', '2020-01-22 14:10:12', NULL, 1, 1, '2020-01-22 14:10:12', NULL, NULL),
(7, 'page', 'static', 'services', 'Services', 0, NULL, -3, NULL, NULL, 1, NULL, NULL, NULL, 'default', 'layouts__services.php', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', '2021-07-02 19:56:15', '2020-01-29 13:48:15', NULL, 1, 1, '2020-01-29 13:48:15', NULL, NULL),
(8, 'page', 'dynamic', 'shop', 'Shop', 0, NULL, -1, NULL, NULL, 1, NULL, NULL, NULL, 'default', 'layouts__shop.php', NULL, NULL, NULL, NULL, 0, 0, 1, 0, 0, NULL, NULL, NULL, '2wIoq4z4VcsIsonCVm6XJl0usbrdewh6FB65uPTT', '2021-04-29 08:23:41', '2020-02-04 13:50:17', NULL, 1, 1, '2021-03-26 15:24:12', NULL, NULL),
(9, 'product', 'product', 'modern-golder-watch', 'Modern Golder Watch', 8, NULL, 8, NULL, '<h6 class=\"strong element\" id=\"element_1616769519855\" >How to write product descriptions that sell One of the best things you can do to make your store successful is invest some time in writing great product descriptions. You want to provide detailed yet concise information that will entice potential customers to buy. <br><br>Think like a consumer Think about what you as a consumer would want to know, then include those features in your description. For clothes: materials and fit. For food: ingredients and how it was prepared. Bullets are your friends when listing features.<br></h6>', 1, NULL, NULL, NULL, NULL, 'inherit', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', '2021-03-26 14:45:03', '2020-02-04 13:53:26', NULL, 1, 1, '2020-02-04 13:53:26', NULL, NULL),
(10, 'product', 'product', 'jbl-speaker-wi-fi', 'JBL speaker WI-FI', 8, NULL, 7, NULL, 'How to write product descriptions that sell One of the best things you can do to make your store successful is invest some time in writing great product descriptions. You want to provide detailed yet concise information that will entice potential customers to buy. <br><br>Think like a consumer Think about what you as a consumer would want to know, then include those features in your description. For clothes: materials and fit. For food: ingredients and how it was prepared. Bullets are your friends when listing features.', 1, NULL, NULL, NULL, NULL, 'inherit', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', '2020-02-04 13:56:39', '2020-02-04 13:54:38', NULL, 1, 1, '2020-02-04 13:54:38', NULL, NULL),
(11, 'product', 'product', 'apple-computer', 'Apple Computer', 8, NULL, 6, NULL, 'How to write product descriptions that sell One of the best things you can do to make your store successful is invest some time in writing great product descriptions. You want to provide detailed yet concise information that will entice potential customers to buy.<br><br>Think like a consumer Think about what you as a consumer would want to know, then include those features in your description. For clothes: materials and fit. For food: ingredients and how it was prepared. Bullets are your friends when listing features.', 1, NULL, NULL, NULL, NULL, 'inherit', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', '2021-03-26 14:46:03', '2020-02-04 13:56:02', NULL, 1, 1, '2020-02-04 13:56:02', NULL, NULL),
(12, 'product', 'product', '3d-sound-speaker', '3D Sound Speaker', 8, NULL, 5, NULL, 'How to write product descriptions that sell One of the best things you can do to make your store successful is invest some time in writing great product descriptions. You want to provide detailed yet concise information that will entice potential customers to buy.<br><br>Think like a consumer Think about what you as a consumer would want to know, then include those features in your description. For clothes: materials and fit. For food: ingredients and how it was prepared. Bullets are your friends when listing features.', 1, NULL, NULL, NULL, NULL, 'inherit', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', '2021-03-26 14:46:39', '2020-02-04 13:58:24', NULL, 1, 1, '2020-02-04 13:58:24', NULL, NULL),
(13, 'product', 'product', 'amazon-wi-fi-speaker', 'Amazon WI-FI Speaker', 8, NULL, 4, NULL, 'How to write product descriptions that sell One of the best things you can do to make your store successful is invest some time in writing great product descriptions. You want to provide detailed yet concise information that will entice potential customers to buy.<br><br>Think like a consumer Think about what you as a consumer would want to know, then include those features in your description. For clothes: materials and fit. For food: ingredients and how it was prepared. Bullets are your friends when listing features.', 1, NULL, NULL, NULL, NULL, 'inherit', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', '2021-03-26 14:47:11', '2020-02-04 13:59:16', NULL, 1, 1, '2020-02-04 13:59:16', NULL, NULL),
(14, 'product', 'product', 'genelec-speaker', 'Genelec Speaker', 8, NULL, 3, NULL, 'How to write product descriptions that sell One of the best things you can do to make your store successful is invest some time in writing great product descriptions. You want to provide detailed yet concise information that will entice potential customers to buy.<br><br>Think like a consumer Think about what you as a consumer would want to know, then include those features in your description. For clothes: materials and fit. For food: ingredients and how it was prepared. Bullets are your friends when listing features.', 1, NULL, NULL, NULL, NULL, 'inherit', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', '2021-03-26 14:47:28', '2020-02-04 14:00:18', NULL, 1, 1, '2020-02-04 14:00:18', NULL, NULL),
(15, 'product', 'product', 'camera', 'Camera', 8, NULL, 2, '', 'How to write product descriptions that sell One of the best things you can do to make your store successful is invest some time in writing great product descriptions. You want to provide detailed yet concise information that will entice potential customers to buy.<br><br>Think like a consumer Think about what you as a consumer would want to know, then include those features in your description. For clothes: materials and fit. For food: ingredients and how it was prepared. Bullets are your friends when listing features.', 1, NULL, '', '', NULL, 'inherit', '', '', '', NULL, 0, 0, 0, 0, 0, '', NULL, NULL, 'XzDBYrwyAgvSYIdeYuCVZOd5EanHvSt0r8kZBdk7', '2021-03-26 15:24:26', '2020-02-04 14:01:02', '0000-00-00 00:00:00', 1, 1, '2020-02-04 14:01:02', 0, 0),
(17, 'post', 'post', 'discovery-incommode-earnestly-no-he-commanded', 'Scuba diving in the islands', 2, NULL, 9, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;<div class=\"element\" id=\"element_1616772408911\"><p class=\"element\" id=\"element_1616772408969\"><br></p></div><div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408968\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408967\"><br></p></div><div class=\"col\" ><div class=\"element\"><ul class=\"mw-default-layout-un-ordered-t4 element\" id=\"element_1616772408970\"><li>Unordered list with dots</li><li>Unordered list with dots</li><li>Unordered list with dots</li></ul></div></div><div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408980\"><br></p></div><div class=\"element\" id=\"element_1616772408912\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;<div class=\"element\" id=\"dlp-item-1616772408959\"><p class=\"element\" id=\"element_1616772408974\"><br></p><div class=\"col\" ><div class=\"element\" id=\"element_1616772408987\"><ul class=\"mw-default-layout-blockquote element\" id=\"element_1616772408986\"><li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li></ul><small class=\"text-muted\">Someone famous in</small></div></div><p class=\"element\" id=\"element_1616772408974\"><br></p><p class=\"element\" id=\"element_1616772408974\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<br></p><p class=\"element\" id=\"element_1616772408974\"><br></p><p class=\"element\" id=\"element_1616772408974\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</p><div class=\"element\" id=\"dlp-item-1616772409014\"><p class=\"element\" id=\"element_1616772409020\"><br class=\"Apple-interchange-newline\"></p></div><p class=\"element\" id=\"element_1616772408974\"><br></p><p class=\"element\" id=\"element_1616772408974\"><br></p></div></div>', NULL, 1, NULL, NULL, NULL, NULL, 'inherit', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'IVMvLPCGtBaAtGfgaj27YIgDlvk14VSmrf45Fgn9', '2021-03-26 15:28:57', '2020-02-04 16:07:18', NULL, 1, 1, '2020-02-04 16:07:18', NULL, NULL),
(18, 'post', 'post', 'travel-in-the-west', 'Travel in the west', 2, NULL, 10, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;<div class=\"element\" id=\"element_1616772408911\"><p class=\"element\" id=\"element_1616772408969\"><br></p></div><div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408968\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408967\"><br></p></div><div class=\"col\" ><div class=\"element\"><ul class=\"mw-default-layout-un-ordered-t4 element\" id=\"element_1616772408970\"><li>Unordered list with dots</li><li>Unordered list with dots</li><li>Unordered list with dots</li></ul></div></div><div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408980\"><br></p></div><div class=\"element\" id=\"element_1616772408912\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;<div class=\"element\" id=\"dlp-item-1616772408959\"><p class=\"element\" id=\"element_1616772408974\"><br></p><div class=\"col\" ><div class=\"element\" id=\"element_1616772408987\"><ul class=\"mw-default-layout-blockquote element\" id=\"element_1616772408986\"><li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li></ul><small class=\"text-muted\">Someone famous in</small></div></div><p class=\"element\" id=\"element_1616772408974\"><br></p><p class=\"element\" id=\"element_1616772408974\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<br></p><p class=\"element\" id=\"element_1616772408974\"><br></p><p class=\"element\" id=\"element_1616772408974\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</p><div class=\"element\" id=\"dlp-item-1616772409014\"><p class=\"element\" id=\"element_1616772409020\"><br class=\"Apple-interchange-newline\"></p></div><p class=\"element\" id=\"element_1616772408974\"><br></p><p class=\"element\" id=\"element_1616772408974\"><br></p></div></div>', NULL, 1, NULL, NULL, NULL, NULL, 'inherit', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'IVMvLPCGtBaAtGfgaj27YIgDlvk14VSmrf45Fgn9', '2021-03-26 15:28:55', '2020-02-04 16:15:34', NULL, 1, 1, '2020-02-04 16:15:34', NULL, NULL),
(19, 'post', 'post', 'unforgettable-summer-vibes', 'Unforgettable summer vibes', 2, NULL, 11, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;<div class=\"element\" id=\"element_1616772408911\"><p class=\"element\" id=\"element_1616772408969\"><br></p></div><div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408968\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408967\"><br></p></div><div class=\"col\" ><div class=\"element\"><ul class=\"mw-default-layout-un-ordered-t4 element\" id=\"element_1616772408970\"><li>Unordered list with dots</li><li>Unordered list with dots</li><li>Unordered list with dots</li></ul></div></div><div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408980\"><br></p></div><div class=\"element\" id=\"element_1616772408912\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;<div class=\"element\" id=\"dlp-item-1616772408959\"><p class=\"element\" id=\"element_1616772408974\"><br></p><div class=\"col\" ><div class=\"element\" id=\"element_1616772408987\"><ul class=\"mw-default-layout-blockquote element\" id=\"element_1616772408986\"><li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li></ul><small class=\"text-muted\">Someone famous in</small></div></div><p class=\"element\" id=\"element_1616772408974\"><br></p><p class=\"element\" id=\"element_1616772408974\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<br></p><p class=\"element\" id=\"element_1616772408974\"><br></p><p class=\"element\" id=\"element_1616772408974\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</p><div class=\"element\" id=\"dlp-item-1616772409014\"><p class=\"element\" id=\"element_1616772409020\"><br class=\"Apple-interchange-newline\"></p></div><p class=\"element\" id=\"element_1616772408974\"><br></p><p class=\"element\" id=\"element_1616772408974\"><br></p></div></div>', NULL, 1, NULL, NULL, NULL, NULL, 'inherit', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'IVMvLPCGtBaAtGfgaj27YIgDlvk14VSmrf45Fgn9', '2021-03-26 15:28:53', '2020-02-04 16:18:35', NULL, 1, 1, '2020-02-04 16:18:35', NULL, NULL),
(20, 'post', 'post', 'around-the-world', 'Around the world', 2, NULL, 12, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;<div class=\"element\" id=\"element_1616772408911\"><p class=\"element\" id=\"element_1616772408969\"><br></p></div><div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408968\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408967\"><br></p></div><div class=\"col\" ><div class=\"element\"><ul class=\"mw-default-layout-un-ordered-t4 element\" id=\"element_1616772408970\"><li>Unordered list with dots</li><li>Unordered list with dots</li><li>Unordered list with dots</li></ul></div></div><div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408980\"><br></p></div><div class=\"element\" id=\"element_1616772408912\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;<div class=\"element\" id=\"dlp-item-1616772408959\"><p class=\"element\" id=\"element_1616772408974\"><br></p><div class=\"col\" ><div class=\"element\" id=\"element_1616772408987\"><ul class=\"mw-default-layout-blockquote element\" id=\"element_1616772408986\"><li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li></ul><small class=\"text-muted\">Someone famous in</small></div></div><p class=\"element\" id=\"element_1616772408974\"><br></p><p class=\"element\" id=\"element_1616772408974\">Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy.&nbsp;Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).<br></p><p class=\"element\" id=\"element_1616772408974\"><br></p><p class=\"element\" id=\"element_1616772408974\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.&nbsp;The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.&nbsp;</p><div class=\"element\" id=\"dlp-item-1616772409014\"><p class=\"element\" id=\"element_1616772409020\"><br class=\"Apple-interchange-newline\"></p></div><p class=\"element\" id=\"element_1616772408974\"><br></p><p class=\"element\" id=\"element_1616772408974\"><br></p></div></div>', NULL, 1, NULL, NULL, NULL, NULL, 'inherit', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'IVMvLPCGtBaAtGfgaj27YIgDlvk14VSmrf45Fgn9', '2021-03-26 15:28:51', '2020-02-04 16:20:37', NULL, 1, 1, '2020-02-04 16:20:37', NULL, NULL),
(21, 'post', 'post', 'riding-at-your-favourite-destination', 'Pedalando em seu destino favorito', 2, NULL, 13, 'É um fato estabelecido há muito tempo que um leitor se distrairá com o conteúdo legível de uma página ao examinar seu layout. O objetivo de usar Lorem Ipsum é que ele tem uma distribuição de letras mais ou menos normal, ao contrário de usar \'Conteúdo aqui, conteúdo aqui\', fazendo com que pareça português legível.<br><div class=\"element\" id=\"element_1616772408911\"><p class=\"element\" id=\"element_1616772408969\"><br></p></div>\n<div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408968\">Muitos pacotes de editoração eletrônica e editores de páginas da web agora usam Lorem Ipsum como seu texto de modelo padrão, e uma pesquisa por \'lorem ipsum\' revelará muitos sites ainda em sua infância. Várias versões evoluíram ao longo dos anos, às vezes por acidente, às vezes de propósito (humor injetado e coisas do gênero).<br></p></div>\n<div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408967\"><span><br></span></p></div>\n<div class=\"col\">\n    <div class=\"element\">\n        <ul class=\"mw-default-layout-un-ordered-t4 element\" id=\"element_1616772408970\">\n            <li>Unordered list with dots</li>\n            <li>Unordered list with dots</li>\n            <li>Unordered list with dots</li>\n        </ul>\n    </div>\n</div>\n<div class=\"element\" id=\"element_1616772408912\"><p class=\"element\" id=\"element_1616772408980\"><br></p></div>\n<div class=\"element\" id=\"element_1616772408912\">\nÉ um fato estabelecido há muito tempo que um leitor se distrairá com o conteúdo legível de uma página ao examinar seu layout. O objetivo de usar Lorem Ipsum é que ele tem uma distribuição de letras mais ou menos normal, ao contrário de usar \'Conteúdo aqui, conteúdo aqui\', fazendo com que pareça português legível.<div class=\"element\" id=\"dlp-item-1616772408959\">\n<p class=\"element\" id=\"element_1616772408974\"><br></p>\n<div class=\"col\">\n    <div class=\"element\" id=\"element_1616772408987\">\n        <ul class=\"mw-default-layout-blockquote element\" id=\"element_1616772408986\">\n            <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>\n        </ul>\n        <small class=\"text-muted\">Someone famous in</small>\n    </div>\n</div>\n<p class=\"element\" id=\"element_1616772408974\"><br></p>\n<p class=\"element\" id=\"element_1616772408974\">Muitos pacotes de editoração eletrônica e editores de páginas da web agora usam Lorem Ipsum como seu texto de modelo padrão, e uma pesquisa por \'lorem ipsum\' revelará muitos sites ainda em sua infância. Várias versões evoluíram ao longo dos anos, às vezes por acidente, às vezes de propósito (humor injetado e coisas do gênero).<br></p>\n<p class=\"element\" id=\"element_1616772408974\"><br></p>\n<p class=\"element\" id=\"element_1616772408974\">É um fato estabelecido há muito tempo que um leitor se distrairá com o conteúdo legível de uma página ao examinar seu layout. O objetivo de usar Lorem Ipsum é que ele tem uma distribuição de letras mais ou menos normal, ao contrário de usar \'Conteúdo aqui, conteúdo aqui\', fazendo com que pareça português legível.<br></p>\n<div class=\"element\" id=\"dlp-item-1616772409014\"><p class=\"element\" id=\"element_1616772409020\"><br class=\"Apple-interchange-newline\"></p></div>\n<p class=\"element\" id=\"element_1616772408974\"><br></p>\n<p class=\"element\" id=\"element_1616772408974\"><br></p>\n<p class=\"element\" id=\"element_1616772408974\"><br></p>\n<p class=\"element\" id=\"element_1616772408974\"><br></p>\n</div>\n</div>\n<div class=\"element\">\n<div class=\"col\">\n    <div class=\"element ml-3\" id=\"element_1616772317832\"><p class=\"element\" id=\"element_1616772408913\">\n        \n    </p></div>\n</div>\n                    <div class=\"element\" id=\"element_1616772408914\"><p class=\"element\" id=\"element_1616772409037\"><br></p></div>\n</div>', NULL, 1, NULL, NULL, NULL, NULL, 'inherit', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'XzDBYrwyAgvSYIdeYuCVZOd5EanHvSt0r8kZBdk7', '2021-07-02 19:53:41', '2020-02-04 16:21:21', NULL, 1, 1, '2020-02-04 16:21:21', NULL, NULL),
(24, 'page', 'static', 'about-us', 'About us', 0, NULL, -4, NULL, NULL, 1, NULL, NULL, NULL, NULL, 'layouts__about.php', NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'rSO1is2Q98bZVUmMa8dMSV9xoS4vI8oOJ3RCGBrx', '2021-04-27 14:13:54', '2021-04-27 11:31:38', NULL, 1, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_content_data`
--

DROP TABLE IF EXISTS `bt_content_data`;
CREATE TABLE IF NOT EXISTS `bt_content_data` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `content_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_name` text COLLATE utf8_unicode_ci,
  `field_value` longtext COLLATE utf8_unicode_ci,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_content_data`
--

INSERT INTO `bt_content_data` (`id`, `updated_at`, `created_at`, `created_by`, `edited_by`, `content_id`, `field_name`, `field_value`, `session_id`, `rel_type`, `rel_id`) VALUES
(1, '2020-02-04 14:04:05', '2020-02-04 13:53:26', 1, 1, '9', 'qty', 'nolimit', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9'),
(2, '2021-03-26 14:39:01', '2020-02-04 13:53:26', 1, 1, '9', 'sku', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9'),
(3, '2020-02-04 14:04:05', '2020-02-04 13:53:26', 1, 1, '9', 'shipping_weight', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9'),
(4, '2020-02-04 14:04:05', '2020-02-04 13:53:26', 1, 1, '9', 'shipping_width', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9'),
(5, '2020-02-04 14:04:05', '2020-02-04 13:53:26', 1, 1, '9', 'shipping_height', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9'),
(6, '2020-02-04 14:04:05', '2020-02-04 13:53:26', 1, 1, '9', 'shipping_depth', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9'),
(7, '2020-02-04 14:04:05', '2020-02-04 13:53:26', 1, 1, '9', 'additional_shipping_cost', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9'),
(8, '2020-02-04 14:04:05', '2020-02-04 13:53:26', 1, 1, '9', 'max_qty_per_order', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9'),
(9, '2020-02-04 14:04:05', '2020-02-04 13:53:26', 1, 1, '9', 'label', 'New', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9'),
(10, '2020-02-04 14:04:05', '2020-02-04 13:53:26', 1, 1, '9', 'label-color', '#385dff', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9'),
(11, '2020-02-04 13:56:39', '2020-02-04 13:54:38', 1, 1, '10', 'qty', 'nolimit', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10'),
(12, '2021-03-26 14:45:28', '2020-02-04 13:54:38', 1, 1, '10', 'sku', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10'),
(13, '2020-02-04 13:56:39', '2020-02-04 13:54:38', 1, 1, '10', 'shipping_weight', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10'),
(14, '2020-02-04 13:56:39', '2020-02-04 13:54:38', 1, 1, '10', 'shipping_width', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10'),
(15, '2020-02-04 13:56:39', '2020-02-04 13:54:38', 1, 1, '10', 'shipping_height', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10'),
(16, '2020-02-04 13:56:39', '2020-02-04 13:54:38', 1, 1, '10', 'shipping_depth', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10'),
(17, '2020-02-04 13:56:39', '2020-02-04 13:54:38', 1, 1, '10', 'additional_shipping_cost', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10'),
(18, '2020-02-04 13:56:39', '2020-02-04 13:54:38', 1, 1, '10', 'max_qty_per_order', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10'),
(19, '2021-03-26 14:45:28', '2020-02-04 13:54:38', 1, 1, '10', 'label', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10'),
(20, '2021-03-26 14:45:28', '2020-02-04 13:54:38', 1, 1, '10', 'label-color', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10'),
(21, '2020-02-04 13:56:23', '2020-02-04 13:56:02', 1, 1, '11', 'qty', 'nolimit', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11'),
(22, '2021-03-26 14:46:03', '2020-02-04 13:56:02', 1, 1, '11', 'sku', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11'),
(23, '2020-02-04 13:56:23', '2020-02-04 13:56:02', 1, 1, '11', 'shipping_weight', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11'),
(24, '2020-02-04 13:56:23', '2020-02-04 13:56:02', 1, 1, '11', 'shipping_width', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11'),
(25, '2020-02-04 13:56:23', '2020-02-04 13:56:02', 1, 1, '11', 'shipping_height', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11'),
(26, '2020-02-04 13:56:23', '2020-02-04 13:56:02', 1, 1, '11', 'shipping_depth', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11'),
(27, '2020-02-04 13:56:23', '2020-02-04 13:56:02', 1, 1, '11', 'additional_shipping_cost', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11'),
(28, '2020-02-04 13:56:23', '2020-02-04 13:56:02', 1, 1, '11', 'max_qty_per_order', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11'),
(29, '2021-03-26 14:46:03', '2020-02-04 13:56:02', 1, 1, '11', 'label', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11'),
(30, '2021-03-26 14:46:03', '2020-02-04 13:56:02', 1, 1, '11', 'label-color', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11'),
(31, '2020-02-04 14:03:16', '2020-02-04 13:58:24', 1, 1, '12', 'qty', 'nolimit', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12'),
(32, '2021-03-26 14:46:39', '2020-02-04 13:58:24', 1, 1, '12', 'sku', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12'),
(33, '2020-02-04 14:03:16', '2020-02-04 13:58:24', 1, 1, '12', 'shipping_weight', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12'),
(34, '2020-02-04 14:03:16', '2020-02-04 13:58:24', 1, 1, '12', 'shipping_width', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12'),
(35, '2020-02-04 14:03:16', '2020-02-04 13:58:24', 1, 1, '12', 'shipping_height', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12'),
(36, '2020-02-04 14:03:16', '2020-02-04 13:58:24', 1, 1, '12', 'shipping_depth', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12'),
(37, '2020-02-04 14:03:16', '2020-02-04 13:58:24', 1, 1, '12', 'additional_shipping_cost', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12'),
(38, '2020-02-04 14:03:16', '2020-02-04 13:58:24', 1, 1, '12', 'max_qty_per_order', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12'),
(39, '2020-02-04 14:03:16', '2020-02-04 13:58:25', 1, 1, '12', 'label', 'Promo', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12'),
(40, '2020-02-04 14:03:16', '2020-02-04 13:58:25', 1, 1, '12', 'label-color', '#d51818', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12'),
(41, '2020-02-04 13:59:16', '2020-02-04 13:59:16', 1, 1, '13', 'qty', 'nolimit', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13'),
(42, '2021-03-26 14:47:11', '2020-02-04 13:59:16', 1, 1, '13', 'sku', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13'),
(43, '2020-02-04 13:59:16', '2020-02-04 13:59:16', 1, 1, '13', 'shipping_weight', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13'),
(44, '2020-02-04 13:59:16', '2020-02-04 13:59:16', 1, 1, '13', 'shipping_width', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13'),
(45, '2020-02-04 13:59:16', '2020-02-04 13:59:16', 1, 1, '13', 'shipping_height', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13'),
(46, '2020-02-04 13:59:16', '2020-02-04 13:59:16', 1, 1, '13', 'shipping_depth', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13'),
(47, '2020-02-04 13:59:16', '2020-02-04 13:59:16', 1, 1, '13', 'additional_shipping_cost', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13'),
(48, '2020-02-04 13:59:16', '2020-02-04 13:59:16', 1, 1, '13', 'max_qty_per_order', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13'),
(49, '2021-03-26 14:47:11', '2020-02-04 13:59:16', 1, 1, '13', 'label', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13'),
(50, '2021-03-26 14:47:11', '2020-02-04 13:59:16', 1, 1, '13', 'label-color', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13'),
(51, '2020-02-04 14:03:05', '2020-02-04 14:00:18', 1, 1, '14', 'qty', 'nolimit', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14'),
(52, '2021-03-26 14:47:28', '2020-02-04 14:00:18', 1, 1, '14', 'sku', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14'),
(53, '2020-02-04 14:03:05', '2020-02-04 14:00:18', 1, 1, '14', 'shipping_weight', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14'),
(54, '2020-02-04 14:03:06', '2020-02-04 14:00:18', 1, 1, '14', 'shipping_width', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14'),
(55, '2020-02-04 14:03:06', '2020-02-04 14:00:18', 1, 1, '14', 'shipping_height', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14'),
(56, '2020-02-04 14:03:06', '2020-02-04 14:00:18', 1, 1, '14', 'shipping_depth', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14'),
(57, '2020-02-04 14:03:06', '2020-02-04 14:00:18', 1, 1, '14', 'additional_shipping_cost', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14'),
(58, '2020-02-04 14:03:06', '2020-02-04 14:00:18', 1, 1, '14', 'max_qty_per_order', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14'),
(59, '2021-03-26 14:47:28', '2020-02-04 14:00:18', 1, 1, '14', 'label', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14'),
(60, '2021-03-26 14:47:28', '2020-02-04 14:00:18', 1, 1, '14', 'label-color', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14'),
(61, '2020-02-04 14:01:02', '2020-02-04 14:01:02', 1, 1, '15', 'qty', 'nolimit', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15'),
(62, '2021-03-26 14:47:50', '2020-02-04 14:01:02', 1, 1, '15', 'sku', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15'),
(63, '2020-02-04 14:01:02', '2020-02-04 14:01:02', 1, 1, '15', 'shipping_weight', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15'),
(64, '2020-02-04 14:01:02', '2020-02-04 14:01:02', 1, 1, '15', 'shipping_width', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15'),
(65, '2020-02-04 14:01:02', '2020-02-04 14:01:02', 1, 1, '15', 'shipping_height', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15'),
(66, '2020-02-04 14:01:02', '2020-02-04 14:01:02', 1, 1, '15', 'shipping_depth', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15'),
(67, '2020-02-04 14:01:02', '2020-02-04 14:01:02', 1, 1, '15', 'additional_shipping_cost', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15'),
(68, '2020-02-04 14:01:02', '2020-02-04 14:01:02', 1, 1, '15', 'max_qty_per_order', '', '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15'),
(69, '2021-03-26 14:47:50', '2020-02-04 14:01:02', 1, 1, '15', 'label', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15'),
(70, '2021-03-26 14:47:50', '2020-02-04 14:01:02', 1, 1, '15', 'label-color', NULL, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15'),
(71, '2021-03-26 14:39:01', '2021-03-26 14:39:01', 1, 1, NULL, 'special_price', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '9'),
(72, '2021-03-26 14:39:01', '2021-03-26 14:39:01', 1, 1, NULL, 'barcode', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '9'),
(73, '2021-03-26 14:45:28', '2021-03-26 14:45:28', 1, 1, NULL, 'special_price', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '10'),
(74, '2021-03-26 14:45:28', '2021-03-26 14:45:28', 1, 1, NULL, 'barcode', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '10'),
(75, '2021-03-26 14:46:03', '2021-03-26 14:46:03', 1, 1, NULL, 'special_price', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '11'),
(76, '2021-03-26 14:46:03', '2021-03-26 14:46:03', 1, 1, NULL, 'barcode', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '11'),
(77, '2021-03-26 14:46:39', '2021-03-26 14:46:39', 1, 1, NULL, 'special_price', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '12'),
(78, '2021-03-26 14:46:39', '2021-03-26 14:46:39', 1, 1, NULL, 'barcode', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '12'),
(79, '2021-03-26 14:47:11', '2021-03-26 14:47:11', 1, 1, NULL, 'special_price', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '13'),
(80, '2021-03-26 14:47:11', '2021-03-26 14:47:11', 1, 1, NULL, 'barcode', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '13'),
(81, '2021-03-26 14:47:28', '2021-03-26 14:47:28', 1, 1, NULL, 'special_price', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '14'),
(82, '2021-03-26 14:47:28', '2021-03-26 14:47:28', 1, 1, NULL, 'barcode', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '14'),
(83, '2021-03-26 14:47:50', '2021-03-26 14:47:50', 1, 1, NULL, 'special_price', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '15'),
(84, '2021-03-26 14:47:50', '2021-03-26 14:47:50', 1, 1, NULL, 'barcode', NULL, 'rPab9tEwVX1W4XwrlZYtXVzuEuUqB5wSCitbaFi8', 'content', '15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_content_fields`
--

DROP TABLE IF EXISTS `bt_content_fields`;
CREATE TABLE IF NOT EXISTS `bt_content_fields` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` text COLLATE utf8_unicode_ci,
  `value` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_content_fields`
--

INSERT INTO `bt_content_fields` (`id`, `updated_at`, `created_at`, `created_by`, `edited_by`, `rel_type`, `rel_id`, `field`, `value`) VALUES
(7, '2020-01-27 10:56:47', '2020-01-27 10:50:34', 1, 1, 'module', '0', 'layout-contacts-skin-2-module-layouts-6--3', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-xl-6 text-center text-lg-left m-b-40 allow-drop element\" id=\"mw-element_1580122175979\">\n                        <h2 class=\"hr element\" id=\"mw-element_1580122175980\">Why Choose Us?</h2>\n                        <p class=\"element\" id=\"mw-element_1580122175981\">Microweber is an open-source content management system and website builder.\n                            It is based on the PHP programming language and the Laravel 5 web application framework, using drag and drop and allowing users to quickly create content, while scheduling and managing multiple displays.</p>\n                        <br>\n                        <br>\n\n                        <div class=\"element\" id=\"mw-element_1580122175982\">\n                            <module class=\" module module-btn \" id=\"module-layouts-6--3-btn\" data-mw-title=\"Button\" template=\"bootstrap\" button_style=\"btn-primary\" button_text=\"Contact Us\" data-type=\"btn\" parent-module-id=\"module-layouts-6--3\" parent-module=\"layouts\"></module>\n                        </div>\n                    </div>\n\n                    <div class=\"col-xl-5 offset-xl-1\">\n                        <div class=\"row\">\n                            <div class=\"col-12 cloneable\">\n                                <div class=\"shadow-md box\">\n                                    <div class=\"icon-holder\">\n                                        <i class=\"mw-icon mw-micon-Building\"></i>\n                                    </div>\n                                    <div class=\"text-holder allow-drop element\" id=\"mw-element_1580122175983\">\n                                        <p class=\"element\" id=\"mw-element_1580122175984\"><strong>Easy solution</strong></p>\n                                        <p class=\"element\" id=\"mw-element_1580122175985\">Lorem Ipsum is simply dummy text of the printing</p>\n                                    </div>\n                                </div>\n                            </div>\n\n                            <div class=\"col-12 cloneable\">\n                                <div class=\"shadow-md box\">\n                                    <div class=\"icon-holder\">\n                                        <i class=\"mw-icon mw-micon-Smartphone-3\"></i>\n                                    </div>\n                                    <div class=\"text-holder allow-drop element\" id=\"mw-element_1580122175986\">\n                                        <p class=\"element\" id=\"mw-element_1580122175987\"><strong>Easy solution</strong></p>\n                                        <p class=\"element\" id=\"mw-element_1580122175988\">Lorem Ipsum is simply dummy text of the printing</p>\n                                    </div>\n                                </div>\n                            </div>\n\n                            <div class=\"col-12 cloneable\">\n                                <div class=\"shadow-md box\">\n                                    <div class=\"icon-holder\">\n                                        <i class=\"mw-icon mw-micon-Email\"></i>\n                                    </div>\n                                    <div class=\"text-holder allow-drop element\" id=\"mw-element_1580122175989\">\n                                        <p class=\"element\" id=\"mw-element_1580122175990\"><strong>Easy solution</strong></p>\n                                        <p class=\"element\" id=\"mw-element_1580122175991\">Lorem Ipsum is simply dummy text of the printing</p>\n                                    </div>\n\n                                    <div class=\"socials-holder\">\n                                        <module class=\"module module-social-links\" id=\"module-layouts-6--3-social-links\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-6--3\" parent-module=\"layouts\"></module>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(8, '2020-01-27 10:58:56', '2020-01-27 10:58:56', 1, 1, 'module', '0', 'layout-people-skin-1-module-layouts-6--5', '\n    <div class=\"d-flex w-100\">\n        <div class=\"container align-self-centerx\">\n            <div class=\"row\">\n                <div class=\"col-xl-8 col-lg-8 text-center m-b-20 mx-auto\">\n                    <h1 class=\"m-b-10\">Our Team</h1>\n                    <p class=\"lead\">It is a long established fact that a reader will be distracted by the readable <br>content of a page when looking at its layout. </p>\n                    <hr class=\"hr\">\n                </div>\n            </div>\n\n            <div class=\"row\">\n                <div class=\"col-12 col-lg-12 col-xl-10 mx-auto\">\n                    <div class=\"row text-center text-white\">\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-1.jpg\');\" id=\"mw-element_1580122175997\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\" id=\"mw-element_1580122175998\">\n                                        <h5 class=\"element\" id=\"mw-element_1580122175999\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\" id=\"mw-element_1580122176000\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\" id=\"mw-element_1580122176001\">\n                                            <module class=\"module module-social-links\" id=\"module-layouts-6--5-social-links\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-6--5\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-2.jpg\');\" id=\"mw-element_1580122176002\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\" id=\"mw-element_1580122176003\">\n                                        <h5 class=\"element\" id=\"mw-element_1580122176004\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\" id=\"mw-element_1580122176005\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\" id=\"mw-element_1580122176006\">\n                                            <module class=\"module module-social-links\" id=\"module-layouts-6--5-social-links--1\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-6--5\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-3.jpg\');\" id=\"mw-element_1580122176007\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\" id=\"mw-element_1580122176008\">\n                                        <h5 class=\"element\" id=\"mw-element_1580122176009\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\" id=\"mw-element_1580122176010\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\" id=\"mw-element_1580122176011\">\n                                            <module class=\" module module-social-links \" id=\"module-layouts-6--5-social-links--2\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-6--5\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-4.jpg\');\" id=\"mw-element_1580122176012\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\" id=\"mw-element_1580122176013\">\n                                        <h5 class=\"element\" id=\"mw-element_1580122176014\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\" id=\"mw-element_1580122176015\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\" id=\"mw-element_1580122176016\">\n                                            <module class=\" module module-social-links \" id=\"module-layouts-6--5-social-links--3\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-6--5\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-5.jpg\');\" id=\"mw-element_1580122176017\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\" id=\"mw-element_1580122176018\">\n                                        <h5 class=\"element\" id=\"mw-element_1580122176019\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\" id=\"mw-element_1580122176020\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\" id=\"mw-element_1580122176021\">\n                                            <module class=\" module module-social-links \" id=\"module-layouts-6--5-social-links--4\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-6--5\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-6.jpg\');\" id=\"mw-element_1580122176022\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\" id=\"mw-element_1580122176023\">\n                                        <h5 class=\"element\" id=\"mw-element_1580122176024\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\" id=\"mw-element_1580122176025\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\" id=\"mw-element_1580122176026\">\n                                            <module class=\" module module-social-links \" id=\"module-layouts-6--5-social-links--5\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-6--5\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(9, '2020-01-27 11:08:25', '2020-01-27 11:08:25', 1, 1, 'module', '0', 'layout-people-skin-2-module-layouts-6--6', '\n    <div class=\"d-flex w-100\">\n        <div class=\"container align-self-centerx\">\n            <div class=\"row\">\n                <div class=\"col-xl-8 col-lg-8 text-center m-b-20 mx-auto\">\n                    <h1 class=\"m-b-10\">Our Team</h1>\n                    <p class=\"lead\">It is a long established fact that a reader will be distracted. </p>\n                    <hr class=\"hr\">\n                </div>\n            </div>\n\n            <div class=\"row\">\n                <div class=\"col-xl-10 mx-auto\">\n                    <module class=\"module module-teamcard\" id=\"module-layouts-6--6-teamcard\" data-mw-title=\"Team Card\" template=\"skin-2\" data-type=\"teamcard\" parent-module-id=\"module-layouts-6--6\" parent-module=\"layouts\"></module>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(10, '2020-01-27 11:28:48', '2020-01-27 11:27:56', 1, 1, 'module', '0', 'layout-skin-2-layouts-20200127112745', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"mw-element_1580124507247\">\n                \n                <p class=\"lead element\" id=\"mw-element_1580124507305\">We will work together for your creative project  <br><br id=\"mw-br-1580124507296\"></p>\n<module class=\"-module module-cat-toggle-Modules mw-module-drag-clone module module-btn\" data-mw-title=\"Button\" data-type=\"btn\" id=\"btn-20200127112839\" parent-module=\"btn\" parent-module-id=\"btn-20200127112839\"></module>\n<br>\n            </div>\n        </div>\n    </div>\n'),
(11, '2020-01-27 11:35:25', '2020-01-27 11:35:25', 1, 1, 'module', '0', 'layout-blockquotes-skin-4-module-layouts-6--7', '\n    <div class=\"d-flex w-100\">\n        <div class=\"container align-self-centerx\">\n            <div class=\"row\">\n                <div class=\"col-xl-8 col-lg-8 text-center m-b-20 mx-auto\">\n                    <h1 class=\"m-b-10\">Clients Opinions</h1>\n                    <p class=\"lead\">Read what our lients says for our services.  <br><br id=\"mw-br-1580124507842\"></p>\n                </div>\n            </div>\n\n            <div class=\"row\">\n                <div class=\"col-xl-10 mx-auto\">\n                    <module class=\"module module-testimonials\" id=\"module-layouts-6--7-testimonials\" data-mw-title=\"Testimonials\" template=\"skin-2\" data-type=\"testimonials\" parent-module-id=\"module-layouts-6--7\" parent-module=\"layouts\"></module>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(19, '2020-02-17 10:05:42', '2020-02-04 14:02:20', 1, 1, 'module', '0', 'layout-skin-9-module-layouts-8', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center\">\n                <div class=\"m-auto allow-drop element\" style=\"max-width: 800px;\" id=\"element_1581933933637\">\n                    <h1 class=\"element\" id=\"element_1581933933659\">Shop<span class=\"text-primary\">.</span>\n</h1>\n\n                    <module class=\"module module-breadcrumb\" id=\"module-layouts-8-breadcrumb\" data-mw-title=\"Breadcrumb\" data-type=\"breadcrumb\" parent-module-id=\"module-layouts-8\" parent-module=\"layouts\"></module>\n                    <hr class=\"hr m-t-0 element\">\n\n                    \n                </div>\n            </div>\n        </div>\n    </div>\n'),
(20, '2020-02-04 14:11:28', '2020-02-04 14:11:28', 1, 1, 'inherit', '8', 'related_products', '\n                            <div class=\"row m-t-20\">\n                                <div class=\"col-12 text-left\">\n                                    <h5 class=\"hr\">Related products</h5>\n                                </div>\n                            </div>\n\n                            <div class=\"row\">\n                                <div class=\"col-12\">\n                                    <module class=\"module module module-shop-products\" data-mw-title=\"Products\" id=\"module-shop-products-13\" template=\"skin-1\" related=\"true\" limit=\"6\" hide_paging=\"true\" data-type=\"shop/products\" parent-module=\"shop/products\" parent-module-id=\"module-shop-products-13\"></module>\n                                </div>\n                            </div>\n                        '),
(22, '2020-02-17 09:28:11', '2020-02-14 07:42:51', 1, 1, 'page', '22', 'blog-inner', ''),
(23, '2020-02-17 10:05:51', '2020-02-17 08:47:55', 1, 1, 'module', '0', 'layout-skin-9-module-layouts-2', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center\">\n                <div class=\"m-auto allow-drop element\" style=\"max-width: 800px;\" id=\"element_1581933944976\">\n                    <h1 class=\"element\">Blog<span class=\"text-primary\">.</span>\n</h1>\n\n                    <module class=\" module module-breadcrumb \" id=\"module-layouts-2-breadcrumb\" data-mw-title=\"Breadcrumb\" data-type=\"breadcrumb\" parent-module-id=\"module-layouts-2\" parent-module=\"layouts\"></module>\n                    <hr class=\"hr m-t-0 element\">\n\n                    \n                </div>\n            </div>\n        </div>\n    </div>\n'),
(24, '2020-02-17 08:47:55', '2020-02-17 08:47:55', 1, 1, 'module', '0', 'layout-posts-skin-1-module-layouts-2--1', '\n    <div class=\"container allow-drop element\" id=\"element_1581929257366\">\n        <div class=\"row element nodrop\">\n            \n        </div>\n\n        <module class=\"module module-posts\" id=\"module-layouts-2--1-posts\" data-mw-title=\"Posts List\" template=\"blog\" data-type=\"posts\" parent-module-id=\"module-layouts-2--1\" parent-module=\"layouts\"></module>\n\n    </div>\n'),
(25, '2021-03-26 15:24:13', '2021-03-26 15:24:13', 1, 1, 'content', '15', 'content_body', 'How to write product descriptions that sell One of the best things you can do to make your store successful is invest some time in writing great product descriptions. You want to provide detailed yet concise information that will entice potential customers to buy.<br><br>Think like a consumer Think about what you as a consumer would want to know, then include those features in your description. For clothes: materials and fit. For food: ingredients and how it was prepared. Bullets are your friends when listing features!'),
(28, '2021-07-02 19:45:15', '2021-04-27 10:58:46', 1, 1, 'module', '0', 'layout-skin-2-module-layouts-1--8', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521057957\">\n                <h2 class=\"hr element\" id=\"element_1619521057953\">Viajar ao redor do mundo</h2>\n                <p class=\"lead element\" id=\"element_1619521058271\">Encontre os melhores destinos para relaxar</p>\n            </div>\n        </div>\n    </div>\n'),
(29, '2021-07-02 19:45:15', '2021-04-27 10:59:07', 1, 1, 'module', '0', 'layout-skin-2-module-layouts-1--10', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521058856\">\n                <h2 class=\"hr element\" id=\"element_1619521058731\">O que nossos clientes dizem?</h2>\n                \n            </div>\n        </div>\n    </div>\n'),
(31, '2021-04-27 11:05:35', '2021-04-27 11:05:13', 1, 1, 'module', '0', 'layout-skin-9-module-layouts-6', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center\">\n                <div class=\"m-auto allow-drop element\" style=\"max-width: 800px;\" id=\"element_1619521417808\">\n                    <h1 class=\"element\">About us<span class=\"text-primary\">.</span>\n</h1>\n\n                    <module class=\" module module-breadcrumb \" id=\"module-layouts-6-breadcrumb\" data-mw-title=\"Breadcrumb\" data-type=\"breadcrumb\" parent-module-id=\"module-layouts-6\" parent-module=\"layouts\"></module>\n                    <hr class=\"hr m-t-0 element\">\n\n                    <p class=\"lead element\" id=\"element_1619521417191\">Our company is established 1992 year.<br>‌We have a great oppinion in working on projects and clients.<br>‌Trust us and read more about us bellow.</p>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(32, '2021-04-27 11:05:35', '2021-04-27 11:05:35', 1, 1, 'module', '0', 'layout-galleries-skin-3-module-layouts-6--2', '\n    <div class=\"d-flex w-100\">\n        <div class=\"container align-self-centerx\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-10 mx-auto text-center\">\n                    <h2 class=\"m-b-30\">Our Projects Gallery</h2>\n                    <p class=\"lead\">It is a long established fact that a reader will be distracted by the readable<br>‌ content of a page when looking at its layout.</p>\n                    <br>\n\n                    <module class=\"module module-pictures\" id=\"module-layouts-6--2-pictures\" data-mw-title=\"Picture Gallery\" template=\"skin-7\" data-type=\"pictures\" parent-module-id=\"module-layouts-6--2\" parent-module=\"layouts\"></module>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(33, '2021-04-27 11:05:52', '2021-04-27 11:05:52', 1, 1, 'module', '0', 'layout-people-skin-1-module-layouts-6--4', '\n    <div class=\"d-flex w-100\">\n        <div class=\"container align-self-centerx\">\n            <div class=\"row\">\n                <div class=\"col-xl-8 col-lg-8 text-center m-b-20 mx-auto\">\n                    <h1 class=\"m-b-10\">Our Team</h1>\n                    <p class=\"lead\">It is a long established fact that a reader will be distracted by the readable<br>‌ content of a page when looking at its layout. </p>\n                    <hr class=\"hr\">\n                </div>\n            </div>\n\n            <div class=\"row\">\n                <div class=\"col-12 col-lg-12 col-xl-10 mx-auto\">\n                    <div class=\"row text-center text-white\">\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-1.jpg\');\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\" id=\"element_1619521418075\">\n                                        <h5 class=\"element\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\">\n                                            <module class=\" module module-social-links \" id=\"module-layouts-6--4-social-links\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-6--4\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-2.jpg\');\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\" id=\"element_1619521418063\">\n                                        <h5 class=\"element\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\">\n                                            <module class=\" module module-social-links \" id=\"module-layouts-6--4-social-links--1\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-6--4\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-3.jpg\');\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\" id=\"element_1619521418104\">\n                                        <h5 class=\"element\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\">\n                                            <module class=\" module module-social-links \" id=\"module-layouts-6--4-social-links--2\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-6--4\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-4.jpg\');\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\">\n                                        <h5 class=\"element\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\">\n                                            <module class=\" module module-social-links \" id=\"module-layouts-6--4-social-links--3\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-6--4\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-5.jpg\');\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\">\n                                        <h5 class=\"element\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\">\n                                            <module class=\" module module-social-links \" id=\"module-layouts-6--4-social-links--4\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-6--4\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-6.jpg\');\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\">\n                                        <h5 class=\"element\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\">\n                                            <module class=\" module module-social-links \" id=\"module-layouts-6--4-social-links--5\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-6--4\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(34, '2021-07-02 19:56:15', '2021-04-27 11:06:54', 1, 1, 'content', '7', 'new-world_content', '\n        <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-7\" template=\"skin-9\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--1\" template=\"features/skin-10\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--2\" template=\"skin-10\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--3\" template=\"videos/skin-6\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--4\" template=\"pricing/skin-1\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--5\" template=\"cta/skin-2\" data-type=\"layouts\"></module>\n    '),
(35, '2021-07-02 19:56:15', '2021-04-27 11:07:48', 1, 1, 'module', '0', 'layout-skin-9-module-layouts-7', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center\">\n                <div class=\"m-auto allow-drop element\" style=\"max-width: 800px;\" id=\"element_1619521617410\">\n                    <h1 class=\"element\" id=\"element_1619521617782\">Serviços<span class=\"text-primary\">.</span>\n</h1>\n\n                    <module class=\"module module-breadcrumb\" data-mw-title=\"Breadcrumb\" id=\"module-layouts-7-breadcrumb\" data-type=\"breadcrumb\" parent-module-id=\"module-layouts-7\" parent-module=\"layouts\"></module>\n                    <hr class=\"hr m-t-0 element\" id=\"element_1619521617426\">\n\n                    <p class=\"lead element\" id=\"element_1619521617249\">Professional developers can freely access the code,<br>‌exchanging their knowledge and contributions<br>‌with the rest of the open-source community</p>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(36, '2021-04-27 12:52:27', '2021-04-27 11:15:34', 1, 1, 'global', '0', 'new-world_footer', '\n                <div class=\"row\">\n                    <div class=\"col-12 col-lg-12 col-xl-3 mx-auto logo-column text-center text-xl-left m-b-20 allow-drop element\" id=\"element_1619521706099\">\n                        <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/logo_footer.png\" alt=\"\" class=\"m-b-10\">\n                        <br>\n                        <br>\n                    </div>\n\n                    <div class=\"col-12 col-lg-12 col-xl-5 mx-auto text-center text-xl-left m-b-40 allow-drop element\" id=\"element_1619521705997\">\n                        <module class=\"module module-menu\" data-mw-title=\"Menu\" template=\"simple\" id=\"footer_menu\" data-type=\"menu\"></module>\n                        <br>\n                        <p class=\"element\" id=\"element_1619521706145\">Drag and drop website builder and CMS. Based on Laravel PHP framework and Bootstrap framework</p>\n                    </div>\n\n                    <div class=\"col-12 col-sm col-lg-6 col-xl mx-auto text-white allow-drop element\" id=\"element_1619521706230\">\n                        <h6 class=\"m-b-10 m-t-5 element\" id=\"element_1619521706231\">Subscribe for Newsletter</h6>\n                        <module class=\"module module module-contact-form \" data-mw-title=\"Contact form\" template=\"footer\" id=\"footer_newsletter\" data-type=\"contact_form\"></module>\n                                            </div>\n\n                    <div class=\"col-12 col-sm col-lg-6 col-xl mx-auto text-white text-center text-sm-right allow-drop element\">\n                        <h6 class=\"m-t-5 element\">Social Networks</h6>\n\n                        <module class=\"module module module-social-links \" data-mw-title=\"Social Links\" id=\"footer_socials\" data-type=\"social_links\"></module>\n                    </div>\n                </div>\n            '),
(37, '2021-04-27 14:13:54', '2021-04-27 13:30:51', 1, 1, 'content', '24', 'new-world_content', '\n        <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-24\" template=\"skin-9\" data-type=\"layouts\"></module>\n        <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-24--1\" template=\"features/skin-9\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-24--2\" template=\"galleries/skin-3\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-24--3\" template=\"videos/skin-5\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-24--4\" template=\"people/skin-1\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-24--5\" template=\"blockquotes/skin-4\" data-type=\"layouts\"></module>\n    '),
(38, '2021-04-27 14:13:55', '2021-04-27 13:30:51', 1, 1, 'module', '0', 'layout-skin-9-module-layouts-24', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center\">\n                <div class=\"m-auto allow-drop element\" style=\"max-width: 800px;\" id=\"element_1619530213388\">\n                    <h1 class=\"element\" id=\"element_1619530213398\">About us<span class=\"text-primary\">.</span>\n</h1>\n\n                    <module class=\"module module module-breadcrumb \" data-mw-title=\"Breadcrumb\" id=\"module-layouts-24-breadcrumb\" data-type=\"breadcrumb\" parent-module-id=\"module-layouts-24\" parent-module=\"layouts\"></module>\n                    <hr class=\"hr m-t-0 element\">\n\n                    <p class=\"lead element\" id=\"element_1619530213445\">Learn more about us</p>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(39, '2021-04-27 13:33:29', '2021-04-27 13:31:31', 1, 1, 'content', '5', 'new-world_content', '\n        <module class=\"module module-layouts\" id=\"module-layouts-5\" data-mw-title=\"Layouts\" template=\"skin-9\" data-type=\"layouts\"></module>\n        <module class=\"module module-layouts\" id=\"module-layouts-5--1\" data-mw-title=\"Layouts\" template=\"contacts/skin-2\" data-type=\"layouts\"></module>\n        <module class=\"module module-layouts\" id=\"module-layouts-5--2\" data-mw-title=\"Layouts\" template=\"contacts/skin-3\" data-type=\"layouts\"></module>\n        <module class=\"module module-layouts\" id=\"module-layouts-5--3\" data-mw-title=\"Layouts\" template=\"contacts/skin-4\" data-type=\"layouts\"></module>\n    '),
(40, '2021-04-27 13:31:31', '2021-04-27 13:31:31', 1, 1, 'module', '0', 'layout-skin-9-module-layouts-5', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center\">\n                <div class=\"m-auto allow-drop element\" style=\"max-width: 800px;\" id=\"element_1619530285713\">\n                    <h1 class=\"element\">Contact Us<span class=\"text-primary\">.</span>\n</h1>\n\n                    <module class=\"module module-breadcrumb\" id=\"module-layouts-5-breadcrumb\" data-mw-title=\"Breadcrumb\" data-type=\"breadcrumb\" parent-module-id=\"module-layouts-5\" parent-module=\"layouts\"></module>\n                    <hr class=\"hr m-t-0 element\">\n\n                    <p class=\"lead element\" id=\"element_1619530285737\">Say Hello to us!</p>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(41, '2021-04-27 13:33:29', '2021-04-27 13:32:10', 1, 1, 'module', '0', 'layout-contacts-skin-2-module-layouts-5--1', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-xl-6 text-center text-lg-left m-b-40 allow-drop element\" id=\"element_1619530286143\">\n                        <h2 class=\"hr element\">Why to Contact Us?</h2>\n                        <p class=\"element\" id=\"element_1619530286140\">Content management system and website builder.\n                            It is based on the PHP programming language and the Laravel  web application framework, using drag and drop and allowing users to quickly create content, while scheduling and managing multiple displays.</p>\n                        <br>\n                        <br>\n\n                        <div class=\"element\" id=\"element_1619530286144\">\n                            <module class=\"module module-btn\" id=\"module-layouts-5--1-btn\" data-mw-title=\"Button\" template=\"bootstrap\" button_style=\"btn-primary\" button_text=\"Contact Us\" data-type=\"btn\" parent-module-id=\"module-layouts-5--1\" parent-module=\"layouts\"></module>\n                        </div>\n                    </div>\n\n                    <div class=\"col-xl-5 offset-xl-1\">\n                        <div class=\"row\">\n                            <div class=\"col-12 cloneable\">\n                                <div class=\"shadow-md box\">\n                                    <div class=\"icon-holder\">\n                                        <i class=\"mw-icon mw-micon-Building\"></i>\n                                    </div>\n                                    <div class=\"text-holder allow-drop element\">\n                                        <p class=\"element\" id=\"element_1619530285838\"><strong>Address</strong></p>\n                                        <p class=\"element\" id=\"element_1619530285842\">Sofia, Bulgaria, bul. Cherni Vruh 47. Floor 5, Building A</p>\n                                    </div>\n                                </div>\n                            </div>\n\n                            <div class=\"col-12 cloneable\">\n                                <div class=\"shadow-md box\">\n                                    <div class=\"icon-holder\">\n                                        <i class=\"mw-icon mw-micon-Smartphone-3\"></i>\n                                    </div>\n                                    <div class=\"text-holder allow-drop element\">\n                                        <p class=\"element\" id=\"element_1619530285885\"><strong>Phone</strong></p>\n                                        <p class=\"element\" id=\"element_1619530285887\">00359 123 456 789 ( Office ) 00359 123 456 789 ( Sales)</p>\n                                    </div>\n                                </div>\n                            </div>\n\n                            <div class=\"col-12 cloneable\">\n                                <div class=\"shadow-md box\">\n                                    <div class=\"icon-holder\">\n                                        <i class=\"mw-icon mw-micon-Email\"></i>\n                                    </div>\n                                    <div class=\"text-holder allow-drop element\">\n                                        <p class=\"element\"><strong>Other ways to contact us</strong></p>\n                                        <p class=\"element\">Email: info@youremail.com</p>\n                                    </div>\n\n                                    <div class=\"socials-holder\">\n                                        <module class=\" module module-social-links \" id=\"module-layouts-5--1-social-links\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-5--1\" parent-module=\"layouts\"></module>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(42, '2021-07-02 19:55:22', '2021-04-27 13:34:20', 1, 1, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n'),
(43, '2021-07-02 19:22:57', '2021-04-27 13:34:20', 1, 1, 'module', '0', 'layout-home-banners-skin-1-module-layouts-1', '\n    <div class=\"background-image-holder d-flex w-100 justify-content-center element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/slide-1.jpg\');\" id=\"element_1625263569850\">\n        <div class=\"container d-flex justify-content-center align-items-center element\" id=\"element_1619530413371\">\n            <div class=\"w-100 text-left info-holder allow-drop element\" no-data-aos=\"fade-down\" id=\"element_1619530413519\">\n                <h1 class=\"element\" id=\"element_1619530413383\">Este é um <br>tema padrão do Bistore Builder</h1>\n                <br>\n                <p class=\"lead element\" id=\"element_1619530413520\">Arraste e solte no construtor de websites<br>e o CMS da nova geração.</p>\n                <br>\n                <br>\n\n                <div class=\"element\"><p class=\"element\" id=\"element_1625263569563\">\n                    <a href=\"\" class=\"btn btn-primary\">Saber +</a>\n                </p></div>\n            </div>\n        </div>\n    </div>\n'),
(44, '2021-07-02 19:30:43', '2021-04-27 13:35:23', 1, 1, 'module', '0', 'layout-skin-3-module-layouts-1--4', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619530414112\">\n                <h2 class=\"hr element\" id=\"element_1619530414117\">Crie um lindo website facilmente</h2>\n                <div class=\"element m-auto\" style=\"max-width: 800px;\" id=\"element_1625263570642\">\n                    <p class=\"element\" id=\"element_1619530414313\">Sistema de gerenciamento de conteúdo e construtor de sites. Ele é baseado na linguagem de programação PHP e no framework de aplicação web Laravel, usando arrastar e soltar e permitir que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam vários displays.</p>\n                    <br>\n                    <br>\n                </div>\n                <div class=\"element m-t-20\" id=\"element_1625263570646\">\n                    <module class=\"module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--4-btn\" template=\"bootstrap\" button_style=\"btn-primary\" text=\"Learn more\" data-type=\"btn\" parent-module-id=\"module-layouts-1--4\" parent-module=\"layouts\"></module>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(45, '2021-07-02 19:35:30', '2021-04-27 13:35:23', 1, 1, 'module', '0', 'layout-info-blocks-skin-6-module-layouts-1--5', '\n    <div class=\"container-fluid\">\n        <div class=\"row flexbox-container\">\n            <div class=\"col-12 col-lg-6 col-xl-5 img-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/img-1.png\');\"><div class=\"element\" id=\"mw-element-1619530413347\"></div></div>\n\n            <div class=\"col-12 col-lg-6 col-xl-7 right-side text-center text-lg-left\" style=\"padding-right: 180.415px;\">\n                <div class=\"info-holder shadow-sm allow-drop element\" no-data-aos=\"fade-up\" style=\"margin-left: -102.777px;\" id=\"element_1619530414332\">\n                    <h2 class=\"hr element\" id=\"element_1625263570703\">Do design ao código</h2>\n                    <p class=\"element\" id=\"element_1619530414342\">Sistema de gerenciamento de conteúdo e construtor de sites. Ele é baseado na linguagem de programação PHP e no framework de aplicação web Laravel, usando arrastar e soltar e permitir que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam vários displays.</p>\n\n                    <div class=\"element\" id=\"element_1619530414336\">\n                        <br>\n                        <module class=\"module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--5-btn\" button_text=\"More about this\" button_style=\"8\" data-type=\"btn\" parent-module-id=\"module-layouts-1--5\" parent-module=\"layouts\"></module>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n');
INSERT INTO `bt_content_fields` (`id`, `updated_at`, `created_at`, `created_by`, `edited_by`, `rel_type`, `rel_id`, `field`, `value`) VALUES
(46, '2021-07-02 19:55:23', '2021-04-27 13:35:23', 1, 1, 'module', '0', 'layout-info-blocks-skin-7-module-layouts-1--6', '\n    <div class=\"container-fluid\">\n        <div class=\"row flexbox-container\">\n            <div class=\"col-12 col-lg-6 col-xl-7 left-side text-center text-lg-left\" style=\"padding-left: 180.415px;\">\n                <div class=\"info-holder shadow-sm allow-drop element\" no-data-aos=\"fade-up\" style=\"margin-right: -102.777px;\" id=\"element_1619530414378\">\n                    <h2 class=\"hr element\" id=\"element_1619530414381\">Do design ao código</h2>\n                    <p class=\"element\" id=\"element_1619530414397\">Sistema de gerenciamento de conteúdo e construtor de sites. Ele é baseado na linguagem de programação PHP e no framework de aplicação web Laravel, usando arrastar e soltar e permitir que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam vários displays.</p>\n                    <div class=\"element\" id=\"element_1625263569809\">\n                        <br>\n                        <module class=\"module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--6-btn\" button_text=\"More about this\" button_style=\"8\" data-type=\"btn\" parent-module-id=\"module-layouts-1--6\" parent-module=\"layouts\"></module>\n                    </div>\n                </div>\n            </div>\n\n            <div class=\"col-12 col-lg-6 col-xl-5 img-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/img-2.png\');\"><div class=\"element\" id=\"mw-element-1619530413348\"></div></div>\n        </div>\n    </div>\n'),
(47, '2021-07-02 19:45:15', '2021-04-27 13:35:30', 1, 1, 'module', '0', 'layout-info-blocks-skin-3-module-layouts-1--9', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-5.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1619530414499\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414483\">É a nova geração</h2>\n                                    <p class=\"element\" id=\"element_1619530414503\">Sistema de gerenciamento de conteúdo e construtor de sites. É baseado na linguagem de programação PHP e no framework de aplicação web Laravel.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-6.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1625263571449\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414478\">Design único</h2>\n                                    <p class=\"element\" id=\"element_1619530414536\">Content management system and website builder. It is based on the PHP programming language and the Laravel web application framework.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(50, '2021-04-27 13:57:12', '2021-04-27 13:57:12', 1, 1, 'module', '0', 'layout-people-skin-1-module-layouts-24--4', '\n    <div class=\"d-flex w-100\">\n        <div class=\"container align-self-centerx\">\n            <div class=\"row\">\n                <div class=\"col-xl-8 col-lg-8 text-center m-b-20 mx-auto\">\n                    <h1 class=\"m-b-10\">Our Team</h1>\n                    <p class=\"lead\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </p>\n                    <hr class=\"hr\">\n                </div>\n            </div>\n\n            <div class=\"row\">\n                <div class=\"col-12 col-lg-12 col-xl-10 mx-auto\">\n                    <div class=\"row text-center text-white\">\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-1.jpg\');\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\">\n                                        <h5 class=\"element\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\">\n                                            <module class=\" module module-social-links \" id=\"module-layouts-24--4-social-links\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-24--4\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-6.jpg\');\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\" id=\"element_1619531767651\">\n                                        <h5 class=\"element\" id=\"element_1619531767967\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\" id=\"element_1619531767785\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\" id=\"element_1619531767648\">\n                                            <module class=\"module module-social-links\" id=\"module-layouts-24--4-social-links--5\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-24--4\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n<div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-2.jpg\');\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\" id=\"element_1619531767554\">\n                                        <h5 class=\"element\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\" id=\"element_1619531767966\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\">\n                                            <module class=\" module module-social-links \" id=\"module-layouts-24--4-social-links--1\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-24--4\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-3.jpg\');\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\">\n                                        <h5 class=\"element\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\" id=\"element_1619531767560\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\">\n                                            <module class=\" module module-social-links \" id=\"module-layouts-24--4-social-links--2\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-24--4\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        <div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-5.jpg\');\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\" id=\"element_1619531767625\">\n                                        <h5 class=\"element\" id=\"element_1619531767668\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\" id=\"element_1619531767776\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\" id=\"element_1619531767627\">\n                                            <module class=\"module module-social-links\" id=\"module-layouts-24--4-social-links--4\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-24--4\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n<div class=\"col-12 col-sm-6 col-md-4 cloneable\">\n                            <div class=\"background-image-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/people-4.jpg\');\">\n                                <div class=\"square\">\n                                    <div class=\"content allow-drop element\" id=\"element_1619531767574\">\n                                        <h5 class=\"element\">Charley Doe</h5>\n                                        <p class=\"m-t-10 element\" id=\"element_1619531767577\">Charley is a senior developer in our company. He is doing great code and software solutions. Educated in Sofia, Bulgaria.</p>\n\n                                        <div class=\"element socials-holder\" id=\"element_1619531767597\">\n                                            <module class=\"module module-social-links\" id=\"module-layouts-24--4-social-links--3\" data-mw-title=\"Social Links\" data-type=\"social_links\" parent-module-id=\"module-layouts-24--4\" parent-module=\"layouts\"></module>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n\n                        \n\n                        \n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(51, '2021-07-02 19:45:15', '2021-04-27 14:00:24', 1, 1, 'module', '0', 'layout-skin-8-module-layouts-1--12', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-12 col-lg-8\">\n                        <div class=\"text-left m-b-10\">\n                            <h2 class=\"hr\">Últimos posts do blog</h2>\n                            <a href=\"#\" class=\"btn btn-link float-right\">Navegar nos artigos</a>\n                        </div>\n\n                        <module class=\"module module-posts\" data-mw-title=\"Posts List\" id=\"module-layouts-1--12-posts\" template=\"skin-1\" data-type=\"posts\" parent-module-id=\"module-layouts-1--12\" parent-module=\"layouts\"></module>\n                    </div>\n\n                    <div class=\"col-12 col-lg-4 text-center\">\n                        <div class=\"h-100 d-flex flex-column justify-content-center align-items-center text-white twitter-holder\">\n                            <module class=\"module module module-twitter-feed \" data-mw-title=\"Twitter feed\" id=\"module-layouts-1--12-twitter-feed\" template=\"skin-1\" search_string=\"microweber\" number_of_items=\"1\" data-type=\"twitter_feed\" parent-module-id=\"module-layouts-1--12\" parent-module=\"layouts\"></module>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(52, '2021-04-27 14:13:39', '2021-04-27 14:13:39', 1, 1, 'module', '0', 'layout-videos-skin-5-module-layouts-24--3', '\n    <div class=\"d-flex w-100\">\n        <div class=\"container align-self-center info-holder\">\n            <div class=\"row\">\n                <div class=\"col-12 mx-auto\">\n                    <div class=\"row\">\n                        <div class=\"offset-xl-1 col-xl-4 info-holder allow-drop element\" id=\"element_1619532782886\">\n                            <p class=\"m-b-20 element\" style=\"letter-spacing:1.5px;\">Introduction Video</p>\n                            <h2 class=\"m-b-30 element\" id=\"element_1619532782921\">How we growth <br>our business.</h2>\n                            <p class=\"element\" id=\"element_1619532782890\">Content management system and website builder. It is based on the PHP programming language and the Laravel web application framework, using drag and drop and allowing users to quickly create content, while scheduling and managing multiple displays.</p>\n                            <div class=\"m-t-40 noelement d-inline-block element\">\n                                <module class=\"noelement module module-btn \" id=\"module-layouts-24--3-btn\" data-mw-title=\"Button\" template=\"bootstrap\" text=\"Contact Us\" button_style=\"btn-primary\" data-type=\"btn\" parent-module-id=\"module-layouts-24--3\" parent-module=\"layouts\"></module>\n                            </div>\n                        </div>\n\n                        <div class=\"col-sm-10 mx-sm-auto col-xl-6 video-holder\">\n                            <module class=\"module module-video\" id=\"module-layouts-24--3-video\" data-mw-title=\"Video\" url=\"https://vimeo.com/98679934\" data-type=\"video\" parent-module-id=\"module-layouts-24--3\" parent-module=\"layouts\"></module>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(54, '2021-04-28 10:29:49', '2021-04-28 10:29:49', 1, 1, 'module', '0', 'layout-skin-10-module-layouts-7--2', '\n    <div class=\"container align-self-center info-holder\">\n        <div class=\"row\">\n            <div class=\"col-12 col-xl-8 mx-auto\">\n                <div class=\"row d-flex\">\n                    <div class=\"col-md-6\">\n                        <div class=\"img-holder h-100 w-100\">\n                            <div class=\"image-1 element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/1.jpg\');\"></div>\n                            <div class=\"image-2 element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/2.jpg\');\"></div>\n                        </div>\n                    </div>\n\n                    <div class=\"col-md-6 right-side allow-drop element\" id=\"element_1619605778679\">\n                        <div class=\"element\">\n                        <div class=\"nodrop clearfix element\">\n                            <div class=\"float-right\" style=\"width: 80px;\">\n                                <hr class=\"hr w-100 safe-element m-t-10\">\n                            </div>\n                            <p class=\"m-b-20 text-primary\" style=\"letter-spacing:1.5px;\">Trust our best services</p>\n                        </div>\n                        </div>\n\n                        <h2 class=\"m-b-30 element\" id=\"element_1619605778666\">What we are <br class=\"d-none d-xl-block\">doing best.</h2>\n                        <p class=\"element\" id=\"element_1619605778681\">Content management system and website builder. It is based on the PHP programming language and the Laravel web application framework, using drag and drop and allowing users to quickly create content, while scheduling and managing multiple displays.</p>\n\n                        <br>\n                        <br>\n                        <br>\n                        <br>\n                        <br>\n                        <br>\n                        <div class=\"small-cta no-drop element\" style=\"margin-bottom: 15px;\">\n                            <div class=\"icon-holder element\">\n                                <i class=\"mw-micon-Telephone\"></i>\n                            </div>\n                            <div class=\"element\">\n                                <p class=\"element\">Make a call</p>\n                                <h4 class=\"element\">00 1 234 567 890</h4>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(55, '2021-04-28 10:29:49', '2021-04-28 10:29:49', 1, 1, 'module', '0', 'layout-videos-skin-6-module-layouts-7--3', '\n    <div class=\"d-flex w-100\">\n        <div class=\"container align-self-center info-holder\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-8 mx-auto\">\n                    <div class=\"row justify-content-xl-between\">\n                        <div class=\"col-sm-10 mx-sm-auto mx-xl-0 col-xl-6 info-holder allow-drop element\">\n                            <div class=\"element nodrop clearfix\">\n                                <div class=\"float-right\" style=\"width: 80px;\">\n                                    <hr class=\"hr w-100 safe-element m-t-10\" style=\"background-color: #fff;\">\n                                </div>\n                                <p class=\"m-b-20\" style=\"letter-spacing:1.5px;\">Introduction</p>\n                            </div>\n\n                            <h2 class=\"m-b-30 element\" id=\"element_1619605778731\">How we growth <br class=\"d-none d-xl-block\">our business.</h2>\n                            <p class=\"element\" id=\"element_1619605778756\">Content management system and website builder. It is based on the PHP programming language and the Laravel web application framework, using drag and drop and allowing users to quickly create content, while scheduling and managing multiple displays.</p>\n                            <div class=\"element m-t-40\">\n                                <module class=\" module module-btn \" id=\"module-layouts-7--3-btn\" data-mw-title=\"Button\" template=\"bootstrap\" text=\"Contact Us\" button_style=\"btn-primary\" data-type=\"btn\" parent-module-id=\"module-layouts-7--3\" parent-module=\"layouts\"></module>\n                            </div>\n                        </div>\n\n                        <div class=\"col-sm-10 mx-sm-auto mx-xl-0 col-xl-5 video-holder d-flex align-items-center justify-content-center\">\n                            <div class=\"w-100\">\n                                <div class=\"div-table\">\n                                    <div class=\"div-table-cell d-flex justify-content-center\">\n\n\n\n\n                                        <div class=\"img\">\n                                            <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/video-bg.jpg\">\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n'),
(58, '2021-04-29 08:17:52', '2021-04-29 08:17:52', 1, 1, 'content', '1', 'new-world_content', ''),
(59, '2021-04-29 08:23:40', '2021-04-29 08:23:40', 1, 1, 'content', '8', 'shop-sidebar', '\n                                <div class=\"edit allow-drop element\" field=\"new-world_shop_sidebar\" rel=\"inherit\">\n<inner-edit-tag>mw_saved_inner_edit_from_parent_edit_field</inner-edit-tag><div></div>\n</div>\n\n\n                            '),
(60, '2021-04-29 08:23:41', '2021-04-29 08:23:41', 1, 1, 'inherit', '8', 'new-world_shop_sidebar', '\n    <div class=\"sidebar element\" id=\"element_1619684588190\">\n        <div class=\"sidebar__widget search-holder element\">\n            <module class=\" module module-search \" id=\"module-search-8\" data-mw-title=\"Search\" data-search-type=\"shop\" data-type=\"search\"></module>\n        </div>\n\n        <div class=\"sidebar__widget m-b-40 element\" id=\"element_1619684588186\">\n            <h4 class=\"m-b-20 element\">Categories</h4>\n\n            <module class=\"module module-categories\" id=\"module-categories-8\" data-mw-title=\"Categories\" template=\"skin-1\" content-id=\"8\" data-type=\"categories\"></module>\n        </div>\n\n        <div class=\"sidebar__widget m-b-40 element\" id=\"element_1619684588192\">\n            <h4 class=\"m-b-20 element\" id=\"element_1619684588191\">Tags</h4>\n\n            <module class=\"module module-tags\" data-mw-title=\"Tags\" id=\"module-tags-8\" template=\"skin-1\" data-type=\"tags\"></module>\n        </div>\n\n        <div class=\"sidebar__widget m-b-40 element\">\n            <h4 class=\"m-b-20 element\">About Us</h4>\n            <p class=\"element\">\n                We\'re a digital focussed collective working with individuals and businesses to establish rich, engaging online presences.            </p>\n        </div>\n    </div>\n'),
(61, '2021-07-02 19:22:57', '2021-07-02 19:22:57', 1, 1, 'module', '0', 'layout-skin-2-module-layouts-1--1', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 allow-drop element\" id=\"element_1625263569860\">\n                <div style=\"text-align: center\" class=\"element\" id=\"element_1625263569868\">\n                <h2 class=\"hr element\" id=\"element_1625263569569\">Crie um website, é fácil e rápido</h2>\n                </div>\n                <p class=\"lead element\" style=\"text-align: center\" id=\"element_1625263569588\">Tenha um website profissional e moderno de forma rápida. Faça alterações pontuais a qualquer instante apenas arrastando e configurando detalhes ao vivo em tempo real</p>\n            </div>\n        </div>\n    </div>\n'),
(62, '2021-07-02 19:26:35', '2021-07-02 19:25:23', 1, 1, 'module', '0', 'layout-features-skin-1-module-layouts-1--2', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 col-lg-12 col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Monitor-2\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570198\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570023\">Um lindo Website</h4>\n\n                                <p class=\"element\" id=\"element_1625263570173\">É um fato estabelecido há muito tempo que um leitor será distraído pelo conteúdo legível de uma página quando .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Earphones\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570204\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570205\">Moderno Design</h4>\n\n                                <p class=\"element\" id=\"element_1625263570202\">É um fato estabelecido há muito tempo que um leitor será distraído pelo conteúdo legível de uma página quando .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Duplicate-Window\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570253\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570252\">Easy Interface</h4>\n\n                                <p class=\"element\" id=\"element_1625263570054\">É um fato estabelecido há muito tempo que um leitor será distraído pelo conteúdo legível de uma página quando .</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n\n'),
(63, '2021-07-02 19:28:50', '2021-07-02 19:28:50', 1, 1, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Dias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>Novos livros</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>Novos amigos</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Horas de Codificação</h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_content_fields_drafts`
--

DROP TABLE IF EXISTS `bt_content_fields_drafts`;
CREATE TABLE IF NOT EXISTS `bt_content_fields_drafts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` text COLLATE utf8_unicode_ci,
  `value` longtext COLLATE utf8_unicode_ci,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_temp` int DEFAULT NULL,
  `url` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_content_related`
--

DROP TABLE IF EXISTS `bt_content_related`;
CREATE TABLE IF NOT EXISTS `bt_content_related` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `content_id` int DEFAULT NULL,
  `related_content_id` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_content_revisions_history`
--

DROP TABLE IF EXISTS `bt_content_revisions_history`;
CREATE TABLE IF NOT EXISTS `bt_content_revisions_history` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field` text COLLATE utf8_unicode_ci,
  `value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `user_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `checksum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_content_revisions_history`
--

INSERT INTO `bt_content_revisions_history` (`id`, `rel_type`, `rel_id`, `field`, `value`, `updated_at`, `created_at`, `created_by`, `edited_by`, `user_ip`, `checksum`, `session_id`, `url`) VALUES
(1, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n', '2021-07-02 19:07:17', '2021-07-02 19:07:17', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(2, 'module', '0', 'layout-home-banners-skin-1-module-layouts-1', '\n    <div class=\"background-image-holder d-flex w-100 justify-content-center element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/slide-1.jpg\');\">\n        <div class=\"container d-flex justify-content-center align-items-center element\" id=\"element_1619530413371\">\n            <div class=\"w-100 text-left info-holder allow-drop element\" no-data-aos=\"fade-down\" id=\"element_1619530413519\">\n                <h1 class=\"element\" id=\"element_1619530413383\">This is the default <br>template of the website builder</h1>\n                <br>\n                <p class=\"lead element\" id=\"element_1619530413520\">Drag and drop website builder<br>and CMS of new generation.</p>\n                <br>\n                <br>\n\n                <div class=\"element\"><p class=\"element\">\n                    <a href=\"\" class=\"btn btn-primary\">Call to action</a>\n                </p></div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:07:17', '2021-07-02 19:07:17', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(3, 'module', '0', 'layout-home-banners-skin-1-module-layouts-1', '\n    <div class=\"background-image-holder d-flex w-100 justify-content-center element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/slide-1.jpg\');\">\n        <div class=\"container d-flex justify-content-center align-items-center element\" id=\"element_1619530413371\">\n            <div class=\"w-100 text-left info-holder allow-drop element\" no-data-aos=\"fade-down\" id=\"element_1619530413519\">\n                <h1 class=\"element\" id=\"element_1619530413383\">Este é um <br>tema padrão do construtor de sites Bistore Builder</h1>\n                <br>\n                <p class=\"lead element\" id=\"element_1619530413520\">Drag and drop website builder<br>and CMS of new generation.</p>\n                <br>\n                <br>\n\n                <div class=\"element\"><p class=\"element\">\n                    <a href=\"\" class=\"btn btn-primary\">Call to action</a>\n                </p></div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:08:43', '2021-07-02 19:08:43', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(4, 'module', '0', 'layout-home-banners-skin-1-module-layouts-1', '\n    <div class=\"background-image-holder d-flex w-100 justify-content-center element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/slide-1.jpg\');\">\n        <div class=\"container d-flex justify-content-center align-items-center element\" id=\"element_1619530413371\">\n            <div class=\"w-100 text-left info-holder allow-drop element\" no-data-aos=\"fade-down\" id=\"element_1619530413519\">\n                <h1 class=\"element\" id=\"element_1619530413383\">Este é um <br>tema padrão do Bistore Builder</h1>\n                <br>\n                <p class=\"lead element\" id=\"element_1619530413520\">Drag and drop website builder<br>and CMS of new generation.</p>\n                <br>\n                <br>\n\n                <div class=\"element\"><p class=\"element\">\n                    <a href=\"\" class=\"btn btn-primary\">Call to action</a>\n                </p></div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:09:19', '2021-07-02 19:09:19', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(5, 'module', '0', 'layout-home-banners-skin-1-module-layouts-1', '\n    <div class=\"background-image-holder d-flex w-100 justify-content-center element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/slide-1.jpg\');\">\n        <div class=\"container d-flex justify-content-center align-items-center element\" id=\"element_1619530413371\">\n            <div class=\"w-100 text-left info-holder allow-drop element\" no-data-aos=\"fade-down\" id=\"element_1619530413519\">\n                <h1 class=\"element\" id=\"element_1619530413383\">Este é um <br>tema padrão do Bistore Builder</h1>\n                <br>\n                <p class=\"lead element\" id=\"element_1619530413520\">Arraste e solte o construtor de websites<br>e o CMS de nova geração.</p>\n                <br>\n                <br>\n\n                <div class=\"element\"><p class=\"element\" id=\"element_1625263569563\">\n                    <a href=\"\" class=\"btn btn-primary\">Call to action</a>\n                </p></div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:10:34', '2021-07-02 19:10:34', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(6, 'module', '0', 'layout-home-banners-skin-1-module-layouts-1', '\n    <div class=\"background-image-holder d-flex w-100 justify-content-center element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/slide-1.jpg\');\">\n        <div class=\"container d-flex justify-content-center align-items-center element\" id=\"element_1619530413371\">\n            <div class=\"w-100 text-left info-holder allow-drop element\" no-data-aos=\"fade-down\" id=\"element_1619530413519\">\n                <h1 class=\"element\" id=\"element_1619530413383\">Este é um <br>tema padrão do Bistore Builder</h1>\n                <br>\n                <p class=\"lead element\" id=\"element_1619530413520\">Arraste e solte no construtor de websites<br>e o CMS de nova geração.</p>\n                <br>\n                <br>\n\n                <div class=\"element\"><p class=\"element\" id=\"element_1625263569563\">\n                    <a href=\"\" class=\"btn btn-primary\">Call to action</a>\n                </p></div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:10:57', '2021-07-02 19:10:57', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(7, 'module', '0', 'layout-home-banners-skin-1-module-layouts-1', '\n    <div class=\"background-image-holder d-flex w-100 justify-content-center element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/slide-1.jpg\');\">\n        <div class=\"container d-flex justify-content-center align-items-center element\" id=\"element_1619530413371\">\n            <div class=\"w-100 text-left info-holder allow-drop element\" no-data-aos=\"fade-down\" id=\"element_1619530413519\">\n                <h1 class=\"element\" id=\"element_1619530413383\">Este é um <br>tema padrão do Bistore Builder</h1>\n                <br>\n                <p class=\"lead element\" id=\"element_1619530413520\">Arraste e solte no construtor de websites<br>e o CMS de nova geração.</p>\n                <br>\n                <br>\n\n                <div class=\"element\"><p class=\"element\" id=\"element_1625263569563\">\n                    <a href=\"\" class=\"btn btn-primary\">Saber +</a>\n                </p></div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:12:50', '2021-07-02 19:12:50', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(8, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n', '2021-07-02 19:12:57', '2021-07-02 19:12:57', 1, 1, '::1', 'f2196b72311f922335a079b920c8b6e2', 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', NULL),
(9, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n', '2021-07-02 19:17:09', '2021-07-02 19:17:09', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(10, 'module', '0', 'layout-home-banners-skin-1-module-layouts-1', '\n    <div class=\"background-image-holder d-flex w-100 justify-content-center element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/slide-1.jpg\');\">\n        <div class=\"container d-flex justify-content-center align-items-center element\" id=\"element_1619530413371\">\n            <div class=\"w-100 text-left info-holder allow-drop element\" no-data-aos=\"fade-down\" id=\"element_1619530413519\">\n                <h1 class=\"element\" id=\"element_1619530413383\">Este é um <br>tema padrão do Bistore Builder</h1>\n                <br>\n                <p class=\"lead element\" id=\"element_1619530413520\">Arraste e solte no construtor de websites<br>e o CMS da nova geração.</p>\n                <br>\n                <br>\n\n                <div class=\"element\"><p class=\"element\" id=\"element_1625263569563\">\n                    <a href=\"\" class=\"btn btn-primary\">Saber +</a>\n                </p></div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:17:09', '2021-07-02 19:17:09', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(11, 'module', '0', 'layout-home-banners-skin-1-module-layouts-1', '\n    <div class=\"background-image-holder d-flex w-100 justify-content-center element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/slide-1.jpg\');\" id=\"element_1625263569850\">\n        <div class=\"container d-flex justify-content-center align-items-center element\" id=\"element_1619530413371\">\n            <div class=\"w-100 text-left info-holder allow-drop element\" no-data-aos=\"fade-down\" id=\"element_1619530413519\">\n                <h1 class=\"element\" id=\"element_1619530413383\">Este é um <br>tema padrão do Bistore Builder</h1>\n                <br>\n                <p class=\"lead element\" id=\"element_1619530413520\">Arraste e solte no construtor de websites<br>e o CMS da nova geração.</p>\n                <br>\n                <br>\n\n                <div class=\"element\"><p class=\"element\" id=\"element_1625263569563\">\n                    <a href=\"\" class=\"btn btn-primary\">Saber +</a>\n                </p></div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:18:56', '2021-07-02 19:18:56', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(12, 'module', '0', 'layout-skin-2-module-layouts-1--1', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 allow-drop element\" id=\"element_1625263569860\">\n                <div style=\"text-align: center\" class=\"element\" id=\"element_1625263569868\">\n                <h2 class=\"hr element\" id=\"element_1625263569569\">Crie um website, é fácil e rápido</h2>\n                </div>\n                <p class=\"lead element\" style=\"text-align: center\" id=\"element_1625263569588\">Professional developers can freely access the code, exchanging their knowledge and contributions with the rest of the open-source community</p>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:18:56', '2021-07-02 19:18:56', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(13, 'module', '0', 'layout-home-banners-skin-1-module-layouts-1', '\n    <div class=\"background-image-holder d-flex w-100 justify-content-center element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/slide-1.jpg\');\" id=\"element_1625263569850\">\n        <div class=\"container d-flex justify-content-center align-items-center element\" id=\"element_1619530413371\">\n            <div class=\"w-100 text-left info-holder allow-drop element\" no-data-aos=\"fade-down\" id=\"element_1619530413519\">\n                <h1 class=\"element\" id=\"element_1619530413383\">Este é um <br>tema padrão do Bistore Builder</h1>\n                <br>\n                <p class=\"lead element\" id=\"element_1619530413520\">Arraste e solte no construtor de websites<br>e o CMS da nova geração.</p>\n                <br>\n                <br>\n\n                <div class=\"element\"><p class=\"element\" id=\"element_1625263569563\">\n                    <a href=\"\" class=\"btn btn-primary\">Saber +</a>\n                </p></div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:22:41', '2021-07-02 19:22:41', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(14, 'module', '0', 'layout-skin-2-module-layouts-1--1', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 allow-drop element\" id=\"element_1625263569860\">\n                <div style=\"text-align: center\" class=\"element\" id=\"element_1625263569868\">\n                <h2 class=\"hr element\" id=\"element_1625263569569\">Crie um website, é fácil e rápido</h2>\n                </div>\n                <p class=\"lead element\" style=\"text-align: center\" id=\"element_1625263569588\">Tenha um website profissional e moderno de forma rápida. Faça alterações pontuais a qualquer instante apenas arrastando e configurando detalhes ao vivo em tempo real</p>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:22:41', '2021-07-02 19:22:41', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(15, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n', '2021-07-02 19:22:57', '2021-07-02 19:22:57', 1, 1, '::1', '1bff90637814f43282c29fbcb7deb161', 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', NULL),
(16, 'module', '0', 'layout-features-skin-1-module-layouts-1--2', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 col-lg-12 col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Monitor-2\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570023\">Um maravilhoso Website</h4>\n\n                                <p class=\"element\">It is a long established fact that a reader will be distracted by the readable content of a page when .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Earphones\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\">\n                                <h4 class=\"m-b-30 element\">Modern Design</h4>\n\n                                <p class=\"element\">It is a long established fact that a reader will be distracted by the readable content of a page when .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Duplicate-Window\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\">\n                                <h4 class=\"m-b-30 element\">Easy Interface</h4>\n\n                                <p class=\"element\" id=\"element_1625263570054\">It is a long established fact that a reader will be distracted by the readable content of a page when .</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n\n', '2021-07-02 19:23:39', '2021-07-02 19:23:39', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(17, 'module', '0', 'layout-features-skin-1-module-layouts-1--2', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 col-lg-12 col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Monitor-2\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570198\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570023\">Um lindo Website</h4>\n\n                                <p class=\"element\" id=\"element_1625263570173\">It is a long established fact that a reader will be distracted by the readable content of a page when .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Earphones\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\">\n                                <h4 class=\"m-b-30 element\">Modern Design</h4>\n\n                                <p class=\"element\" id=\"element_1625263570202\">It is a long established fact that a reader will be distracted by the readable content of a page when .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Duplicate-Window\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\">\n                                <h4 class=\"m-b-30 element\">Easy Interface</h4>\n\n                                <p class=\"element\" id=\"element_1625263570054\">It is a long established fact that a reader will be distracted by the readable content of a page when .</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n\n', '2021-07-02 19:23:55', '2021-07-02 19:23:55', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(18, 'module', '0', 'layout-features-skin-1-module-layouts-1--2', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 col-lg-12 col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Monitor-2\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570198\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570023\">Um lindo Website</h4>\n\n                                <p class=\"element\" id=\"element_1625263570173\">É um fato estabelecido há muito tempo que um leitor será distraído pelo conteúdo legível de uma página quando.</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Earphones\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\">\n                                <h4 class=\"m-b-30 element\">Modern Design</h4>\n\n                                <p class=\"element\" id=\"element_1625263570202\">It is a long established fact that a reader will be distracted by the readable content of a page when .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Duplicate-Window\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\">\n                                <h4 class=\"m-b-30 element\">Easy Interface</h4>\n\n                                <p class=\"element\" id=\"element_1625263570054\">It is a long established fact that a reader will be distracted by the readable content of a page when .</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n\n', '2021-07-02 19:24:34', '2021-07-02 19:24:34', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(19, 'module', '0', 'layout-features-skin-1-module-layouts-1--2', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 col-lg-12 col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Monitor-2\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570198\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570023\">Um lindo Website</h4>\n\n                                <p class=\"element\" id=\"element_1625263570173\">É um fato estabelecido há muito tempo que um leitor será distraído pelo conteúdo legível de uma página quando.</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Earphones\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570204\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570205\">Moderno Design</h4>\n\n                                <p class=\"element\" id=\"element_1625263570202\">It is a long established fact that a reader will be distracted by the readable content of a page when .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Duplicate-Window\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\">\n                                <h4 class=\"m-b-30 element\">Easy Interface</h4>\n\n                                <p class=\"element\" id=\"element_1625263570054\">It is a long established fact that a reader will be distracted by the readable content of a page when .</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n\n', '2021-07-02 19:24:48', '2021-07-02 19:24:48', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(20, 'module', '0', 'layout-features-skin-1-module-layouts-1--2', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 col-lg-12 col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Monitor-2\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570198\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570023\">Um lindo Website</h4>\n\n                                <p class=\"element\" id=\"element_1625263570173\">É um fato estabelecido há muito tempo que um leitor será distraído pelo conteúdo legível de uma página quando .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Earphones\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570204\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570205\">Moderno Design</h4>\n\n                                <p class=\"element\" id=\"element_1625263570202\">It is a long established fact that a reader will be distracted by the readable content of a page when .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Duplicate-Window\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\">\n                                <h4 class=\"m-b-30 element\">Easy Interface</h4>\n\n                                <p class=\"element\" id=\"element_1625263570054\">It is a long established fact that a reader will be distracted by the readable content of a page when .</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n\n', '2021-07-02 19:25:37', '2021-07-02 19:25:37', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(21, 'module', '0', 'layout-features-skin-1-module-layouts-1--2', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 col-lg-12 col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Monitor-2\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570198\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570023\">Um lindo Website</h4>\n\n                                <p class=\"element\" id=\"element_1625263570173\">É um fato estabelecido há muito tempo que um leitor será distraído pelo conteúdo legível de uma página quando .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Earphones\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570204\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570205\">Moderno Design</h4>\n\n                                <p class=\"element\" id=\"element_1625263570202\">É um fato estabelecido há muito tempo que um leitor será distraído pelo conteúdo legível de uma página quando .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Duplicate-Window\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\">\n                                <h4 class=\"m-b-30 element\">Easy Interface</h4>\n\n                                <p class=\"element\" id=\"element_1625263570054\">It is a long established fact that a reader will be distracted by the readable content of a page when .</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n\n', '2021-07-02 19:26:21', '2021-07-02 19:26:21', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(22, 'module', '0', 'layout-features-skin-1-module-layouts-1--2', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 col-lg-12 col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Monitor-2\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570198\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570023\">Um lindo Website</h4>\n\n                                <p class=\"element\" id=\"element_1625263570173\">É um fato estabelecido há muito tempo que um leitor será distraído pelo conteúdo legível de uma página quando .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Earphones\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570204\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570205\">Moderno Design</h4>\n\n                                <p class=\"element\" id=\"element_1625263570202\">É um fato estabelecido há muito tempo que um leitor será distraído pelo conteúdo legível de uma página quando .</p>\n                            </div>\n                        </div>\n                    </div>\n\n                    <div class=\"m-b-40 col-sm-6 col-lg-4 cloneable\">\n                        <div class=\"card shadow-sm\">\n                            <div class=\"stamp\">\n                                <i class=\"mw-micon-Duplicate-Window\"></i>\n                            </div>\n\n                            <div class=\"allow-drop element\" id=\"element_1625263570253\">\n                                <h4 class=\"m-b-30 element\" id=\"element_1625263570252\">Easy Interface</h4>\n\n                                <p class=\"element\" id=\"element_1625263570054\">É um fato estabelecido há muito tempo que um leitor será distraído pelo conteúdo legível de uma página quando .</p>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n\n', '2021-07-02 19:26:31', '2021-07-02 19:26:31', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(23, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Sunny days</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>New books</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>New friends</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Hours coding</h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:26:45', '2021-07-02 19:26:45', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(24, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>SDias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>New books</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>New friends</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Hours coding</h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:27:30', '2021-07-02 19:27:30', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(25, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Dias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>New books</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>New friends</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Hours coding</h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:27:34', '2021-07-02 19:27:34', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(26, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Dias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>New books</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>New friends</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Hours coding</h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:27:39', '2021-07-02 19:27:39', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', '');
INSERT INTO `bt_content_revisions_history` (`id`, `rel_type`, `rel_id`, `field`, `value`, `updated_at`, `created_at`, `created_by`, `edited_by`, `user_ip`, `checksum`, `session_id`, `url`) VALUES
(27, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Dias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>Novos livros</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>New friends</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Hours coding</h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:27:48', '2021-07-02 19:27:48', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(28, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Dias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>Novos livros</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>New friends</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Hours coding</h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:28:00', '2021-07-02 19:28:00', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(29, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Dias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>Novos livros</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>Novos amigos</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Hours coding</h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:28:10', '2021-07-02 19:28:10', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(30, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Dias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>Novos livros</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>Novos amigos</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Hours coding</h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:28:15', '2021-07-02 19:28:15', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(31, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Dias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>Novos livros</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>Novos amigos</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Codificação de horas</h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:28:24', '2021-07-02 19:28:24', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(32, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Dias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>Novos livros</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>Novos amigos</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>HCodificação de horas</h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:28:34', '2021-07-02 19:28:34', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(33, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Dias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>Novos livros</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>Novos amigos</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Horas Codificação de horas</h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:28:36', '2021-07-02 19:28:36', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(34, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Dias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>Novos livros</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>Novos amigos</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Horas de Codificação de horas</h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:28:39', '2021-07-02 19:28:39', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(35, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Dias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>Novos livros</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>Novos amigos</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Horas de Codificação de </h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:28:44', '2021-07-02 19:28:44', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(36, 'module', '0', 'layout-features-skin-6-module-layouts-1--3', '\n    <div class=\"d-flex w-100 background-image-holder p-t-30 p-b-100 element\" style=\"background-image:url(\'{SITE_URL}userfiles/templates/new-world/assets/img/features-bg.png\');\">\n        <div class=\"container align-self-center\">\n            <div class=\"row\">\n                <div class=\"col-12 col-xl-12 mx-auto text-center text-white\">\n                    <div class=\"row\">\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Sunglasses-2\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">300</span></h6>\n                            <h6>Dias ensolarados</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Open-Book\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">50</span></h6>\n                            <h6>Novos livros</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Handshake\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">100</span></h6>\n                            <h6>Novos amigos</h6>\n                        </div>\n\n                        <div class=\"icon-holder col-12 col-sm-3 mx-auto cloneable\">\n                            <i class=\"icon mw-micon-Cranium\"></i>\n                            <h6><span class=\"safe-element\" data-counter=\"\" style=\"visibility: visible;\">1000</span></h6>\n                            <h6>Horas de Codificação </h6>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:28:46', '2021-07-02 19:28:46', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(37, 'module', '0', 'layout-skin-3-module-layouts-1--4', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619530414112\">\n                <h2 class=\"hr element\" id=\"element_1619530414117\">Crie um lindo website facilmente</h2>\n                <div class=\"element m-auto\" style=\"max-width: 800px;\">\n                    <p class=\"element\" id=\"element_1619530414313\">Content management system and website builder. It is based on the PHP programming language and the Laravel  web application framework, using drag and drop and allowing users to quickly create content, while scheduling and managing multiple displays.</p>\n                    <br>\n                    <br>\n                </div>\n                <div class=\"element m-t-20\">\n                    <module class=\"module module module-btn \" data-mw-title=\"Button\" id=\"module-layouts-1--4-btn\" template=\"bootstrap\" button_style=\"btn-primary\" text=\"Learn more\" data-type=\"btn\" parent-module-id=\"module-layouts-1--4\" parent-module=\"layouts\"></module>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:29:31', '2021-07-02 19:29:31', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(38, 'module', '0', 'layout-skin-3-module-layouts-1--4', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619530414112\">\n                <h2 class=\"hr element\" id=\"element_1619530414117\">Crie um lindo website facilmente</h2>\n                <div class=\"element m-auto\" style=\"max-width: 800px;\" id=\"element_1625263570642\">\n                    <p class=\"element\" id=\"element_1619530414313\">Sistema de gerenciamento de conteúdo e construtor de sites. Ele é baseado na linguagem de programação PHP e no framework de aplicação web Laravel, usando arrastar e soltar e permitir que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam vários displays.</p>\n                    <br>\n                    <br>\n                </div>\n                <div class=\"element m-t-20\">\n                    <module class=\"module module module-btn \" data-mw-title=\"Button\" id=\"module-layouts-1--4-btn\" template=\"bootstrap\" button_style=\"btn-primary\" text=\"Learn more\" data-type=\"btn\" parent-module-id=\"module-layouts-1--4\" parent-module=\"layouts\"></module>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:30:16', '2021-07-02 19:30:16', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(39, 'module', '0', 'layout-skin-3-module-layouts-1--4', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619530414112\">\n                <h2 class=\"hr element\" id=\"element_1619530414117\">Crie um lindo website facilmente</h2>\n                <div class=\"element m-auto\" style=\"max-width: 800px;\" id=\"element_1625263570642\">\n                    <p class=\"element\" id=\"element_1619530414313\">Sistema de gerenciamento de conteúdo e construtor de sites. Ele é baseado na linguagem de programação PHP e no framework de aplicação web Laravel, usando arrastar e soltar e permitir que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam vários displays.</p>\n                    <br>\n                    <br>\n                </div>\n                <div class=\"element m-t-20\" id=\"element_1625263570646\">\n                    <module class=\"module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--4-btn\" template=\"bootstrap\" button_style=\"btn-primary\" text=\"Learn more\" data-type=\"btn\" parent-module-id=\"module-layouts-1--4\" parent-module=\"layouts\"></module>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:30:33', '2021-07-02 19:30:33', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(40, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n', '2021-07-02 19:30:43', '2021-07-02 19:30:43', 1, 1, '::1', '94787506d29a0af122d8265c341c6123', 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', NULL),
(41, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n', '2021-07-02 19:31:36', '2021-07-02 19:31:36', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(42, 'module', '0', 'layout-info-blocks-skin-6-module-layouts-1--5', '\n    <div class=\"container-fluid\">\n        <div class=\"row flexbox-container\">\n            <div class=\"col-12 col-lg-6 col-xl-5 img-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/img-1.png\');\"><div class=\"element\" id=\"mw-element-1619530413347\"></div></div>\n\n            <div class=\"col-12 col-lg-6 col-xl-7 right-side text-center text-lg-left\" style=\"padding-right: 180.415px;\">\n                <div class=\"info-holder shadow-sm allow-drop element\" no-data-aos=\"fade-up\" style=\"margin-left: -102.777px;\" id=\"element_1619530414332\">\n                    <h2 class=\"hr element\" id=\"element_1625263570703\">Faça o design e codifique</h2>\n                    <p class=\"element\" id=\"element_1619530414342\">Content management system and website builder. It is based on the PHP programming language and the Laravel  web application framework, using drag and drop and allowing users to quickly create content, while scheduling and managing multiple displays.</p>\n\n                    <div class=\"element\" id=\"element_1619530414336\">\n                        <br>\n                        <module class=\"module module module-btn \" data-mw-title=\"Button\" id=\"module-layouts-1--5-btn\" button_text=\"More about this\" button_style=\"8\" data-type=\"btn\" parent-module-id=\"module-layouts-1--5\" parent-module=\"layouts\"></module>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:31:36', '2021-07-02 19:31:36', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(43, 'module', '0', 'layout-info-blocks-skin-6-module-layouts-1--5', '\n    <div class=\"container-fluid\">\n        <div class=\"row flexbox-container\">\n            <div class=\"col-12 col-lg-6 col-xl-5 img-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/img-1.png\');\"><div class=\"element\" id=\"mw-element-1619530413347\"></div></div>\n\n            <div class=\"col-12 col-lg-6 col-xl-7 right-side text-center text-lg-left\" style=\"padding-right: 180.415px;\">\n                <div class=\"info-holder shadow-sm allow-drop element\" no-data-aos=\"fade-up\" style=\"margin-left: -102.777px;\" id=\"element_1619530414332\">\n                    <h2 class=\"hr element\" id=\"element_1625263570703\">Faça o design e codifique</h2>\n                    <p class=\"element\" id=\"element_1619530414342\">Content management system and website builder. It is based on the PHP programming language and the Laravel  web application framework, using drag and drop and allowing users to quickly create content, while scheduling and managing multiple displays.</p>\n\n                    <div class=\"element\" id=\"element_1619530414336\">\n                        <br>\n                        <module class=\"module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--5-btn\" button_text=\"More about this\" button_style=\"8\" data-type=\"btn\" parent-module-id=\"module-layouts-1--5\" parent-module=\"layouts\"></module>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:31:48', '2021-07-02 19:31:48', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(44, 'module', '0', 'layout-info-blocks-skin-6-module-layouts-1--5', '\n    <div class=\"container-fluid\">\n        <div class=\"row flexbox-container\">\n            <div class=\"col-12 col-lg-6 col-xl-5 img-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/img-1.png\');\"><div class=\"element\" id=\"mw-element-1619530413347\"></div></div>\n\n            <div class=\"col-12 col-lg-6 col-xl-7 right-side text-center text-lg-left\" style=\"padding-right: 180.415px;\">\n                <div class=\"info-holder shadow-sm allow-drop element\" no-data-aos=\"fade-up\" style=\"margin-left: -102.777px;\" id=\"element_1619530414332\">\n                    <h2 class=\"hr element\" id=\"element_1625263570703\">Faça o design e codifique</h2>\n                    <p class=\"element\" id=\"element_1619530414342\">Sistema de gerenciamento de conteúdo e construtor de sites. Ele é baseado na linguagem de programação PHP e no framework de aplicação web Laravel, usando arrastar e soltar e permitir que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam vários displays.</p>\n\n                    <div class=\"element\" id=\"element_1619530414336\">\n                        <br>\n                        <module class=\"module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--5-btn\" button_text=\"More about this\" button_style=\"8\" data-type=\"btn\" parent-module-id=\"module-layouts-1--5\" parent-module=\"layouts\"></module>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:32:14', '2021-07-02 19:32:14', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(45, 'module', '0', 'layout-info-blocks-skin-6-module-layouts-1--5', '\n    <div class=\"container-fluid\">\n        <div class=\"row flexbox-container\">\n            <div class=\"col-12 col-lg-6 col-xl-5 img-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/img-1.png\');\"><div class=\"element\" id=\"mw-element-1619530413347\"></div></div>\n\n            <div class=\"col-12 col-lg-6 col-xl-7 right-side text-center text-lg-left\" style=\"padding-right: 180.415px;\">\n                <div class=\"info-holder shadow-sm allow-drop element\" no-data-aos=\"fade-up\" style=\"margin-left: -102.777px;\" id=\"element_1619530414332\">\n                    <h2 class=\"hr element\" id=\"element_1625263570703\">Faça o design e codifique</h2>\n                    <p class=\"element\" id=\"element_1619530414342\">Sistema de gerenciamento de conteúdo e construtor de sites. Ele é baseado na linguagem de programação PHP e no framework de aplicação web Laravel, usando arrastar e soltar e permitir que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam vários displays.</p>\n\n                    <div class=\"element\" id=\"element_1619530414336\">\n                        <br>\n                        <module class=\"module module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--5-btn\" button_text=\"More about this\" button_style=\"8\" data-type=\"btn\" parent-module-id=\"module-layouts-1--5\" parent-module=\"layouts\"></module>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:32:49', '2021-07-02 19:32:49', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(46, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n', '2021-07-02 19:33:44', '2021-07-02 19:33:44', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(47, 'module', '0', 'layout-info-blocks-skin-6-module-layouts-1--5', '\n    <div class=\"container-fluid\">\n        <div class=\"row flexbox-container\">\n            <div class=\"col-12 col-lg-6 col-xl-5 img-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/img-1.png\');\"><div class=\"element\" id=\"mw-element-1619530413347\"></div></div>\n\n            <div class=\"col-12 col-lg-6 col-xl-7 right-side text-center text-lg-left\" style=\"padding-right: 180.415px;\">\n                <div class=\"info-holder shadow-sm allow-drop element\" no-data-aos=\"fade-up\" style=\"margin-left: -102.777px;\" id=\"element_1619530414332\">\n                    <h2 class=\"hr element\" id=\"element_1625263570703\">Do design ao código</h2>\n                    <p class=\"element\" id=\"element_1619530414342\">Sistema de gerenciamento de conteúdo e construtor de sites. Ele é baseado na linguagem de programação PHP e no framework de aplicação web Laravel, usando arrastar e soltar e permitir que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam vários displays.</p>\n\n                    <div class=\"element\" id=\"element_1619530414336\">\n                        <br>\n                        <module class=\"module module module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--5-btn\" button_text=\"More about this\" button_style=\"8\" data-type=\"btn\" parent-module-id=\"module-layouts-1--5\" parent-module=\"layouts\"></module>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:33:44', '2021-07-02 19:33:44', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(48, 'module', '0', 'layout-info-blocks-skin-6-module-layouts-1--5', '\n    <div class=\"container-fluid\">\n        <div class=\"row flexbox-container\">\n            <div class=\"col-12 col-lg-6 col-xl-5 img-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/img-1.png\');\"><div class=\"element\" id=\"mw-element-1619530413347\"></div></div>\n\n            <div class=\"col-12 col-lg-6 col-xl-7 right-side text-center text-lg-left\" style=\"padding-right: 180.415px;\">\n                <div class=\"info-holder shadow-sm allow-drop element\" no-data-aos=\"fade-up\" style=\"margin-left: -102.777px;\" id=\"element_1619530414332\">\n                    <h2 class=\"hr element\" id=\"element_1625263570703\">Do design ao código</h2>\n                    <p class=\"element\" id=\"element_1619530414342\">Sistema de gerenciamento de conteúdo e construtor de sites. Ele é baseado na linguagem de programação PHP e no framework de aplicação web Laravel, usando arrastar e soltar e permitir que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam vários displays.</p>\n\n                    <div class=\"element\" id=\"element_1619530414336\">\n                        <br>\n                        <module class=\"module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--5-btn\" button_text=\"More about this\" button_style=\"8\" data-type=\"btn\" parent-module-id=\"module-layouts-1--5\" parent-module=\"layouts\"></module>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:33:57', '2021-07-02 19:33:57', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(49, 'module', '0', 'layout-info-blocks-skin-6-module-layouts-1--5', '\n    <div class=\"container-fluid\">\n        <div class=\"row flexbox-container\">\n            <div class=\"col-12 col-lg-6 col-xl-5 img-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/img-1.png\');\"><div class=\"element\" id=\"mw-element-1619530413347\"></div></div>\n\n            <div class=\"col-12 col-lg-6 col-xl-7 right-side text-center text-lg-left\" style=\"padding-right: 180.415px;\">\n                <div class=\"info-holder shadow-sm allow-drop element\" no-data-aos=\"fade-up\" style=\"margin-left: -102.777px;\" id=\"element_1619530414332\">\n                    <h2 class=\"hr element\" id=\"element_1625263570703\">Do design ao código</h2>\n                    <p class=\"element\" id=\"element_1619530414342\">Sistema de gerenciamento de conteúdo e construtor de sites. Ele é baseado na linguagem de programação PHP e no framework de aplicação web Laravel, usando arrastar e soltar e permitir que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam vários displays.</p>\n\n                    <div class=\"element\" id=\"element_1619530414336\">\n                        <br>\n                        <module class=\"module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--5-btn\" button_text=\"More about this\" button_style=\"8\" data-type=\"btn\" parent-module-id=\"module-layouts-1--5\" parent-module=\"layouts\"></module>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:34:06', '2021-07-02 19:34:06', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(50, 'module', '0', 'layout-info-blocks-skin-7-module-layouts-1--6', '\n    <div class=\"container-fluid\">\n        <div class=\"row flexbox-container\">\n            <div class=\"col-12 col-lg-6 col-xl-7 left-side text-center text-lg-left\" style=\"padding-left: 180.415px;\">\n                <div class=\"info-holder shadow-sm allow-drop element\" no-data-aos=\"fade-up\" style=\"margin-right: -102.777px;\" id=\"element_1619530414378\">\n                    <h2 class=\"hr element\" id=\"element_1619530414381\">Do design ao código</h2>\n                    <p class=\"element\" id=\"element_1619530414397\">Content management system and website builder. It is based on the PHP programming language and the Laravel  web application framework, using drag and drop and allowing users to quickly create content, while scheduling and managing multiple displays.</p>\n                    <div class=\"element\" id=\"element_1625263569809\">\n                        <br>\n                        <module class=\"module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--6-btn\" button_text=\"More about this\" button_style=\"8\" data-type=\"btn\" parent-module-id=\"module-layouts-1--6\" parent-module=\"layouts\"></module>\n                    </div>\n                </div>\n            </div>\n\n            <div class=\"col-12 col-lg-6 col-xl-5 img-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/img-2.png\');\"><div class=\"element\" id=\"mw-element-1619530413348\"></div></div>\n        </div>\n    </div>\n', '2021-07-02 19:34:06', '2021-07-02 19:34:06', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(51, 'module', '0', 'layout-info-blocks-skin-6-module-layouts-1--5', '\n    <div class=\"container-fluid\">\n        <div class=\"row flexbox-container\">\n            <div class=\"col-12 col-lg-6 col-xl-5 img-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/img-1.png\');\"><div class=\"element\" id=\"mw-element-1619530413347\"></div></div>\n\n            <div class=\"col-12 col-lg-6 col-xl-7 right-side text-center text-lg-left\" style=\"padding-right: 180.415px;\">\n                <div class=\"info-holder shadow-sm allow-drop element\" no-data-aos=\"fade-up\" style=\"margin-left: -102.777px;\" id=\"element_1619530414332\">\n                    <h2 class=\"hr element\" id=\"element_1625263570703\">Do design ao código</h2>\n                    <p class=\"element\" id=\"element_1619530414342\">Sistema de gerenciamento de conteúdo e construtor de sites. Ele é baseado na linguagem de programação PHP e no framework de aplicação web Laravel, usando arrastar e soltar e permitir que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam vários displays.</p>\n\n                    <div class=\"element\" id=\"element_1619530414336\">\n                        <br>\n                        <module class=\"module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--5-btn\" button_text=\"More about this\" button_style=\"8\" data-type=\"btn\" parent-module-id=\"module-layouts-1--5\" parent-module=\"layouts\"></module>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:34:25', '2021-07-02 19:34:25', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(52, 'module', '0', 'layout-info-blocks-skin-7-module-layouts-1--6', '\n    <div class=\"container-fluid\">\n        <div class=\"row flexbox-container\">\n            <div class=\"col-12 col-lg-6 col-xl-7 left-side text-center text-lg-left\" style=\"padding-left: 180.415px;\">\n                <div class=\"info-holder shadow-sm allow-drop element\" no-data-aos=\"fade-up\" style=\"margin-right: -102.777px;\" id=\"element_1619530414378\">\n                    <h2 class=\"hr element\" id=\"element_1619530414381\">Do design ao código</h2>\n                    <p class=\"element\" id=\"element_1619530414397\">Sistema de gerenciamento de conteúdo e construtor de sites. Ele é baseado na linguagem de programação PHP e no framework de aplicação web Laravel, usando arrastar e soltar e permitir que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam vários displays.</p>\n                    <div class=\"element\" id=\"element_1625263569809\">\n                        <br>\n                        <module class=\"module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--6-btn\" button_text=\"More about this\" button_style=\"8\" data-type=\"btn\" parent-module-id=\"module-layouts-1--6\" parent-module=\"layouts\"></module>\n                    </div>\n                </div>\n            </div>\n\n            <div class=\"col-12 col-lg-6 col-xl-5 img-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/img-2.png\');\"><div class=\"element\" id=\"mw-element-1619530413348\"></div></div>\n        </div>\n    </div>\n', '2021-07-02 19:34:25', '2021-07-02 19:34:25', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', '');
INSERT INTO `bt_content_revisions_history` (`id`, `rel_type`, `rel_id`, `field`, `value`, `updated_at`, `created_at`, `created_by`, `edited_by`, `user_ip`, `checksum`, `session_id`, `url`) VALUES
(53, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n', '2021-07-02 19:35:30', '2021-07-02 19:35:30', 1, 1, '::1', '359349f063123abf3575d847aa9d5a85', 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', NULL),
(54, 'module', '0', 'layout-skin-2-module-layouts-1--8', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521057957\">\n                <h2 class=\"hr element\" id=\"element_1619521057953\">Viajar ao redor do mundo</h2>\n                <p class=\"lead element\" id=\"element_1619521058271\">Find the best destinations for relax</p>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:35:50', '2021-07-02 19:35:50', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(55, 'module', '0', 'layout-skin-2-module-layouts-1--8', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521057957\">\n                <h2 class=\"hr element\" id=\"element_1619521057953\">Viajar ao redor do mundo</h2>\n                <p class=\"lead element\" id=\"element_1619521058271\">Encontre os melhores destinos para relaxar</p>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:36:04', '2021-07-02 19:36:04', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(56, 'module', '0', 'layout-skin-2-module-layouts-1--8', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521057957\">\n                <h2 class=\"hr element\" id=\"element_1619521057953\">Viajar ao redor do mundo</h2>\n                <p class=\"lead element\" id=\"element_1619521058271\">Encontre os melhores destinos para relaxar</p>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:36:24', '2021-07-02 19:36:24', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(57, 'module', '0', 'layout-info-blocks-skin-3-module-layouts-1--9', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-5.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1619530414499\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414483\">É a nova geração</h2>\n                                    <p class=\"element\" id=\"element_1619530414503\">Content management system and website builder. It is based on the PHP programming language and the Laravel  web application framework.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-6.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1625263571449\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414478\">Unique design</h2>\n                                    <p class=\"element\" id=\"element_1619530414536\">Content management system and website builder. It is based on the PHP programming language and the Laravel web application framework.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:36:24', '2021-07-02 19:36:24', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(58, 'module', '0', 'layout-skin-2-module-layouts-1--8', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521057957\">\n                <h2 class=\"hr element\" id=\"element_1619521057953\">Viajar ao redor do mundo</h2>\n                <p class=\"lead element\" id=\"element_1619521058271\">Encontre os melhores destinos para relaxar</p>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:36:46', '2021-07-02 19:36:46', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(59, 'module', '0', 'layout-info-blocks-skin-3-module-layouts-1--9', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-5.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1619530414499\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414483\">É a nova geração</h2>\n                                    <p class=\"element\" id=\"element_1619530414503\">Sistema de gerenciamento de conteúdo e construtor de sites. É baseado na linguagem de programação PHP e no framework de aplicação web Laravel.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-6.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1625263571449\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414478\">Unique design</h2>\n                                    <p class=\"element\" id=\"element_1619530414536\">Content management system and website builder. It is based on the PHP programming language and the Laravel web application framework.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:36:46', '2021-07-02 19:36:46', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(60, 'module', '0', 'layout-skin-2-module-layouts-1--8', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521057957\">\n                <h2 class=\"hr element\" id=\"element_1619521057953\">Viajar ao redor do mundo</h2>\n                <p class=\"lead element\" id=\"element_1619521058271\">Encontre os melhores destinos para relaxar</p>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:37:03', '2021-07-02 19:37:03', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(61, 'module', '0', 'layout-info-blocks-skin-3-module-layouts-1--9', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-5.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1619530414499\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414483\">É a nova geração</h2>\n                                    <p class=\"element\" id=\"element_1619530414503\">Sistema de gerenciamento de conteúdo e construtor de sites. É baseado na linguagem de programação PHP e no framework de aplicação web Laravel.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-6.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1625263571449\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414478\">Design único</h2>\n                                    <p class=\"element\" id=\"element_1619530414536\">Content management system and website builder. It is based on the PHP programming language and the Laravel web application framework.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:37:03', '2021-07-02 19:37:03', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(62, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n', '2021-07-02 19:37:21', '2021-07-02 19:37:21', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(63, 'module', '0', 'layout-skin-2-module-layouts-1--8', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521057957\">\n                <h2 class=\"hr element\" id=\"element_1619521057953\">Viajar ao redor do mundo</h2>\n                <p class=\"lead element\" id=\"element_1619521058271\">Encontre os melhores destinos para relaxar</p>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:37:21', '2021-07-02 19:37:21', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(64, 'module', '0', 'layout-info-blocks-skin-3-module-layouts-1--9', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-5.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1619530414499\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414483\">É a nova geração</h2>\n                                    <p class=\"element\" id=\"element_1619530414503\">Sistema de gerenciamento de conteúdo e construtor de sites. É baseado na linguagem de programação PHP e no framework de aplicação web Laravel.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-6.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1625263571449\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414478\">Design único</h2>\n                                    <p class=\"element\" id=\"element_1619530414536\">Content management system and website builder. It is based on the PHP programming language and the Laravel web application framework.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:37:21', '2021-07-02 19:37:21', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(65, 'module', '0', 'layout-skin-2-module-layouts-1--10', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521058856\">\n                <h2 class=\"hr element\" id=\"element_1619521058731\">O que nossos clientes dizem?</h2>\n                \n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:37:21', '2021-07-02 19:37:21', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(66, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n', '2021-07-02 19:44:53', '2021-07-02 19:44:53', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(67, 'module', '0', 'layout-skin-2-module-layouts-1--8', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521057957\">\n                <h2 class=\"hr element\" id=\"element_1619521057953\">Viajar ao redor do mundo</h2>\n                <p class=\"lead element\" id=\"element_1619521058271\">Encontre os melhores destinos para relaxar</p>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:44:53', '2021-07-02 19:44:53', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(68, 'module', '0', 'layout-info-blocks-skin-3-module-layouts-1--9', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-5.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1619530414499\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414483\">É a nova geração</h2>\n                                    <p class=\"element\" id=\"element_1619530414503\">Sistema de gerenciamento de conteúdo e construtor de sites. É baseado na linguagem de programação PHP e no framework de aplicação web Laravel.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-6.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1625263571449\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414478\">Design único</h2>\n                                    <p class=\"element\" id=\"element_1619530414536\">Content management system and website builder. It is based on the PHP programming language and the Laravel web application framework.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:44:53', '2021-07-02 19:44:53', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(69, 'module', '0', 'layout-skin-2-module-layouts-1--10', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521058856\">\n                <h2 class=\"hr element\" id=\"element_1619521058731\">O que nossos clientes dizem?</h2>\n                \n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:44:53', '2021-07-02 19:44:53', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(70, 'module', '0', 'layout-skin-8-module-layouts-1--12', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-12 col-lg-8\">\n                        <div class=\"text-left m-b-10\">\n                            <h2 class=\"hr\">Last blog posts</h2>\n                            <a href=\"#\" class=\"btn btn-link float-right\">Browse Articles</a>\n                        </div>\n\n                        <module class=\"module module-posts\" data-mw-title=\"Posts List\" id=\"module-layouts-1--12-posts\" template=\"skin-1\" data-type=\"posts\" parent-module-id=\"module-layouts-1--12\" parent-module=\"layouts\"></module>\n                    </div>\n\n                    <div class=\"col-12 col-lg-4 text-center\">\n                        <div class=\"h-100 d-flex flex-column justify-content-center align-items-center text-white twitter-holder\">\n                            <module class=\"module module module-twitter-feed \" data-mw-title=\"Twitter feed\" id=\"module-layouts-1--12-twitter-feed\" template=\"skin-1\" search_string=\"microweber\" number_of_items=\"1\" data-type=\"twitter_feed\" parent-module-id=\"module-layouts-1--12\" parent-module=\"layouts\"></module>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:44:53', '2021-07-02 19:44:53', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(71, 'module', '0', 'layout-skin-2-module-layouts-1--8', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521057957\">\n                <h2 class=\"hr element\" id=\"element_1619521057953\">Viajar ao redor do mundo</h2>\n                <p class=\"lead element\" id=\"element_1619521058271\">Encontre os melhores destinos para relaxar</p>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:44:59', '2021-07-02 19:44:59', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(72, 'module', '0', 'layout-info-blocks-skin-3-module-layouts-1--9', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-5.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1619530414499\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414483\">É a nova geração</h2>\n                                    <p class=\"element\" id=\"element_1619530414503\">Sistema de gerenciamento de conteúdo e construtor de sites. É baseado na linguagem de programação PHP e no framework de aplicação web Laravel.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-6.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1625263571449\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414478\">Design único</h2>\n                                    <p class=\"element\" id=\"element_1619530414536\">Content management system and website builder. It is based on the PHP programming language and the Laravel web application framework.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:44:59', '2021-07-02 19:44:59', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(73, 'module', '0', 'layout-skin-2-module-layouts-1--10', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521058856\">\n                <h2 class=\"hr element\" id=\"element_1619521058731\">O que nossos clientes dizem?</h2>\n                \n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:44:59', '2021-07-02 19:44:59', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(74, 'module', '0', 'layout-skin-8-module-layouts-1--12', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-12 col-lg-8\">\n                        <div class=\"text-left m-b-10\">\n                            <h2 class=\"hr\">Últimos posts do blog</h2>\n                            <a href=\"#\" class=\"btn btn-link float-right\">Browse Articles</a>\n                        </div>\n\n                        <module class=\"module module-posts\" data-mw-title=\"Posts List\" id=\"module-layouts-1--12-posts\" template=\"skin-1\" data-type=\"posts\" parent-module-id=\"module-layouts-1--12\" parent-module=\"layouts\"></module>\n                    </div>\n\n                    <div class=\"col-12 col-lg-4 text-center\">\n                        <div class=\"h-100 d-flex flex-column justify-content-center align-items-center text-white twitter-holder\">\n                            <module class=\"module module module-twitter-feed \" data-mw-title=\"Twitter feed\" id=\"module-layouts-1--12-twitter-feed\" template=\"skin-1\" search_string=\"microweber\" number_of_items=\"1\" data-type=\"twitter_feed\" parent-module-id=\"module-layouts-1--12\" parent-module=\"layouts\"></module>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:44:59', '2021-07-02 19:44:59', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(75, 'module', '0', 'layout-skin-2-module-layouts-1--8', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521057957\">\n                <h2 class=\"hr element\" id=\"element_1619521057953\">Viajar ao redor do mundo</h2>\n                <p class=\"lead element\" id=\"element_1619521058271\">Encontre os melhores destinos para relaxar</p>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:45:04', '2021-07-02 19:45:04', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(76, 'module', '0', 'layout-info-blocks-skin-3-module-layouts-1--9', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-5.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1619530414499\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414483\">É a nova geração</h2>\n                                    <p class=\"element\" id=\"element_1619530414503\">Sistema de gerenciamento de conteúdo e construtor de sites. É baseado na linguagem de programação PHP e no framework de aplicação web Laravel.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-6.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1625263571449\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414478\">Design único</h2>\n                                    <p class=\"element\" id=\"element_1619530414536\">Content management system and website builder. It is based on the PHP programming language and the Laravel web application framework.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:45:04', '2021-07-02 19:45:04', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(77, 'module', '0', 'layout-skin-2-module-layouts-1--10', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521058856\">\n                <h2 class=\"hr element\" id=\"element_1619521058731\">O que nossos clientes dizem?</h2>\n                \n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:45:04', '2021-07-02 19:45:04', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(78, 'module', '0', 'layout-skin-8-module-layouts-1--12', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-12 col-lg-8\">\n                        <div class=\"text-left m-b-10\">\n                            <h2 class=\"hr\">Últimos posts do blog</h2>\n                            <a href=\"#\" class=\"btn btn-link float-right\">Browse Articles</a>\n                        </div>\n\n                        <module class=\"module module-posts\" data-mw-title=\"Posts List\" id=\"module-layouts-1--12-posts\" template=\"skin-1\" data-type=\"posts\" parent-module-id=\"module-layouts-1--12\" parent-module=\"layouts\"></module>\n                    </div>\n\n                    <div class=\"col-12 col-lg-4 text-center\">\n                        <div class=\"h-100 d-flex flex-column justify-content-center align-items-center text-white twitter-holder\">\n                            <module class=\"module module module-twitter-feed \" data-mw-title=\"Twitter feed\" id=\"module-layouts-1--12-twitter-feed\" template=\"skin-1\" search_string=\"microweber\" number_of_items=\"1\" data-type=\"twitter_feed\" parent-module-id=\"module-layouts-1--12\" parent-module=\"layouts\"></module>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:45:04', '2021-07-02 19:45:04', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(79, 'module', '0', 'layout-skin-2-module-layouts-1--8', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521057957\">\n                <h2 class=\"hr element\" id=\"element_1619521057953\">Viajar ao redor do mundo</h2>\n                <p class=\"lead element\" id=\"element_1619521058271\">Encontre os melhores destinos para relaxar</p>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:45:10', '2021-07-02 19:45:10', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(80, 'module', '0', 'layout-info-blocks-skin-3-module-layouts-1--9', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-5.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1619530414499\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414483\">É a nova geração</h2>\n                                    <p class=\"element\" id=\"element_1619530414503\">Sistema de gerenciamento de conteúdo e construtor de sites. É baseado na linguagem de programação PHP e no framework de aplicação web Laravel.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                    <div class=\"col-lg-6\">\n                        <div class=\"text-center text-lg-left\">\n                            <div class=\"m-b-20\">\n                                <img src=\"{SITE_URL}userfiles/templates/new-world/assets/img/img-6.png\" alt=\"\">\n                            </div>\n\n                            <div class=\" m-b-20\">\n                                <div class=\"allow-drop element\" id=\"element_1625263571449\">\n                                    <h2 class=\"m-b-30 element\" id=\"element_1619530414478\">Design único</h2>\n                                    <p class=\"element\" id=\"element_1619530414536\">Content management system and website builder. It is based on the PHP programming language and the Laravel web application framework.</p>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:45:10', '2021-07-02 19:45:10', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(81, 'module', '0', 'layout-skin-2-module-layouts-1--10', '\n    <div class=\"container\" style=\"max-width:750px;\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center allow-drop element\" id=\"element_1619521058856\">\n                <h2 class=\"hr element\" id=\"element_1619521058731\">O que nossos clientes dizem?</h2>\n                \n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:45:10', '2021-07-02 19:45:10', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(82, 'module', '0', 'layout-skin-8-module-layouts-1--12', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-xl-10 mx-auto\">\n                <div class=\"row\">\n                    <div class=\"col-12 col-lg-8\">\n                        <div class=\"text-left m-b-10\">\n                            <h2 class=\"hr\">Últimos posts do blog</h2>\n                            <a href=\"#\" class=\"btn btn-link float-right\">Navegar nos artigos</a>\n                        </div>\n\n                        <module class=\"module module-posts\" data-mw-title=\"Posts List\" id=\"module-layouts-1--12-posts\" template=\"skin-1\" data-type=\"posts\" parent-module-id=\"module-layouts-1--12\" parent-module=\"layouts\"></module>\n                    </div>\n\n                    <div class=\"col-12 col-lg-4 text-center\">\n                        <div class=\"h-100 d-flex flex-column justify-content-center align-items-center text-white twitter-holder\">\n                            <module class=\"module module module-twitter-feed \" data-mw-title=\"Twitter feed\" id=\"module-layouts-1--12-twitter-feed\" template=\"skin-1\" search_string=\"microweber\" number_of_items=\"1\" data-type=\"twitter_feed\" parent-module-id=\"module-layouts-1--12\" parent-module=\"layouts\"></module>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:45:10', '2021-07-02 19:45:10', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(83, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n', '2021-07-02 19:45:15', '2021-07-02 19:45:15', 1, 1, '::1', 'f56449883c5806fc8857a9c59a641053', 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', NULL),
(84, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n', '2021-07-02 19:54:47', '2021-07-02 19:54:47', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(85, 'module', '0', 'layout-info-blocks-skin-7-module-layouts-1--6', '\n    <div class=\"container-fluid\">\n        <div class=\"row flexbox-container\">\n            <div class=\"col-12 col-lg-6 col-xl-7 left-side text-center text-lg-left\" style=\"padding-left: 180.415px;\">\n                <div class=\"info-holder shadow-sm allow-drop element\" no-data-aos=\"fade-up\" style=\"margin-right: -102.777px;\" id=\"element_1619530414378\">\n                    <h2 class=\"hr element\" id=\"element_1619530414381\">Do design ao código</h2>\n                    <p class=\"element\" id=\"element_1619530414397\">Sistema de gerenciamento de conteúdo e construtor de sites. Ele é baseado na linguagem de programação PHP e no framework de aplicação web Laravel, usando arrastar e soltar e permitir que os usuários criem conteúdo rapidamente, enquanto agendam e gerenciam vários displays.</p>\n                    <div class=\"element\" id=\"element_1625263569809\">\n                        <br>\n                        <module class=\"module module module-btn\" data-mw-title=\"Button\" id=\"module-layouts-1--6-btn\" button_text=\"More about this\" button_style=\"8\" data-type=\"btn\" parent-module-id=\"module-layouts-1--6\" parent-module=\"layouts\"></module>\n                    </div>\n                </div>\n            </div>\n\n            <div class=\"col-12 col-lg-6 col-xl-5 img-holder element\" style=\"background-image: url(\'{SITE_URL}userfiles/templates/new-world/assets/img/img-2.png\');\"><div class=\"element\" id=\"mw-element-1619530413348\"></div></div>\n        </div>\n    </div>\n', '2021-07-02 19:54:47', '2021-07-02 19:54:47', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', ''),
(86, 'content', '1', 'new-world_content', '\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1\" template=\"home-banners/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--1\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--2\" template=\"features/skin-1\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--3\" template=\"features/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--4\" template=\"skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--5\" template=\"info-blocks/skin-6\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--6\" template=\"info-blocks/skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--7\" template=\"skin-7\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--8\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--9\" template=\"info-blocks/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-1--10\" template=\"skin-2\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--11\" template=\"blockquotes/skin-3\" data-type=\"layouts\"></module>\n    <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-1--12\" template=\"skin-8\" data-type=\"layouts\"></module>\n', '2021-07-02 19:55:22', '2021-07-02 19:55:22', 1, 1, '::1', 'f3341ebd849f4c31a67fbac74baeca29', 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', NULL);
INSERT INTO `bt_content_revisions_history` (`id`, `rel_type`, `rel_id`, `field`, `value`, `updated_at`, `created_at`, `created_by`, `edited_by`, `user_ip`, `checksum`, `session_id`, `url`) VALUES
(87, 'content', '7', 'new-world_content', '\n        <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-7\" template=\"skin-9\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--1\" template=\"features/skin-10\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--2\" template=\"skin-10\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--3\" template=\"videos/skin-6\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--4\" template=\"pricing/skin-1\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--5\" template=\"cta/skin-2\" data-type=\"layouts\"></module>\n    ', '2021-07-02 19:56:06', '2021-07-02 19:56:06', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', 'services'),
(88, 'module', '0', 'layout-skin-9-module-layouts-7', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center\">\n                <div class=\"m-auto allow-drop element\" style=\"max-width: 800px;\" id=\"element_1619521617410\">\n                    <h1 class=\"element\" id=\"element_1619521617782\">Servic<span class=\"text-primary\">.</span>\n</h1>\n\n                    <module class=\"module module-breadcrumb\" data-mw-title=\"Breadcrumb\" id=\"module-layouts-7-breadcrumb\" data-type=\"breadcrumb\" parent-module-id=\"module-layouts-7\" parent-module=\"layouts\"></module>\n                    <hr class=\"hr m-t-0 element\" id=\"element_1619521617426\">\n\n                    <p class=\"lead element\" id=\"element_1619521617249\">Professional developers can freely access the code,<br>‌exchanging their knowledge and contributions<br>‌with the rest of the open-source community</p>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:56:06', '2021-07-02 19:56:06', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', 'services'),
(89, 'content', '7', 'new-world_content', '\n        <module class=\"module module-layouts\" data-mw-title=\"Layouts\" id=\"module-layouts-7\" template=\"skin-9\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--1\" template=\"features/skin-10\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--2\" template=\"skin-10\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--3\" template=\"videos/skin-6\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--4\" template=\"pricing/skin-1\" data-type=\"layouts\"></module>\n        <module class=\"module module module-layouts \" data-mw-title=\"Layouts\" id=\"module-layouts-7--5\" template=\"cta/skin-2\" data-type=\"layouts\"></module>\n    ', '2021-07-02 19:56:10', '2021-07-02 19:56:10', 1, 1, '::1', '7944d725e2a008c7d0ce1bf9205f695a', 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', NULL),
(90, 'module', '0', 'layout-skin-9-module-layouts-7', '\n    <div class=\"container\">\n        <div class=\"row\">\n            <div class=\"col-12 text-center\">\n                <div class=\"m-auto allow-drop element\" style=\"max-width: 800px;\" id=\"element_1619521617410\">\n                    <h1 class=\"element\" id=\"element_1619521617782\">Serviços<span class=\"text-primary\">.</span>\n</h1>\n\n                    <module class=\"module module-breadcrumb\" data-mw-title=\"Breadcrumb\" id=\"module-layouts-7-breadcrumb\" data-type=\"breadcrumb\" parent-module-id=\"module-layouts-7\" parent-module=\"layouts\"></module>\n                    <hr class=\"hr m-t-0 element\" id=\"element_1619521617426\">\n\n                    <p class=\"lead element\" id=\"element_1619521617249\">Professional developers can freely access the code,<br>‌exchanging their knowledge and contributions<br>‌with the rest of the open-source community</p>\n                </div>\n            </div>\n        </div>\n    </div>\n', '2021-07-02 19:56:13', '2021-07-02 19:56:13', 1, 1, '::1', NULL, 'TluSHXUna0J4jBUfxqprx74qsaWMIRhCsbps1bYB', 'services');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_countries`
--

DROP TABLE IF EXISTS `bt_countries`;
CREATE TABLE IF NOT EXISTS `bt_countries` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phonecode` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `countries_id_index` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=260 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_countries`
--

INSERT INTO `bt_countries` (`id`, `code`, `name`, `phonecode`) VALUES
(1, 'AF', 'Afghanistan', 93),
(2, 'AX', 'Åland Islands', 358),
(3, 'AL', 'Albania', 355),
(4, 'DZ', 'Algeria', 213),
(5, 'AS', 'American Samoa', 1),
(6, 'AD', 'Andorra', 376),
(7, 'AO', 'Angola', 244),
(8, 'AI', 'Anguilla', 1),
(9, 'AQ', 'Antarctica', 672),
(10, 'AG', 'Antigua and Barbuda', 1),
(11, 'AR', 'Argentina', 54),
(12, 'AM', 'Armenia', 374),
(13, 'AW', 'Aruba', 297),
(14, 'AC', 'Ascension Island', 0),
(15, 'AU', 'Australia', 61),
(16, 'AT', 'Austria', 43),
(17, 'AZ', 'Azerbaijan', 994),
(18, 'BS', 'Bahamas', 1),
(19, 'BH', 'Bahrain', 973),
(20, 'BD', 'Bangladesh', 880),
(21, 'BB', 'Barbados', 1),
(22, 'BY', 'Belarus', 375),
(23, 'BE', 'Belgium', 32),
(24, 'BZ', 'Belize', 501),
(25, 'BJ', 'Benin', 229),
(26, 'BM', 'Bermuda', 1),
(27, 'BT', 'Bhutan', 975),
(28, 'BO', 'Bolivia', 591),
(29, 'BQ', 'Bonaire, Sint Eustatius, and Saba', 599),
(30, 'BA', 'Bosnia and Herzegovina', 387),
(31, 'BW', 'Botswana', 267),
(32, 'BV', 'Bouvet Island', 47),
(33, 'BR', 'Brazil', 55),
(34, 'IO', 'British Indian Ocean Territory', 246),
(35, 'VG', 'British Virgin Islands', 1),
(36, 'BN', 'Brunei', 673),
(37, 'BG', 'Bulgaria', 359),
(38, 'BF', 'Burkina Faso', 226),
(39, 'BI', 'Burundi', 257),
(40, 'KH', 'Cambodia', 855),
(41, 'CM', 'Cameroon', 237),
(42, 'CA', 'Canada', 1),
(43, 'IC', 'Canary Islands', 0),
(44, 'CV', 'Cape Verde', 238),
(45, 'KY', 'Cayman Islands', 1),
(46, 'CF', 'Central African Republic', 236),
(47, 'EA', 'Ceuta and Melilla', 0),
(48, 'TD', 'Chad', 235),
(49, 'CL', 'Chile', 56),
(50, 'CN', 'China', 86),
(51, 'CX', 'Christmas Island', 61),
(52, 'CP', 'Clipperton Island', 0),
(53, 'CC', 'Cocos [Keeling] Islands', 61),
(54, 'CO', 'Colombia', 57),
(55, 'KM', 'Comoros', 269),
(56, 'CG', 'Congo - Brazzaville', 242),
(57, 'CD', 'Congo - Kinshasa', 243),
(58, 'CK', 'Cook Islands', 682),
(59, 'CR', 'Costa Rica', 506),
(60, 'CI', 'Côte d’Ivoire', 225),
(61, 'HR', 'Croatia', 385),
(62, 'CU', 'Cuba', 53),
(63, 'CW', 'Curaçao', 599),
(64, 'CY', 'Cyprus', 357),
(65, 'CZ', 'Czech Republic', 420),
(66, 'DK', 'Denmark', 45),
(67, 'DG', 'Diego Garcia', 0),
(68, 'DJ', 'Djibouti', 253),
(69, 'DM', 'Dominica', 1),
(70, 'DO', 'Dominican Republic', 1),
(71, 'EC', 'Ecuador', 593),
(72, 'EG', 'Egypt', 20),
(73, 'SV', 'El Salvador', 503),
(74, 'GQ', 'Equatorial Guinea', 240),
(75, 'ER', 'Eritrea', 291),
(76, 'EE', 'Estonia', 372),
(77, 'ET', 'Ethiopia', 251),
(78, 'EU', 'European Union', 0),
(79, 'FK', 'Falkland Islands', 500),
(80, 'FO', 'Faroe Islands', 298),
(81, 'FJ', 'Fiji', 679),
(82, 'FI', 'Finland', 358),
(83, 'FR', 'France', 33),
(84, 'GF', 'French Guiana', 594),
(85, 'PF', 'French Polynesia', 689),
(86, 'TF', 'French Southern Territories', 262),
(87, 'GA', 'Gabon', 241),
(88, 'GM', 'Gambia', 220),
(89, 'GE', 'Georgia', 995),
(90, 'DE', 'Germany', 49),
(91, 'GH', 'Ghana', 233),
(92, 'GI', 'Gibraltar', 350),
(93, 'GR', 'Greece', 30),
(94, 'GL', 'Greenland', 299),
(95, 'GD', 'Grenada', 1),
(96, 'GP', 'Guadeloupe', 590),
(97, 'GU', 'Guam', 1),
(98, 'GT', 'Guatemala', 502),
(99, 'GG', 'Guernsey', 44),
(100, 'GN', 'Guinea', 224),
(101, 'GW', 'Guinea-Bissau', 245),
(102, 'GY', 'Guyana', 592),
(103, 'HT', 'Haiti', 509),
(104, 'HM', 'Heard Island and McDonald Islands', 672),
(105, 'HN', 'Honduras', 504),
(106, 'HK', 'Hong Kong SAR China', 852),
(107, 'HU', 'Hungary', 36),
(108, 'IS', 'Iceland', 354),
(109, 'IN', 'India', 91),
(110, 'ID', 'Indonesia', 62),
(111, 'IR', 'Iran', 98),
(112, 'IQ', 'Iraq', 964),
(113, 'IE', 'Ireland', 353),
(114, 'IM', 'Isle of Man', 44),
(115, 'IL', 'Israel', 972),
(116, 'IT', 'Italy', 39),
(117, 'JM', 'Jamaica', 1),
(118, 'JP', 'Japan', 81),
(119, 'JE', 'Jersey', 44),
(120, 'JO', 'Jordan', 962),
(121, 'KZ', 'Kazakhstan', 7),
(122, 'KE', 'Kenya', 254),
(123, 'KI', 'Kiribati', 686),
(124, 'KW', 'Kuwait', 965),
(125, 'KG', 'Kyrgyzstan', 996),
(126, 'LA', 'Laos', 856),
(127, 'LV', 'Latvia', 371),
(128, 'LB', 'Lebanon', 961),
(129, 'LS', 'Lesotho', 266),
(130, 'LR', 'Liberia', 231),
(131, 'LY', 'Libya', 218),
(132, 'LI', 'Liechtenstein', 423),
(133, 'LT', 'Lithuania', 370),
(134, 'LU', 'Luxembourg', 352),
(135, 'MO', 'Macau SAR China', 853),
(136, 'MK', 'Macedonia', 389),
(137, 'MG', 'Madagascar', 261),
(138, 'MW', 'Malawi', 265),
(139, 'MY', 'Malaysia', 60),
(140, 'MV', 'Maldives', 960),
(141, 'ML', 'Mali', 223),
(142, 'MT', 'Malta', 356),
(143, 'MH', 'Marshall Islands', 692),
(144, 'MQ', 'Martinique', 596),
(145, 'MR', 'Mauritania', 222),
(146, 'MU', 'Mauritius', 230),
(147, 'YT', 'Mayotte', 262),
(148, 'MX', 'Mexico', 52),
(149, 'FM', 'Micronesia', 691),
(150, 'MD', 'Moldova', 373),
(151, 'MC', 'Monaco', 377),
(152, 'MN', 'Mongolia', 976),
(153, 'ME', 'Montenegro', 382),
(154, 'MS', 'Montserrat', 1),
(155, 'MA', 'Morocco', 212),
(156, 'MZ', 'Mozambique', 258),
(157, 'MM', 'Myanmar [Burma]', 95),
(158, 'NA', 'Namibia', 264),
(159, 'NR', 'Nauru', 674),
(160, 'NP', 'Nepal', 977),
(161, 'NL', 'Netherlands', 31),
(162, 'AN', 'Netherlands Antilles', 599),
(163, 'NC', 'New Caledonia', 687),
(164, 'NZ', 'New Zealand', 64),
(165, 'NI', 'Nicaragua', 505),
(166, 'NE', 'Niger', 227),
(167, 'NG', 'Nigeria', 234),
(168, 'NU', 'Niue', 683),
(169, 'NF', 'Norfolk Island', 672),
(170, 'KP', 'North Korea', 850),
(171, 'MP', 'Northern Mariana Islands', 1),
(172, 'NO', 'Norway', 47),
(173, 'OM', 'Oman', 968),
(174, 'QO', 'Outlying Oceania', 0),
(175, 'PK', 'Pakistan', 92),
(176, 'PW', 'Palau', 680),
(177, 'PS', 'Palestinian Territories', 970),
(178, 'PA', 'Panama', 507),
(179, 'PG', 'Papua New Guinea', 675),
(180, 'PY', 'Paraguay', 595),
(181, 'PE', 'Peru', 51),
(182, 'PH', 'Philippines', 63),
(183, 'PN', 'Pitcairn Islands', 64),
(184, 'PL', 'Poland', 48),
(185, 'PT', 'Portugal', 351),
(186, 'PR', 'Puerto Rico', 1),
(187, 'QA', 'Qatar', 974),
(188, 'RE', 'Réunion', 262),
(189, 'RO', 'Romania', 40),
(190, 'RU', 'Russia', 7),
(191, 'RW', 'Rwanda', 250),
(192, 'BL', 'Saint Barthélemy', 590),
(193, 'SH', 'Saint Helena', 290),
(194, 'KN', 'Saint Kitts and Nevis', 1),
(195, 'LC', 'Saint Lucia', 1),
(196, 'MF', 'Saint Martin', 590),
(197, 'PM', 'Saint Pierre and Miquelon', 508),
(198, 'VC', 'Saint Vincent and the Grenadines', 1),
(199, 'WS', 'Samoa', 685),
(200, 'SM', 'San Marino', 378),
(201, 'ST', 'São Tomé and Príncipe', 239),
(202, 'SA', 'Saudi Arabia', 966),
(203, 'SN', 'Senegal', 221),
(204, 'RS', 'Serbia', 381),
(205, 'CS', 'Serbia and Montenegro', 0),
(206, 'SC', 'Seychelles', 248),
(207, 'SL', 'Sierra Leone', 232),
(208, 'SG', 'Singapore', 65),
(209, 'SX', 'Sint Maarten', 1),
(210, 'SK', 'Slovakia', 421),
(211, 'SI', 'Slovenia', 386),
(212, 'SB', 'Solomon Islands', 677),
(213, 'SO', 'Somalia', 252),
(214, 'ZA', 'South Africa', 27),
(215, 'GS', 'South Georgia and the South Sandwich Islands', 500),
(216, 'KR', 'South Korea', 82),
(217, 'SS', 'South Sudan', 211),
(218, 'ES', 'Spain', 34),
(219, 'LK', 'Sri Lanka', 94),
(220, 'SD', 'Sudan', 249),
(221, 'SR', 'Suriname', 597),
(222, 'SJ', 'Svalbard and Jan Mayen', 47),
(223, 'SZ', 'Swaziland', 268),
(224, 'SE', 'Sweden', 46),
(225, 'CH', 'Switzerland', 41),
(226, 'SY', 'Syria', 963),
(227, 'TW', 'Taiwan', 886),
(228, 'TJ', 'Tajikistan', 992),
(229, 'TZ', 'Tanzania', 255),
(230, 'TH', 'Thailand', 66),
(231, 'TL', 'Timor-Leste', 670),
(232, 'TG', 'Togo', 228),
(233, 'TK', 'Tokelau', 690),
(234, 'TO', 'Tonga', 676),
(235, 'TT', 'Trinidad and Tobago', 1),
(236, 'TA', 'Tristan da Cunha', 0),
(237, 'TN', 'Tunisia', 216),
(238, 'TR', 'Turkey', 90),
(239, 'TM', 'Turkmenistan', 993),
(240, 'TC', 'Turks and Caicos Islands', 1),
(241, 'TV', 'Tuvalu', 688),
(242, 'UM', 'U.S. Minor Outlying Islands', 0),
(243, 'VI', 'U.S. Virgin Islands', 1),
(244, 'UG', 'Uganda', 256),
(245, 'UA', 'Ukraine', 380),
(246, 'AE', 'United Arab Emirates', 971),
(247, 'GB', 'United Kingdom', 44),
(248, 'US', 'United States', 1),
(249, 'UY', 'Uruguay', 598),
(250, 'UZ', 'Uzbekistan', 998),
(251, 'VU', 'Vanuatu', 678),
(252, 'VA', 'Vatican City', 39),
(253, 'VE', 'Venezuela', 58),
(254, 'VN', 'Vietnam', 84),
(255, 'WF', 'Wallis and Futuna', 681),
(256, 'EH', 'Western Sahara', 212),
(257, 'YE', 'Yemen', 967),
(258, 'ZM', 'Zambia', 260),
(259, 'ZW', 'Zimbabwe', 263);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_currencies`
--

DROP TABLE IF EXISTS `bt_currencies`;
CREATE TABLE IF NOT EXISTS `bt_currencies` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `precision` int NOT NULL,
  `thousand_separator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `decimal_separator` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `swap_currency_symbol` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_customers`
--

DROP TABLE IF EXISTS `bt_customers`;
CREATE TABLE IF NOT EXISTS `bt_customers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `currency_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_customers`
--

INSERT INTO `bt_customers` (`id`, `user_id`, `company_id`, `currency_id`, `name`, `first_name`, `last_name`, `email`, `phone`, `active`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, NULL, 'John', 'John', 'Doe', 'johndoe@microweber.com', '123456789', NULL, '2021-02-10 16:31:43', '2021-02-10 16:31:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_custom_fields`
--

DROP TABLE IF EXISTS `bt_custom_fields`;
CREATE TABLE IF NOT EXISTS `bt_custom_fields` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` text COLLATE utf8_unicode_ci,
  `position` int DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `name_key` text COLLATE utf8_unicode_ci,
  `placeholder` text COLLATE utf8_unicode_ci,
  `error_text` text COLLATE utf8_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8_unicode_ci,
  `show_label` int DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `required` int DEFAULT NULL,
  `copy_of_field` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_custom_fields`
--

INSERT INTO `bt_custom_fields` (`id`, `rel_type`, `rel_id`, `position`, `type`, `name`, `name_key`, `placeholder`, `error_text`, `updated_at`, `created_at`, `created_by`, `edited_by`, `session_id`, `options`, `show_label`, `is_active`, `required`, `copy_of_field`) VALUES
(1, 'module', '9', 0, 'address', 'Address', 'address', NULL, NULL, '2021-03-26 14:39:01', '2020-01-22 14:10:07', 1, 1, '3rzVEWbUEnMrzkT574AjOqIZvdHQ0D3kFNZfu8UH', '{\"field_type\":\"address\",\"field_size\":12}', 1, 1, NULL, NULL),
(2, 'module', '9', 0, 'text', 'Your Name', 'your-name', 'Your Name', NULL, '2021-03-26 14:39:01', '2020-01-22 14:10:07', 1, 1, '3rzVEWbUEnMrzkT574AjOqIZvdHQ0D3kFNZfu8UH', '{\"field_type\":\"text\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(3, 'module', '9', 1, 'email', 'E-mail Address', 'e-mail-address', 'E-mail Address', NULL, '2021-03-26 14:39:01', '2020-01-22 14:10:07', 1, 1, '3rzVEWbUEnMrzkT574AjOqIZvdHQ0D3kFNZfu8UH', '{\"field_type\":\"email\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(4, 'module', '9', 2, 'phone', 'Phone', 'phone', 'Phone', NULL, '2021-03-26 14:39:01', '2020-01-22 14:10:07', 1, 1, '3rzVEWbUEnMrzkT574AjOqIZvdHQ0D3kFNZfu8UH', '{\"field_type\":\"phone\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(5, 'module', '9', 3, 'text', 'Company', 'company', 'Company', NULL, '2021-03-26 14:39:01', '2020-01-22 14:10:07', 1, 1, '3rzVEWbUEnMrzkT574AjOqIZvdHQ0D3kFNZfu8UH', '{\"field_type\":\"text\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(6, 'module', '9', 4, 'text', 'Message', 'message', 'Message', NULL, '2021-03-26 14:39:01', '2020-01-22 14:10:07', 1, 1, '3rzVEWbUEnMrzkT574AjOqIZvdHQ0D3kFNZfu8UH', '{\"field_type\":\"text\",\"field_size\":\"12\",\"as_text_area\":true}', 0, 1, NULL, NULL),
(7, 'module', '9', 0, 'text', 'Your Name', 'your-name', 'Your Name', NULL, '2021-03-26 14:39:01', '2020-01-22 14:10:13', 1, 1, '3rzVEWbUEnMrzkT574AjOqIZvdHQ0D3kFNZfu8UH', '{\"field_type\":\"text\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(8, 'module', '9', 1, 'email', 'E-mail Address', 'e-mail-address', 'E-mail Address', NULL, '2021-03-26 14:39:01', '2020-01-22 14:10:13', 1, 1, '3rzVEWbUEnMrzkT574AjOqIZvdHQ0D3kFNZfu8UH', '{\"field_type\":\"email\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(9, 'module', '9', 2, 'phone', 'Phone', 'phone', 'Phone', NULL, '2021-03-26 14:39:01', '2020-01-22 14:10:13', 1, 1, '3rzVEWbUEnMrzkT574AjOqIZvdHQ0D3kFNZfu8UH', '{\"field_type\":\"phone\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(10, 'module', '9', 3, 'text', 'Company', 'company', 'Company', NULL, '2021-03-26 14:39:01', '2020-01-22 14:10:13', 1, 1, '3rzVEWbUEnMrzkT574AjOqIZvdHQ0D3kFNZfu8UH', '{\"field_type\":\"text\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(11, 'module', '9', 4, 'text', 'Message', 'message', 'Message', NULL, '2021-03-26 14:39:01', '2020-01-22 14:10:13', 1, 1, '3rzVEWbUEnMrzkT574AjOqIZvdHQ0D3kFNZfu8UH', '{\"field_type\":\"text\",\"field_size\":\"12\",\"as_text_area\":true}', 0, 1, NULL, NULL),
(12, 'module', '9', 0, 'text', 'Your Name', 'your-name', 'Your Name', NULL, '2021-03-26 14:39:01', '2020-01-27 10:49:31', 1, 1, 'DvNSQgWlC29Ll0OMK5lG7THloBYqjX0pCpzqQ44n', '{\"field_type\":\"text\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(13, 'module', '9', 1, 'email', 'E-mail Address', 'e-mail-address', 'E-mail Address', NULL, '2021-03-26 14:39:01', '2020-01-27 10:49:31', 1, 1, 'DvNSQgWlC29Ll0OMK5lG7THloBYqjX0pCpzqQ44n', '{\"field_type\":\"email\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(14, 'module', '9', 2, 'phone', 'Phone', 'phone', 'Phone', NULL, '2021-03-26 14:39:01', '2020-01-27 10:49:31', 1, 1, 'DvNSQgWlC29Ll0OMK5lG7THloBYqjX0pCpzqQ44n', '{\"field_type\":\"phone\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(15, 'module', '9', 3, 'text', 'Company', 'company', 'Company', NULL, '2021-03-26 14:39:01', '2020-01-27 10:49:31', 1, 1, 'DvNSQgWlC29Ll0OMK5lG7THloBYqjX0pCpzqQ44n', '{\"field_type\":\"text\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(16, 'module', '9', 4, 'text', 'Message', 'message', 'Message', NULL, '2021-03-26 14:39:01', '2020-01-27 10:49:31', 1, 1, 'DvNSQgWlC29Ll0OMK5lG7THloBYqjX0pCpzqQ44n', '{\"field_type\":\"text\",\"field_size\":\"12\",\"as_text_area\":true}', 0, 1, NULL, NULL),
(17, 'module', '9', 0, 'text', 'Your Name', 'your-name', 'Your Name', NULL, '2021-03-26 14:39:01', '2020-01-27 10:49:34', 1, 1, 'DvNSQgWlC29Ll0OMK5lG7THloBYqjX0pCpzqQ44n', '{\"field_type\":\"text\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(18, 'module', '9', 1, 'email', 'E-mail Address', 'e-mail-address', 'E-mail Address', NULL, '2021-03-26 14:39:01', '2020-01-27 10:49:34', 1, 1, 'DvNSQgWlC29Ll0OMK5lG7THloBYqjX0pCpzqQ44n', '{\"field_type\":\"email\",\"field_size\":\"6\"}', 0, 1, NULL, NULL),
(21, 'module', '9', 4, 'text', 'Message', 'message', 'Message', NULL, '2021-03-26 14:39:01', '2020-01-27 10:49:34', 1, 1, 'DvNSQgWlC29Ll0OMK5lG7THloBYqjX0pCpzqQ44n', '{\"field_type\":\"text\",\"field_size\":\"12\",\"as_text_area\":true}', 0, 1, NULL, NULL),
(22, 'content', '9', NULL, 'price', 'price', 'price', NULL, NULL, '2020-02-04 13:53:10', '2020-02-04 13:52:32', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', NULL, NULL, 1, NULL, NULL),
(23, 'content', '10', NULL, 'price', 'price', 'price', NULL, NULL, '2020-02-04 13:54:16', '2020-02-04 13:53:55', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', NULL, NULL, 1, NULL, NULL),
(24, 'content', '11', NULL, 'price', 'price', 'price', NULL, NULL, '2020-02-04 13:55:22', '2020-02-04 13:54:57', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', NULL, NULL, 1, NULL, NULL),
(25, 'content', '12', NULL, 'price', 'price', 'price', NULL, NULL, '2020-02-04 13:58:24', '2020-02-04 13:57:19', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', NULL, NULL, 1, NULL, NULL),
(26, 'content', '13', NULL, 'price', 'price', 'price', NULL, NULL, '2020-02-04 13:58:54', '2020-02-04 13:58:30', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', NULL, NULL, 1, NULL, NULL),
(27, 'content', '14', NULL, 'price', 'price', 'price', NULL, NULL, '2020-02-04 14:00:10', '2020-02-04 13:59:23', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', NULL, NULL, 1, NULL, NULL),
(28, 'content', '15', NULL, 'price', 'price', 'price', NULL, NULL, '2020-02-04 14:01:02', '2020-02-04 14:00:25', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', NULL, NULL, 1, NULL, NULL),
(29, 'content', '19', NULL, 'price', 'price', 'price', NULL, NULL, '2020-02-04 16:16:57', '2020-02-04 16:16:57', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', NULL, NULL, 1, NULL, NULL),
(30, 'module', '21', NULL, 'text', 'Your Name', 'your-name', 'Your Name', NULL, '2021-07-02 19:53:41', '2021-04-27 11:08:24', 1, 1, 'b45inIYIQFHbS3ciMlUAjYzsbFz0DqwMZpEsYkvK', '{\"field_type\":\"text\",\"field_size\":\"6\",\"field_size_desktop\":\"6\",\"field_size_tablet\":\"6\",\"field_size_mobile\":\"6\"}', 0, 1, 0, NULL),
(31, 'module', '21', NULL, 'email', 'E-mail Address', 'e-mail-address', 'E-mail Address', NULL, '2021-07-02 19:53:41', '2021-04-27 11:08:24', 1, 1, 'b45inIYIQFHbS3ciMlUAjYzsbFz0DqwMZpEsYkvK', '{\"field_type\":\"email\",\"field_size\":\"6\",\"field_size_desktop\":\"6\",\"field_size_tablet\":\"6\",\"field_size_mobile\":\"6\"}', 0, 1, 0, NULL),
(32, 'module', '21', NULL, 'phone', 'Phone', 'phone', 'Phone', NULL, '2021-07-02 19:53:41', '2021-04-27 11:08:24', 1, 1, 'b45inIYIQFHbS3ciMlUAjYzsbFz0DqwMZpEsYkvK', '{\"field_type\":\"phone\",\"field_size\":\"6\",\"field_size_desktop\":\"6\",\"field_size_tablet\":\"6\",\"field_size_mobile\":\"6\"}', 0, 1, 0, NULL),
(33, 'module', '21', NULL, 'text', 'Company', 'company', 'Company', NULL, '2021-07-02 19:53:41', '2021-04-27 11:08:24', 1, 1, 'b45inIYIQFHbS3ciMlUAjYzsbFz0DqwMZpEsYkvK', '{\"field_type\":\"text\",\"field_size\":\"6\",\"field_size_desktop\":\"6\",\"field_size_tablet\":\"6\",\"field_size_mobile\":\"6\"}', 0, 1, 0, NULL),
(34, 'module', '21', NULL, 'text', 'Message', 'message', 'Message', NULL, '2021-07-02 19:53:41', '2021-04-27 11:08:24', 1, 1, 'b45inIYIQFHbS3ciMlUAjYzsbFz0DqwMZpEsYkvK', '{\"field_type\":\"text\",\"field_size\":\"12\",\"field_size_desktop\":\"12\",\"field_size_tablet\":\"12\",\"field_size_mobile\":\"12\",\"as_text_area\":true}', 0, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_custom_fields_values`
--

DROP TABLE IF EXISTS `bt_custom_fields_values`;
CREATE TABLE IF NOT EXISTS `bt_custom_fields_values` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `custom_field_id` int DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `position` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_custom_fields_values`
--

INSERT INTO `bt_custom_fields_values` (`id`, `custom_field_id`, `value`, `position`) VALUES
(1, 1, '', 0),
(2, 2, '', 0),
(3, 3, '', 0),
(4, 4, '', 0),
(5, 5, '', 0),
(6, 6, '', 0),
(7, 7, '', 0),
(8, 8, '', 0),
(9, 9, '', 0),
(10, 10, '', 0),
(11, 11, '', 0),
(12, 12, '', 0),
(13, 13, '', 0),
(14, 14, '', 0),
(15, 15, '', 0),
(16, 16, '', 0),
(17, 17, '', 0),
(18, 18, '', 0),
(21, 21, '', 0),
(22, 22, '30.99', 0),
(23, 23, '59.85', 0),
(24, 24, '305.99', 0),
(25, 25, '199', 0),
(26, 26, '223', 0),
(27, 27, '97', 0),
(28, 28, '19', 0),
(29, 29, '0', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_elements`
--

DROP TABLE IF EXISTS `bt_elements`;
CREATE TABLE IF NOT EXISTS `bt_elements` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `expires_on` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `parent_id` int DEFAULT NULL,
  `module_id` text COLLATE utf8_unicode_ci,
  `module` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `author` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `help` text COLLATE utf8_unicode_ci,
  `type` text COLLATE utf8_unicode_ci,
  `installed` int DEFAULT NULL,
  `ui` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `as_element` int DEFAULT NULL,
  `allow_caching` int DEFAULT NULL,
  `ui_admin` int DEFAULT NULL,
  `ui_admin_iframe` int DEFAULT NULL,
  `is_system` int DEFAULT NULL,
  `is_integration` int DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notifications` int DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `categories` text COLLATE utf8_unicode_ci,
  `layout_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_elements`
--

INSERT INTO `bt_elements` (`id`, `updated_at`, `created_at`, `expires_on`, `created_by`, `edited_by`, `name`, `parent_id`, `module_id`, `module`, `description`, `icon`, `author`, `website`, `help`, `type`, `installed`, `ui`, `position`, `as_element`, `allow_caching`, `ui_admin`, `ui_admin_iframe`, `is_system`, `is_integration`, `version`, `notifications`, `settings`, `categories`, `layout_type`) VALUES
(1, '2021-07-02 19:06:02', '2021-07-02 19:06:02', NULL, 1, 1, 'Arrows List', 0, NULL, 'arrows-list', '', '{SITE_URL}userfiles/elements/arrows-list.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 3, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(2, '2021-07-02 19:06:02', '2021-07-02 19:06:02', NULL, 1, 1, 'Background Text', 0, NULL, 'background-text', '', '{SITE_URL}userfiles/elements/background-text.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 7, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(3, '2021-07-02 19:06:02', '2021-07-02 19:06:02', NULL, 1, 1, 'Blockquoute', 0, NULL, 'blockquote', '', '{SITE_URL}userfiles/elements/blockquote.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 6, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(4, '2021-07-02 19:06:02', '2021-07-02 19:06:02', NULL, 1, 1, 'Checked List', 0, NULL, 'checked-list', '', '{SITE_URL}userfiles/elements/checked-list.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 4, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(5, '2021-07-02 19:06:03', '2021-07-02 19:06:03', NULL, 1, 1, 'Icon with Text', 0, NULL, 'icon-with-text', '', '{SITE_URL}userfiles/elements/icon-with-text.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 10, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(6, '2021-07-02 19:06:03', '2021-07-02 19:06:03', NULL, 1, 1, 'Image with Title and Text', 0, NULL, 'image-with-title-and-text', '', '{SITE_URL}userfiles/elements/image-with-title-and-text.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 19, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(7, '2021-07-02 19:06:03', '2021-07-02 19:06:03', NULL, 1, 1, 'Ordered List', 0, NULL, 'ordered-list', '', '{SITE_URL}userfiles/elements/ordered-list.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(8, '2021-07-02 19:06:03', '2021-07-02 19:06:03', NULL, 1, 1, 'Highlighted Paragraph', 0, NULL, 'paragraph-highlight', '', '{SITE_URL}userfiles/elements/paragraph-highlight.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 7, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(9, '2021-07-02 19:06:03', '2021-07-02 19:06:03', NULL, 1, 1, 'Paragraph', 0, NULL, 'paragraph', '', '{SITE_URL}userfiles/elements/paragraph.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 6, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'text', NULL),
(10, '2021-07-02 19:06:03', '2021-07-02 19:06:03', NULL, 1, 1, 'Features', 0, NULL, 'skin-10', '', '{SITE_URL}userfiles/elements/skin-10.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 18, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(11, '2021-07-02 19:06:04', '2021-07-02 19:06:04', NULL, 1, 1, 'Puzzle', 0, NULL, 'skin-11', '', '{SITE_URL}userfiles/elements/skin-11.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 30, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(12, '2021-07-02 19:06:04', '2021-07-02 19:06:04', NULL, 1, 1, 'Text with Image', 0, NULL, 'skin-12', 'Simple image with some description text', '{SITE_URL}userfiles/elements/skin-12.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 21, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(13, '2021-07-02 19:06:04', '2021-07-02 19:06:04', NULL, 1, 1, 'Image with Text', 0, NULL, 'skin-1', 'Simple image with some description text', '{SITE_URL}userfiles/elements/skin-1.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 21, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(14, '2021-07-02 19:06:04', '2021-07-02 19:06:04', NULL, 1, 1, 'Left Image - Right Text', 0, NULL, 'skin-2', 'Simple image with some description text', '{SITE_URL}userfiles/elements/skin-2.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 22, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(15, '2021-07-02 19:06:04', '2021-07-02 19:06:04', NULL, 1, 1, 'Parallax', 0, NULL, 'skin-3', 'Parallax image', '{SITE_URL}userfiles/elements/skin-3.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 20, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(16, '2021-07-02 19:06:04', '2021-07-02 19:06:04', NULL, 1, 1, 'Right Image - Left Text', 0, NULL, 'skin-4', 'Simple image with some text description in middle', '{SITE_URL}userfiles/elements/skin-4.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 23, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(17, '2021-07-02 19:06:05', '2021-07-02 19:06:05', NULL, 1, 1, 'Simple Title &amp; Text', 0, NULL, 'skin-5', 'Simple title with some description text', '{SITE_URL}userfiles/elements/skin-5.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 17, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(18, '2021-07-02 19:06:05', '2021-07-02 19:06:05', NULL, 1, 1, 'Text under Image', 0, NULL, 'skin-6', 'Two columns images with text', '{SITE_URL}userfiles/elements/skin-6.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 25, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(19, '2021-07-02 19:06:05', '2021-07-02 19:06:05', NULL, 1, 1, 'Icons with Information', 0, NULL, 'skin-7', '', '{SITE_URL}userfiles/elements/skin-7.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 17, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(20, '2021-07-02 19:06:05', '2021-07-02 19:06:05', NULL, 1, 1, 'Full screen Background Image with text', 0, NULL, 'skin-8', '', '{SITE_URL}userfiles/elements/skin-8.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 27, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(21, '2021-07-02 19:06:05', '2021-07-02 19:06:05', NULL, 1, 1, 'Text with Image and Title', 0, NULL, 'text-with-image-and-title', '', '{SITE_URL}userfiles/elements/text-with-image-and-title.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 19, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(22, '2021-07-02 19:06:05', '2021-07-02 19:06:05', NULL, 1, 1, 'Title with Text', 0, NULL, 'title-with-text', '', '{SITE_URL}userfiles/elements/title-with-text.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 9, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(23, '2021-07-02 19:06:06', '2021-07-02 19:06:06', NULL, 1, 1, 'Two text columns with icon and title', 0, NULL, 'two-text-columns-with-icon-and-title', '', '{SITE_URL}userfiles/elements/two-text-columns-with-icon-and-title.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 13, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(24, '2021-07-02 19:06:06', '2021-07-02 19:06:06', NULL, 1, 1, 'Two Text Columns', 0, NULL, 'two-text-columns', '', '{SITE_URL}userfiles/elements/two-text-columns.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 11, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL),
(25, '2021-07-02 19:06:06', '2021-07-02 19:06:06', NULL, 1, 1, 'Unordered List', 0, NULL, 'unordered-list', '', '{SITE_URL}userfiles/elements/unordered-list.png', 'Microweber', 'http://microweber.com', NULL, NULL, NULL, 0, 5, 1, 0, 0, NULL, 0, 0, '0.1', NULL, NULL, 'custom', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_failed_jobs`
--

DROP TABLE IF EXISTS `bt_failed_jobs`;
CREATE TABLE IF NOT EXISTS `bt_failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `connection` text COLLATE utf8_unicode_ci NOT NULL,
  `queue` text COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `job_hash` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_forms_data`
--

DROP TABLE IF EXISTS `bt_forms_data`;
CREATE TABLE IF NOT EXISTS `bt_forms_data` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `list_id` int DEFAULT NULL,
  `form_values` text COLLATE utf8_unicode_ci,
  `module_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_forms_data`
--

INSERT INTO `bt_forms_data` (`id`, `created_at`, `created_by`, `rel_type`, `rel_id`, `list_id`, `form_values`, `module_name`, `url`, `user_ip`) VALUES
(2, '2021-02-10 14:48:18', NULL, 'module', 'module-layouts-5--3-contact-form', 0, '{\"Your_Name\":\"John Doe\",\"E-mail_Address\":\"john@testmail.com\",\"Phone\":\"123456789\",\"Company\":\"John\'s company\",\"Message\":\"I like your website and services, please contact me when you can.\\nThis is my test message from the contact us form.\"}', 'contact_form', NULL, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_forms_lists`
--

DROP TABLE IF EXISTS `bt_forms_lists`;
CREATE TABLE IF NOT EXISTS `bt_forms_lists` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `custom_data` text COLLATE utf8_unicode_ci,
  `module_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_export` datetime DEFAULT NULL,
  `last_sent` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_forms_recipients`
--

DROP TABLE IF EXISTS `bt_forms_recipients`;
CREATE TABLE IF NOT EXISTS `bt_forms_recipients` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_jobs`
--

DROP TABLE IF EXISTS `bt_jobs`;
CREATE TABLE IF NOT EXISTS `bt_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_log`
--

DROP TABLE IF EXISTS `bt_log`;
CREATE TABLE IF NOT EXISTS `bt_log` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `rel_type` text COLLATE utf8_unicode_ci,
  `rel_id` text COLLATE utf8_unicode_ci,
  `position` int DEFAULT NULL,
  `field` text COLLATE utf8_unicode_ci,
  `value` text COLLATE utf8_unicode_ci,
  `module` text COLLATE utf8_unicode_ci,
  `data_type` text COLLATE utf8_unicode_ci,
  `title` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `user_ip` text COLLATE utf8_unicode_ci,
  `session_id` text COLLATE utf8_unicode_ci,
  `is_system` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_login_attempts`
--

DROP TABLE IF EXISTS `bt_login_attempts`;
CREATE TABLE IF NOT EXISTS `bt_login_attempts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `success` int DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_login_attempts`
--

INSERT INTO `bt_login_attempts` (`id`, `user_id`, `username`, `email`, `ip`, `success`, `time`) VALUES
(1, 1, 'valentin', 'valteramirvalentin@gmail.com', '::1', 1, '1625262604');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_mail_providers`
--

DROP TABLE IF EXISTS `bt_mail_providers`;
CREATE TABLE IF NOT EXISTS `bt_mail_providers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `provider_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `provider_settings` text COLLATE utf8_unicode_ci,
  `is_active` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_mail_subscribers`
--

DROP TABLE IF EXISTS `bt_mail_subscribers`;
CREATE TABLE IF NOT EXISTS `bt_mail_subscribers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_provider_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_mail_templates`
--

DROP TABLE IF EXISTS `bt_mail_templates`;
CREATE TABLE IF NOT EXISTS `bt_mail_templates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `from_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom` text COLLATE utf8_unicode_ci,
  `copy_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plain_text` int DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_media`
--

DROP TABLE IF EXISTS `bt_media`;
CREATE TABLE IF NOT EXISTS `bt_media` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `media_type` longtext COLLATE utf8_unicode_ci,
  `position` int DEFAULT NULL,
  `title` longtext COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `embed_code` text COLLATE utf8_unicode_ci,
  `filename` text COLLATE utf8_unicode_ci,
  `image_options` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=234 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_media`
--

INSERT INTO `bt_media` (`id`, `updated_at`, `created_at`, `created_by`, `edited_by`, `session_id`, `rel_type`, `rel_id`, `media_type`, `position`, `title`, `description`, `embed_code`, `filename`, `image_options`) VALUES
(1, '2020-01-27 11:05:32', '2020-01-27 11:05:32', 1, 1, 'DvNSQgWlC29Ll0OMK5lG7THloBYqjX0pCpzqQ44n', 'modules', 'module-layouts-6--2-pictures', 'picture', 1, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/1-94.jpg', NULL),
(2, '2020-01-27 11:05:32', '2020-01-27 11:05:32', 1, 1, 'DvNSQgWlC29Ll0OMK5lG7THloBYqjX0pCpzqQ44n', 'modules', 'module-layouts-6--2-pictures', 'picture', 2, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/18-38.jpg', NULL),
(3, '2020-01-27 11:05:32', '2020-01-27 11:05:32', 1, 1, 'DvNSQgWlC29Ll0OMK5lG7THloBYqjX0pCpzqQ44n', 'modules', 'module-layouts-6--2-pictures', 'picture', 0, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/20-35.jpg', NULL),
(4, '2020-02-04 13:52:59', '2020-02-04 13:52:59', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9', 'picture', 0, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/7__48004.1557125030.jpg', NULL),
(5, '2020-02-04 13:54:36', '2020-02-04 13:54:36', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/2__69884.1557124343.jpg', NULL),
(6, '2020-02-04 13:54:36', '2020-02-04 13:54:36', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/16__95752.1557125556.jpg', NULL),
(7, '2020-02-04 13:55:58', '2020-02-04 13:55:58', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/5__85794.1557124344.jpg', NULL),
(8, '2020-02-04 13:56:20', '2020-02-04 13:56:20', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/1__43193.1557124343.jpg', NULL),
(9, '2020-02-04 13:56:20', '2020-02-04 13:56:20', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/2__69884.1557124343_1.jpg', NULL),
(10, '2020-02-04 13:56:20', '2020-02-04 13:56:20', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/11__49143.1557125318.jpg', NULL),
(11, '2020-02-04 13:56:20', '2020-02-04 13:56:20', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '11', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/16__95752.1557125556_1.jpg', NULL),
(12, '2020-02-04 13:56:34', '2020-02-04 13:56:34', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/1__43193.1557124343_1.jpg', NULL),
(13, '2020-02-04 13:56:34', '2020-02-04 13:56:34', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/16__95752.1557125556_2.jpg', NULL),
(14, '2020-02-04 13:56:38', '2020-02-04 13:56:38', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '10', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/2__69884.1557124343_2.jpg', NULL),
(15, '2020-02-04 13:56:55', '2020-02-04 13:56:55', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9', 'picture', 2, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/7__48004.1557125030_1.jpg', NULL),
(16, '2020-02-04 13:56:55', '2020-02-04 13:56:55', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9', 'picture', 1, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/12__41534.1557125318.jpg', NULL),
(17, '2020-02-04 13:57:06', '2020-02-04 13:57:06', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '9', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/12__41534.1557125318_1.jpg', NULL),
(18, '2020-02-04 13:57:52', '2020-02-04 13:57:52', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12', 'picture', 1, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/1__43193.1557124343_2.jpg', NULL),
(19, '2020-02-04 13:57:52', '2020-02-04 13:57:52', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12', 'picture', 2, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/2__69884.1557124343_3.jpg', NULL),
(20, '2020-02-04 13:57:52', '2020-02-04 13:57:52', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12', 'picture', 3, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/9__68359.1557125030.jpg', NULL),
(21, '2020-02-04 13:57:52', '2020-02-04 13:57:52', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12', 'picture', 4, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/13__85251.1557125318.jpg', NULL),
(22, '2020-02-04 13:57:53', '2020-02-04 13:57:53', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12', 'picture', 0, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/14__82429.1557125318.jpg', NULL),
(23, '2020-02-04 13:57:53', '2020-02-04 13:57:53', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '12', 'picture', 5, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/16__95752.1557125556_3.jpg', NULL),
(24, '2020-02-04 13:59:04', '2020-02-04 13:59:04', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/1__43193.1557124343_3.jpg', NULL),
(25, '2020-02-04 13:59:04', '2020-02-04 13:59:04', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/2__69884.1557124343_4.jpg', NULL),
(26, '2020-02-04 13:59:04', '2020-02-04 13:59:04', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/9__68359.1557125030_1.jpg', NULL),
(27, '2020-02-04 13:59:04', '2020-02-04 13:59:04', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/13__85251.1557125318_1.jpg', NULL),
(28, '2020-02-04 13:59:04', '2020-02-04 13:59:04', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '13', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/16__95752.1557125556_4.jpg', NULL),
(29, '2020-02-04 13:59:48', '2020-02-04 13:59:48', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14', 'picture', 1, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/1__43193.1557124343_4.jpg', NULL),
(30, '2020-02-04 13:59:48', '2020-02-04 13:59:48', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14', 'picture', 2, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/2__69884.1557124343_5.jpg', NULL),
(31, '2020-02-04 13:59:48', '2020-02-04 13:59:48', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14', 'picture', 3, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/9__68359.1557125030_2.jpg', NULL),
(32, '2020-02-04 13:59:48', '2020-02-04 13:59:48', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14', 'picture', 0, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/13__85251.1557125318_2.jpg', NULL),
(33, '2020-02-04 13:59:49', '2020-02-04 13:59:49', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14', 'picture', 4, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/14__82429.1557125318_1.jpg', NULL),
(34, '2020-02-04 13:59:49', '2020-02-04 13:59:49', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '14', 'picture', 5, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/16__95752.1557125556_5.jpg', NULL),
(35, '2020-02-04 14:00:46', '2020-02-04 14:00:46', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/4__71728.1557124344.jpg', NULL),
(36, '2020-02-04 14:00:46', '2020-02-04 14:00:46', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/6__63475.1557125030.jpg', NULL),
(37, '2020-02-04 14:00:46', '2020-02-04 14:00:46', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/10__66837.1557125165.jpg', NULL),
(38, '2020-02-04 14:00:46', '2020-02-04 14:00:46', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/11__49143.1557125318_1.jpg', NULL),
(39, '2020-02-04 14:00:46', '2020-02-04 14:00:46', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '15', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/14__82429.1557125318_2.jpg', NULL),
(43, '2020-02-04 16:13:53', '2020-02-04 16:13:53', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '17', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/homepage-default-banner.jpg', NULL),
(44, '2020-02-04 16:15:27', '2020-02-04 16:15:27', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '18', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/blog-image-1.jpg', NULL),
(45, '2020-02-04 16:17:09', '2020-02-04 16:17:09', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '19', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/blog-detail.jpg', NULL),
(46, '2020-02-04 16:20:23', '2020-02-04 16:20:23', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '20', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/cruises-result.jpg', NULL),
(47, '2020-02-04 16:20:46', '2020-02-04 16:20:46', 1, 1, '2JdK8hHpJhFUiJKzhACzm3hNlSUiajbMCnbZNvsS', 'content', '21', 'picture', 9999999, NULL, NULL, NULL, '{SITE_URL}userfiles/media/templates.microweber.com/bg-section-team.jpg', NULL),
(48, '2021-07-02 18:50:10', '2021-07-02 18:50:10', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-2-698841557124343-2995137388', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/2__69884.1557124343.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/2__69884.1557124343.jpg\",\"width\":160,\"height\":160,\"cache_path_relative\":\"cache\\\\thumbnails\\\\160\\\\tn-2-698841557124343-2995137388.jpg\"}'),
(49, '2021-07-02 18:50:10', '2021-07-02 18:50:10', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-7-480041557125030-1582499882', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/7__48004.1557125030.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/7__48004.1557125030.jpg\",\"width\":160,\"height\":160,\"cache_path_relative\":\"cache\\\\thumbnails\\\\160\\\\tn-7-480041557125030-1582499882.jpg\"}'),
(50, '2021-07-02 18:50:10', '2021-07-02 18:50:10', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-cruises-result-1707622713', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/cruises-result.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/cruises-result.jpg\",\"width\":120,\"height\":120,\"cache_path_relative\":\"cache\\\\thumbnails\\\\120\\\\tn-cruises-result-1707622713.jpg\"}'),
(51, '2021-07-02 18:59:19', '2021-07-02 18:59:19', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-7-480041557125030-4212406860', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/7__48004.1557125030.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/7__48004.1557125030.jpg\",\"width\":350,\"height\":350,\"cache_path_relative\":\"cache\\\\thumbnails\\\\350\\\\tn-7-480041557125030-4212406860.webp\"}'),
(52, '2021-07-02 18:59:19', '2021-07-02 18:59:19', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-2-698841557124343-3847812673', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/2__69884.1557124343.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/2__69884.1557124343.jpg\",\"width\":350,\"height\":350,\"cache_path_relative\":\"cache\\\\thumbnails\\\\350\\\\tn-2-698841557124343-3847812673.webp\"}'),
(53, '2021-07-02 18:59:19', '2021-07-02 18:59:19', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-5-857941557124344-2091896061', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/5__85794.1557124344.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/5__85794.1557124344.jpg\",\"width\":350,\"height\":350,\"cache_path_relative\":\"cache\\\\thumbnails\\\\350\\\\tn-5-857941557124344-2091896061.webp\"}'),
(54, '2021-07-02 18:59:19', '2021-07-02 18:59:19', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-14-824291557125318-3504650737', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/14__82429.1557125318.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/14__82429.1557125318.jpg\",\"width\":350,\"height\":350,\"cache_path_relative\":\"cache\\\\thumbnails\\\\350\\\\tn-14-824291557125318-3504650737.webp\"}'),
(55, '2021-07-02 18:59:20', '2021-07-02 18:59:20', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-1-431931557124343-3-4257327000', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/1__43193.1557124343_3.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/1__43193.1557124343_3.jpg\",\"width\":350,\"height\":350,\"cache_path_relative\":\"cache\\\\thumbnails\\\\350\\\\tn-1-431931557124343-3-4257327000.webp\"}'),
(56, '2021-07-02 18:59:20', '2021-07-02 18:59:20', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-13-852511557125318-2-1945382161', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/13__85251.1557125318_2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/13__85251.1557125318_2.jpg\",\"width\":350,\"height\":350,\"cache_path_relative\":\"cache\\\\thumbnails\\\\350\\\\tn-13-852511557125318-2-1945382161.webp\"}'),
(57, '2021-07-02 18:59:20', '2021-07-02 18:59:20', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-4-717281557124344-1457348242', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/4__71728.1557124344.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/4__71728.1557124344.jpg\",\"width\":350,\"height\":350,\"cache_path_relative\":\"cache\\\\thumbnails\\\\350\\\\tn-4-717281557124344-1457348242.webp\"}'),
(58, '2021-07-02 18:59:21', '2021-07-02 18:59:21', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-7-480041557125030-2079102249', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/7__48004.1557125030.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/7__48004.1557125030.jpg\",\"width\":700,\"height\":700,\"cache_path_relative\":\"cache\\\\thumbnails\\\\700\\\\tn-7-480041557125030-2079102249.webp\"}'),
(59, '2021-07-02 18:59:21', '2021-07-02 18:59:21', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-2-698841557124343-1705007396', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/2__69884.1557124343.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/2__69884.1557124343.jpg\",\"width\":700,\"height\":700,\"cache_path_relative\":\"cache\\\\thumbnails\\\\700\\\\tn-2-698841557124343-1705007396.webp\"}'),
(60, '2021-07-02 18:59:21', '2021-07-02 18:59:21', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-5-857941557124344-4233585560', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/5__85794.1557124344.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/5__85794.1557124344.jpg\",\"width\":700,\"height\":700,\"cache_path_relative\":\"cache\\\\thumbnails\\\\700\\\\tn-5-857941557124344-4233585560.webp\"}'),
(61, '2021-07-02 18:59:21', '2021-07-02 18:59:21', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-14-824291557125318-1344018068', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/14__82429.1557125318.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/14__82429.1557125318.jpg\",\"width\":700,\"height\":700,\"cache_path_relative\":\"cache\\\\thumbnails\\\\700\\\\tn-14-824291557125318-1344018068.webp\"}'),
(62, '2021-07-02 18:59:21', '2021-07-02 18:59:21', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-1-431931557124343-3-2100889853', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/1__43193.1557124343_3.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/1__43193.1557124343_3.jpg\",\"width\":700,\"height\":700,\"cache_path_relative\":\"cache\\\\thumbnails\\\\700\\\\tn-1-431931557124343-3-2100889853.webp\"}'),
(63, '2021-07-02 18:59:22', '2021-07-02 18:59:22', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-13-852511557125318-2-4077683316', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/13__85251.1557125318_2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/13__85251.1557125318_2.jpg\",\"width\":700,\"height\":700,\"cache_path_relative\":\"cache\\\\thumbnails\\\\700\\\\tn-13-852511557125318-2-4077683316.webp\"}'),
(64, '2021-07-02 18:59:22', '2021-07-02 18:59:22', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-4-717281557124344-3592810999', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/4__71728.1557124344.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/4__71728.1557124344.jpg\",\"width\":700,\"height\":700,\"cache_path_relative\":\"cache\\\\thumbnails\\\\700\\\\tn-4-717281557124344-3592810999.webp\"}'),
(65, '2021-07-02 19:00:09', '2021-07-02 19:00:09', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-testimonial-1558280676', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/testimonial.png\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/testimonial.png\",\"width\":200,\"height\":200,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-testimonial-1558280676.webp\"}'),
(66, '2021-07-02 19:00:09', '2021-07-02 19:00:09', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-athenathemes-tribe-10-1276901001', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/athenathemes-tribe-10.png\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/athenathemes-tribe-10.png\",\"width\":200,\"height\":200,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-athenathemes-tribe-10-1276901001.webp\"}'),
(67, '2021-07-02 19:00:09', '2021-07-02 19:00:09', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team3-1286871369', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team3.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team3.jpg\",\"width\":200,\"height\":200,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-team3-1286871369.webp\"}'),
(68, '2021-07-02 19:00:09', '2021-07-02 19:00:09', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team1-1-641064974', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team1_1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team1_1.jpg\",\"width\":200,\"height\":200,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-team1-1-641064974.webp\"}'),
(69, '2021-07-02 19:00:09', '2021-07-02 19:00:09', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team2-3649028040', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team2.jpg\",\"width\":200,\"height\":200,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-team2-3649028040.webp\"}'),
(70, '2021-07-02 19:00:09', '2021-07-02 19:00:09', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team6-3821154063', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team6.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team6.jpg\",\"width\":200,\"height\":200,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-team6-3821154063.webp\"}'),
(71, '2021-07-02 19:00:09', '2021-07-02 19:00:09', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-bg-section-team-685575326', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/bg-section-team.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/bg-section-team.jpg\",\"width\":350,\"height\":350,\"cache_path_relative\":\"cache\\\\thumbnails\\\\350\\\\tn-bg-section-team-685575326.webp\"}'),
(72, '2021-07-02 19:00:09', '2021-07-02 19:00:09', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-cruises-result-1033687794', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/cruises-result.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/cruises-result.jpg\",\"width\":350,\"height\":350,\"cache_path_relative\":\"cache\\\\thumbnails\\\\350\\\\tn-cruises-result-1033687794.webp\"}'),
(73, '2021-07-02 19:00:09', '2021-07-02 19:00:09', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-blog-detail-3676623806', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/blog-detail.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/blog-detail.jpg\",\"width\":350,\"height\":350,\"cache_path_relative\":\"cache\\\\thumbnails\\\\350\\\\tn-blog-detail-3676623806.webp\"}'),
(74, '2021-07-02 19:00:09', '2021-07-02 19:00:09', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-blog-image-1-1639331748', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/blog-image-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/blog-image-1.jpg\",\"width\":350,\"height\":350,\"cache_path_relative\":\"cache\\\\thumbnails\\\\350\\\\tn-blog-image-1-1639331748.webp\"}'),
(75, '2021-07-02 19:00:10', '2021-07-02 19:00:10', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-homepage-default-banner-3681087414', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/homepage-default-banner.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/homepage-default-banner.jpg\",\"width\":350,\"height\":350,\"cache_path_relative\":\"cache\\\\thumbnails\\\\350\\\\tn-homepage-default-banner-3681087414.webp\"}'),
(76, '2021-07-02 19:06:06', '2021-07-02 19:06:06', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-66462289', '{\"mtime\":1625261407,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-66462289.webp\"}'),
(77, '2021-07-02 19:06:06', '2021-07-02 19:06:06', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-3221993943', '{\"mtime\":1625261420,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-3221993943.webp\"}'),
(78, '2021-07-02 19:06:06', '2021-07-02 19:06:06', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-1497696450', '{\"mtime\":1625261450,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-3.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-1497696450.webp\"}'),
(79, '2021-07-02 19:06:06', '2021-07-02 19:06:06', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-9-1951092081', '{\"mtime\":1625261458,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-9.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-9.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-9-1951092081.webp\"}'),
(80, '2021-07-02 19:06:06', '2021-07-02 19:06:06', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-3829265626', '{\"mtime\":1625261454,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-4.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-3829265626.webp\"}'),
(81, '2021-07-02 19:06:06', '2021-07-02 19:06:06', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-5-871687925', '{\"mtime\":1625261377,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-5.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-5.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-5-871687925.webp\"}'),
(82, '2021-07-02 19:06:06', '2021-07-02 19:06:06', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-6-2386252078', '{\"mtime\":1625261382,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-6.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-6.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-6-2386252078.webp\"}'),
(83, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-7-2250111066', '{\"mtime\":1625261423,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-7.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-7.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-7-2250111066.webp\"}'),
(84, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-8-3976592484', '{\"mtime\":1625261428,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-8.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-8.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-8-3976592484.webp\"}'),
(85, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-404-123979452', '{\"mtime\":1625261420,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/404.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/404.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-404-123979452.webp\"}'),
(86, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-10-2975721929', '{\"mtime\":1625261433,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-10.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-10.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-10-2975721929.webp\"}'),
(87, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-3037597132', '{\"mtime\":1625261411,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-3037597132.webp\"}'),
(88, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-193854651', '{\"mtime\":1625261445,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-193854651.webp\"}'),
(89, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-3506730239', '{\"mtime\":1625261472,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-3.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-3506730239.webp\"}'),
(90, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-115433276', '{\"mtime\":1625261455,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-4.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-115433276.webp\"}'),
(91, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-1244478023', '{\"mtime\":1625261422,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-1244478023.webp\"}'),
(92, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-3138393900', '{\"mtime\":1625261381,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-3138393900.webp\"}'),
(93, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-4058711421', '{\"mtime\":1625261375,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-3.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-4058711421.webp\"}'),
(94, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-3075114068', '{\"mtime\":1625261451,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-4.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-3075114068.webp\"}'),
(95, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-3022382048', '{\"mtime\":1625261446,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/cta\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/cta\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-3022382048.webp\"}'),
(96, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-2512302213', '{\"mtime\":1625261401,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/cta\\/skin-2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/cta\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-2512302213.webp\"}'),
(97, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-3382905337', '{\"mtime\":1625261433,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-3382905337.webp\"}'),
(98, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-2280987791', '{\"mtime\":1625261461,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-2280987791.webp\"}'),
(99, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-754167744', '{\"mtime\":1625261454,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-3.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-754167744.webp\"}'),
(100, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-1906631632', '{\"mtime\":1625261376,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-4.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-1906631632.webp\"}'),
(101, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-5-2136916808', '{\"mtime\":1625261417,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-5.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-5.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-5-2136916808.webp\"}'),
(102, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-6-1495535832', '{\"mtime\":1625261448,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-6.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-6.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-6-1495535832.webp\"}'),
(103, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-7-2950393187', '{\"mtime\":1625261431,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-7.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-7.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-7-2950393187.webp\"}'),
(104, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-8-1766465676', '{\"mtime\":1625261460,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-8.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-8.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-8-1766465676.webp\"}'),
(105, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-9-203034672', '{\"mtime\":1625261383,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-9.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-9.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-9-203034672.webp\"}'),
(106, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-10-3063435897', '{\"mtime\":1625261370,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-10.png\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-10.png\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-10-3063435897.webp\"}'),
(107, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-1520957192', '{\"mtime\":1625261367,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/galleries\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/galleries\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-1520957192.webp\"}'),
(108, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-3039635241', '{\"mtime\":1625261443,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/galleries\\/skin-3.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/galleries\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-3039635241.webp\"}'),
(109, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-139205244', '{\"mtime\":1625261410,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/galleries\\/skin-2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/galleries\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-139205244.webp\"}'),
(110, '2021-07-02 19:06:07', '2021-07-02 19:06:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-3378162826', '{\"mtime\":1625261383,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-banners\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-banners\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-3378162826.webp\"}'),
(111, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-1709778855', '{\"mtime\":1625261471,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-banners\\/skin-2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-banners\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-1709778855.webp\"}'),
(112, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-39379629', '{\"mtime\":1625261381,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-sliders\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-sliders\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-39379629.webp\"}'),
(113, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-163620589', '{\"mtime\":1625261426,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-163620589.webp\"}'),
(114, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-2729295748', '{\"mtime\":1625261421,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-2729295748.webp\"}'),
(115, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-628620160', '{\"mtime\":1625261381,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-3.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-628620160.webp\"}'),
(116, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-42934268', '{\"mtime\":1625261375,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-4.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-42934268.webp\"}'),
(117, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-5-3777495996', '{\"mtime\":1625261453,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-5.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-5.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-5-3777495996.webp\"}'),
(118, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-6-3052971874', '{\"mtime\":1625261448,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-6.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-6.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-6-3052971874.webp\"}'),
(119, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-7-2567510883', '{\"mtime\":1625261417,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-7.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-7.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-7-2567510883.webp\"}'),
(120, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-3274558350', '{\"mtime\":1625261387,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/partners\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/partners\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-3274558350.webp\"}'),
(121, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-2548856114', '{\"mtime\":1625261370,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/partners\\/skin-2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/partners\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-2548856114.webp\"}'),
(122, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-3730965709', '{\"mtime\":1625261472,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/people\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/people\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-3730965709.webp\"}');
INSERT INTO `bt_media` (`id`, `updated_at`, `created_at`, `created_by`, `edited_by`, `session_id`, `rel_type`, `rel_id`, `media_type`, `position`, `title`, `description`, `embed_code`, `filename`, `image_options`) VALUES
(123, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-2286168842', '{\"mtime\":1625261453,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/people\\/skin-2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/people\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-2286168842.webp\"}'),
(124, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-2966875023', '{\"mtime\":1625261422,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-2966875023.webp\"}'),
(125, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-3108575264', '{\"mtime\":1625261405,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-3108575264.webp\"}'),
(126, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-1609170309', '{\"mtime\":1625261376,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-3.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-1609170309.webp\"}'),
(127, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-2080040151', '{\"mtime\":1625261467,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-4.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-2080040151.webp\"}'),
(128, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-5-2500966864', '{\"mtime\":1625261448,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-5.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-5.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-5-2500966864.webp\"}'),
(129, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-3003496867', '{\"mtime\":1625261466,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/pricing\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/pricing\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-3003496867.webp\"}'),
(130, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-3821573689', '{\"mtime\":1625261407,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/products\\/skin-1.png\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/products\\/skin-1.png\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-3821573689.webp\"}'),
(131, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-3149346149', '{\"mtime\":1625261377,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/products\\/skin-2.png\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/products\\/skin-2.png\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-3149346149.webp\"}'),
(132, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-3679704917', '{\"mtime\":1625261448,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-3679704917.webp\"}'),
(133, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-493880059', '{\"mtime\":1625261403,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-493880059.webp\"}'),
(134, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-3378503393', '{\"mtime\":1625261376,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-3.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-3378503393.webp\"}'),
(135, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-238612943', '{\"mtime\":1625261383,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-4.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-238612943.webp\"}'),
(136, '2021-07-02 19:06:08', '2021-07-02 19:06:08', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-5-3018357969', '{\"mtime\":1625261452,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-5.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-5.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-5-3018357969.webp\"}'),
(137, '2021-07-02 19:06:09', '2021-07-02 19:06:09', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-6-4243943906', '{\"mtime\":1625261433,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-6.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-6.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-6-4243943906.webp\"}'),
(138, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-1256032528', '{\"mtime\":1625261407,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-1256032528.jpg\"}'),
(139, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-1644142369', '{\"mtime\":1625261420,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-1644142369.jpg\"}'),
(140, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-3642940761', '{\"mtime\":1625261450,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-3.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-3642940761.jpg\"}'),
(141, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-9-1688817101', '{\"mtime\":1625261458,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-9.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-9.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-9-1688817101.jpg\"}'),
(142, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-2349748491', '{\"mtime\":1625261454,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-4.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-2349748491.jpg\"}'),
(143, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-5-3086187921', '{\"mtime\":1625261377,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-5.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-5.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-5-3086187921.jpg\"}'),
(144, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-6-528583597', '{\"mtime\":1625261382,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-6.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-6.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-6-528583597.jpg\"}'),
(145, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-7-2871541659', '{\"mtime\":1625261423,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-7.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-7.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-7-2871541659.jpg\"}'),
(146, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-8-3698593717', '{\"mtime\":1625261428,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-8.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-8.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-8-3698593717.jpg\"}'),
(147, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-404-887060268', '{\"mtime\":1625261420,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/404.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/404.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-404-887060268.jpg\"}'),
(148, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-10-2876752283', '{\"mtime\":1625261433,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-10.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-10.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-10-2876752283.jpg\"}'),
(149, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-2791704565', '{\"mtime\":1625261411,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-2791704565.jpg\"}'),
(150, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-4105195851', '{\"mtime\":1625261445,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-4105195851.jpg\"}'),
(151, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-3804047451', '{\"mtime\":1625261472,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-3.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-3804047451.jpg\"}'),
(152, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-2590412056', '{\"mtime\":1625261455,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-4.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/blockquotes\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-2590412056.jpg\"}'),
(153, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-2277662294', '{\"mtime\":1625261422,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-2277662294.jpg\"}'),
(154, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-3023717963', '{\"mtime\":1625261381,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-3023717963.jpg\"}'),
(155, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-1873853268', '{\"mtime\":1625261375,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-3.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-1873853268.jpg\"}'),
(156, '2021-07-02 19:06:31', '2021-07-02 19:06:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-934110041', '{\"mtime\":1625261451,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-4.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/contacts\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-934110041.jpg\"}'),
(157, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-3106968921', '{\"mtime\":1625261446,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/cta\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/cta\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-3106968921.jpg\"}'),
(158, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-1285584033', '{\"mtime\":1625261401,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/cta\\/skin-2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/cta\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-1285584033.jpg\"}'),
(159, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-1128683300', '{\"mtime\":1625261433,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-1128683300.jpg\"}'),
(160, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-3420931082', '{\"mtime\":1625261461,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-3420931082.jpg\"}'),
(161, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-3813982046', '{\"mtime\":1625261454,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-3.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-3813982046.jpg\"}'),
(162, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-1277240582', '{\"mtime\":1625261376,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-4.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-1277240582.jpg\"}'),
(163, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-5-2461295221', '{\"mtime\":1625261417,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-5.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-5.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-5-2461295221.jpg\"}'),
(164, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-6-3948965769', '{\"mtime\":1625261448,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-6.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-6.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-6-3948965769.jpg\"}'),
(165, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-7-1376150055', '{\"mtime\":1625261431,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-7.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-7.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-7-1376150055.jpg\"}'),
(166, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-8-3415983459', '{\"mtime\":1625261460,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-8.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-8.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-8-3415983459.jpg\"}'),
(167, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-9-3561968192', '{\"mtime\":1625261383,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-9.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-9.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-9-3561968192.jpg\"}'),
(168, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-10-740018658', '{\"mtime\":1625261370,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-10.png\",\"ext\":\"png\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/features\\/skin-10.png\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-10-740018658.png\"}'),
(169, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-3776753910', '{\"mtime\":1625261367,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/galleries\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/galleries\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-3776753910.jpg\"}'),
(170, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-2614519554', '{\"mtime\":1625261443,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/galleries\\/skin-3.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/galleries\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-2614519554.jpg\"}'),
(171, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-3089417097', '{\"mtime\":1625261410,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/galleries\\/skin-2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/galleries\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-3089417097.jpg\"}'),
(172, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-1270542652', '{\"mtime\":1625261383,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-banners\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-banners\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-1270542652.jpg\"}'),
(173, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-2667556315', '{\"mtime\":1625261471,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-banners\\/skin-2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-banners\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-2667556315.jpg\"}'),
(174, '2021-07-02 19:06:32', '2021-07-02 19:06:32', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-2615812291', '{\"mtime\":1625261381,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-sliders\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-sliders\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-2615812291.jpg\"}'),
(175, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-4283209465', '{\"mtime\":1625261426,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-4283209465.jpg\"}'),
(176, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-2573178650', '{\"mtime\":1625261421,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-2573178650.jpg\"}'),
(177, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-3028659440', '{\"mtime\":1625261381,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-3.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-3028659440.jpg\"}'),
(178, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-3724735011', '{\"mtime\":1625261375,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-4.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-3724735011.jpg\"}'),
(179, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-5-3844623824', '{\"mtime\":1625261453,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-5.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-5.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-5-3844623824.jpg\"}'),
(180, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-6-837585898', '{\"mtime\":1625261448,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-6.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-6.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-6-837585898.jpg\"}'),
(181, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-7-3874745391', '{\"mtime\":1625261417,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-7.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/info-blocks\\/skin-7.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-7-3874745391.jpg\"}'),
(182, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-2719463322', '{\"mtime\":1625261387,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/partners\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/partners\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-2719463322.jpg\"}'),
(183, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-1741231008', '{\"mtime\":1625261370,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/partners\\/skin-2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/partners\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-1741231008.jpg\"}'),
(184, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-970109760', '{\"mtime\":1625261472,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/people\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/people\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-970109760.jpg\"}'),
(185, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-1980655289', '{\"mtime\":1625261453,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/people\\/skin-2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/people\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-1980655289.jpg\"}'),
(186, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-3247677503', '{\"mtime\":1625261422,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-3247677503.jpg\"}'),
(187, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-840635903', '{\"mtime\":1625261405,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-840635903.jpg\"}'),
(188, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-245325003', '{\"mtime\":1625261376,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-3.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-245325003.jpg\"}'),
(189, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-956768410', '{\"mtime\":1625261467,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-4.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-956768410.jpg\"}'),
(190, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-5-587654883', '{\"mtime\":1625261448,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-5.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/posts\\/skin-5.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-5-587654883.jpg\"}'),
(191, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-3689359818', '{\"mtime\":1625261466,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/pricing\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/pricing\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-3689359818.jpg\"}'),
(192, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-4011168220', '{\"mtime\":1625261407,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/products\\/skin-1.png\",\"ext\":\"png\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/products\\/skin-1.png\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-4011168220.png\"}'),
(193, '2021-07-02 19:06:33', '2021-07-02 19:06:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-583920941', '{\"mtime\":1625261377,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/products\\/skin-2.png\",\"ext\":\"png\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/products\\/skin-2.png\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-583920941.png\"}'),
(194, '2021-07-02 19:06:34', '2021-07-02 19:06:34', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-1320218237', '{\"mtime\":1625261448,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-1.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-1-1320218237.jpg\"}'),
(195, '2021-07-02 19:06:34', '2021-07-02 19:06:34', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-2-3146498955', '{\"mtime\":1625261403,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-2.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-2-3146498955.jpg\"}'),
(196, '2021-07-02 19:06:34', '2021-07-02 19:06:34', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-3-3495614099', '{\"mtime\":1625261376,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-3.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-3.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-3-3495614099.jpg\"}'),
(197, '2021-07-02 19:06:34', '2021-07-02 19:06:34', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-4-4043293770', '{\"mtime\":1625261383,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-4.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-4.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-4-4043293770.jpg\"}'),
(198, '2021-07-02 19:06:34', '2021-07-02 19:06:34', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-5-1656564673', '{\"mtime\":1625261452,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-5.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-5.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-5-1656564673.jpg\"}'),
(199, '2021-07-02 19:06:34', '2021-07-02 19:06:34', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-6-2054519726', '{\"mtime\":1625261433,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-6.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/videos\\/skin-6.jpg\",\"width\":340,\"height\":340,\"cache_path_relative\":\"cache\\\\thumbnails\\\\340\\\\tn-skin-6-2054519726.jpg\"}'),
(200, '2021-07-02 19:08:56', '2021-07-02 19:08:56', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-1-1739221638', '{\"mtime\":1625261383,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-banners\\/skin-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/home-banners\\/skin-1.jpg\",\"width\":300,\"height\":0,\"cache_path_relative\":\"cache\\\\thumbnails\\\\300\\\\tn-skin-1-1739221638.webp\"}'),
(201, '2021-07-02 19:14:19', '2021-07-02 19:14:19', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-7-480041557125030-935192927', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/7__48004.1557125030.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/7__48004.1557125030.jpg\",\"width\":120,\"height\":120,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\120\\\\tn-7-480041557125030-935192927.jpg\"}'),
(202, '2021-07-02 19:14:19', '2021-07-02 19:14:19', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-2-698841557124343-2460427371', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/2__69884.1557124343.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/2__69884.1557124343.jpg\",\"width\":120,\"height\":120,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\120\\\\tn-2-698841557124343-2460427371.jpg\"}'),
(203, '2021-07-02 19:14:20', '2021-07-02 19:14:20', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-5-857941557124344-3542149450', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/5__85794.1557124344.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/5__85794.1557124344.jpg\",\"width\":120,\"height\":120,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\120\\\\tn-5-857941557124344-3542149450.jpg\"}'),
(204, '2021-07-02 19:14:20', '2021-07-02 19:14:20', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-14-824291557125318-3968595814', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/14__82429.1557125318.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/14__82429.1557125318.jpg\",\"width\":120,\"height\":120,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\120\\\\tn-14-824291557125318-3968595814.jpg\"}'),
(205, '2021-07-02 19:14:21', '2021-07-02 19:14:21', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-1-431931557124343-3-442025480', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/1__43193.1557124343_3.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/1__43193.1557124343_3.jpg\",\"width\":120,\"height\":120,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\120\\\\tn-1-431931557124343-3-442025480.jpg\"}'),
(206, '2021-07-02 19:14:21', '2021-07-02 19:14:21', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-13-852511557125318-2-881777600', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/13__85251.1557125318_2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/13__85251.1557125318_2.jpg\",\"width\":120,\"height\":120,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\120\\\\tn-13-852511557125318-2-881777600.jpg\"}'),
(207, '2021-07-02 19:14:22', '2021-07-02 19:14:22', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-4-717281557124344-949985497', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/4__71728.1557124344.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/4__71728.1557124344.jpg\",\"width\":120,\"height\":120,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\120\\\\tn-4-717281557124344-949985497.jpg\"}'),
(208, '2021-07-02 19:38:56', '2021-07-02 19:38:56', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-testimonial-3793058583', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/testimonial.png\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/testimonial.png\",\"width\":75,\"height\":75,\"cache_path_relative\":\"cache\\\\thumbnails\\\\75\\\\tn-testimonial-3793058583.webp\"}'),
(209, '2021-07-02 19:38:56', '2021-07-02 19:38:56', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-athenathemes-tribe-10-1986378262', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/athenathemes-tribe-10.png\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/athenathemes-tribe-10.png\",\"width\":75,\"height\":75,\"cache_path_relative\":\"cache\\\\thumbnails\\\\75\\\\tn-athenathemes-tribe-10-1986378262.webp\"}'),
(210, '2021-07-02 19:38:56', '2021-07-02 19:38:56', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team3-694627683', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team3.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team3.jpg\",\"width\":75,\"height\":75,\"cache_path_relative\":\"cache\\\\thumbnails\\\\75\\\\tn-team3-694627683.webp\"}'),
(211, '2021-07-02 19:38:56', '2021-07-02 19:38:56', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team1-1-198379345', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team1_1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team1_1.jpg\",\"width\":75,\"height\":75,\"cache_path_relative\":\"cache\\\\thumbnails\\\\75\\\\tn-team1-1-198379345.webp\"}'),
(212, '2021-07-02 19:38:56', '2021-07-02 19:38:56', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team2-1443897386', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team2.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team2.jpg\",\"width\":75,\"height\":75,\"cache_path_relative\":\"cache\\\\thumbnails\\\\75\\\\tn-team2-1443897386.webp\"}'),
(213, '2021-07-02 19:38:56', '2021-07-02 19:38:56', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team6-1891439439', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team6.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team6.jpg\",\"width\":75,\"height\":75,\"cache_path_relative\":\"cache\\\\thumbnails\\\\75\\\\tn-team6-1891439439.webp\"}'),
(214, '2021-07-02 19:39:33', '2021-07-02 19:39:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-testimonial-3320379587', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/testimonial.png\",\"ext\":\"png\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/testimonial.png\",\"width\":75,\"height\":75,\"cache_path_relative\":\"cache\\\\thumbnails\\\\75\\\\tn-testimonial-3320379587.png\"}'),
(215, '2021-07-02 19:39:33', '2021-07-02 19:39:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-athenathemes-tribe-10-908124986', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/athenathemes-tribe-10.png\",\"ext\":\"png\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/athenathemes-tribe-10.png\",\"width\":75,\"height\":75,\"cache_path_relative\":\"cache\\\\thumbnails\\\\75\\\\tn-athenathemes-tribe-10-908124986.png\"}'),
(216, '2021-07-02 19:39:33', '2021-07-02 19:39:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team3-243182155', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team3.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team3.jpg\",\"width\":75,\"height\":75,\"cache_path_relative\":\"cache\\\\thumbnails\\\\75\\\\tn-team3-243182155.jpg\"}'),
(217, '2021-07-02 19:39:33', '2021-07-02 19:39:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team1-1-150246948', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team1_1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team1_1.jpg\",\"width\":75,\"height\":75,\"cache_path_relative\":\"cache\\\\thumbnails\\\\75\\\\tn-team1-1-150246948.jpg\"}');
INSERT INTO `bt_media` (`id`, `updated_at`, `created_at`, `created_by`, `edited_by`, `session_id`, `rel_type`, `rel_id`, `media_type`, `position`, `title`, `description`, `embed_code`, `filename`, `image_options`) VALUES
(218, '2021-07-02 19:39:33', '2021-07-02 19:39:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team2-1276731947', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team2.jpg\",\"width\":75,\"height\":75,\"cache_path_relative\":\"cache\\\\thumbnails\\\\75\\\\tn-team2-1276731947.jpg\"}'),
(219, '2021-07-02 19:39:33', '2021-07-02 19:39:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-testimonial-2299588343', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/testimonial.png\",\"ext\":\"png\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/testimonial.png\",\"width\":200,\"height\":200,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-testimonial-2299588343.png\"}'),
(220, '2021-07-02 19:39:33', '2021-07-02 19:39:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team6-2667005418', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team6.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team6.jpg\",\"width\":75,\"height\":75,\"cache_path_relative\":\"cache\\\\thumbnails\\\\75\\\\tn-team6-2667005418.jpg\"}'),
(221, '2021-07-02 19:39:33', '2021-07-02 19:39:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-athenathemes-tribe-10-1528691690', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/athenathemes-tribe-10.png\",\"ext\":\"png\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/athenathemes-tribe-10.png\",\"width\":200,\"height\":200,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-athenathemes-tribe-10-1528691690.png\"}'),
(222, '2021-07-02 19:39:33', '2021-07-02 19:39:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team3-1367740881', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team3.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team3.jpg\",\"width\":200,\"height\":200,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-team3-1367740881.jpg\"}'),
(223, '2021-07-02 19:39:33', '2021-07-02 19:39:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team1-1-1950954264', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team1_1.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team1_1.jpg\",\"width\":200,\"height\":200,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-team1-1-1950954264.jpg\"}'),
(224, '2021-07-02 19:39:33', '2021-07-02 19:39:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team2-1213324416', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team2.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team2.jpg\",\"width\":200,\"height\":200,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-team2-1213324416.jpg\"}'),
(225, '2021-07-02 19:39:33', '2021-07-02 19:39:33', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-team6-789506500', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/team6.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/team6.jpg\",\"width\":200,\"height\":200,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-team6-789506500.jpg\"}'),
(226, '2021-07-02 19:44:30', '2021-07-02 19:44:30', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-skin-8-2597627459', '{\"mtime\":1625261428,\"base_src\":\"userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-8.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/templates\\/new-world\\/modules\\/layouts\\/templates\\/skin-8.jpg\",\"width\":300,\"height\":0,\"cache_path_relative\":\"cache\\\\thumbnails\\\\300\\\\tn-skin-8-2597627459.webp\"}'),
(227, '2021-07-02 19:46:06', '2021-07-02 19:46:06', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-bg-section-team-3656745438', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/bg-section-team.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/bg-section-team.jpg\",\"width\":120,\"height\":120,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\120\\\\tn-bg-section-team-3656745438.webp\"}'),
(228, '2021-07-02 19:46:06', '2021-07-02 19:46:06', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-cruises-result-1051396170', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/cruises-result.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/cruises-result.jpg\",\"width\":120,\"height\":120,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\120\\\\tn-cruises-result-1051396170.webp\"}'),
(229, '2021-07-02 19:46:06', '2021-07-02 19:46:06', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-blog-detail-507584087', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/blog-detail.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/blog-detail.jpg\",\"width\":120,\"height\":120,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\120\\\\tn-blog-detail-507584087.webp\"}'),
(230, '2021-07-02 19:46:07', '2021-07-02 19:46:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-blog-image-1-2006374712', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/blog-image-1.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/blog-image-1.jpg\",\"width\":120,\"height\":120,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\120\\\\tn-blog-image-1-2006374712.webp\"}'),
(231, '2021-07-02 19:46:07', '2021-07-02 19:46:07', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-homepage-default-banner-3199948380', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/homepage-default-banner.jpg\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/homepage-default-banner.jpg\",\"width\":120,\"height\":120,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\120\\\\tn-homepage-default-banner-3199948380.webp\"}'),
(232, '2021-07-02 19:49:31', '2021-07-02 19:49:31', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-bg-section-team-3939540581', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/templates.microweber.com\\/bg-section-team.jpg\",\"ext\":\"jpg\",\"src\":\"{SITE_URL}userfiles\\/media\\/templates.microweber.com\\/bg-section-team.jpg\",\"width\":200,\"height\":200,\"crop\":true,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-bg-section-team-3939540581.jpg\"}'),
(233, '2021-07-02 20:01:58', '2021-07-02 20:01:58', NULL, NULL, NULL, 'media_tn_temp', NULL, 'media_tn_temp', NULL, NULL, NULL, NULL, 'tn-logo-dark-1175685012', '{\"mtime\":1625262593,\"base_src\":\"userfiles\\/media\\/127.0.0.7\\/logo-dark.png\",\"ext\":\"webp\",\"src\":\"{SITE_URL}userfiles\\/media\\/127.0.0.7\\/logo-dark.png\",\"width\":200,\"height\":0,\"cache_path_relative\":\"cache\\\\thumbnails\\\\200\\\\tn-logo-dark-1175685012.webp\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_menus`
--

DROP TABLE IF EXISTS `bt_menus`;
CREATE TABLE IF NOT EXISTS `bt_menus` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci,
  `item_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `content_id` int DEFAULT NULL,
  `categories_id` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `auto_populate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `url` longtext COLLATE utf8_unicode_ci,
  `url_target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` text COLLATE utf8_unicode_ci,
  `default_image` longtext COLLATE utf8_unicode_ci,
  `rollover_image` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_menus`
--

INSERT INTO `bt_menus` (`id`, `title`, `item_type`, `parent_id`, `content_id`, `categories_id`, `position`, `updated_at`, `created_at`, `is_active`, `auto_populate`, `description`, `url`, `url_target`, `size`, `default_image`, `rollover_image`) VALUES
(1, 'header_menu', 'menu', NULL, NULL, NULL, NULL, '2020-01-21 10:14:04', '2020-01-21 10:14:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'footer_menu', 'menu', NULL, NULL, NULL, NULL, '2020-01-21 10:14:04', '2020-01-21 10:14:04', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'top_menu_1', 'menu', NULL, NULL, NULL, NULL, '2020-01-21 10:14:14', '2020-01-21 10:14:14', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'top_menu_2', 'menu', NULL, NULL, NULL, NULL, '2020-01-21 10:23:10', '2020-01-21 10:23:10', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'footer_menu_1', 'menu', NULL, NULL, NULL, NULL, '2020-01-21 10:30:08', '2020-01-21 10:30:08', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Home', 'menu_item', 7, NULL, NULL, 0, '2020-01-27 11:31:46', '2020-01-27 11:31:46', NULL, '', NULL, '{SITE_URL}', NULL, NULL, NULL, NULL),
(11, 'About us', 'menu_item', 7, NULL, NULL, 3, '2020-01-27 11:43:20', '2020-01-27 11:43:20', NULL, '', NULL, '{SITE_URL}about-us', NULL, NULL, NULL, NULL),
(12, 'Contact Us', 'menu_item', 7, NULL, NULL, 5, '2020-01-27 11:43:24', '2020-01-27 11:43:24', NULL, '', NULL, '{SITE_URL}contact-us', NULL, NULL, NULL, NULL),
(14, 'Services', 'menu_item', 7, NULL, NULL, 4, '2020-01-30 09:48:13', '2020-01-30 09:48:13', NULL, '', NULL, '{SITE_URL}services', NULL, NULL, NULL, NULL),
(16, 'Shop', 'menu_item', 7, NULL, NULL, 2, '2020-02-04 14:01:41', '2020-02-04 14:01:41', NULL, '', NULL, '{SITE_URL}shop', NULL, NULL, NULL, NULL),
(18, 'Blog', 'menu_item', 7, NULL, NULL, 1, '2020-02-04 14:14:28', '2020-02-04 14:14:28', NULL, '', NULL, '{SITE_URL}blog', NULL, NULL, NULL, NULL),
(37, NULL, 'menu_item', 1, 1, NULL, 0, '2021-04-27 12:48:57', '2021-04-27 12:48:57', 1, NULL, NULL, '', NULL, NULL, NULL, NULL),
(38, NULL, 'menu_item', 3, 1, NULL, 999999, '2021-04-27 12:48:57', '2021-04-27 12:48:57', 1, NULL, NULL, '', NULL, NULL, NULL, NULL),
(39, NULL, 'menu_item', 1, 2, NULL, 1, '2021-04-27 12:50:15', '2021-04-27 12:50:15', 1, NULL, NULL, '', NULL, NULL, NULL, NULL),
(40, NULL, 'menu_item', 3, 2, NULL, 999999, '2021-04-27 12:50:15', '2021-04-27 12:50:15', 1, NULL, NULL, '', NULL, NULL, NULL, NULL),
(41, NULL, 'menu_item', 1, 8, NULL, 2, '2021-04-27 12:50:31', '2021-04-27 12:50:31', 1, NULL, NULL, '', NULL, NULL, NULL, NULL),
(42, NULL, 'menu_item', 3, 8, NULL, 999999, '2021-04-27 12:50:31', '2021-04-27 12:50:31', 1, NULL, NULL, '', NULL, NULL, NULL, NULL),
(43, 'Serviços', 'menu_item', 1, 7, 0, 3, '2021-07-02 19:57:02', '2021-04-27 12:50:44', 1, NULL, NULL, '', '', NULL, NULL, NULL),
(44, NULL, 'menu_item', 3, 7, NULL, 999999, '2021-04-27 12:50:44', '2021-04-27 12:50:44', 1, NULL, NULL, '', NULL, NULL, NULL, NULL),
(45, 'Entre em contato', 'menu_item', 1, 5, 0, 5, '2021-07-02 19:58:01', '2021-04-27 12:51:04', 1, NULL, NULL, '', '', NULL, NULL, NULL),
(46, NULL, 'menu_item', 3, 5, NULL, 999999, '2021-04-27 12:51:04', '2021-04-27 12:51:04', 1, NULL, NULL, '', NULL, NULL, NULL, NULL),
(48, NULL, 'menu_item', 3, 24, NULL, 999999, '2021-04-27 12:51:27', '2021-04-27 12:51:27', 1, NULL, NULL, '', NULL, NULL, NULL, NULL),
(49, 'Sobre nós', 'menu_item', 1, 24, 0, 4, '2021-07-02 19:57:30', '2021-04-27 12:53:31', NULL, NULL, NULL, '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_migrations`
--

DROP TABLE IF EXISTS `bt_migrations`;
CREATE TABLE IF NOT EXISTS `bt_migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_migrations`
--

INSERT INTO `bt_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_01_07_073615_create_tagged_table', 1),
(2, '2014_01_07_073615_create_tags_table', 1),
(3, '2014_10_11_125754_create_currencies_table', 1),
(4, '2014_10_12_000000_create_user_table', 1),
(5, '2014_10_12_000001_update_users_table', 1),
(6, '2016_06_29_073615_create_tag_groups_table', 1),
(7, '2016_06_29_073615_update_tags_table', 1),
(8, '2017_05_06_173745_create_countries_table', 1),
(9, '2019_08_30_072639_create_addresses_table', 1),
(10, '2019_09_21_052540_create_tax_types_table', 1),
(11, '2019_09_21_052548_create_taxes_table', 1),
(12, '2019_11_25_021944_create_customers_table', 1),
(13, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(14, '2020_00_00_000000_create_content_table', 1),
(15, '2020_00_00_000000_create_forms_table', 1),
(16, '2020_00_00_000000_create_notifications_table', 1),
(17, '2020_00_00_000000_create_options_table', 1),
(18, '2020_00_00_000000_create_shop_table', 1),
(19, '2020_00_00_00000_create_permission_table', 1),
(20, '2020_00_00_00001_create_roles_table', 1),
(21, '2020_00_00_00002_create_model_has_permissions_table', 1),
(22, '2020_00_00_00003_create_model_has_roles_table', 1),
(23, '2020_00_00_00004_create_role_has_permissions_table', 1),
(24, '2020_03_13_083515_add_description_to_tags_table', 1),
(25, '2020_10_12_100000_create_password_resets_table', 1),
(26, '2020_10_29_090535_create_jobs_table', 1),
(27, '2020_10_29_090855_create_failed_jobs_table', 1),
(28, '2020_11_12_000000_update_customers_table', 1),
(29, '2021_01_13_100000_create_personal_access_clients', 1),
(30, '2021_01_14_000001_update_failed_jobs_table', 1),
(31, '2021_01_14_000002_update_jobs_table', 1),
(32, '2021_01_19_000000_create_related_content', 1),
(33, '2021_02_12_000001_create_translation_keys_table', 1),
(34, '2021_02_12_000002_create_translation_texts_table', 1),
(35, '2021_02_19_000000_add_company_details_addresses_table', 1),
(36, '2021_02_24_000000_insert_countries', 1),
(37, '2021_03_04_000001_add_index_to_user_table', 1),
(38, '2021_03_08_000001_add_index_to_translation_tables', 1),
(39, '2021_03_17_000000_create_forms_recipients_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_model_has_permissions`
--

DROP TABLE IF EXISTS `bt_model_has_permissions`;
CREATE TABLE IF NOT EXISTS `bt_model_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_model_has_roles`
--

DROP TABLE IF EXISTS `bt_model_has_roles`;
CREATE TABLE IF NOT EXISTS `bt_model_has_roles` (
  `role_id` int UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_modules`
--

DROP TABLE IF EXISTS `bt_modules`;
CREATE TABLE IF NOT EXISTS `bt_modules` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `expires_on` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci,
  `parent_id` int DEFAULT NULL,
  `module_id` text COLLATE utf8_unicode_ci,
  `module` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `icon` text COLLATE utf8_unicode_ci,
  `author` text COLLATE utf8_unicode_ci,
  `website` text COLLATE utf8_unicode_ci,
  `help` text COLLATE utf8_unicode_ci,
  `type` text COLLATE utf8_unicode_ci,
  `installed` int DEFAULT NULL,
  `ui` int DEFAULT NULL,
  `position` int DEFAULT NULL,
  `as_element` int DEFAULT NULL,
  `allow_caching` int DEFAULT NULL,
  `ui_admin` int DEFAULT NULL,
  `ui_admin_iframe` int DEFAULT NULL,
  `is_system` int DEFAULT NULL,
  `is_integration` int DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notifications` int DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `categories` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=201 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_modules`
--

INSERT INTO `bt_modules` (`id`, `updated_at`, `created_at`, `expires_on`, `created_by`, `edited_by`, `name`, `parent_id`, `module_id`, `module`, `description`, `icon`, `author`, `website`, `help`, `type`, `installed`, `ui`, `position`, `as_element`, `allow_caching`, `ui_admin`, `ui_admin_iframe`, `is_system`, `is_integration`, `version`, `notifications`, `settings`, `categories`) VALUES
(1, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Accordion', 0, NULL, 'accordion', NULL, '{SITE_URL}userfiles/modules/accordion/accordion.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 52, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, '{\"translatable_options\":[\"settings\"]}', 'other'),
(2, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Backup', 0, NULL, 'admin/backup', NULL, '{SITE_URL}userfiles/modules/admin/backup/backup.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 500, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'admin'),
(3, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Backup V2', 0, NULL, 'admin/backup_v2', NULL, '{SITE_URL}userfiles/modules/admin/backup_v2/backup_v2.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 99, NULL, 1, 1, NULL, 0, 0, '0.3', NULL, NULL, 'admin'),
(4, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Content Export', 0, NULL, 'admin/content_export', NULL, '{SITE_URL}userfiles/modules/admin/content_export/content_export.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 99, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'admin'),
(5, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Import', 0, NULL, 'admin/import', NULL, '{SITE_URL}userfiles/modules/admin/import/import.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 99, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'admin'),
(6, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Mail Providers', 0, NULL, 'admin/mail_providers', NULL, '{SITE_URL}userfiles/modules/admin/mail_providers/mail_providers.svg', 'Microweber', NULL, NULL, 'mail_providers_configuration', 1, 0, 100, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL),
(7, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'FlexMail', 0, NULL, 'admin/mail_providers/flexmail', NULL, '{SITE_URL}userfiles/modules/admin/mail_providers/flexmail/flexmail.svg', 'Microweber', NULL, NULL, 'mail_provider', 1, 0, 100, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL),
(8, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'MailerLite', 0, NULL, 'admin/mail_providers/mailerlite', NULL, '{SITE_URL}userfiles/modules/admin/mail_providers/mailerlite/mailerlite.svg', 'Microweber', NULL, NULL, 'mail_provider', 1, 0, 100, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL),
(9, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Mail Templates', 0, NULL, 'admin/mail_templates', NULL, '{SITE_URL}userfiles/modules/admin/mail_templates/mail_templates.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 100, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL),
(10, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Queue', 0, NULL, 'admin/mics/queue', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, NULL, 1, 0, '0.3', NULL, NULL, 'admin'),
(11, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Notifications', 0, NULL, 'admin/notifications', NULL, '{SITE_URL}userfiles/modules/admin/notifications/notifications.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 1, NULL, 1, 1, NULL, 1, 0, '0.3', NULL, NULL, 'admin'),
(12, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Ants', 0, NULL, 'ants', 'Formigas ferozes para o seu site!', '{SITE_URL}userfiles/modules/ants/ants.svg', 'Tom Oram', NULL, NULL, NULL, 1, 1, 28, NULL, 1, 0, NULL, 0, 0, '0.05', NULL, NULL, 'other'),
(13, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Audio', 0, NULL, 'audio', 'Microweber', '{SITE_URL}userfiles/modules/audio/audio.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/audio', NULL, 1, 1, 30, NULL, 1, 0, NULL, 0, 0, '0.19', NULL, NULL, 'media'),
(14, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Before/After', 0, NULL, 'beforeafter', NULL, '{SITE_URL}userfiles/modules/beforeafter/beforeafter.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 37, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'other'),
(15, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Breadcrumb', 0, NULL, 'breadcrumb', 'Breadcrumb navigation', '{SITE_URL}userfiles/modules/breadcrumb/breadcrumb.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 54, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'navigation'),
(16, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Button', 0, NULL, 'btn', NULL, '{SITE_URL}userfiles/modules/btn/btn.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 7, NULL, 1, 1, NULL, 1, 0, '0.9', NULL, '{\"translatable_options\":[\"button_action\",\"button_onclick\",\"popupcontent\",\"url_blank\",\"icon\",\"text\",\"url\"]}', 'recommended,navigation'),
(17, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Captcha', 0, NULL, 'captcha', NULL, '{SITE_URL}userfiles/modules/captcha/captcha.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 99, NULL, 0, 1, NULL, 0, 0, '0.1', NULL, NULL, 'other'),
(18, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Carousel Grid', 0, NULL, 'carousel_grid', 'Microweber Carousel Grid', '{SITE_URL}userfiles/modules/carousel_grid/carousel_grid.svg', 'Microweber', 'http://microweber.com/', NULL, NULL, 1, 1, 100, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'media'),
(19, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Categories', 0, NULL, 'categories', NULL, '{SITE_URL}userfiles/modules/categories/categories.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 29, NULL, 1, 0, NULL, 1, 0, '0.1', NULL, NULL, 'navigation'),
(20, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Categories Images', 0, NULL, 'categories/category_images', NULL, '{SITE_URL}userfiles/modules/categories/category_images/category_images.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 51, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, NULL, NULL),
(21, '2021-07-02 18:49:49', '2021-07-02 18:49:49', NULL, NULL, NULL, 'Comments', 0, NULL, 'comments', NULL, '{SITE_URL}userfiles/modules/comments/comments.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 16, NULL, 1, 1, 1, 0, 0, '0.4', NULL, NULL, 'content'),
(22, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Contact form', 0, NULL, 'contact_form', NULL, '{SITE_URL}userfiles/modules/contact_form/contact_form.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 15, NULL, 1, 1, NULL, 1, 1, '0.2', NULL, '{\"translatable_options\":[\"email_autorespond_subject\",\"email_autorespond\"]}', 'forms'),
(23, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Content', 0, NULL, 'content', 'Mostra conteúdo dinâmico', '{SITE_URL}userfiles/modules/content/content.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 22, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, NULL, 'content'),
(24, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Filter', 0, NULL, 'content_filter', NULL, '{SITE_URL}userfiles/modules/content_filter/content_filter.png', 'Microweber', NULL, NULL, NULL, 1, 0, 200, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content'),
(25, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Cookie Notice', 0, NULL, 'cookie_notice', NULL, '{SITE_URL}userfiles/modules/cookie_notice/cookie_notice.svg', 'Ezyweb.uk', NULL, NULL, NULL, 1, 0, 99, NULL, 1, 1, NULL, 0, 0, '0.1', NULL, NULL, 'content'),
(26, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Custom fields', 0, NULL, 'custom_fields', NULL, '{SITE_URL}userfiles/modules/custom_fields/custom_fields.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 15, NULL, 1, 0, NULL, 1, 0, NULL, NULL, NULL, NULL),
(27, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Content Revisions', 0, NULL, 'editor/content_revisions', NULL, '{SITE_URL}userfiles/modules/default.svg', NULL, NULL, NULL, NULL, 1, 0, 28, NULL, 1, 0, NULL, 0, 0, '0.05', NULL, NULL, 'other'),
(28, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Embed Code', 0, NULL, 'embed', NULL, '{SITE_URL}userfiles/modules/embed/embed.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 38, NULL, 1, 0, NULL, 0, 0, '0.5', NULL, NULL, 'other, content'),
(29, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Facebook Like', 0, NULL, 'facebook_like', NULL, '{SITE_URL}userfiles/modules/facebook_like/facebook_like.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 10, NULL, 1, 0, NULL, 0, 0, '0.06', NULL, NULL, 'social'),
(30, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Facebook page', 0, NULL, 'facebook_page', 'Facebook page integration for your website!', '{SITE_URL}userfiles/modules/facebook_page/facebook_page.svg', '', NULL, NULL, NULL, 1, 1, 11, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, NULL, 'social'),
(31, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'FAQ', 0, NULL, 'faq', NULL, '{SITE_URL}userfiles/modules/faq/faq.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 57, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, '{\"translatable_options\":[\"settings\"]}', 'other'),
(32, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Files', 0, NULL, 'files', NULL, '{SITE_URL}userfiles/modules/files/files.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 20, NULL, 1, 1, NULL, 0, 0, '0.2', NULL, NULL, 'media'),
(33, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Google Maps', 0, NULL, 'google_maps', NULL, '{SITE_URL}userfiles/modules/google_maps/google_maps.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 19, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'other'),
(34, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Help', 0, NULL, 'help', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 80, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'help'),
(35, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'highlight_code', 0, NULL, 'highlight_code', NULL, '{SITE_URL}userfiles/modules/highlight_code/highlight_code.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 7, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'other'),
(36, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Image Rollover', 0, NULL, 'image_rollover', NULL, '{SITE_URL}userfiles/modules/image_rollover/image_rollover.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 7, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'media'),
(37, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Include', 0, NULL, 'include', NULL, '{SITE_URL}userfiles/modules/include/include.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 50, NULL, 1, 0, NULL, 0, 0, '0.12', NULL, NULL, 'other'),
(38, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Inline Table', 0, NULL, 'inline_table', 'Microweber', '{SITE_URL}userfiles/modules/default.svg', 'Microweber', 'http://microweber.com/', NULL, NULL, 1, 1, 100, 1, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'content, table, recommended'),
(39, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Layouts', 0, NULL, 'layouts', NULL, '{SITE_URL}userfiles/modules/layouts/layouts.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 99, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, '{\"0\":{\"type\":\"tooltip\",\"title\":\"Spacing\",\"icon\":\"mw-icon-wand\",\"view\":\"quick_settings\"},\"translatable_options\":[\"title\",\"type\",\"icon\",\"view\"]}', 'content'),
(40, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Logo', 0, NULL, 'logo', NULL, '{SITE_URL}userfiles/modules/logo/logo.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 39, NULL, 1, 0, NULL, 0, 0, '1', NULL, '{\"translatable_options\":[\"text\",\"font_family\",\"logotype\",\"logoimage\",\"size\",\"settings\"]}', 'other'),
(41, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Menu', 0, NULL, 'menu', 'Menu de navegação para páginas e links.', '{SITE_URL}userfiles/modules/menu/menu.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 27, NULL, 1, 1, NULL, 0, 0, '0.5', NULL, NULL, 'navigation'),
(42, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Pages Menu', 0, NULL, 'pages', NULL, '{SITE_URL}userfiles/modules/pages/pages.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 28, NULL, 1, 0, NULL, 1, 0, '1.2', NULL, NULL, 'navigation'),
(43, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Pagination', 0, NULL, 'pagination', 'Módulo de paginação para suas postagens!', '{SITE_URL}userfiles/modules/pagination/pagination.svg', 'Bozhidar Slaveykov', NULL, NULL, NULL, 1, 1, 100, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, NULL, 'other'),
(44, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'PDF', 0, NULL, 'pdf', NULL, '{SITE_URL}userfiles/modules/pdf/pdf.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 40, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'other'),
(45, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Picture', 0, NULL, 'picture', 'Picture', '{SITE_URL}userfiles/modules/picture/picture.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 3, 1, 1, 0, NULL, 0, 0, '0.24', NULL, NULL, 'recommended,media,content'),
(46, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Picture Gallery', 0, NULL, 'pictures', NULL, '{SITE_URL}userfiles/modules/pictures/pictures.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 4, NULL, 1, 0, NULL, 1, 0, '1.11', NULL, '[]', 'media'),
(47, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Pop-Up', 0, NULL, 'popup', NULL, '{SITE_URL}userfiles/modules/popup/popup.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 36, NULL, 1, 0, NULL, 0, 0, '1.1', NULL, NULL, 'other'),
(48, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Posts List', 0, NULL, 'posts', NULL, '{SITE_URL}userfiles/modules/posts/posts.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 20, NULL, 1, 0, NULL, 1, 0, '0.1', NULL, NULL, 'content'),
(49, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Rating', 0, NULL, 'rating', 'Microweber', '{SITE_URL}userfiles/modules/rating/rating.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.com', NULL, 1, 0, 100, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, NULL, 'content'),
(50, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Search', 0, NULL, 'search', 'Module to search for content', '{SITE_URL}userfiles/modules/search/search.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/search', NULL, 1, 1, 34, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content'),
(51, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Settings', 0, NULL, 'settings', NULL, '{SITE_URL}userfiles/modules/settings/settings.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 4, NULL, 1, 0, NULL, 1, 0, '0.3', NULL, NULL, 'admin'),
(52, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Website Settings', 0, NULL, 'settings/group/website', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 400, NULL, 1, 0, NULL, 1, 0, '0.3', NULL, '{\"translatable_options\":[\"website_title\",\"website_description\",\"website_keywords\"]}', 'admin'),
(53, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Sharer', 0, NULL, 'sharer', NULL, '{SITE_URL}userfiles/modules/sharer/sharer.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 7, NULL, 1, 0, NULL, 0, 0, '12', NULL, NULL, 'social'),
(54, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Online shop', 0, NULL, 'shop', NULL, '{SITE_URL}userfiles/modules/shop/shop.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 2, NULL, 1, 1, NULL, 0, 0, '0.3', NULL, NULL, 'online shop'),
(55, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Shopping Cart', 0, NULL, 'shop/cart', NULL, '{SITE_URL}userfiles/modules/shop/cart/cart.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 23, NULL, 0, 0, NULL, 0, 0, '0.24', NULL, NULL, 'online shop'),
(56, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Add to cart', 0, NULL, 'shop/cart_add', NULL, '{SITE_URL}userfiles/modules/shop/cart_add/cart_add.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 25, NULL, 0, 0, NULL, 0, 0, '0.26', NULL, NULL, 'online shop'),
(57, '2021-07-02 18:49:50', '2021-07-02 18:49:50', NULL, NULL, NULL, 'Checkout', 0, NULL, 'shop/checkout', NULL, '{SITE_URL}userfiles/modules/shop/checkout/checkout.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 24, NULL, 0, 0, NULL, 0, 0, '0.3', NULL, NULL, 'online shop'),
(58, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Coupons', 0, NULL, 'shop/coupons', NULL, '{SITE_URL}userfiles/modules/shop/coupons/coupons.svg', 'Bozhidar Slaveykov', NULL, NULL, NULL, 1, 0, 26, NULL, 1, 0, NULL, 0, 0, '0.24', NULL, NULL, 'online shop'),
(59, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Customers', 0, NULL, 'shop/customers', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 2, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'online shop'),
(60, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Offers', 0, NULL, 'shop/offers', NULL, '{SITE_URL}userfiles/modules/shop/offers/offers.svg', 'Nick Woolley', NULL, NULL, NULL, 1, 0, 27, NULL, 1, 1, NULL, 0, 0, '1', NULL, '{\"service_provider\":[\"MicroweberPackages\\\\Offer\\\\Providers\\\\EventServiceProvider\",\"MicroweberPackages\\\\Offer\\\\Providers\\\\OfferServiceProvider\"]}', 'online shop'),
(61, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Payments', 0, NULL, 'shop/payments', NULL, '{SITE_URL}userfiles/modules/shop/payments/payments.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 27, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'online shop'),
(62, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Bank Transfer', 0, NULL, 'shop/payments/gateways/bank_transfer', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/bank_transfer/bank_transfer.svg', 'Bozhidar Slaveykov', NULL, NULL, 'payment_gateway', 1, 0, 110, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(63, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Authorize.Net', 0, NULL, 'shop/payments/gateways/omnipay_authorize_aim', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/omnipay_authorize_aim/omnipay_authorize_aim.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 132, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(64, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Mollie payment', 0, NULL, 'shop/payments/gateways/omnipay_mollie', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/omnipay_mollie/omnipay_mollie.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 136, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(65, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Przelewy24', 0, NULL, 'shop/payments/gateways/omnipay_przelewy24', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/omnipay_przelewy24/omnipay_przelewy24.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 136, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(66, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Stripe payment', 0, NULL, 'shop/payments/gateways/omnipay_stripe', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/omnipay_stripe/omnipay_stripe.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 132, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(67, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Paypal Express', 0, NULL, 'shop/payments/gateways/paypal', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/paypal/paypal.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 110, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(68, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Paypal Pro', 0, NULL, 'shop/payments/gateways/paypal_pro', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/paypal_pro/paypal_pro.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 111, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(69, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Pay on delivery', 0, NULL, 'shop/payments/gateways/pay_on_delivery', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/pay_on_delivery/pay_on_delivery.svg', 'D.Velev (colocation.bg)', NULL, NULL, 'payment_gateway', 1, 0, 130, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(70, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'VoguePay payment', 0, NULL, 'shop/payments/gateways/voguepay', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/voguepay/voguepay.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 139, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(71, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Products', 0, NULL, 'shop/products', NULL, '{SITE_URL}userfiles/modules/shop/products/products.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 21, NULL, 1, 0, NULL, 0, 0, '0.41', NULL, NULL, 'online shop'),
(72, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Products filter', 0, NULL, 'shop/products/filter', NULL, '{SITE_URL}userfiles/modules/shop/products/filter/filter.svg', 'Bozhidar Slaveykov', NULL, NULL, NULL, 1, 1, 21, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, '{\"service_provider\":[\"MicroweberPackages\\\\Shop\\\\Products\\\\Filter\\\\ProductFilterServiceProvider\"]}', 'online shop'),
(73, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'ProductsV2', 0, NULL, 'shop/products_v2', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 21, NULL, 1, 0, NULL, 0, 0, '0.41', NULL, '{\"service_provider\":[\"MicroweberPackages\\\\Shop\\\\Products\\\\ProductsServiceProvider\"]}', 'online shop'),
(74, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Shipping', 0, NULL, 'shop/shipping', NULL, '{SITE_URL}userfiles/modules/shop/shipping/shipping.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 26, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'online shop'),
(75, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Shipping to address', 0, NULL, 'shop/shipping/gateways/country', NULL, '{SITE_URL}userfiles/modules/shop/shipping/gateways/country/country.svg', 'Microweber', NULL, NULL, 'shipping_gateway', 1, 0, 100, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, '{\"checkout_position\":1,\"icon_class\":\"mdi mdi-truck-check-outline\",\"help_text\":\"The order will be delivered to your address\",\"service_provider\":[\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Country\\\\ShippingToCountryEventServiceProvider\",\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Country\\\\ShippingToCountryServiceProvider\"]}', 'online shop'),
(76, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Pickup from address', 0, NULL, 'shop/shipping/gateways/pickup', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, 'shipping_gateway', 1, 0, 900, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, '{\"checkout_position\":0,\"icon_class\":\"mdi mdi-walk\",\"help_text\":\"get your order from address below\",\"service_provider\":[\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Pickup\\\\PickupEventServiceProvider\",\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Pickup\\\\PickupServiceProvider\"]}', 'online shop'),
(77, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Taxes', 0, NULL, 'shop/taxes', NULL, '{SITE_URL}userfiles/modules/shop/taxes/taxes.svg', 'Bozhidar Slaveykov', NULL, NULL, NULL, 1, 0, 30, NULL, 1, 0, NULL, 0, 0, '0.24', NULL, NULL, 'online shop'),
(78, '2021-07-02 18:49:51', '2021-07-02 18:49:51', NULL, NULL, NULL, 'Site stats', 0, NULL, 'site_stats', NULL, '{SITE_URL}userfiles/modules/site_stats/site_stats.svg', 'Microweber', NULL, NULL, 'stats', 1, 0, 30, NULL, 1, 0, NULL, 0, 0, '0.5', NULL, NULL, NULL),
(79, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Slider', 0, NULL, 'slider', NULL, '{SITE_URL}userfiles/modules/slider/slider.svg', 'Petko Yovchevski', NULL, NULL, NULL, 1, 1, 18, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, '{\"translatable_options\":[\"settings\"]}', 'media'),
(80, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Social Links', 0, NULL, 'social_links', NULL, '{SITE_URL}userfiles/modules/social_links/social_links.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 9, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'social'),
(81, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Table', 0, NULL, 'table', 'Table builder', '{SITE_URL}userfiles/modules/table/table.svg', 'Ezyweb.uk', NULL, NULL, NULL, 1, 1, 99, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content'),
(82, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Tabs', 0, NULL, 'tabs', NULL, '{SITE_URL}userfiles/modules/tabs/tabs.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 52, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, '{\"translatable_options\":[\"settings\"]}', 'other'),
(83, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Tags', 0, NULL, 'tags', 'Módulo de tags para suas postagens!', '{SITE_URL}userfiles/modules/tags/tags.svg', 'Bozhidar Slaveykov', NULL, NULL, NULL, 1, 1, 100, NULL, 1, 1, NULL, 0, 0, '0.1', NULL, NULL, 'other'),
(84, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Team Card', 0, NULL, 'teamcard', NULL, '{SITE_URL}userfiles/modules/teamcard/teamcard.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 57, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, '{\"translatable_options\":[\"settings\"]}', NULL),
(85, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Testimonials', 0, NULL, 'testimonials', NULL, '{SITE_URL}userfiles/modules/testimonials/testimonials.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 99, NULL, 1, 1, NULL, 0, 0, '0.1', NULL, NULL, 'content'),
(86, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Text', 0, NULL, 'text', 'Simple text', '{SITE_URL}userfiles/modules/text/text.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 2, 1, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content, recommended'),
(87, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Empty Element', 0, NULL, 'text/empty_element', 'Microweber', '{SITE_URL}userfiles/modules/text/empty_element.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/title', NULL, 1, 1, 5, 1, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content'),
(88, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Multiple Columns', 0, NULL, 'text/multiple_columns', 'Microweber', '{SITE_URL}userfiles/modules/text/multiple_columns.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/title', NULL, 1, 1, 8, 1, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content, recommended'),
(89, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Title', 0, NULL, 'title', 'Microweber', '{SITE_URL}userfiles/modules/title/title.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/title', NULL, 1, 1, 1, 1, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content, recommended'),
(90, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Tweet Embed', 0, NULL, 'tweet_embed', NULL, '{SITE_URL}userfiles/modules/tweet_embed/tweet_embed.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 14, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'social'),
(91, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Twitter feed', 0, NULL, 'twitter_feed', 'Feed of tweets', '{SITE_URL}userfiles/modules/twitter_feed/twitter_feed.svg', 'Peter Ivanov', NULL, NULL, NULL, 1, 1, 13, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, NULL, 'social'),
(92, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Updates', 0, NULL, 'updates', NULL, '{SITE_URL}userfiles/modules/updates/updates.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 50, NULL, 1, 1, NULL, 1, 0, '0.3', NULL, NULL, 'admin'),
(93, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Users', 0, NULL, 'users', NULL, '{SITE_URL}userfiles/modules/users/users.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 9, NULL, 1, 1, NULL, 1, 0, '0.3', NULL, NULL, NULL),
(94, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Forgot password', 0, NULL, 'users/forgot_password', 'Microweber', '{SITE_URL}userfiles/modules/users/forgot_password/forgot_password.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/users/registration', NULL, 1, 1, 31, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'users'),
(95, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Login', 0, NULL, 'users/login', NULL, '{SITE_URL}userfiles/modules/users/login/login.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 32, NULL, 0, 0, NULL, 0, 0, '0.2', NULL, NULL, 'users'),
(96, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'User Address', 0, NULL, 'users/profile/address', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Bozhidar Slaveykov', NULL, NULL, NULL, 1, 0, 9, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, NULL, NULL),
(97, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Registration', 0, NULL, 'users/register', 'Microweber', '{SITE_URL}userfiles/modules/users/register/register.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/users/registration', NULL, 1, 1, 33, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'users'),
(98, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'Video', 0, NULL, 'video', NULL, '{SITE_URL}userfiles/modules/video/video.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 6, NULL, 1, 0, NULL, 0, 0, '1.1', NULL, NULL, 'recommended,media'),
(99, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'White label', 0, NULL, 'white_label', NULL, '{SITE_URL}userfiles/modules/white_label/white_label.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 500, NULL, 1, 1, NULL, 0, 0, '0.3', NULL, '[]', 'advanced'),
(100, '2021-07-02 18:49:52', '2021-07-02 18:49:52', NULL, NULL, NULL, 'White label WHMCS', 0, NULL, 'white_label/whmcs', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 500, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, NULL, 'advanced'),
(101, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Accordion', 0, NULL, 'accordion', NULL, '{SITE_URL}userfiles/modules/accordion/accordion.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 52, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, '{\"translatable_options\":[\"settings\"]}', 'other'),
(102, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Backup', 0, NULL, 'admin/backup', NULL, '{SITE_URL}userfiles/modules/admin/backup/backup.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 500, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'admin'),
(103, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Backup V2', 0, NULL, 'admin/backup_v2', NULL, '{SITE_URL}userfiles/modules/admin/backup_v2/backup_v2.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 99, NULL, 1, 1, NULL, 0, 0, '0.3', NULL, NULL, 'admin'),
(104, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Content Export', 0, NULL, 'admin/content_export', NULL, '{SITE_URL}userfiles/modules/admin/content_export/content_export.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 99, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'admin'),
(105, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Import', 0, NULL, 'admin/import', NULL, '{SITE_URL}userfiles/modules/admin/import/import.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 99, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'admin'),
(106, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Mail Providers', 0, NULL, 'admin/mail_providers', NULL, '{SITE_URL}userfiles/modules/admin/mail_providers/mail_providers.svg', 'Microweber', NULL, NULL, 'mail_providers_configuration', 1, 0, 100, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL),
(107, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'FlexMail', 0, NULL, 'admin/mail_providers/flexmail', NULL, '{SITE_URL}userfiles/modules/admin/mail_providers/flexmail/flexmail.svg', 'Microweber', NULL, NULL, 'mail_provider', 1, 0, 100, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL),
(108, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'MailerLite', 0, NULL, 'admin/mail_providers/mailerlite', NULL, '{SITE_URL}userfiles/modules/admin/mail_providers/mailerlite/mailerlite.svg', 'Microweber', NULL, NULL, 'mail_provider', 1, 0, 100, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL),
(109, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Mail Templates', 0, NULL, 'admin/mail_templates', NULL, '{SITE_URL}userfiles/modules/admin/mail_templates/mail_templates.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 100, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, NULL),
(110, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Queue', 0, NULL, 'admin/mics/queue', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, NULL, 1, 0, NULL, NULL, 1, 0, NULL, 1, 0, '0.3', NULL, NULL, 'admin'),
(111, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Notifications', 0, NULL, 'admin/notifications', NULL, '{SITE_URL}userfiles/modules/admin/notifications/notifications.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 1, NULL, 1, 1, NULL, 1, 0, '0.3', NULL, NULL, 'admin'),
(112, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Ants', 0, NULL, 'ants', 'Formigas ferozes para o seu site!', '{SITE_URL}userfiles/modules/ants/ants.svg', 'Tom Oram', NULL, NULL, NULL, 1, 1, 28, NULL, 1, 0, NULL, 0, 0, '0.05', NULL, NULL, 'other'),
(113, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Audio', 0, NULL, 'audio', 'Microweber', '{SITE_URL}userfiles/modules/audio/audio.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/audio', NULL, 1, 1, 30, NULL, 1, 0, NULL, 0, 0, '0.19', NULL, NULL, 'media'),
(114, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Before/After', 0, NULL, 'beforeafter', NULL, '{SITE_URL}userfiles/modules/beforeafter/beforeafter.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 37, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'other'),
(115, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Breadcrumb', 0, NULL, 'breadcrumb', 'Breadcrumb navigation', '{SITE_URL}userfiles/modules/breadcrumb/breadcrumb.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 54, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'navigation'),
(116, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Button', 0, NULL, 'btn', NULL, '{SITE_URL}userfiles/modules/btn/btn.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 7, NULL, 1, 1, NULL, 1, 0, '0.9', NULL, '{\"translatable_options\":[\"button_action\",\"button_onclick\",\"popupcontent\",\"url_blank\",\"icon\",\"text\",\"url\"]}', 'recommended,navigation'),
(117, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Captcha', 0, NULL, 'captcha', NULL, '{SITE_URL}userfiles/modules/captcha/captcha.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 99, NULL, 0, 1, NULL, 0, 0, '0.1', NULL, NULL, 'other'),
(118, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Carousel Grid', 0, NULL, 'carousel_grid', 'Microweber Carousel Grid', '{SITE_URL}userfiles/modules/carousel_grid/carousel_grid.svg', 'Microweber', 'http://microweber.com/', NULL, NULL, 1, 1, 100, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'media'),
(119, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Categories', 0, NULL, 'categories', NULL, '{SITE_URL}userfiles/modules/categories/categories.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 29, NULL, 1, 0, NULL, 1, 0, '0.1', NULL, NULL, 'navigation'),
(120, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Categories Images', 0, NULL, 'categories/category_images', NULL, '{SITE_URL}userfiles/modules/categories/category_images/category_images.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 51, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, NULL, NULL),
(121, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Comments', 0, NULL, 'comments', NULL, '{SITE_URL}userfiles/modules/comments/comments.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 16, NULL, 1, 1, 1, 0, 0, '0.4', NULL, NULL, 'content'),
(122, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Contact form', 0, NULL, 'contact_form', NULL, '{SITE_URL}userfiles/modules/contact_form/contact_form.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 15, NULL, 1, 1, NULL, 1, 1, '0.2', NULL, '{\"translatable_options\":[\"email_autorespond_subject\",\"email_autorespond\"]}', 'forms'),
(123, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Content', 0, NULL, 'content', 'Mostra conteúdo dinâmico', '{SITE_URL}userfiles/modules/content/content.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 22, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, NULL, 'content'),
(124, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Filter', 0, NULL, 'content_filter', NULL, '{SITE_URL}userfiles/modules/content_filter/content_filter.png', 'Microweber', NULL, NULL, NULL, 1, 0, 200, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content'),
(125, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Cookie Notice', 0, NULL, 'cookie_notice', NULL, '{SITE_URL}userfiles/modules/cookie_notice/cookie_notice.svg', 'Ezyweb.uk', NULL, NULL, NULL, 1, 0, 99, NULL, 1, 1, NULL, 0, 0, '0.1', NULL, NULL, 'content'),
(126, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Custom fields', 0, NULL, 'custom_fields', NULL, '{SITE_URL}userfiles/modules/custom_fields/custom_fields.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 15, NULL, 1, 0, NULL, 1, 0, NULL, NULL, NULL, NULL),
(127, '2021-07-02 18:49:59', '2021-07-02 18:49:59', NULL, NULL, NULL, 'Content Revisions', 0, NULL, 'editor/content_revisions', NULL, '{SITE_URL}userfiles/modules/default.svg', NULL, NULL, NULL, NULL, 1, 0, 28, NULL, 1, 0, NULL, 0, 0, '0.05', NULL, NULL, 'other'),
(128, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Embed Code', 0, NULL, 'embed', NULL, '{SITE_URL}userfiles/modules/embed/embed.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 38, NULL, 1, 0, NULL, 0, 0, '0.5', NULL, NULL, 'other, content'),
(129, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Facebook Like', 0, NULL, 'facebook_like', NULL, '{SITE_URL}userfiles/modules/facebook_like/facebook_like.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 10, NULL, 1, 0, NULL, 0, 0, '0.06', NULL, NULL, 'social'),
(130, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Facebook page', 0, NULL, 'facebook_page', 'Facebook page integration for your website!', '{SITE_URL}userfiles/modules/facebook_page/facebook_page.svg', '', NULL, NULL, NULL, 1, 1, 11, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, NULL, 'social'),
(131, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'FAQ', 0, NULL, 'faq', NULL, '{SITE_URL}userfiles/modules/faq/faq.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 57, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, '{\"translatable_options\":[\"settings\"]}', 'other'),
(132, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Files', 0, NULL, 'files', NULL, '{SITE_URL}userfiles/modules/files/files.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 20, NULL, 1, 1, NULL, 0, 0, '0.2', NULL, NULL, 'media'),
(133, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Google Maps', 0, NULL, 'google_maps', NULL, '{SITE_URL}userfiles/modules/google_maps/google_maps.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 19, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'other'),
(134, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Help', 0, NULL, 'help', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 80, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'help'),
(135, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'highlight_code', 0, NULL, 'highlight_code', NULL, '{SITE_URL}userfiles/modules/highlight_code/highlight_code.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 7, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'other'),
(136, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Image Rollover', 0, NULL, 'image_rollover', NULL, '{SITE_URL}userfiles/modules/image_rollover/image_rollover.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 7, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'media'),
(137, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Include', 0, NULL, 'include', NULL, '{SITE_URL}userfiles/modules/include/include.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 50, NULL, 1, 0, NULL, 0, 0, '0.12', NULL, NULL, 'other'),
(138, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Inline Table', 0, NULL, 'inline_table', 'Microweber', '{SITE_URL}userfiles/modules/default.svg', 'Microweber', 'http://microweber.com/', NULL, NULL, 1, 1, 100, 1, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'content, table, recommended'),
(139, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Layouts', 0, NULL, 'layouts', NULL, '{SITE_URL}userfiles/modules/layouts/layouts.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 99, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, '{\"0\":{\"type\":\"tooltip\",\"title\":\"Spacing\",\"icon\":\"mw-icon-wand\",\"view\":\"quick_settings\"},\"translatable_options\":[\"title\",\"type\",\"icon\",\"view\"]}', 'content'),
(140, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Logo', 0, NULL, 'logo', NULL, '{SITE_URL}userfiles/modules/logo/logo.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 39, NULL, 1, 0, NULL, 0, 0, '1', NULL, '{\"translatable_options\":[\"text\",\"font_family\",\"logotype\",\"logoimage\",\"size\",\"settings\"]}', 'other'),
(141, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Menu', 0, NULL, 'menu', 'Menu de navegação para páginas e links.', '{SITE_URL}userfiles/modules/menu/menu.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 27, NULL, 1, 1, NULL, 0, 0, '0.5', NULL, NULL, 'navigation'),
(142, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Pages Menu', 0, NULL, 'pages', NULL, '{SITE_URL}userfiles/modules/pages/pages.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 28, NULL, 1, 0, NULL, 1, 0, '1.2', NULL, NULL, 'navigation'),
(143, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Pagination', 0, NULL, 'pagination', 'Módulo de paginação para suas postagens!', '{SITE_URL}userfiles/modules/pagination/pagination.svg', 'Bozhidar Slaveykov', NULL, NULL, NULL, 1, 1, 100, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, NULL, 'other'),
(144, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'PDF', 0, NULL, 'pdf', NULL, '{SITE_URL}userfiles/modules/pdf/pdf.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 40, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'other'),
(145, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Picture', 0, NULL, 'picture', 'Picture', '{SITE_URL}userfiles/modules/picture/picture.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 3, 1, 1, 0, NULL, 0, 0, '0.24', NULL, NULL, 'recommended,media,content'),
(146, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Picture Gallery', 0, NULL, 'pictures', NULL, '{SITE_URL}userfiles/modules/pictures/pictures.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 4, NULL, 1, 0, NULL, 1, 0, '1.11', NULL, '[]', 'media'),
(147, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Pop-Up', 0, NULL, 'popup', NULL, '{SITE_URL}userfiles/modules/popup/popup.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 36, NULL, 1, 0, NULL, 0, 0, '1.1', NULL, NULL, 'other'),
(148, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Posts List', 0, NULL, 'posts', NULL, '{SITE_URL}userfiles/modules/posts/posts.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 20, NULL, 1, 0, NULL, 1, 0, '0.1', NULL, NULL, 'content'),
(149, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Rating', 0, NULL, 'rating', 'Microweber', '{SITE_URL}userfiles/modules/rating/rating.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.com', NULL, 1, 0, 100, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, NULL, 'content'),
(150, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Search', 0, NULL, 'search', 'Module to search for content', '{SITE_URL}userfiles/modules/search/search.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/search', NULL, 1, 1, 34, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content'),
(151, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Settings', 0, NULL, 'settings', NULL, '{SITE_URL}userfiles/modules/settings/settings.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 4, NULL, 1, 0, NULL, 1, 0, '0.3', NULL, NULL, 'admin'),
(152, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Website Settings', 0, NULL, 'settings/group/website', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 400, NULL, 1, 0, NULL, 1, 0, '0.3', NULL, '{\"translatable_options\":[\"website_title\",\"website_description\",\"website_keywords\"]}', 'admin'),
(153, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Sharer', 0, NULL, 'sharer', NULL, '{SITE_URL}userfiles/modules/sharer/sharer.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 7, NULL, 1, 0, NULL, 0, 0, '12', NULL, NULL, 'social'),
(154, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Online shop', 0, NULL, 'shop', NULL, '{SITE_URL}userfiles/modules/shop/shop.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 2, NULL, 1, 1, NULL, 0, 0, '0.3', NULL, NULL, 'online shop'),
(155, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Shopping Cart', 0, NULL, 'shop/cart', NULL, '{SITE_URL}userfiles/modules/shop/cart/cart.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 23, NULL, 0, 0, NULL, 0, 0, '0.24', NULL, NULL, 'online shop'),
(156, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Add to cart', 0, NULL, 'shop/cart_add', NULL, '{SITE_URL}userfiles/modules/shop/cart_add/cart_add.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 25, NULL, 0, 0, NULL, 0, 0, '0.26', NULL, NULL, 'online shop'),
(157, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Checkout', 0, NULL, 'shop/checkout', NULL, '{SITE_URL}userfiles/modules/shop/checkout/checkout.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 24, NULL, 0, 0, NULL, 0, 0, '0.3', NULL, NULL, 'online shop'),
(158, '2021-07-02 18:50:00', '2021-07-02 18:50:00', NULL, NULL, NULL, 'Coupons', 0, NULL, 'shop/coupons', NULL, '{SITE_URL}userfiles/modules/shop/coupons/coupons.svg', 'Bozhidar Slaveykov', NULL, NULL, NULL, 1, 0, 26, NULL, 1, 0, NULL, 0, 0, '0.24', NULL, NULL, 'online shop'),
(159, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Customers', 0, NULL, 'shop/customers', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 2, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'online shop'),
(160, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Offers', 0, NULL, 'shop/offers', NULL, '{SITE_URL}userfiles/modules/shop/offers/offers.svg', 'Nick Woolley', NULL, NULL, NULL, 1, 0, 27, NULL, 1, 1, NULL, 0, 0, '1', NULL, '{\"service_provider\":[\"MicroweberPackages\\\\Offer\\\\Providers\\\\EventServiceProvider\",\"MicroweberPackages\\\\Offer\\\\Providers\\\\OfferServiceProvider\"]}', 'online shop'),
(161, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Payments', 0, NULL, 'shop/payments', NULL, '{SITE_URL}userfiles/modules/shop/payments/payments.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 27, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'online shop'),
(162, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Bank Transfer', 0, NULL, 'shop/payments/gateways/bank_transfer', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/bank_transfer/bank_transfer.svg', 'Bozhidar Slaveykov', NULL, NULL, 'payment_gateway', 1, 0, 110, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(163, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Authorize.Net', 0, NULL, 'shop/payments/gateways/omnipay_authorize_aim', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/omnipay_authorize_aim/omnipay_authorize_aim.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 132, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(164, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Mollie payment', 0, NULL, 'shop/payments/gateways/omnipay_mollie', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/omnipay_mollie/omnipay_mollie.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 136, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(165, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Przelewy24', 0, NULL, 'shop/payments/gateways/omnipay_przelewy24', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/omnipay_przelewy24/omnipay_przelewy24.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 136, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(166, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Stripe payment', 0, NULL, 'shop/payments/gateways/omnipay_stripe', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/omnipay_stripe/omnipay_stripe.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 132, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(167, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Paypal Express', 0, NULL, 'shop/payments/gateways/paypal', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/paypal/paypal.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 110, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(168, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Paypal Pro', 0, NULL, 'shop/payments/gateways/paypal_pro', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/paypal_pro/paypal_pro.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 111, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop');
INSERT INTO `bt_modules` (`id`, `updated_at`, `created_at`, `expires_on`, `created_by`, `edited_by`, `name`, `parent_id`, `module_id`, `module`, `description`, `icon`, `author`, `website`, `help`, `type`, `installed`, `ui`, `position`, `as_element`, `allow_caching`, `ui_admin`, `ui_admin_iframe`, `is_system`, `is_integration`, `version`, `notifications`, `settings`, `categories`) VALUES
(169, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Pay on delivery', 0, NULL, 'shop/payments/gateways/pay_on_delivery', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/pay_on_delivery/pay_on_delivery.svg', 'D.Velev (colocation.bg)', NULL, NULL, 'payment_gateway', 1, 0, 130, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(170, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'VoguePay payment', 0, NULL, 'shop/payments/gateways/voguepay', NULL, '{SITE_URL}userfiles/modules/shop/payments/gateways/voguepay/voguepay.svg', 'Microweber', NULL, NULL, 'payment_gateway', 1, 0, 139, NULL, 1, 0, NULL, 0, 0, NULL, NULL, NULL, 'online shop'),
(171, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Products', 0, NULL, 'shop/products', NULL, '{SITE_URL}userfiles/modules/shop/products/products.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 21, NULL, 1, 0, NULL, 0, 0, '0.41', NULL, NULL, 'online shop'),
(172, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Products filter', 0, NULL, 'shop/products/filter', NULL, '{SITE_URL}userfiles/modules/shop/products/filter/filter.svg', 'Bozhidar Slaveykov', NULL, NULL, NULL, 1, 1, 21, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, '{\"service_provider\":[\"MicroweberPackages\\\\Shop\\\\Products\\\\Filter\\\\ProductFilterServiceProvider\"]}', 'online shop'),
(173, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'ProductsV2', 0, NULL, 'shop/products_v2', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 21, NULL, 1, 0, NULL, 0, 0, '0.41', NULL, '{\"service_provider\":[\"MicroweberPackages\\\\Shop\\\\Products\\\\ProductsServiceProvider\"]}', 'online shop'),
(174, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Shipping', 0, NULL, 'shop/shipping', NULL, '{SITE_URL}userfiles/modules/shop/shipping/shipping.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 26, NULL, 1, 0, NULL, 0, 0, '0.3', NULL, NULL, 'online shop'),
(175, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Shipping to address', 0, NULL, 'shop/shipping/gateways/country', NULL, '{SITE_URL}userfiles/modules/shop/shipping/gateways/country/country.svg', 'Microweber', NULL, NULL, 'shipping_gateway', 1, 0, 100, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, '{\"checkout_position\":1,\"icon_class\":\"mdi mdi-truck-check-outline\",\"help_text\":\"The order will be delivered to your address\",\"service_provider\":[\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Country\\\\ShippingToCountryEventServiceProvider\",\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Country\\\\ShippingToCountryServiceProvider\"]}', 'online shop'),
(176, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Pickup from address', 0, NULL, 'shop/shipping/gateways/pickup', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, 'shipping_gateway', 1, 0, 900, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, '{\"checkout_position\":0,\"icon_class\":\"mdi mdi-walk\",\"help_text\":\"get your order from address below\",\"service_provider\":[\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Pickup\\\\PickupEventServiceProvider\",\"MicroweberPackages\\\\Shop\\\\Shipping\\\\Gateways\\\\Pickup\\\\PickupServiceProvider\"]}', 'online shop'),
(177, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Taxes', 0, NULL, 'shop/taxes', NULL, '{SITE_URL}userfiles/modules/shop/taxes/taxes.svg', 'Bozhidar Slaveykov', NULL, NULL, NULL, 1, 0, 30, NULL, 1, 0, NULL, 0, 0, '0.24', NULL, NULL, 'online shop'),
(178, '2021-07-02 18:50:01', '2021-07-02 18:50:01', NULL, NULL, NULL, 'Site stats', 0, NULL, 'site_stats', NULL, '{SITE_URL}userfiles/modules/site_stats/site_stats.svg', 'Microweber', NULL, NULL, 'stats', 1, 0, 30, NULL, 1, 0, NULL, 0, 0, '0.5', NULL, NULL, NULL),
(179, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Slider', 0, NULL, 'slider', NULL, '{SITE_URL}userfiles/modules/slider/slider.svg', 'Petko Yovchevski', NULL, NULL, NULL, 1, 1, 18, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, '{\"translatable_options\":[\"settings\"]}', 'media'),
(180, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Social Links', 0, NULL, 'social_links', NULL, '{SITE_URL}userfiles/modules/social_links/social_links.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 9, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'social'),
(181, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Table', 0, NULL, 'table', 'Table builder', '{SITE_URL}userfiles/modules/table/table.svg', 'Ezyweb.uk', NULL, NULL, NULL, 1, 1, 99, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content'),
(182, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Tabs', 0, NULL, 'tabs', NULL, '{SITE_URL}userfiles/modules/tabs/tabs.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 52, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, '{\"translatable_options\":[\"settings\"]}', 'other'),
(183, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Tags', 0, NULL, 'tags', 'Módulo de tags para suas postagens!', '{SITE_URL}userfiles/modules/tags/tags.svg', 'Bozhidar Slaveykov', NULL, NULL, NULL, 1, 1, 100, NULL, 1, 1, NULL, 0, 0, '0.1', NULL, NULL, 'other'),
(184, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Team Card', 0, NULL, 'teamcard', NULL, '{SITE_URL}userfiles/modules/teamcard/teamcard.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 57, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, '{\"translatable_options\":[\"settings\"]}', NULL),
(185, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Testimonials', 0, NULL, 'testimonials', NULL, '{SITE_URL}userfiles/modules/testimonials/testimonials.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 99, NULL, 1, 1, NULL, 0, 0, '0.1', NULL, NULL, 'content'),
(186, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Text', 0, NULL, 'text', 'Simple text', '{SITE_URL}userfiles/modules/text/text.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 2, 1, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content, recommended'),
(187, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Empty Element', 0, NULL, 'text/empty_element', 'Microweber', '{SITE_URL}userfiles/modules/text/empty_element.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/title', NULL, 1, 1, 5, 1, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content'),
(188, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Multiple Columns', 0, NULL, 'text/multiple_columns', 'Microweber', '{SITE_URL}userfiles/modules/text/multiple_columns.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/title', NULL, 1, 1, 8, 1, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content, recommended'),
(189, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Title', 0, NULL, 'title', 'Microweber', '{SITE_URL}userfiles/modules/title/title.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/title', NULL, 1, 1, 1, 1, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'content, recommended'),
(190, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Tweet Embed', 0, NULL, 'tweet_embed', NULL, '{SITE_URL}userfiles/modules/tweet_embed/tweet_embed.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 14, NULL, 1, 0, NULL, 0, 0, '1', NULL, NULL, 'social'),
(191, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Twitter feed', 0, NULL, 'twitter_feed', 'Feed of tweets', '{SITE_URL}userfiles/modules/twitter_feed/twitter_feed.svg', 'Peter Ivanov', NULL, NULL, NULL, 1, 1, 13, NULL, 1, 0, NULL, 0, 0, '0.01', NULL, NULL, 'social'),
(192, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Updates', 0, NULL, 'updates', NULL, '{SITE_URL}userfiles/modules/updates/updates.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 50, NULL, 1, 1, NULL, 1, 0, '0.3', NULL, NULL, 'admin'),
(193, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Users', 0, NULL, 'users', NULL, '{SITE_URL}userfiles/modules/users/users.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 9, NULL, 1, 1, NULL, 1, 0, '0.3', NULL, NULL, NULL),
(194, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Forgot password', 0, NULL, 'users/forgot_password', 'Microweber', '{SITE_URL}userfiles/modules/users/forgot_password/forgot_password.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/users/registration', NULL, 1, 1, 31, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'users'),
(195, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Login', 0, NULL, 'users/login', NULL, '{SITE_URL}userfiles/modules/users/login/login.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 32, NULL, 0, 0, NULL, 0, 0, '0.2', NULL, NULL, 'users'),
(196, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'User Address', 0, NULL, 'users/profile/address', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Bozhidar Slaveykov', NULL, NULL, NULL, 1, 0, 9, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, NULL, NULL),
(197, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Registration', 0, NULL, 'users/register', 'Microweber', '{SITE_URL}userfiles/modules/users/register/register.svg', 'Microweber', 'http://microweber.com/', 'http://microweber.info/modules/users/registration', NULL, 1, 1, 33, NULL, 1, 0, NULL, 0, 0, '0.2', NULL, NULL, 'users'),
(198, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'Video', 0, NULL, 'video', NULL, '{SITE_URL}userfiles/modules/video/video.svg', 'Microweber', NULL, NULL, NULL, 1, 1, 6, NULL, 1, 0, NULL, 0, 0, '1.1', NULL, NULL, 'recommended,media'),
(199, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'White label', 0, NULL, 'white_label', NULL, '{SITE_URL}userfiles/modules/white_label/white_label.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 500, NULL, 1, 1, NULL, 0, 0, '0.3', NULL, '[]', 'advanced'),
(200, '2021-07-02 18:50:02', '2021-07-02 18:50:02', NULL, NULL, NULL, 'White label WHMCS', 0, NULL, 'white_label/whmcs', NULL, '{SITE_URL}userfiles/modules/default.svg', 'Microweber', NULL, NULL, NULL, 1, 0, 500, NULL, 1, 0, NULL, 0, 0, '0.1', NULL, NULL, 'advanced');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_module_templates`
--

DROP TABLE IF EXISTS `bt_module_templates`;
CREATE TABLE IF NOT EXISTS `bt_module_templates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `module_id` text COLLATE utf8_unicode_ci,
  `name` text COLLATE utf8_unicode_ci,
  `module` text COLLATE utf8_unicode_ci,
  `module_attrs` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_notifications`
--

DROP TABLE IF EXISTS `bt_notifications`;
CREATE TABLE IF NOT EXISTS `bt_notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `bt_oauth_personal_access_clients`;
CREATE TABLE IF NOT EXISTS `bt_oauth_personal_access_clients` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_offers`
--

DROP TABLE IF EXISTS `bt_offers`;
CREATE TABLE IF NOT EXISTS `bt_offers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `price_id` int DEFAULT NULL,
  `offer_price` double(8,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_options`
--

DROP TABLE IF EXISTS `bt_options`;
CREATE TABLE IF NOT EXISTS `bt_options` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `option_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_value` longtext COLLATE utf8_unicode_ci,
  `option_key2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option_value2` text COLLATE utf8_unicode_ci,
  `position` int DEFAULT NULL,
  `option_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `help` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_values` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_system` int DEFAULT NULL,
  `option_value_prev` longtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_options`
--

INSERT INTO `bt_options` (`id`, `updated_at`, `created_at`, `option_key`, `option_value`, `option_key2`, `option_value2`, `position`, `option_group`, `name`, `help`, `field_type`, `field_values`, `module`, `is_system`, `option_value_prev`) VALUES
(1, '2020-01-21 10:14:04', '2020-01-21 10:14:04', 'current_template', 'new-world', NULL, NULL, NULL, 'template', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(2, '2021-07-02 18:49:57', '2020-01-21 10:14:04', 'language', 'pt_BR', NULL, NULL, NULL, 'website', NULL, NULL, NULL, NULL, NULL, 1, NULL),
(3, '2021-04-27 14:12:17', '2020-01-21 10:14:04', 'website_title', 'Site name', NULL, NULL, NULL, 'website', NULL, NULL, NULL, NULL, 'settings/group/website', 1, NULL),
(4, '2021-04-27 13:55:46', NULL, 'enable_comments', '', NULL, NULL, NULL, 'comments', NULL, NULL, NULL, NULL, 'comments/settings', NULL, NULL),
(5, '2021-04-12 14:24:17', NULL, 'shipping_gw_shop/shipping/gateways/country', 'y', NULL, NULL, NULL, 'shipping', NULL, NULL, NULL, NULL, 'shop/shipping', NULL, NULL),
(6, '2021-02-10 11:37:22', NULL, 'payment_gw_shop/payments/gateways/paypal', '', NULL, NULL, NULL, 'payments', NULL, NULL, NULL, NULL, 'shop/payments', NULL, NULL),
(7, '2021-07-02 19:14:34', NULL, 'currency', 'BRL', NULL, NULL, NULL, 'payments', NULL, NULL, NULL, NULL, 'shop/payments/currency', NULL, NULL),
(8, '2020-01-27 11:48:04', '2020-01-21 10:14:39', 'size', 'auto', NULL, NULL, NULL, 'header-logo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2021-04-27 11:01:53', '2020-01-21 10:14:39', 'logoimage', '{SITE_URL}userfiles/media/127.0.0.7/logo-dark.png', NULL, NULL, NULL, 'header-logo', NULL, NULL, NULL, NULL, 'logo', NULL, NULL),
(10, '2020-01-27 11:48:49', '2020-01-21 10:21:22', 'settings', '[{\"images\":\"{SITE_URL}userfiles/media/templates.microweber.com/slide-1.jpg\",\"primaryText\":\"This is the default<br />template of Microweber\",\"secondaryText\":\"Drag and drop open-source website builder and <br />CMS of new generation.\",\"seemoreText\":\"Read More\",\"url\":\"\",\"urlText\":\"\",\"skin\":\"left\",\"icon\":\"\"},{\"images\":\"{SITE_URL}userfiles/media/templates.microweber.com/slide-2.jpg\",\"primaryText\":\"This is the default<br />template of Microweber\",\"secondaryText\":\"Drag and drop open-source website builder and <br />CMS of new generation.\",\"seemoreText\":\"Read More\",\"url\":\"\",\"urlText\":\"\",\"skin\":\"right\",\"icon\":\"\"}]', NULL, NULL, NULL, 'module-layouts-1-slider', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, '2020-01-21 10:29:46', '2020-01-21 10:24:54', 'settings', '[{\"images\":\"{SITE_URL}userfiles/media/templates.microweber.com/img-7.png\",\"primaryText\":\"\",\"secondaryText\":\"\",\"seemoreText\":\"\",\"url\":\"\",\"urlText\":\"\",\"skin\":\"default\",\"icon\":\"<span class=\\\"mw-icon mw-micon- mw-micon-Car-3\\\"></span>\"},{\"images\":\"{SITE_URL}userfiles/media/templates.microweber.com/lsJ9jHKIqHg-1600.jpg\",\"primaryText\":\"\",\"secondaryText\":\"\",\"seemoreText\":\"\",\"url\":\"\",\"urlText\":\"\",\"skin\":\"default\",\"icon\":\"<span class=\\\"mw-icon mw-micon- mw-micon-Battery-100\\\"></span>\"},{\"images\":\"{SITE_URL}userfiles/media/templates.microweber.com/L4-16dmZ-1c-1600.jpg\",\"primaryText\":\"\",\"secondaryText\":\"\",\"seemoreText\":\"\",\"url\":\"\",\"urlText\":\"\",\"skin\":\"default\",\"icon\":\"<span class=\\\"mw-icon mw-micon- mw-micon-Idea-5\\\"></span>\"}]', NULL, NULL, NULL, 'module-layouts-1--14-slider', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, '2020-01-21 14:08:44', '2020-01-21 14:08:44', 'controls', 'true', NULL, NULL, NULL, 'module-layouts-1-slider', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '2020-01-21 14:33:23', '2020-01-21 14:29:03', 'settings', '[{\"images\":\"{SITE_URL}userfiles/media/templates.microweber.com/feature-1.jpg\",\"primaryText\":\"My Slider\",\"secondaryText\":\"Microweber is one of the best website builders and CMS in the world. Use it for your own project, website or online store, for free!\",\"seemoreText\":\"See more\",\"url\":\"\",\"urlText\":\"\",\"skin\":\"default\",\"icon\":\"<span class=\\\"mw-icon mw-micon- mw-micon-Like-2\\\"></span>\"},{\"images\":\"{SITE_URL}userfiles/media/templates.microweber.com/feature-2.jpg\",\"primaryText\":\"It Is Free\",\"secondaryText\":\"Microweber is one of the best website builders and CMS in the world. Use it for your own project, website or online store, for free!\",\"seemoreText\":\"See more\",\"url\":\"\",\"urlText\":\"\",\"skin\":\"default\",\"icon\":\"<span class=\\\"mw-icon mw-micon- mw-micon-Hand\\\"></span>\"},{\"images\":\"{SITE_URL}userfiles/media/templates.microweber.com/feature-3.jpg\",\"primaryText\":\"It Is Powerful\",\"secondaryText\":\"Microweber is one of the best website builders and CMS in the world. Use it for your own project, website or online store, for free!\",\"seemoreText\":\"See more\",\"url\":\"\",\"urlText\":\"\",\"skin\":\"default\",\"icon\":\"<span class=\\\"mw-icon mw-micon- mw-micon-Bodybuilding\\\"></span>\"}]', NULL, NULL, NULL, 'module-layouts-1--21-slider', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '2020-01-21 14:34:57', '2020-01-21 14:34:57', 'facebook_enabled', 'y', NULL, NULL, NULL, 'footer_socials', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '2020-01-21 14:34:58', '2020-01-21 14:34:58', 'twitter_enabled', 'y', NULL, NULL, NULL, 'footer_socials', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '2020-01-21 14:34:59', '2020-01-21 14:34:59', 'youtube_enabled', 'y', NULL, NULL, NULL, 'footer_socials', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '2020-01-22 14:10:07', '2020-01-22 14:10:07', 'fields_make_default4115320604', '1', NULL, NULL, NULL, 'make_default_custom_fields', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, '2020-01-22 14:10:07', '2020-01-22 14:10:07', 'fields_make_default219634127', '1', NULL, NULL, NULL, 'make_default_custom_fields', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, '2020-01-22 14:10:13', '2020-01-22 14:10:13', 'fields_make_default4163937061', '1', NULL, NULL, NULL, 'make_default_custom_fields', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, '2020-01-22 14:10:24', '2020-01-22 14:10:24', 'facebook_enabled', 'y', NULL, NULL, NULL, 'module-layouts-5--1-social-links', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, '2020-01-22 14:10:24', '2020-01-22 14:10:24', 'twitter_enabled', 'y', NULL, NULL, NULL, 'module-layouts-5--1-social-links', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, '2020-01-22 14:10:26', '2020-01-22 14:10:26', 'youtube_enabled', 'y', NULL, NULL, NULL, 'module-layouts-5--1-social-links', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, '2020-01-27 10:49:31', '2020-01-27 10:49:31', 'fields_make_default1599011735', '1', NULL, NULL, NULL, 'make_default_custom_fields', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, '2020-01-27 10:49:34', '2020-01-27 10:49:34', 'fields_make_default1099213446', '1', NULL, NULL, NULL, 'make_default_custom_fields', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, '2020-01-27 10:59:00', '2020-01-27 10:59:00', 'facebook_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, '2020-01-27 10:59:00', '2020-01-27 10:59:00', 'twitter_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2020-01-27 10:59:01', '2020-01-27 10:59:01', 'pinterest_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, '2020-01-27 10:59:05', '2020-01-27 10:59:05', 'youtube_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, '2020-01-27 10:59:06', '2020-01-27 10:59:06', 'linkedin_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, '2020-01-27 10:59:07', '2020-01-27 10:59:07', 'github_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, '2020-01-27 10:59:11', '2020-01-27 10:59:11', 'instagram_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, '2020-01-27 10:59:12', '2020-01-27 10:59:12', 'soundcloud_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, '2020-01-27 10:59:12', '2020-01-27 10:59:12', 'mixcloud_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, '2020-01-27 10:59:19', '2020-01-27 10:59:19', 'medium_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, '2020-01-27 10:59:19', '2020-01-27 10:59:19', 'soundcloud_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, '2020-01-27 10:59:20', '2020-01-27 10:59:20', 'instagram_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, '2020-01-27 10:59:28', '2020-01-27 10:59:28', 'linkedin_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, '2020-01-27 10:59:28', '2020-01-27 10:59:28', 'instagram_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, '2020-01-27 10:59:30', '2020-01-27 10:59:30', 'facebook_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, '2020-01-27 10:59:35', '2020-01-27 10:59:35', 'googleplus_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, '2020-01-27 10:59:35', '2020-01-27 10:59:35', 'pinterest_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, '2020-01-27 10:59:36', '2020-01-27 10:59:36', 'twitter_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--5-social-links--3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, '2020-01-27 11:02:49', '2020-01-27 10:59:53', 'settings', '{\"0\":{\"name\":\"Johny Doe\",\"role\":\"Marketing\",\"bio\":\"SEO and Marketing\",\"file\":\"{SITE_URL}userfiles/media/templates.microweber.com/people-1.jpg\",\"id\":\"1580122785715\"},\"1\":{\"name\":\"John Doe\",\"role\":\"Developers\",\"bio\":\"Back-End Developer\",\"file\":\"{SITE_URL}userfiles/media/templates.microweber.com/people-2.jpg\",\"id\":\"1580122785713\"},\"2\":{\"name\":\"Jinna Doe\",\"role\":\"Designers\",\"bio\":\"UI/UX Designer\",\"file\":\"{SITE_URL}userfiles/media/templates.microweber.com/people-4.jpg\",\"id\":\"1580122785711\"},\"3\":{\"name\":\"Fari Ismail\",\"role\":\"Designers\",\"bio\":\"Interface designer\",\"file\":\"{SITE_URL}userfiles/media/templates.microweber.com/people-3_1.jpg\",\"id\":\"module-layouts-6--6-teamcard5e2ec2a135fb5\"}}', NULL, NULL, NULL, 'module-layouts-6--6-teamcard', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, '2020-01-27 11:04:02', '2020-01-27 11:04:02', 'facebook_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--6-teamcard-social-links', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, '2020-01-27 11:04:03', '2020-01-27 11:04:03', 'twitter_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--6-teamcard-social-links', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, '2020-01-27 11:04:03', '2020-01-27 11:04:03', 'pinterest_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--6-teamcard-social-links', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, '2020-01-27 11:04:08', '2020-01-27 11:04:08', 'youtube_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--6-teamcard-social-links--1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, '2020-01-27 11:04:08', '2020-01-27 11:04:08', 'linkedin_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--6-teamcard-social-links--1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, '2020-01-27 11:07:03', '2020-01-27 11:04:09', 'github_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--6-teamcard-social-links--1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, '2020-01-27 11:04:14', '2020-01-27 11:04:14', 'github_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--6-teamcard-social-links--2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, '2020-01-27 11:04:14', '2020-01-27 11:04:14', 'instagram_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--6-teamcard-social-links--2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, '2020-01-27 11:04:16', '2020-01-27 11:04:16', 'facebook_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--6-teamcard-social-links--2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, '2020-01-27 11:04:21', '2020-01-27 11:04:21', 'facebook_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--6-teamcard-social-links--3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, '2020-01-27 11:04:21', '2020-01-27 11:04:21', 'twitter_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--6-teamcard-social-links--3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, '2020-01-27 11:04:22', '2020-01-27 11:04:22', 'linkedin_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--6-teamcard-social-links--3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, '2020-01-27 11:06:40', '2020-01-27 11:06:40', 'linkedin_enabled', 'y', NULL, NULL, NULL, 'module-layouts-6--6-teamcard-social-links--2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, '2020-01-27 11:14:03', '2020-01-27 11:14:03', 'show_testimonials_per_project', 'Opinions', NULL, NULL, NULL, 'module-layouts-6--7-testimonials', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, '2020-01-27 11:14:29', '2020-01-27 11:14:29', 'show_testimonials_per_project', 'Testimonials', NULL, NULL, NULL, 'module-layouts-1--18-testimonials', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, '2020-01-27 11:21:26', '2020-01-27 11:21:18', 'padding-top', '8', NULL, NULL, NULL, 'module-layouts-6--1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, '2020-01-27 11:21:33', '2020-01-27 11:21:33', 'padding-bottom', '8', NULL, NULL, NULL, 'module-layouts-6--1', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, '2020-01-27 11:28:02', '2020-01-27 11:28:02', 'padding-top', 'none', NULL, NULL, NULL, 'layouts-20200127112745', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, '2020-01-27 11:28:11', '2020-01-27 11:28:11', 'padding-bottom', '2', NULL, NULL, NULL, 'module-layouts-6--5', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, '2020-01-27 11:28:48', '2020-01-27 11:28:48', 'data-template', 'bootstrap.php', NULL, NULL, NULL, 'btn-20200127112839', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, '2020-01-27 11:28:56', '2020-01-27 11:28:56', 'button_style', 'btn-primary', NULL, NULL, NULL, 'btn-20200127112839', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, '2020-01-27 11:29:05', '2020-01-27 11:29:04', 'text', 'See Our Portfolio', NULL, NULL, NULL, 'btn-20200127112839', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, '2020-01-27 11:29:09', '2020-01-27 11:29:09', 'button_size', 'btn-default-medium btn-md', NULL, NULL, NULL, 'btn-20200127112839', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, '2020-01-27 11:34:44', '2020-01-27 11:34:41', 'padding-top', '7', NULL, NULL, NULL, 'module-layouts-6--8', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, '2020-01-27 11:34:45', '2020-01-27 11:34:45', 'padding-bottom', '7', NULL, NULL, NULL, 'module-layouts-6--8', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, '2020-01-27 11:40:03', '2020-01-27 11:40:03', 'padding-bottom', '10', NULL, NULL, NULL, 'module-layouts-6--6', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, '2020-01-27 11:40:44', '2020-01-27 11:40:44', 'prior', '1', NULL, NULL, NULL, 'module-layouts-6--4-video', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, '2020-01-27 11:40:44', '2020-01-27 11:40:44', 'embed_url', 'https://vimeo.com/98679934', NULL, NULL, NULL, 'module-layouts-6--4-video', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, '2020-01-27 11:48:04', '2020-01-27 11:48:04', 'logoimage_inverse', '{SITE_URL}userfiles/media/templates.microweber.com/logo-dark.png', NULL, NULL, NULL, 'header-logo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, '2021-07-02 19:32:47', '2020-01-27 11:50:31', 'text', 'Ler mais', NULL, NULL, NULL, 'module-layouts-1--5-btn', NULL, NULL, NULL, NULL, 'btn', NULL, NULL),
(74, '2020-01-27 11:51:15', '2020-01-27 11:51:15', 'prior', '1', NULL, NULL, NULL, 'module-layouts-1--5-video', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, '2020-01-27 11:51:15', '2020-01-27 11:51:15', 'embed_url', 'https://vimeo.com/22439234', NULL, NULL, NULL, 'module-layouts-1--5-video', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, '2020-01-27 11:52:05', '2020-01-27 11:52:00', 'search_string', 'microweber', NULL, NULL, NULL, 'module-layouts-1--24-twitter-feed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, '2020-01-27 11:52:08', '2020-01-27 11:52:08', 'number_of_items', '1', NULL, NULL, NULL, 'module-layouts-1--24-twitter-feed', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, '2020-01-30 09:54:15', '2020-01-30 09:54:15', 'padding-top', '10', NULL, NULL, NULL, 'module-layouts-7--4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, '2020-01-30 09:54:27', '2020-01-30 09:54:17', 'padding-bottom', '20', NULL, NULL, NULL, 'module-layouts-7--4', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, '2020-01-30 09:54:59', '2020-01-30 09:54:59', 'padding-bottom', '15', NULL, NULL, NULL, 'module-layouts-7--2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, '2020-01-30 09:56:16', '2020-01-30 09:56:16', 'padding-bottom', '10', NULL, NULL, NULL, 'module-layouts-5--3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, '2020-01-30 09:56:28', '2020-01-30 09:56:19', 'padding-top', '7', NULL, NULL, NULL, 'module-layouts-5--3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, '2020-01-30 09:57:41', '2020-01-30 09:57:23', 'padding-top', '', NULL, NULL, NULL, 'module-layouts-6--2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, '2020-01-30 09:57:52', '2020-01-30 09:57:52', 'padding-top', '5', NULL, NULL, NULL, 'module-layouts-6--3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, '2020-01-30 09:59:00', '2020-01-30 09:58:56', 'padding-top', '3', NULL, NULL, NULL, 'module-layouts-1--3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, '2020-01-30 09:59:10', '2020-01-30 09:59:03', 'padding-bottom', '10', NULL, NULL, NULL, 'module-layouts-1--3', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, '2020-01-30 09:59:48', '2020-01-30 09:59:32', 'padding-top', '10', NULL, NULL, NULL, 'module-layouts-1--8', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, '2020-01-30 10:00:01', '2020-01-30 10:00:01', 'padding-bottom', '10', NULL, NULL, NULL, 'module-layouts-1--8', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, '2020-01-30 10:01:13', '2020-01-30 10:01:09', 'padding-top', '10', NULL, NULL, NULL, 'module-layouts-1--17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, '2020-01-30 10:01:20', '2020-01-30 10:01:16', 'padding-bottom', '2', NULL, NULL, NULL, 'module-layouts-1--17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, '2020-01-30 10:02:13', '2020-01-30 10:02:10', 'padding-bottom', '3', NULL, NULL, NULL, 'module-layouts-1--20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, '2020-01-30 10:02:52', '2020-01-30 10:02:52', 'padding-bottom', 'none', NULL, NULL, NULL, 'module-layouts-1--22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, '2020-01-30 10:03:02', '2020-01-30 10:02:59', 'padding-top', '2', NULL, NULL, NULL, 'module-layouts-1--23', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, '2020-01-30 10:03:18', '2020-01-30 10:03:18', 'padding-bottom', '10', NULL, NULL, NULL, 'module-layouts-1--24', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, '2020-02-04 14:11:28', '2020-02-04 14:11:25', 'data-limit', '4', NULL, NULL, NULL, 'module-shop-products-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, '2021-03-26 15:33:40', '2020-02-04 16:23:24', 'data-page-id', '2', NULL, NULL, NULL, 'module-layouts-1--24-posts', NULL, NULL, NULL, NULL, 'posts', NULL, NULL),
(97, '2020-02-17 08:48:07', '2020-02-17 08:48:07', 'padding-bottom', 'none', NULL, NULL, NULL, 'module-layouts-2', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, '2020-02-17 08:48:24', '2020-02-17 08:48:22', 'data-limit', '6', NULL, NULL, NULL, 'module-layouts-2--1-posts', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, '2020-02-17 08:48:33', '2020-02-17 08:48:33', 'data-page-id', '2', NULL, NULL, NULL, 'module-layouts-2--1-posts', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, '2020-02-17 09:26:57', '2020-02-17 09:26:57', 'facebook_enabled', 'y', NULL, NULL, NULL, 'post-bottom-sharer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, '2020-02-17 09:26:58', '2020-02-17 09:26:58', 'twitter_enabled', 'y', NULL, NULL, NULL, 'post-bottom-sharer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, '2020-02-17 09:54:48', '2020-02-17 09:54:48', 'facebook_enabled', 'y', NULL, NULL, NULL, 'product-top-sharer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, '2020-02-17 09:54:48', '2020-02-17 09:54:48', 'twitter_enabled', 'y', NULL, NULL, NULL, 'product-top-sharer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, '2021-02-09 13:09:55', '2021-02-09 13:09:55', 'enable_taxes', '1', NULL, NULL, NULL, 'shop', NULL, NULL, NULL, NULL, 'shop/taxes', NULL, NULL),
(105, '2021-02-09 13:10:25', '2021-02-09 13:10:25', 'enable_coupons', '1', NULL, NULL, NULL, 'shop', NULL, NULL, NULL, NULL, 'shop/coupons', NULL, NULL),
(106, '2021-04-12 14:24:52', '2021-02-09 13:11:00', 'payment_gw_shop/payments/gateways/pay_on_delivery', '1', NULL, NULL, NULL, 'payments', NULL, NULL, NULL, NULL, 'shop/payments', NULL, NULL),
(107, '2021-02-10 12:10:07', '2021-02-09 13:11:01', 'payment_gw_shop/payments/gateways/omnipay_stripe', '1', NULL, NULL, NULL, 'payments', NULL, NULL, NULL, NULL, 'shop/payments', NULL, NULL),
(108, '2021-02-10 11:38:21', '2021-02-10 11:38:21', 'shipping_weight_units', 'kg', NULL, NULL, NULL, 'orders', NULL, NULL, NULL, NULL, 'shop/shipping/set_units', NULL, NULL),
(109, '2021-02-10 11:39:16', '2021-02-10 11:38:52', 'website_description', 'Best open source website builder and CMS', NULL, NULL, NULL, 'website', NULL, NULL, NULL, NULL, 'settings/group/website', NULL, NULL),
(110, '2021-02-10 11:39:39', '2021-02-10 11:39:23', 'website_keywords', 'Create a website, Build online store, CMS, Website builder', NULL, NULL, NULL, 'website', NULL, NULL, NULL, NULL, 'settings/group/website', NULL, NULL),
(111, '2021-03-26 14:34:24', '2021-02-10 11:56:48', 'is_active', 'n', NULL, NULL, NULL, 'multilanguage_settings', NULL, NULL, NULL, NULL, 'multilanguage/language_settings', NULL, NULL),
(112, '2021-02-10 12:09:55', '2021-02-10 12:09:55', 'shipping_gw_shop/shipping/gateways/pickup', 'y', NULL, NULL, NULL, 'shipping', NULL, NULL, NULL, NULL, 'shop/shipping', NULL, NULL),
(113, '2021-02-10 12:10:03', '2021-02-10 12:10:03', 'payment_gw_shop/payments/gateways/bank_transfer', '1', NULL, NULL, NULL, 'payments', NULL, NULL, NULL, NULL, 'shop/payments', NULL, NULL),
(114, '2021-04-12 14:24:52', '2021-02-10 12:10:06', 'payment_gw_shop/payments/gateways/paypal_pro', '1', NULL, NULL, NULL, 'payments', NULL, NULL, NULL, NULL, 'shop/payments', NULL, NULL),
(117, '2021-03-26 14:51:38', '2021-03-26 14:51:38', 'header_style', 'header_style_2', NULL, NULL, NULL, 'mw-template-new-world-settings', NULL, NULL, NULL, NULL, 'editor/template_settings', NULL, NULL),
(118, '2021-03-26 14:52:55', '2021-03-26 14:52:55', 'sticky_navigation', 'sticky-nav', NULL, NULL, NULL, 'mw-template-new-world-settings', NULL, NULL, NULL, NULL, 'editor/template_settings', NULL, NULL),
(121, '2021-04-27 11:08:24', '2021-04-27 11:08:24', 'fields_makeDefault4163937061', '1', NULL, NULL, NULL, 'make_default_custom_fields', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, '2021-04-27 11:29:51', '2021-04-27 11:29:51', 'menu_name', 'footer_menu', NULL, NULL, NULL, 'footer_menu', NULL, NULL, NULL, NULL, 'menu', NULL, NULL),
(123, '2021-04-27 13:38:38', '2021-04-27 13:37:49', 'data-template', 'default', NULL, NULL, NULL, 'module-layouts-1--11-testimonials', NULL, NULL, NULL, NULL, 'admin/modules/templates', NULL, NULL),
(131, '2021-04-27 14:00:50', '2021-04-27 14:00:19', 'search_string', 'technology', NULL, NULL, NULL, 'module-layouts-1--12-twitter-feed', NULL, NULL, NULL, NULL, 'twitter_feed', NULL, NULL),
(133, '2021-04-29 06:55:57', '2021-04-28 10:43:04', 'data-template', 'skin-1.php', NULL, NULL, NULL, 'tags-20210428080235', NULL, NULL, NULL, NULL, 'admin/modules/templates', NULL, NULL),
(134, '2021-04-28 10:43:34', '2021-04-28 10:43:34', 'data-template', 'skin-1.php', NULL, NULL, NULL, 'tags-20210428104323', NULL, NULL, NULL, NULL, 'admin/modules/templates', NULL, NULL),
(152, '2021-04-29 07:02:53', '2021-04-29 07:02:52', 'data-template', 'lite.php', NULL, NULL, NULL, 'tags-20210429070242', NULL, NULL, NULL, NULL, 'admin/modules/templates', NULL, NULL),
(155, '2021-04-29 08:20:30', '2021-04-29 08:20:30', 'favicon_image', '', NULL, NULL, NULL, 'website', NULL, NULL, NULL, NULL, 'settings/group/website', NULL, NULL),
(156, '2021-04-29 08:23:28', '2021-04-29 08:23:28', 'data-template', 'default', NULL, NULL, NULL, 'module-tags-8', NULL, NULL, NULL, NULL, 'admin/modules/templates', NULL, NULL),
(157, '2021-07-02 19:48:18', '2021-07-02 19:48:18', 'date_format', 'd-m-Y H:i', NULL, NULL, NULL, 'website', NULL, NULL, NULL, NULL, 'settings/group/website', NULL, NULL),
(158, '2021-07-02 19:54:44', '2021-07-02 19:54:44', 'text', 'Ler mais', NULL, NULL, NULL, 'module-layouts-1--6-btn', NULL, NULL, NULL, NULL, 'btn', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_password_resets`
--

DROP TABLE IF EXISTS `bt_password_resets`;
CREATE TABLE IF NOT EXISTS `bt_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_permissions`
--

DROP TABLE IF EXISTS `bt_permissions`;
CREATE TABLE IF NOT EXISTS `bt_permissions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_personal_access_tokens`
--

DROP TABLE IF EXISTS `bt_personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `bt_personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_rating`
--

DROP TABLE IF EXISTS `bt_rating`;
CREATE TABLE IF NOT EXISTS `bt_rating` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `rel_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_rating`
--

INSERT INTO `bt_rating` (`id`, `rel_type`, `rel_id`, `rating`, `comment`, `updated_at`, `created_at`, `created_by`, `edited_by`, `session_id`) VALUES
(1, 'content', '12', 5, NULL, '2020-02-11 09:31:59', '2020-02-11 09:31:59', NULL, NULL, 'E9BLVQcOyAwiBd5WJAX5k66ZCKV8LM4HRGcqDFLU'),
(2, 'content', '9', 5, NULL, '2021-02-09 13:09:04', '2021-02-09 13:09:04', 1, 1, 'z5j6HBnP6RQzJtZ8riJXpzsG6YKGDuPESCZr6wAP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_roles`
--

DROP TABLE IF EXISTS `bt_roles`;
CREATE TABLE IF NOT EXISTS `bt_roles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_role_has_permissions`
--

DROP TABLE IF EXISTS `bt_role_has_permissions`;
CREATE TABLE IF NOT EXISTS `bt_role_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_sessions`
--

DROP TABLE IF EXISTS `bt_sessions`;
CREATE TABLE IF NOT EXISTS `bt_sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_stats_browser_agents`
--

DROP TABLE IF EXISTS `bt_stats_browser_agents`;
CREATE TABLE IF NOT EXISTS `bt_stats_browser_agents` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `browser_agent` text COLLATE utf8_unicode_ci,
  `browser_agent_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser_version` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_desktop` int DEFAULT NULL,
  `is_mobile` int DEFAULT NULL,
  `is_phone` int DEFAULT NULL,
  `is_tablet` int DEFAULT NULL,
  `robot_name` text COLLATE utf8_unicode_ci,
  `is_robot` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_stats_geoip`
--

DROP TABLE IF EXISTS `bt_stats_geoip`;
CREATE TABLE IF NOT EXISTS `bt_stats_geoip` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_stats_referrers`
--

DROP TABLE IF EXISTS `bt_stats_referrers`;
CREATE TABLE IF NOT EXISTS `bt_stats_referrers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `referrer` text COLLATE utf8_unicode_ci,
  `referrer_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referrer_domain_id` int DEFAULT NULL,
  `referrer_path_id` int DEFAULT NULL,
  `is_internal` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_stats_referrers_domains`
--

DROP TABLE IF EXISTS `bt_stats_referrers_domains`;
CREATE TABLE IF NOT EXISTS `bt_stats_referrers_domains` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `referrer_domain` text COLLATE utf8_unicode_ci,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_stats_referrers_paths`
--

DROP TABLE IF EXISTS `bt_stats_referrers_paths`;
CREATE TABLE IF NOT EXISTS `bt_stats_referrers_paths` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `referrer_domain_id` int DEFAULT NULL,
  `referrer_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_stats_sessions`
--

DROP TABLE IF EXISTS `bt_stats_sessions`;
CREATE TABLE IF NOT EXISTS `bt_stats_sessions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `session_hostname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `browser_id` int DEFAULT NULL,
  `referrer_id` int DEFAULT NULL,
  `referrer_domain_id` int DEFAULT NULL,
  `referrer_path_id` int DEFAULT NULL,
  `geoip_id` int DEFAULT NULL,
  `language` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_stats_urls`
--

DROP TABLE IF EXISTS `bt_stats_urls`;
CREATE TABLE IF NOT EXISTS `bt_stats_urls` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `url_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_stats_visits_log`
--

DROP TABLE IF EXISTS `bt_stats_visits_log`;
CREATE TABLE IF NOT EXISTS `bt_stats_visits_log` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `url_id` int DEFAULT NULL,
  `referrer_id` int DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `session_id_key` int DEFAULT NULL,
  `view_count` int DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_system_licenses`
--

DROP TABLE IF EXISTS `bt_system_licenses`;
CREATE TABLE IF NOT EXISTS `bt_system_licenses` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `rel_type` text COLLATE utf8_unicode_ci,
  `rel_id` text COLLATE utf8_unicode_ci,
  `local_key` text COLLATE utf8_unicode_ci,
  `local_key_hash` text COLLATE utf8_unicode_ci,
  `registered_name` text COLLATE utf8_unicode_ci,
  `company_name` text COLLATE utf8_unicode_ci,
  `domains` text COLLATE utf8_unicode_ci,
  `status` text COLLATE utf8_unicode_ci,
  `product_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `billing_cycle` text COLLATE utf8_unicode_ci,
  `reg_on` datetime DEFAULT NULL,
  `due_on` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_tagging_tagged`
--

DROP TABLE IF EXISTS `bt_tagging_tagged`;
CREATE TABLE IF NOT EXISTS `bt_tagging_tagged` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `taggable_id` int UNSIGNED NOT NULL,
  `taggable_type` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `tag_name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `tag_slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `tag_description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `tagging_tagged_taggable_id_index` (`taggable_id`),
  KEY `tagging_tagged_taggable_type_index` (`taggable_type`),
  KEY `tagging_tagged_tag_slug_index` (`tag_slug`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_tagging_tagged`
--

INSERT INTO `bt_tagging_tagged` (`id`, `taggable_id`, `taggable_type`, `tag_name`, `tag_slug`, `tag_description`) VALUES
(4, 9, 'content', 'Iwatch', 'iwatch', NULL),
(5, 9, 'content', 'Apple', 'apple', NULL),
(6, 9, 'content', 'Watch', 'watch', NULL),
(9, 10, 'content', 'Jbl', 'jbl', NULL),
(10, 10, 'content', 'Speakers', 'speakers', NULL),
(13, 11, 'content', 'Apple', 'apple', NULL),
(14, 11, 'content', 'Computer', 'computer', NULL),
(17, 12, 'content', 'Speaker', 'speaker', NULL),
(18, 12, 'content', 'Jbl', 'jbl', NULL),
(21, 13, 'content', 'Speaker', 'speaker', NULL),
(22, 13, 'content', 'Amazon', 'amazon', NULL),
(24, 14, 'content', 'Speaker', 'speaker', NULL),
(27, 15, 'content', 'Camera', 'camera', NULL),
(28, 15, 'content', 'Accessoaries', 'accessoaries', NULL),
(31, 17, 'content', 'Diving', 'diving', NULL),
(32, 17, 'content', 'Islands', 'islands', NULL),
(34, 18, 'content', 'Travel', 'travel', NULL),
(37, 18, 'content', 'Usa', 'usa', NULL),
(38, 18, 'content', 'West', 'west', NULL),
(42, 19, 'content', 'Yacht', 'yacht', NULL),
(43, 19, 'content', 'Summer', 'summer', NULL),
(44, 19, 'content', 'Sea', 'sea', NULL),
(47, 20, 'content', 'Travel', 'travel', NULL),
(48, 20, 'content', 'World', 'world', NULL),
(49, 21, 'content', 'Travel', 'travel', NULL),
(50, 21, 'content', 'Usa', 'usa', NULL),
(51, 17, 'content', 'Apple', 'apple', ''),
(52, 17, 'content', 'aaaa', 'aaaa', ''),
(53, 17, 'content', 'aaaa', 'aaaa', ''),
(54, 17, 'content', 'Yacht', 'yacht', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_tagging_tags`
--

DROP TABLE IF EXISTS `bt_tagging_tags`;
CREATE TABLE IF NOT EXISTS `bt_tagging_tags` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `suggest` int NOT NULL DEFAULT '0',
  `count` int UNSIGNED NOT NULL DEFAULT '0',
  `tag_group_id` int UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `tagging_tags_slug_index` (`slug`),
  KEY `tagging_tags_tag_group_id_foreign` (`tag_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_tagging_tags`
--

INSERT INTO `bt_tagging_tags` (`id`, `slug`, `name`, `suggest`, `count`, `tag_group_id`, `description`) VALUES
(1, 'iwatch', 'Iwatch', 0, 1, NULL, ''),
(2, 'apple', 'Apple', 0, 2, NULL, ''),
(3, 'watch', 'Watch', 0, 1, NULL, ''),
(4, 'jbl', 'Jbl', 0, 2, NULL, ''),
(5, 'speakers', 'Speakers', 0, 1, NULL, ''),
(6, 'computer', 'Computer', 0, 1, NULL, ''),
(7, 'speaker', 'Speaker', 0, 3, NULL, ''),
(8, 'amazon', 'Amazon', 0, 1, NULL, ''),
(9, 'camera', 'Camera', 0, 1, NULL, ''),
(10, 'accessoaries', 'Accessoaries', 0, 1, NULL, ''),
(11, 'diving', 'Diving', 0, 1, NULL, ''),
(12, 'islands', 'Islands', 0, 1, NULL, ''),
(13, 'travel', 'Travel', 0, 2, NULL, ''),
(14, 'usa', 'Usa', 0, 1, NULL, ''),
(15, 'west', 'West', 0, 1, NULL, ''),
(16, 'yacht', 'Yacht', 0, 1, NULL, ''),
(17, 'summer', 'Summer', 0, 1, NULL, ''),
(18, 'sea', 'Sea', 0, 1, NULL, ''),
(19, 'world', 'World', 0, 1, NULL, ''),
(20, 'aaaa', 'aaaa', 0, 0, NULL, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_tagging_tag_groups`
--

DROP TABLE IF EXISTS `bt_tagging_tag_groups`;
CREATE TABLE IF NOT EXISTS `bt_tagging_tag_groups` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(125) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagging_tag_groups_slug_index` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_taxes`
--

DROP TABLE IF EXISTS `bt_taxes`;
CREATE TABLE IF NOT EXISTS `bt_taxes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `tax_type_id` int UNSIGNED NOT NULL,
  `invoice_id` int UNSIGNED DEFAULT NULL,
  `invoice_item_id` int UNSIGNED DEFAULT NULL,
  `item_id` int UNSIGNED DEFAULT NULL,
  `company_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `amount` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` decimal(5,2) NOT NULL,
  `compound_tax` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_tax_types`
--

DROP TABLE IF EXISTS `bt_tax_types`;
CREATE TABLE IF NOT EXISTS `bt_tax_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate` decimal(5,2) NOT NULL,
  `compound_tax` tinyint NOT NULL DEFAULT '0',
  `collective_tax` tinyint NOT NULL DEFAULT '0',
  `description` text COLLATE utf8_unicode_ci,
  `company_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_tax_types`
--

INSERT INTO `bt_tax_types` (`id`, `name`, `type`, `rate`, `compound_tax`, `collective_tax`, `description`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'VAT', 'percent', '20.00', 0, 0, '', NULL, '2021-02-09 16:10:02', '2021-02-09 16:10:14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_terms_accept_log`
--

DROP TABLE IF EXISTS `bt_terms_accept_log`;
CREATE TABLE IF NOT EXISTS `bt_terms_accept_log` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `tos_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `user_ip` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_testimonials`
--

DROP TABLE IF EXISTS `bt_testimonials`;
CREATE TABLE IF NOT EXISTS `bt_testimonials` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `read_more_url` text COLLATE utf8_unicode_ci,
  `created_on` datetime DEFAULT NULL,
  `project_name` text COLLATE utf8_unicode_ci,
  `client_company` text COLLATE utf8_unicode_ci,
  `client_role` text COLLATE utf8_unicode_ci,
  `client_picture` text COLLATE utf8_unicode_ci,
  `client_website` text COLLATE utf8_unicode_ci,
  `position` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_testimonials`
--

INSERT INTO `bt_testimonials` (`id`, `name`, `content`, `read_more_url`, `created_on`, `project_name`, `client_company`, `client_role`, `client_picture`, `client_website`, `position`) VALUES
(1, 'João Pedro', 'Uau, este é realmente um ótimo construtor de sites. Eu amo isso! Consegui criar um site sozinho de uma maneira muito fácil. Definitivamente, recomendo a todos os meus amigos e colegas.\r\nObrigada!', '', NULL, 'Testimonials', '', 'CEO e marketing', '{SITE_URL}userfiles/media/templates.microweber.com/testimonial.png', '', NULL),
(2, 'Janaina Almeida', 'Uau, este é realmente um ótimo construtor de sites. Eu amo isso! Consegui criar um site sozinho de uma maneira muito fácil. Definitivamente, recomendo a todos os meus amigos e colegas.\r\nObrigada!', '', NULL, 'Testimonials', '', 'Fisioterapeuta', '{SITE_URL}userfiles/media/templates.microweber.com/athenathemes-tribe-10.png', '', NULL),
(3, 'Natalia Aguiar', 'É um fato estabelecido há muito tempo que um leitor se distrairá com o conteúdo legível de uma página ao examinar seu layout.', '', NULL, 'Opinions', '', '', '{SITE_URL}userfiles/media/templates.microweber.com/team3.jpg', '', NULL),
(4, 'Ivan Gregório', 'É um fato estabelecido há muito tempo que um leitor se distrairá com o conteúdo legível de uma página ao examinar seu layout.', '', NULL, 'Opinions', '', '', '{SITE_URL}userfiles/media/templates.microweber.com/team1_1.jpg', '', NULL),
(5, 'Jonatan Joel', 'É um fato estabelecido há muito tempo que um leitor se distrairá com o conteúdo legível de uma página ao examinar seu layout.', '', NULL, 'Opinions', '', '', '{SITE_URL}userfiles/media/templates.microweber.com/team2.jpg', '', NULL),
(6, 'João Alfredo', 'É um fato estabelecido há muito tempo que um leitor se distrairá com o conteúdo legível de uma página ao examinar seu layout.', '', NULL, 'Opinions', '', '', '{SITE_URL}userfiles/media/templates.microweber.com/team6.jpg', '', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_translation_keys`
--

DROP TABLE IF EXISTS `bt_translation_keys`;
CREATE TABLE IF NOT EXISTS `bt_translation_keys` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `translation_namespace` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `translation_group` varchar(255) COLLATE utf8_bin NOT NULL,
  `translation_key` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `translation_keys_translation_group_index` (`translation_group`),
  KEY `translation_keys_translation_namespace_index` (`translation_namespace`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `bt_translation_keys`
--

INSERT INTO `bt_translation_keys` (`id`, `translation_namespace`, `translation_group`, `translation_key`) VALUES
(1, '*', '*', '4 months ago'),
(2, 'templates-new-world', '*', 'Hi'),
(3, 'templates-new-world', '*', 'Profile'),
(4, 'templates-new-world', '*', 'My Orders'),
(5, 'templates-new-world', '*', 'Admin panel'),
(6, 'templates-new-world', '*', 'Logout'),
(7, '', '*', 'My Orders'),
(8, 'templates-new-world', '*', 'Categories'),
(9, 'templates-new-world', '*', 'Tags'),
(10, 'templates-new-world', '*', 'About Us'),
(11, 'templates-new-world', '*', 'We\'re a digital focussed collective working with individuals and businesses to establish rich, engaging online presences.'),
(12, 'templates-new-world', '*', 'Microweber is free open source drag and drop website builder and CMS. It is under MIT license and we use Laravel PHP framework'),
(13, 'templates-new-world', '*', 'Social Networks'),
(14, 'templates-new-world', '*', 'Back to Login'),
(15, 'templates-new-world', '*', 'Search'),
(16, 'templates-new-world', '*', 'Thank You'),
(17, 'templates-new-world', '*', 'Your message successfully sent'),
(18, '*', '*', '404'),
(19, '*', '*', 'Edit your design from here.'),
(20, 'templates-new-world', '*', 'Color'),
(21, 'templates-new-world', '*', 'Default Button'),
(22, 'templates-new-world', '*', 'Underlined White Link'),
(23, 'templates-new-world', '*', 'Blue Link'),
(24, 'templates-new-world', '*', 'Size'),
(25, 'templates-new-world', '*', 'Large'),
(26, 'templates-new-world', '*', 'Large Block'),
(27, 'templates-new-world', '*', 'Medium'),
(28, 'templates-new-world', '*', 'Medium Block'),
(29, '*', '*', 'Show only with tags'),
(30, 'templates-new-world', '*', 'Pager'),
(31, 'templates-new-world', '*', 'False'),
(32, 'templates-new-world', '*', 'True'),
(33, 'templates-new-world', '*', 'Controls'),
(34, 'templates-new-world', '*', 'Loop'),
(35, 'templates-new-world', '*', 'Adaptive Height'),
(36, 'templates-new-world', '*', 'Autoplay Speed'),
(37, 'templates-new-world', '*', 'Pause on hover'),
(38, 'templates-new-world', '*', 'Autoplay'),
(39, 'templates-new-world', '*', 'Draggable'),
(40, 'templates-new-world', '*', 'Fade'),
(41, 'templates-new-world', '*', 'Focus On Select'),
(42, 'templates-new-world', '*', 'Center Padding'),
(43, '*', '*', 'Página de edição'),
(44, '*', '*', 'Live Edit elements'),
(45, '*', '*', 'Setup statistics'),
(46, '*', '*', 'If you have a Google Tag Manager account, you can verify ownership of a site using your Google Tag Manager container snippet code. To verify ownership using Google Tag Manager: Choose Google Tag Manager in the verification details page for your site, and follow the instructions shown.'),
(47, '*', '*', 'Dev'),
(48, '*', '*', 'Editando postagem'),
(49, '*', '*', 'Target attribute'),
(50, '*', '*', 'Open the link in New window, Current window, Parent window or Top window'),
(51, '*', '*', 'Select image for menu item'),
(52, '*', '*', 'Attach image for the item'),
(53, '*', '*', 'Choose font size for your logo'),
(54, '*', '*', 'More fonts');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_translation_texts`
--

DROP TABLE IF EXISTS `bt_translation_texts`;
CREATE TABLE IF NOT EXISTS `bt_translation_texts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `translation_key_id` int NOT NULL,
  `translation_text` text COLLATE utf8_unicode_ci NOT NULL,
  `translation_locale` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translation_texts_translation_key_id_index` (`translation_key_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_users`
--

DROP TABLE IF EXISTS `bt_users`;
CREATE TABLE IF NOT EXISTS `bt_users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `expires_on` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_login_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `edited_by` int DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_active` int DEFAULT NULL,
  `is_admin` int DEFAULT NULL,
  `is_verified` int DEFAULT NULL,
  `is_public` int DEFAULT NULL,
  `basic_mode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `api_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_information` text COLLATE utf8_unicode_ci,
  `subscr_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `medium` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oauth_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oauth_provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `oauth_token` text COLLATE utf8_unicode_ci,
  `oauth_token_secret` text COLLATE utf8_unicode_ci,
  `profile_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_hash` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_is_admin_index` (`is_admin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `bt_users`
--

INSERT INTO `bt_users` (`id`, `updated_at`, `created_at`, `expires_on`, `last_login`, `last_login_ip`, `created_by`, `edited_by`, `username`, `password`, `email`, `remember_token`, `is_active`, `is_admin`, `is_verified`, `is_public`, `basic_mode`, `first_name`, `middle_name`, `last_name`, `phone`, `thumbnail`, `parent_id`, `api_key`, `user_information`, `subscr_id`, `role`, `medium`, `oauth_uid`, `oauth_provider`, `oauth_token`, `oauth_token_secret`, `profile_url`, `website_url`, `password_reset_hash`, `email_verified_at`) VALUES
(1, '2021-07-02 18:50:04', '2021-07-02 18:50:04', NULL, '2021-07-02 18:50:04', '::1', NULL, 1, 'valentin', '$2y$10$zSIoGVXIQCg1ygjr7PnJwef3VGtVo3t2frn9xW50LhmO6WAiQA1qi', 'valteramirvalentin@gmail.com', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bt_users_oauth`
--

DROP TABLE IF EXISTS `bt_users_oauth`;
CREATE TABLE IF NOT EXISTS `bt_users_oauth` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_raw` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
