-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 16-Nov-2016 às 23:25
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
(1, 'onlineragnarok', 'RagnarokOnline1', 'S', 'brathena@brathena.org', 0, 0, 0, 0, 18, '2016-11-16 21:25:21', '52.67.213.74', '', '1970-01-01', 0, '', 0, 0, 1478697905);

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
('$top_ptmin', 0, '10');

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
  MODIFY `char_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
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
