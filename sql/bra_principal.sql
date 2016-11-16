-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 16-Nov-2016 às 16:50
-- Versão do servidor: 5.7.16
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bra_principal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `account_data`
--

CREATE TABLE `account_data` (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `bank_vault` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `base_exp` smallint(6) UNSIGNED NOT NULL DEFAULT '100',
  `base_drop` smallint(6) UNSIGNED NOT NULL DEFAULT '100',
  `base_death` smallint(6) UNSIGNED NOT NULL DEFAULT '100'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `acc_reg_num_db`
--

CREATE TABLE `acc_reg_num_db` (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `acc_reg_num_db`
--

INSERT INTO `acc_reg_num_db` (`account_id`, `key`, `index`, `value`) VALUES
(2000000, '#Check', 0, 2),
(2000001, '#Check', 0, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `acc_reg_str_db`
--

CREATE TABLE `acc_reg_str_db` (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` varchar(254) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `auction`
--

CREATE TABLE `auction` (
  `auction_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `seller_name` varchar(30) NOT NULL DEFAULT '',
  `buyer_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `buyer_name` varchar(30) NOT NULL DEFAULT '',
  `price` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `buynow` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hours` smallint(6) NOT NULL DEFAULT '0',
  `timestamp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `item_name` varchar(50) NOT NULL DEFAULT '',
  `type` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autotrade_data`
--

CREATE TABLE `autotrade_data` (
  `char_id` int(11) NOT NULL DEFAULT '0',
  `itemkey` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `price` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `autotrade_merchants`
--

CREATE TABLE `autotrade_merchants` (
  `account_id` int(11) NOT NULL DEFAULT '0',
  `char_id` int(11) NOT NULL DEFAULT '0',
  `sex` tinyint(2) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL DEFAULT 'Buy From Me!'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cart_inventory`
--

CREATE TABLE `cart_inventory` (
  `id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL DEFAULT '0',
  `nameid` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `equip` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` tinyint(4) NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `bound` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `char`
--

CREATE TABLE `char` (
  `char_id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `char_num` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(30) NOT NULL DEFAULT '',
  `class` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `base_level` smallint(6) UNSIGNED NOT NULL DEFAULT '1',
  `job_level` smallint(6) UNSIGNED NOT NULL DEFAULT '1',
  `base_exp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `job_exp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `zeny` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `str` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `agi` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `vit` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `int` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `dex` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `luk` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `max_hp` int(9) UNSIGNED NOT NULL DEFAULT '0',
  `hp` int(9) UNSIGNED NOT NULL DEFAULT '0',
  `max_sp` int(9) UNSIGNED NOT NULL DEFAULT '0',
  `sp` int(9) UNSIGNED NOT NULL DEFAULT '0',
  `status_point` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `skill_point` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `option` int(11) NOT NULL DEFAULT '0',
  `karma` tinyint(3) NOT NULL DEFAULT '0',
  `manner` smallint(6) NOT NULL DEFAULT '0',
  `party_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pet_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `homun_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `elemental_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hair` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `hair_color` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `clothes_color` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `body` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `weapon` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `shield` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `head_top` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `head_mid` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `head_bottom` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `robe` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `last_map` varchar(11) NOT NULL DEFAULT '',
  `last_x` smallint(4) UNSIGNED NOT NULL DEFAULT '53',
  `last_y` smallint(4) UNSIGNED NOT NULL DEFAULT '111',
  `save_map` varchar(11) NOT NULL DEFAULT '',
  `save_x` smallint(4) UNSIGNED NOT NULL DEFAULT '53',
  `save_y` smallint(4) UNSIGNED NOT NULL DEFAULT '111',
  `partner_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `online` tinyint(2) NOT NULL DEFAULT '0',
  `father` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `mother` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `child` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `fame` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `rename` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `delete_date` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `slotchange` smallint(3) UNSIGNED NOT NULL DEFAULT '0',
  `char_opt` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `font` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `unban_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `uniqueitem_counter` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `sex` enum('M','F','U') NOT NULL DEFAULT 'U',
  `hotkey_rowshift` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `char`
--

INSERT INTO `char` (`char_id`, `account_id`, `char_num`, `name`, `class`, `base_level`, `job_level`, `base_exp`, `job_exp`, `zeny`, `str`, `agi`, `vit`, `int`, `dex`, `luk`, `max_hp`, `hp`, `max_sp`, `sp`, `status_point`, `skill_point`, `option`, `karma`, `manner`, `party_id`, `guild_id`, `pet_id`, `homun_id`, `elemental_id`, `hair`, `hair_color`, `clothes_color`, `body`, `weapon`, `shield`, `head_top`, `head_mid`, `head_bottom`, `robe`, `last_map`, `last_x`, `last_y`, `save_map`, `save_x`, `save_y`, `partner_id`, `online`, `father`, `mother`, `child`, `fame`, `rename`, `delete_date`, `slotchange`, `char_opt`, `font`, `unban_time`, `uniqueitem_counter`, `sex`, `hotkey_rowshift`) VALUES
(150001, 2000001, 0, 'Old Times', 0, 1, 1, 0, 0, 0, 1, 1, 1, 1, 1, 1, 40, 40, 11, 11, 48, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'new_1-1', 50, 107, 'new_1-1', 53, 111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'U', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `charlog`
--

CREATE TABLE `charlog` (
  `time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `char_msg` varchar(255) NOT NULL DEFAULT 'char select',
  `account_id` int(11) NOT NULL DEFAULT '0',
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `char_num` tinyint(4) NOT NULL DEFAULT '0',
  `name` varchar(23) NOT NULL DEFAULT '',
  `str` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `agi` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `vit` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `INT` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `dex` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `luk` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hair` tinyint(4) NOT NULL DEFAULT '0',
  `hair_color` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `charlog`
--

INSERT INTO `charlog` (`time`, `char_msg`, `account_id`, `char_id`, `char_num`, `name`, `str`, `agi`, `vit`, `INT`, `dex`, `luk`, `hair`, `hair_color`) VALUES
('2016-10-29 09:02:16', 'make new char', 2000000, 150000, 0, 'Sabino', 1, 1, 1, 1, 1, 1, 1, 0),
('2016-10-29 09:02:17', 'char select', 2000000, 150000, 0, 'Sabino', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-11-09 11:31:23', 'char select', 2000000, 150000, 0, 'Sabino', 0, 0, 0, 0, 0, 0, 0, 0),
('2016-11-16 15:35:38', 'make new char', 2000001, 150001, 0, 'Old Times', 1, 1, 1, 1, 1, 1, 1, 0),
('2016-11-16 15:35:39', 'char select', 2000001, 150001, 0, 'Old Times', 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `char_reg_num_db`
--

CREATE TABLE `char_reg_num_db` (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `char_reg_str_db`
--

CREATE TABLE `char_reg_str_db` (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` varchar(254) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_banlog`
--

CREATE TABLE `cp_banlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `banned_by` int(11) UNSIGNED DEFAULT NULL,
  `ban_type` tinyint(1) NOT NULL,
  `ban_until` datetime NOT NULL,
  `ban_date` datetime NOT NULL,
  `ban_reason` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_charprefs`
--

CREATE TABLE `cp_charprefs` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Character preferences.';

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_createlog`
--

CREATE TABLE `cp_createlog` (
  `id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `userid` varchar(23) NOT NULL,
  `user_pass` varchar(32) NOT NULL,
  `sex` enum('M','F','S') NOT NULL DEFAULT 'M',
  `email` varchar(39) NOT NULL,
  `reg_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reg_ip` varchar(100) NOT NULL,
  `delete_date` datetime DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '1',
  `confirm_code` varchar(32) DEFAULT NULL,
  `confirm_expire` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cp_createlog`
--

INSERT INTO `cp_createlog` (`id`, `account_id`, `userid`, `user_pass`, `sex`, `email`, `reg_date`, `reg_ip`, `delete_date`, `confirmed`, `confirm_code`, `confirm_expire`) VALUES
(1, 2000001, 'gabrielbdcxd', 'f4eb36550b253778ebd1baa91f6fee99', 'F', 'gabriel_sabino@hotmail.com', '2016-11-16 15:03:55', '138.36.35.208', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_credits`
--

CREATE TABLE `cp_credits` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `balance` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_donation_date` datetime DEFAULT NULL,
  `last_donation_amount` float UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Donation credits balance for a given account.';

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_donate`
--

CREATE TABLE `cp_donate` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `userid` varchar(23) NOT NULL,
  `email` varchar(39) NOT NULL,
  `payment_date` datetime NOT NULL,
  `payment_id` varchar(50) NOT NULL,
  `payment` float NOT NULL,
  `payment_ip` varchar(35) NOT NULL,
  `payment_type` varchar(23) NOT NULL,
  `payment_code` varchar(50) NOT NULL,
  `payment_notification_code` varchar(50) NOT NULL,
  `payment_status` tinyint(3) NOT NULL DEFAULT '0',
  `payment_status_pagseguro` tinyint(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_emailchange`
--

CREATE TABLE `cp_emailchange` (
  `id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `account_id` int(10) NOT NULL,
  `old_email` varchar(39) NOT NULL,
  `new_email` varchar(39) NOT NULL,
  `request_date` datetime NOT NULL,
  `request_ip` varchar(15) NOT NULL,
  `change_date` datetime DEFAULT NULL,
  `change_ip` varchar(15) DEFAULT NULL,
  `change_done` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_ipbanlog`
--

CREATE TABLE `cp_ipbanlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `banned_by` int(11) UNSIGNED DEFAULT NULL,
  `ban_type` tinyint(1) NOT NULL,
  `ban_until` datetime NOT NULL,
  `ban_date` datetime NOT NULL,
  `ban_reason` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_itemshop`
--

CREATE TABLE `cp_itemshop` (
  `id` int(11) UNSIGNED NOT NULL,
  `nameid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `category` int(11) DEFAULT NULL,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cost` int(11) UNSIGNED NOT NULL,
  `info` text,
  `use_existing` tinyint(4) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Item shop';

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_loginlog`
--

CREATE TABLE `cp_loginlog` (
  `id` int(11) NOT NULL,
  `account_id` int(10) DEFAULT NULL,
  `username` varchar(23) NOT NULL,
  `password` varchar(32) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `login_date` datetime NOT NULL,
  `error_code` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cp_loginlog`
--

INSERT INTO `cp_loginlog` (`id`, `account_id`, `username`, `password`, `ip`, `login_date`, `error_code`) VALUES
(1, 2000000, 'sabino', 'sabino', '127.0.0.1', '2016-11-16 14:30:05', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_loginprefs`
--

CREATE TABLE `cp_loginprefs` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(80) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Account preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_onlinepeak`
--

CREATE TABLE `cp_onlinepeak` (
  `id` int(10) UNSIGNED NOT NULL,
  `users` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_pwchange`
--

CREATE TABLE `cp_pwchange` (
  `id` int(11) NOT NULL,
  `account_id` int(10) NOT NULL,
  `old_password` varchar(32) NOT NULL,
  `new_password` varchar(32) DEFAULT NULL,
  `change_date` datetime NOT NULL,
  `change_ip` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_redeemlog`
--

CREATE TABLE `cp_redeemlog` (
  `id` int(11) UNSIGNED NOT NULL,
  `nameid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cost` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED DEFAULT NULL,
  `redeemed` tinyint(1) UNSIGNED NOT NULL,
  `redemption_date` datetime DEFAULT NULL,
  `purchase_date` datetime NOT NULL,
  `credits_before` int(10) NOT NULL,
  `credits_after` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Log of redeemed donation items.';

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_resetpass`
--

CREATE TABLE `cp_resetpass` (
  `id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `account_id` int(10) NOT NULL,
  `old_password` varchar(32) NOT NULL,
  `new_password` varchar(32) DEFAULT NULL,
  `request_date` datetime NOT NULL,
  `request_ip` varchar(15) NOT NULL,
  `reset_date` datetime DEFAULT NULL,
  `reset_ip` varchar(15) DEFAULT NULL,
  `reset_done` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_tasklist`
--

CREATE TABLE `cp_tasklist` (
  `id` int(6) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `author` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `priority` int(1) NOT NULL DEFAULT '0',
  `assigned` varchar(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_taskliststaff`
--

CREATE TABLE `cp_taskliststaff` (
  `account_id` int(7) NOT NULL,
  `account_name` varchar(32) NOT NULL,
  `preferred_name` varchar(32) NOT NULL,
  `emailalerts` int(1) NOT NULL DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_trusted`
--

CREATE TABLE `cp_trusted` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `create_date` datetime NOT NULL,
  `delete_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_txnlog`
--

CREATE TABLE `cp_txnlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED DEFAULT '0',
  `server_name` varchar(255) DEFAULT NULL,
  `credits` int(11) DEFAULT '0',
  `receiver_email` varchar(60) DEFAULT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `item_number` varchar(10) DEFAULT NULL,
  `quantity` varchar(6) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `pending_reason` varchar(20) DEFAULT NULL,
  `payment_date` varchar(40) DEFAULT NULL,
  `mc_gross` varchar(20) DEFAULT NULL,
  `mc_fee` varchar(20) DEFAULT NULL,
  `tax` varchar(20) DEFAULT NULL,
  `mc_currency` varchar(3) DEFAULT NULL,
  `parent_txn_id` varchar(20) DEFAULT NULL,
  `txn_id` varchar(20) DEFAULT NULL,
  `txn_type` varchar(20) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `address_street` varchar(50) DEFAULT NULL,
  `address_city` varchar(30) DEFAULT NULL,
  `address_state` varchar(30) DEFAULT NULL,
  `address_zip` varchar(20) DEFAULT NULL,
  `address_country` varchar(30) DEFAULT NULL,
  `address_status` varchar(10) DEFAULT NULL,
  `payer_email` varchar(60) DEFAULT NULL,
  `payer_status` varchar(10) DEFAULT NULL,
  `payment_type` varchar(10) DEFAULT NULL,
  `notify_version` varchar(10) DEFAULT NULL,
  `verify_sign` varchar(255) DEFAULT NULL,
  `referrer_id` varchar(10) DEFAULT NULL,
  `process_date` datetime DEFAULT NULL,
  `hold_until` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='All PayPal transactions that go through the IPN handler.';

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_v4p_sites`
--

CREATE TABLE `cp_v4p_sites` (
  `site_id` int(10) UNSIGNED NOT NULL,
  `address` text NOT NULL,
  `points` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `blocking_time` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `banner` blob,
  `banner_url` text,
  `site_name` varchar(50) NOT NULL,
  `banner_file_type` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_v4p_votelogs`
--

CREATE TABLE `cp_v4p_votelogs` (
  `rtid` int(10) UNSIGNED NOT NULL,
  `f_site_id` int(10) UNSIGNED NOT NULL,
  `unblock_time` datetime NOT NULL,
  `account_id` int(10) UNSIGNED NOT NULL,
  `ip_address` varchar(100) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_v4p_voters`
--

CREATE TABLE `cp_v4p_voters` (
  `account_id` int(10) UNSIGNED NOT NULL,
  `points` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cp_xferlog`
--

CREATE TABLE `cp_xferlog` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_account_id` int(10) UNSIGNED NOT NULL,
  `target_account_id` int(10) UNSIGNED NOT NULL,
  `target_char_id` int(11) UNSIGNED NOT NULL,
  `amount` int(10) UNSIGNED NOT NULL,
  `for_free` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `transfer_date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Credit transfer log.';

-- --------------------------------------------------------

--
-- Estrutura da tabela `devilsquare`
--

CREATE TABLE `devilsquare` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `id_acc` int(11) NOT NULL,
  `pontos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `elemental`
--

CREATE TABLE `elemental` (
  `ele_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `mode` int(11) UNSIGNED NOT NULL DEFAULT '1',
  `hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `max_hp` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `max_sp` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `atk1` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `atk2` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `matk` mediumint(6) UNSIGNED NOT NULL DEFAULT '0',
  `aspd` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `def` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `mdef` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `flee` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `hit` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `life_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `friends`
--

CREATE TABLE `friends` (
  `char_id` int(11) NOT NULL DEFAULT '0',
  `friend_account` int(11) NOT NULL DEFAULT '0',
  `friend_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `global_acc_reg_num_db`
--

CREATE TABLE `global_acc_reg_num_db` (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `global_acc_reg_str_db`
--

CREATE TABLE `global_acc_reg_str_db` (
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `key` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` varchar(254) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild`
--

CREATE TABLE `guild` (
  `guild_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(24) NOT NULL DEFAULT '',
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `master` varchar(24) NOT NULL DEFAULT '',
  `guild_lv` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `connect_member` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `max_member` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `average_lv` smallint(6) UNSIGNED NOT NULL DEFAULT '1',
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `next_exp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `skill_point` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `mes1` varchar(60) NOT NULL DEFAULT '',
  `mes2` varchar(120) NOT NULL DEFAULT '',
  `emblem_len` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `emblem_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `emblem_data` blob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_alliance`
--

CREATE TABLE `guild_alliance` (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `opposition` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `alliance_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_castle`
--

CREATE TABLE `guild_castle` (
  `castle_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `economy` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `defense` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `triggerE` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `triggerD` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nextTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `payTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `createTime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleC` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG0` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG1` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG2` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG3` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG4` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG5` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG6` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `visibleG7` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_expulsion`
--

CREATE TABLE `guild_expulsion` (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `mes` varchar(40) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_member`
--

CREATE TABLE `guild_member` (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hair` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `hair_color` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `gender` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `class` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `lv` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `exp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `exp_payper` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `online` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `position` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_position`
--

CREATE TABLE `guild_position` (
  `guild_id` int(9) UNSIGNED NOT NULL DEFAULT '0',
  `position` tinyint(6) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `mode` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_mode` tinyint(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_skill`
--

CREATE TABLE `guild_skill` (
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `id` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `lv` tinyint(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `guild_storage`
--

CREATE TABLE `guild_storage` (
  `id` int(10) UNSIGNED NOT NULL,
  `guild_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `amount` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `equip` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `identify` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `bound` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `homunculus`
--

CREATE TABLE `homunculus` (
  `homun_id` int(11) NOT NULL,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `prev_class` mediumint(9) NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `level` smallint(4) NOT NULL DEFAULT '0',
  `exp` int(12) NOT NULL DEFAULT '0',
  `intimacy` int(12) NOT NULL DEFAULT '0',
  `hunger` smallint(4) NOT NULL DEFAULT '0',
  `str` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `agi` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `vit` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `INT` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `dex` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `luk` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `hp` int(12) NOT NULL DEFAULT '1',
  `max_hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `max_sp` int(12) NOT NULL DEFAULT '1',
  `skill_point` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `alive` tinyint(2) NOT NULL DEFAULT '1',
  `rename_flag` tinyint(2) NOT NULL DEFAULT '0',
  `vaporize` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hotkey`
--

CREATE TABLE `hotkey` (
  `char_id` int(11) NOT NULL,
  `hotkey` tinyint(2) UNSIGNED NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `itemskill_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `skill_lvl` tinyint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `hourly_points`
--

CREATE TABLE `hourly_points` (
  `account_hourly` int(11) UNSIGNED NOT NULL,
  `online` tinyint(2) NOT NULL DEFAULT '0',
  `points` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `minute` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `hourly_points`
--

INSERT INTO `hourly_points` (`account_hourly`, `online`, `points`, `minute`) VALUES
(2000000, 0, 0, 2),
(2000001, 0, 0, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `interlog`
--

CREATE TABLE `interlog` (
  `time` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `log` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `amount` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `equip` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `favorite` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `bound` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `inventory`
--

INSERT INTO `inventory` (`id`, `char_id`, `nameid`, `amount`, `equip`, `identify`, `refine`, `attribute`, `card0`, `card1`, `card2`, `card3`, `expire_time`, `favorite`, `bound`, `unique_id`) VALUES
(1, 150000, 1201, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 150000, 2301, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 150001, 1201, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 150001, 2301, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ipbanlist`
--

CREATE TABLE `ipbanlist` (
  `list` varchar(255) NOT NULL DEFAULT '',
  `btime` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `rtime` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `reason` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_db`
--

CREATE TABLE `item_db` (
  `id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `name_english` varchar(50) NOT NULL DEFAULT '',
  `name_japanese` varchar(50) NOT NULL DEFAULT '',
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `price_buy` mediumint(10) DEFAULT NULL,
  `price_sell` mediumint(10) DEFAULT NULL,
  `weight` smallint(5) UNSIGNED DEFAULT NULL,
  `atk` smallint(5) UNSIGNED DEFAULT NULL,
  `matk` smallint(5) UNSIGNED DEFAULT NULL,
  `defence` smallint(5) UNSIGNED DEFAULT NULL,
  `range` tinyint(2) UNSIGNED DEFAULT NULL,
  `slots` tinyint(2) UNSIGNED DEFAULT NULL,
  `equip_jobs` int(12) UNSIGNED DEFAULT NULL,
  `equip_upper` tinyint(8) UNSIGNED DEFAULT NULL,
  `equip_genders` tinyint(2) UNSIGNED DEFAULT NULL,
  `equip_locations` int(7) UNSIGNED DEFAULT NULL,
  `weapon_level` tinyint(2) UNSIGNED DEFAULT NULL,
  `equip_level_min` smallint(5) UNSIGNED DEFAULT NULL,
  `equip_level_max` smallint(5) UNSIGNED DEFAULT NULL,
  `refineable` tinyint(1) UNSIGNED DEFAULT NULL,
  `view` smallint(3) UNSIGNED DEFAULT NULL,
  `bindonequip` tinyint(1) UNSIGNED DEFAULT NULL,
  `forceserial` tinyint(1) UNSIGNED DEFAULT NULL,
  `buyingstore` tinyint(1) UNSIGNED DEFAULT NULL,
  `delay` mediumint(9) UNSIGNED DEFAULT NULL,
  `trade_flag` smallint(4) UNSIGNED DEFAULT NULL,
  `trade_group` smallint(3) UNSIGNED DEFAULT NULL,
  `nouse_flag` smallint(4) UNSIGNED DEFAULT NULL,
  `nouse_group` smallint(4) UNSIGNED DEFAULT NULL,
  `stack_amount` mediumint(6) UNSIGNED DEFAULT NULL,
  `stack_flag` tinyint(2) UNSIGNED DEFAULT NULL,
  `sprite` mediumint(6) UNSIGNED DEFAULT NULL,
  `script` text,
  `equip_script` text,
  `unequip_script` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_db2`
--

CREATE TABLE `item_db2` (
  `id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `name_english` varchar(50) NOT NULL DEFAULT '',
  `name_japanese` varchar(50) NOT NULL DEFAULT '',
  `type` tinyint(2) UNSIGNED NOT NULL DEFAULT '0',
  `price_buy` mediumint(10) DEFAULT NULL,
  `price_sell` mediumint(10) DEFAULT NULL,
  `weight` smallint(5) UNSIGNED DEFAULT NULL,
  `atk` smallint(5) UNSIGNED DEFAULT NULL,
  `matk` smallint(5) UNSIGNED DEFAULT NULL,
  `defence` smallint(5) UNSIGNED DEFAULT NULL,
  `range` tinyint(2) UNSIGNED DEFAULT NULL,
  `slots` tinyint(2) UNSIGNED DEFAULT NULL,
  `equip_jobs` int(12) UNSIGNED DEFAULT NULL,
  `equip_upper` tinyint(8) UNSIGNED DEFAULT NULL,
  `equip_genders` tinyint(2) UNSIGNED DEFAULT NULL,
  `equip_locations` int(7) UNSIGNED DEFAULT NULL,
  `weapon_level` tinyint(2) UNSIGNED DEFAULT NULL,
  `equip_level_min` smallint(5) UNSIGNED DEFAULT NULL,
  `equip_level_max` smallint(5) UNSIGNED DEFAULT NULL,
  `refineable` tinyint(1) UNSIGNED DEFAULT NULL,
  `view` smallint(3) UNSIGNED DEFAULT NULL,
  `bindonequip` tinyint(1) UNSIGNED DEFAULT NULL,
  `forceserial` tinyint(1) UNSIGNED DEFAULT NULL,
  `buyingstore` tinyint(1) UNSIGNED DEFAULT NULL,
  `delay` mediumint(9) UNSIGNED DEFAULT NULL,
  `trade_flag` smallint(4) UNSIGNED DEFAULT NULL,
  `trade_group` smallint(3) UNSIGNED DEFAULT NULL,
  `nouse_flag` smallint(4) UNSIGNED DEFAULT NULL,
  `nouse_group` smallint(4) UNSIGNED DEFAULT NULL,
  `stack_amount` mediumint(6) UNSIGNED DEFAULT NULL,
  `stack_flag` tinyint(2) UNSIGNED DEFAULT NULL,
  `sprite` mediumint(6) UNSIGNED DEFAULT NULL,
  `script` text,
  `equip_script` text,
  `unequip_script` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `userid` varchar(23) NOT NULL DEFAULT '',
  `user_pass` varchar(32) NOT NULL DEFAULT '',
  `sex` enum('M','F','S') NOT NULL DEFAULT 'M',
  `email` varchar(39) NOT NULL DEFAULT '',
  `group_id` tinyint(3) NOT NULL DEFAULT '0',
  `state` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `unban_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `expiration_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `logincount` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `lastlogin` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `last_ip` varchar(100) NOT NULL DEFAULT '',
  `mac_address` varchar(18) NOT NULL DEFAULT '',
  `birthdate` date NOT NULL DEFAULT '1970-01-01',
  `character_slots` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `pincode` varchar(4) NOT NULL DEFAULT '',
  `pincode_change` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `diasvip` int(11) NOT NULL DEFAULT '0',
  `last_password_change` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`account_id`, `userid`, `user_pass`, `sex`, `email`, `group_id`, `state`, `unban_time`, `expiration_time`, `logincount`, `lastlogin`, `last_ip`, `mac_address`, `birthdate`, `character_slots`, `pincode`, `pincode_change`, `diasvip`, `last_password_change`) VALUES
(1, 'onlineragnarok', 'RagnarokOnline1', 'S', 'brathena@brathena.org', 0, 0, 0, 0, 15, '2016-11-16 16:48:28', '52.67.213.74', '', '1970-01-01', 0, '', 0, 0, 1478697905),
(2000001, 'sabino', 'sabino', 'F', 'gabriel_sabino@hotmail.com', 0, 0, 0, 0, 5, '2016-11-16 16:49:09', '138.36.35.208', '', '1997-11-16', 0, '', 0, 0, 1479309523);

--
-- Acionadores `login`
--
DELIMITER $$
CREATE TRIGGER `login_insert` BEFORE INSERT ON `login` FOR EACH ROW BEGIN

  IF NEW.sex <> 'S' AND NEW.last_password_change = 0 THEN
    SET NEW.last_password_change = UNIX_TIMESTAMP();
  END IF;

END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `login_update` BEFORE UPDATE ON `login` FOR EACH ROW BEGIN

  IF OLD.sex <> 'S' AND MD5(OLD.user_pass) <> MD5(NEW.user_pass) THEN
    SET NEW.last_password_change = UNIX_TIMESTAMP();
  END IF;

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `macban_list`
--

CREATE TABLE `macban_list` (
  `id` int(11) NOT NULL,
  `mac_address` varchar(18) NOT NULL,
  `ban_tick` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `unban_tick` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `banned` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `macban_log`
--

CREATE TABLE `macban_log` (
  `id` int(11) NOT NULL,
  `mac_address` varchar(18) NOT NULL,
  `log_date` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `log_type` tinyint(1) NOT NULL DEFAULT '0',
  `log_reason` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mail`
--

CREATE TABLE `mail` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `send_name` varchar(30) NOT NULL DEFAULT '',
  `send_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `dest_name` varchar(30) NOT NULL DEFAULT '',
  `dest_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(45) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '',
  `time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `zeny` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `amount` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `identify` smallint(6) NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mapreg`
--

CREATE TABLE `mapreg` (
  `varname` varchar(32) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL,
  `index` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `mapreg`
--

INSERT INTO `mapreg` (`varname`, `index`, `value`) VALUES
('$timezonestring$', 0, '^FF0000GMT^000000'),
('$ttnames$', 0, 'Breezy Havana'),
('$ttnames$', 1, 'RS125'),
('$ttnames$', 2, 'Hollgrehenn'),
('$ttnames$', 3, 'Antonio'),
('$ttnames$', 4, 'Aragham'),
('$ttnames$', 5, 'Kafra Jasmine'),
('$ttnames$', 6, 'Chris'),
('$ttnames$', 7, 'Breezy Havana'),
('$ttnames$', 8, 'RS125'),
('$ttnames$', 9, 'Breezy Havana'),
('$ttnames$', 10, 'Nari'),
('$ttnames$', 11, 'Senorita Sylvia'),
('$ttnames$', 12, 'Joo Jahk'),
('$ttnames$', 13, 'RS125'),
('$ttranks', 0, '999999'),
('$arn_pritop60', 0, '480'),
('$arn_pritop70', 0, '480'),
('$arn_pritop80', 0, '480'),
('$arn_pritop90', 0, '480'),
('$arn_acotop', 0, '480'),
('$arn_pritopn60$', 0, 'Default'),
('$arn_pritopn70$', 0, 'Default'),
('$arn_pritopn80$', 0, 'Default'),
('$arn_pritopn90$', 0, 'Default'),
('$arn_acotopn$', 0, 'Default'),
('$top_80min', 0, '8'),
('$top_70min', 0, '7'),
('$top_60min', 0, '6'),
('$top_50min', 0, '5'),
('$top_ptmin', 0, '10'),
('$DTS_Time', 0, '83'),
('$Onlinefld', 0, '1'),
('$mobs', 0, '20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `memo`
--

CREATE TABLE `memo` (
  `memo_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `map` varchar(11) NOT NULL DEFAULT '',
  `x` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `y` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mercenary`
--

CREATE TABLE `mercenary` (
  `mer_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `hp` int(12) NOT NULL DEFAULT '1',
  `sp` int(12) NOT NULL DEFAULT '1',
  `kill_counter` int(11) NOT NULL,
  `life_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mercenary_owner`
--

CREATE TABLE `mercenary_owner` (
  `char_id` int(11) NOT NULL,
  `merc_id` int(11) NOT NULL DEFAULT '0',
  `arch_calls` int(11) NOT NULL DEFAULT '0',
  `arch_faith` int(11) NOT NULL DEFAULT '0',
  `spear_calls` int(11) NOT NULL DEFAULT '0',
  `spear_faith` int(11) NOT NULL DEFAULT '0',
  `sword_calls` int(11) NOT NULL DEFAULT '0',
  `sword_faith` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `npc_market_data`
--

CREATE TABLE `npc_market_data` (
  `name` varchar(24) NOT NULL DEFAULT '',
  `itemid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `amount` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `party`
--

CREATE TABLE `party` (
  `party_id` int(11) UNSIGNED NOT NULL,
  `name` varchar(24) NOT NULL DEFAULT '',
  `exp` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `item` tinyint(11) UNSIGNED NOT NULL DEFAULT '0',
  `leader_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `leader_char` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pet`
--

CREATE TABLE `pet` (
  `pet_id` int(11) UNSIGNED NOT NULL,
  `class` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(24) NOT NULL DEFAULT '',
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `level` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `egg_id` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `equip` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `intimate` smallint(9) UNSIGNED NOT NULL DEFAULT '0',
  `hungry` smallint(9) UNSIGNED NOT NULL DEFAULT '0',
  `rename_flag` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `incubate` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pvpm_data`
--

CREATE TABLE `pvpm_data` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `kills` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `dies` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ratio` int(11) NOT NULL DEFAULT '0',
  `leader` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `annc` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `ban` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pvpm_lang`
--

CREATE TABLE `pvpm_lang` (
  `id` int(11) UNSIGNED NOT NULL,
  `lang` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `str` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pvpm_lang`
--

INSERT INTO `pvpm_lang` (`id`, `lang`, `str`) VALUES
(0, 0, 'Português'),
(1, 0, 'Bem vindo as Arenas de luta!'),
(2, 0, 'Nestas Arenas você pode duelar com outros jogadores!'),
(3, 0, 'Os atuais Líderes das Arena são:'),
(4, 0, 'Líder'),
(5, 0, 'Entrar na Arena'),
(6, 0, 'Comandos'),
(7, 0, 'Sair'),
(8, 0, '(Mortes)'),
(9, 0, 'Minha Colocação'),
(10, 0, 'O sistema de comandos remotos funciona da seguinte mandeira:'),
(11, 0, '- Envie uma PM(Player Message) para  ^008B8Bnpc:cmd.'),
(12, 0, '- Esse é o nome do npc. Ele automaticamente retornará uma lista de comandos para você.'),
(13, 0, '<!!!> Você deve informar o número da Arena.'),
(14, 0, '<!!!> Você será retirado da Arena em 5 Segundos . . .'),
(15, 0, '<!!!> Está função só pode ser usada dentro da Arena.'),
(16, 0, '<!!!> Ranking do foi limpo.'),
(17, 0, '<!!!> Você deve especificar qual arena deseja resetar o Ranking.'),
(18, 0, 'É necessário que o Nome seja informado.'),
(19, 0, 'É necessário que o Tempo seja informado.'),
(20, 0, 'É necessário que o Tipo de banimento seja informado.'),
(21, 0, '<!!!> Tempo de(o): '),
(22, 0, '<!!!> O banimento foi retirado de(o) '),
(23, 0, '[GM Mensagem] Você foi desbanido da Arena PvP.'),
(25, 0, '<!!!> Ninguém foi encontrado com este nome.'),
(26, 0, '<!!!> Tempo de banimento alterado.'),
(27, 0, 'Minutos'),
(28, 0, '[GM Mensagem] Você está banido da Arena PvP por'),
(24, 0, 'O valor do Tempo não é válido, por favor utilize caracteres de 0 à 9.'),
(29, 0, '<!!!> O sistema de arenas não suporta mais de 10 mapas.'),
(30, 0, '<!!!> Se quiser alterar o valor máximo, entre em contado com Mooka. (mooka.support@hotmail.com)'),
(31, 0, '<!!!> 1. Por favor, defina o tipo de arena.'),
(32, 0, '<!!!> 2. Só é permitido o uso dos caracteres de 0 à 2.'),
(33, 0, '<!!!> - 0 = Arena PvP; 1 = Arena PvP Baby; 2 Arena GvG;'),
(34, 0, '<!!!> Esse mapa já está sendo usado pelo [PvP Master].'),
(35, 0, '<!!!> O mapa foi adicionado. '),
(36, 0, '<!!!> Opa! Você não pode retirar mais mapas do PvP Master, isto causará problemas!'),
(37, 0, '<!!!> Nenhum mapa com este nome está sendo usado.'),
(38, 0, '<!!!> O mapa foi retirado.'),
(39, 0, '<!!!>'),
(40, 0, 'O comando \'!pvp\' serve para teleportá-lo à arena desejada, para usá-lo você deve enviar a mensagem:'),
(41, 0, 'Após o \'#\' é o número da arena.'),
(42, 0, '!ranking serve para mostrar o Ranking. Para isso, você deve enviar uma das mensagens abaixo:'),
(43, 0, 'Você deve especificar qual ranking você deseja visualizar (#pvp ou #gvg), caso deseje o ranking de mortes adicione #die no final.'),
(44, 0, '!pvplider ou !gvglider serve para mostrar o player ou guild com mais pontos.'),
(45, 0, 'Serve para retirá-lo da arena, teleportando-o para seu savepoint.'),
(46, 0, 'Este comando irá banir determinado player/guild pelo nome, o tempo é em minutos.'),
(47, 0, 'Exemplo: !ban#nome#tempo(em minutos)#0(Player)/2(Guild) -> !ban#Player1#60#1 / !ban#EmpBreak#60#2'),
(48, 0, 'Você deve definir se está banindo um player ou guild, colocando ao final 1 para Player e 2 para Guild.'),
(49, 0, 'Para diminuir o tempo, utilize o sinal de menos(-) antes do valor. Para desbanir o mesmo, envie no campo de Tempo \'unban\'.'),
(50, 0, 'Caso deseje ver o tempo restante, envie no campo do Tempo \'showtime\'.'),
(51, 0, 'Comando para adicionar ou retirar mapas.'),
(52, 0, '-> !map#add#mapname#type para adicionar um mapa.'),
(53, 0, '-> !map#del#mapname para deletar um mapa.'),
(54, 0, 'Comando para limpar a tabela do ranking.'),
(55, 0, '-> !truncate#pvp para limpar o ranking do PvP.'),
(56, 0, '-> !truncate#gvg para limpar o ranking do GvG.'),
(57, 0, '<!!!> Nenhum comando foi encontrado.'),
(58, 0, '- Lista De Comandos -'),
(59, 0, '--- Use !help#!COMANDO para mais informações. ---'),
(60, 0, '- !warp#número (Teleporta-o para Arena)'),
(61, 0, '- !ranking (Ranking normal)'),
(62, 0, '- !ranking2 (Mostra sua posição no Ranking)'),
(63, 0, '- !pvplider (Mostra o lider do PvP)'),
(64, 0, '- !gvglider (Mostra o lider do GvG)'),
(65, 0, '- !exit (Sai da arena)'),
(66, 0, '--- GM\'s Comandos ---'),
(67, 0, '- !truncate (Limpa o Ranking)'),
(68, 0, '- !ban (Bani o player da arena)'),
(69, 0, '- !map (Add ou Del um mapa do PvP Master)'),
(70, 0, '<!!!> Você não está entre os 125 colocados do Ranking.'),
(71, 0, 'Desculpe, mas você precisa estar em uma Guild para entrar nesta Arena.'),
(72, 0, 'Olhe o seu tamanho! Esta arena é restrita a Baby\'s!'),
(73, 0, 'Você não pode usar está função dentro da Arena.'),
(74, 0, 'Você está banido da Arena por'),
(75, 0, 'É o Novo Lider'),
(76, 0, 'Pontos'),
(77, 0, 'Você Ganhou:'),
(78, 0, 'Você Perdeu:'),
(79, 0, 'Linguagem'),
(80, 0, 'Selecione sua linguagem:'),
(81, 0, 'Valor inválido.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pvpm_map`
--

CREATE TABLE `pvpm_map` (
  `id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `map` varchar(255) NOT NULL DEFAULT 'NULL',
  `type` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `noguild` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pvpm_map`
--

INSERT INTO `pvpm_map` (`id`, `map`, `type`, `noguild`) VALUES
(0, 'guild_vs3', 0, 0),
(1, 'pvp_n_1-5', 0, 0),
(2, 'guild_vs1', 2, 1),
(3, 'prt_are01', 2, 0),
(4, 'guild_vs2', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `quest`
--

CREATE TABLE `quest` (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `quest_id` int(10) UNSIGNED NOT NULL,
  `state` enum('0','1','2') NOT NULL DEFAULT '0',
  `time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `count1` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count2` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `count3` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ragsrvinfo`
--

CREATE TABLE `ragsrvinfo` (
  `index` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `exp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `jexp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `drop` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ragsrvinfo`
--

INSERT INTO `ragsrvinfo` (`index`, `name`, `exp`, `jexp`, `drop`) VALUES
(3, 'thorn', 100, 100, 100),
(3, 'thorn', 100, 100, 100),
(3, 'thorn', 100, 100, 100),
(3, 'thorn', 100, 100, 100),
(3, 'Unity', 100, 100, 100),
(3, 'Unity', 100, 100, 100),
(3, 'Unity', 100, 100, 100),
(3, 'thorn', 100, 100, 100),
(3, 'thorn', 100, 100, 100),
(3, 'thorn', 100, 100, 100),
(3, 'Unity', 100, 100, 100),
(3, 'Unity', 100, 100, 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `sc_data`
--

CREATE TABLE `sc_data` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `char_id` int(11) UNSIGNED NOT NULL,
  `type` smallint(11) UNSIGNED NOT NULL,
  `tick` int(11) NOT NULL,
  `val1` int(11) NOT NULL DEFAULT '0',
  `val2` int(11) NOT NULL DEFAULT '0',
  `val3` int(11) NOT NULL DEFAULT '0',
  `val4` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `skill`
--

CREATE TABLE `skill` (
  `char_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `id` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `lv` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `flag` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `skill_homunculus`
--

CREATE TABLE `skill_homunculus` (
  `homun_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `lv` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sql_updates`
--

CREATE TABLE `sql_updates` (
  `timestamp` int(11) UNSIGNED NOT NULL,
  `ignored` enum('Yes','No') NOT NULL DEFAULT 'No'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `sql_updates`
--

INSERT INTO `sql_updates` (`timestamp`, `ignored`) VALUES
(1443394980, 'No'),
(1440688342, 'No'),
(1445742780, 'No'),
(1459870423, 'No');

-- --------------------------------------------------------

--
-- Estrutura da tabela `storage`
--

CREATE TABLE `storage` (
  `id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nameid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `amount` smallint(11) UNSIGNED NOT NULL DEFAULT '0',
  `equip` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `identify` smallint(6) UNSIGNED NOT NULL DEFAULT '0',
  `refine` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `attribute` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `card0` smallint(11) NOT NULL DEFAULT '0',
  `card1` smallint(11) NOT NULL DEFAULT '0',
  `card2` smallint(11) NOT NULL DEFAULT '0',
  `card3` smallint(11) NOT NULL DEFAULT '0',
  `expire_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `bound` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `updatecharlog`
--

CREATE TABLE `updatecharlog` (
  `gid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `charname_old` varchar(24) NOT NULL DEFAULT '',
  `charname_new` varchar(24) NOT NULL DEFAULT '',
  `gdid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `position` tinyint(4) NOT NULL DEFAULT '0',
  `regdate` datetime NOT NULL DEFAULT '1970-01-01 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_data`
--
ALTER TABLE `account_data`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `acc_reg_num_db`
--
ALTER TABLE `acc_reg_num_db`
  ADD PRIMARY KEY (`account_id`,`key`,`index`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `acc_reg_str_db`
--
ALTER TABLE `acc_reg_str_db`
  ADD PRIMARY KEY (`account_id`,`key`,`index`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `auction`
--
ALTER TABLE `auction`
  ADD PRIMARY KEY (`auction_id`);

--
-- Indexes for table `autotrade_data`
--
ALTER TABLE `autotrade_data`
  ADD PRIMARY KEY (`char_id`,`itemkey`);

--
-- Indexes for table `autotrade_merchants`
--
ALTER TABLE `autotrade_merchants`
  ADD PRIMARY KEY (`account_id`,`char_id`);

--
-- Indexes for table `cart_inventory`
--
ALTER TABLE `cart_inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `char`
--
ALTER TABLE `char`
  ADD PRIMARY KEY (`char_id`),
  ADD UNIQUE KEY `name_key` (`name`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `party_id` (`party_id`),
  ADD KEY `guild_id` (`guild_id`),
  ADD KEY `online` (`online`);

--
-- Indexes for table `char_reg_num_db`
--
ALTER TABLE `char_reg_num_db`
  ADD PRIMARY KEY (`char_id`,`key`,`index`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `char_reg_str_db`
--
ALTER TABLE `char_reg_str_db`
  ADD PRIMARY KEY (`char_id`,`key`,`index`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `cp_banlog`
--
ALTER TABLE `cp_banlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`,`banned_by`);

--
-- Indexes for table `cp_charprefs`
--
ALTER TABLE `cp_charprefs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`,`char_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `cp_createlog`
--
ALTER TABLE `cp_createlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`userid`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `cp_credits`
--
ALTER TABLE `cp_credits`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `cp_donate`
--
ALTER TABLE `cp_donate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_emailchange`
--
ALTER TABLE `cp_emailchange`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `cp_ipbanlog`
--
ALTER TABLE `cp_ipbanlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_address` (`ip_address`),
  ADD KEY `banned_by` (`banned_by`);

--
-- Indexes for table `cp_itemshop`
--
ALTER TABLE `cp_itemshop`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nameid` (`nameid`);

--
-- Indexes for table `cp_loginlog`
--
ALTER TABLE `cp_loginlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `cp_loginprefs`
--
ALTER TABLE `cp_loginprefs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `cp_onlinepeak`
--
ALTER TABLE `cp_onlinepeak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_pwchange`
--
ALTER TABLE `cp_pwchange`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `cp_redeemlog`
--
ALTER TABLE `cp_redeemlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nameid` (`nameid`,`account_id`,`char_id`);

--
-- Indexes for table `cp_resetpass`
--
ALTER TABLE `cp_resetpass`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `cp_tasklist`
--
ALTER TABLE `cp_tasklist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cp_taskliststaff`
--
ALTER TABLE `cp_taskliststaff`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `cp_trusted`
--
ALTER TABLE `cp_trusted`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `cp_txnlog`
--
ALTER TABLE `cp_txnlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `parent_txn_id` (`parent_txn_id`),
  ADD KEY `txn_id` (`txn_id`);

--
-- Indexes for table `cp_v4p_sites`
--
ALTER TABLE `cp_v4p_sites`
  ADD PRIMARY KEY (`site_id`);

--
-- Indexes for table `cp_v4p_votelogs`
--
ALTER TABLE `cp_v4p_votelogs`
  ADD PRIMARY KEY (`rtid`);

--
-- Indexes for table `cp_v4p_voters`
--
ALTER TABLE `cp_v4p_voters`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `cp_xferlog`
--
ALTER TABLE `cp_xferlog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_account_id` (`from_account_id`,`target_account_id`,`target_char_id`);

--
-- Indexes for table `devilsquare`
--
ALTER TABLE `devilsquare`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indexes for table `elemental`
--
ALTER TABLE `elemental`
  ADD PRIMARY KEY (`ele_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `global_acc_reg_num_db`
--
ALTER TABLE `global_acc_reg_num_db`
  ADD PRIMARY KEY (`account_id`,`key`,`index`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `global_acc_reg_str_db`
--
ALTER TABLE `global_acc_reg_str_db`
  ADD PRIMARY KEY (`account_id`,`key`,`index`),
  ADD KEY `account_id` (`account_id`);

--
-- Indexes for table `guild`
--
ALTER TABLE `guild`
  ADD PRIMARY KEY (`guild_id`,`char_id`),
  ADD UNIQUE KEY `guild_id` (`guild_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `guild_alliance`
--
ALTER TABLE `guild_alliance`
  ADD PRIMARY KEY (`guild_id`,`alliance_id`),
  ADD KEY `alliance_id` (`alliance_id`);

--
-- Indexes for table `guild_castle`
--
ALTER TABLE `guild_castle`
  ADD PRIMARY KEY (`castle_id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `guild_expulsion`
--
ALTER TABLE `guild_expulsion`
  ADD PRIMARY KEY (`guild_id`,`name`);

--
-- Indexes for table `guild_member`
--
ALTER TABLE `guild_member`
  ADD PRIMARY KEY (`guild_id`,`char_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `guild_position`
--
ALTER TABLE `guild_position`
  ADD PRIMARY KEY (`guild_id`,`position`);

--
-- Indexes for table `guild_skill`
--
ALTER TABLE `guild_skill`
  ADD PRIMARY KEY (`guild_id`,`id`);

--
-- Indexes for table `guild_storage`
--
ALTER TABLE `guild_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guild_id` (`guild_id`);

--
-- Indexes for table `homunculus`
--
ALTER TABLE `homunculus`
  ADD PRIMARY KEY (`homun_id`);

--
-- Indexes for table `hotkey`
--
ALTER TABLE `hotkey`
  ADD PRIMARY KEY (`char_id`,`hotkey`);

--
-- Indexes for table `hourly_points`
--
ALTER TABLE `hourly_points`
  ADD PRIMARY KEY (`account_hourly`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `ipbanlist`
--
ALTER TABLE `ipbanlist`
  ADD KEY `list` (`list`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `name` (`userid`);

--
-- Indexes for table `macban_list`
--
ALTER TABLE `macban_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mac_address` (`mac_address`,`unban_tick`,`banned`);

--
-- Indexes for table `macban_log`
--
ALTER TABLE `macban_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mac_address` (`mac_address`,`log_date`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapreg`
--
ALTER TABLE `mapreg`
  ADD PRIMARY KEY (`varname`,`index`);

--
-- Indexes for table `memo`
--
ALTER TABLE `memo`
  ADD PRIMARY KEY (`memo_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `mercenary`
--
ALTER TABLE `mercenary`
  ADD PRIMARY KEY (`mer_id`);

--
-- Indexes for table `mercenary_owner`
--
ALTER TABLE `mercenary_owner`
  ADD PRIMARY KEY (`char_id`);

--
-- Indexes for table `npc_market_data`
--
ALTER TABLE `npc_market_data`
  ADD PRIMARY KEY (`name`,`itemid`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`party_id`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`pet_id`);

--
-- Indexes for table `pvpm_data`
--
ALTER TABLE `pvpm_data`
  ADD KEY `id` (`id`),
  ADD KEY `kills` (`kills`),
  ADD KEY `dies` (`dies`);

--
-- Indexes for table `pvpm_lang`
--
ALTER TABLE `pvpm_lang`
  ADD KEY `id` (`id`);

--
-- Indexes for table `pvpm_map`
--
ALTER TABLE `pvpm_map`
  ADD KEY `id` (`id`);

--
-- Indexes for table `quest`
--
ALTER TABLE `quest`
  ADD PRIMARY KEY (`char_id`,`quest_id`);

--
-- Indexes for table `sc_data`
--
ALTER TABLE `sc_data`
  ADD PRIMARY KEY (`account_id`,`char_id`,`type`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `char_id` (`char_id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`char_id`,`id`);

--
-- Indexes for table `skill_homunculus`
--
ALTER TABLE `skill_homunculus`
  ADD PRIMARY KEY (`homun_id`,`id`);

--
-- Indexes for table `sql_updates`
--
ALTER TABLE `sql_updates`
  ADD PRIMARY KEY (`timestamp`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_id` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auction`
--
ALTER TABLE `auction`
  MODIFY `auction_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cart_inventory`
--
ALTER TABLE `cart_inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `char`
--
ALTER TABLE `char`
  MODIFY `char_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150002;
--
-- AUTO_INCREMENT for table `cp_banlog`
--
ALTER TABLE `cp_banlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_charprefs`
--
ALTER TABLE `cp_charprefs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_createlog`
--
ALTER TABLE `cp_createlog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cp_donate`
--
ALTER TABLE `cp_donate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_emailchange`
--
ALTER TABLE `cp_emailchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_ipbanlog`
--
ALTER TABLE `cp_ipbanlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_itemshop`
--
ALTER TABLE `cp_itemshop`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_loginlog`
--
ALTER TABLE `cp_loginlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `cp_loginprefs`
--
ALTER TABLE `cp_loginprefs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_onlinepeak`
--
ALTER TABLE `cp_onlinepeak`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_pwchange`
--
ALTER TABLE `cp_pwchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_redeemlog`
--
ALTER TABLE `cp_redeemlog`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_resetpass`
--
ALTER TABLE `cp_resetpass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_tasklist`
--
ALTER TABLE `cp_tasklist`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_trusted`
--
ALTER TABLE `cp_trusted`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_txnlog`
--
ALTER TABLE `cp_txnlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_v4p_sites`
--
ALTER TABLE `cp_v4p_sites`
  MODIFY `site_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_v4p_votelogs`
--
ALTER TABLE `cp_v4p_votelogs`
  MODIFY `rtid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cp_xferlog`
--
ALTER TABLE `cp_xferlog`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `elemental`
--
ALTER TABLE `elemental`
  MODIFY `ele_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guild`
--
ALTER TABLE `guild`
  MODIFY `guild_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `guild_storage`
--
ALTER TABLE `guild_storage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `homunculus`
--
ALTER TABLE `homunculus`
  MODIFY `homun_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2000002;
--
-- AUTO_INCREMENT for table `macban_list`
--
ALTER TABLE `macban_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `macban_log`
--
ALTER TABLE `macban_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `memo`
--
ALTER TABLE `memo`
  MODIFY `memo_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mercenary`
--
ALTER TABLE `mercenary`
  MODIFY `mer_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `party_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `pet_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage`
--
ALTER TABLE `storage`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
