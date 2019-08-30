-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: 192.168.10.21:3306
-- Generation Time: 2019 年 8 月 28 日 06:38
-- サーバのバージョン： 5.5.62
-- PHP Version: 5.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sss-billing-master-edit`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `ADJUSTMENT`
--

DROP TABLE IF EXISTS `ADJUSTMENT`;
CREATE TABLE IF NOT EXISTS `ADJUSTMENT` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `ADJUSTMENT_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `BILLING_CHECK_TARGET`
--

DROP TABLE IF EXISTS `BILLING_CHECK_TARGET`;
CREATE TABLE IF NOT EXISTS `BILLING_CHECK_TARGET` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `CHANNEL_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `CHECK_FLAG` char(10) COLLATE utf8_bin NOT NULL,
  `CHARGE_TYPE_OBJ_ID` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `BILLING_ITEM`
--

DROP TABLE IF EXISTS `BILLING_ITEM`;
CREATE TABLE IF NOT EXISTS `BILLING_ITEM` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `PARENT_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `REGION_OBJ_ID` char(32) COLLATE utf8_bin DEFAULT NULL,
  `PRODUCT_OBJ_ID` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SDP_OBJ_ID` char(32) COLLATE utf8_bin DEFAULT NULL,
  `SDP_RESOURCE_TYPE` text COLLATE utf8_bin,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `BILLING_ITEM_EXTERNAL_DEPENDENCIES`
--

DROP TABLE IF EXISTS `BILLING_ITEM_EXTERNAL_DEPENDENCIES`;
CREATE TABLE IF NOT EXISTS `BILLING_ITEM_EXTERNAL_DEPENDENCIES` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `CHARGE_TYPE_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `BILLING_ITEM_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `EVENT_TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `DEPENDENT_BILLING_ITEM_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `DEPENDENT_EVENT_TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `DEPENDENT_AMOUNT_TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `CONTRACT_CONDITION` char(32) COLLATE utf8_bin NOT NULL,
  `CHARGE_TYPE_CONDITION` char(32) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `CHANNEL_REFERENCE`
--

DROP TABLE IF EXISTS `CHANNEL_REFERENCE`;
CREATE TABLE IF NOT EXISTS `CHANNEL_REFERENCE` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `CHANNEL_OBJ_ID` char(32) COLLATE utf8_bin NOT NULL,
  `REFERENCE_CHANNEL_OBJ_ID` char(32) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `CHARGE_STATEMENT_DEFINITION`
--

DROP TABLE IF EXISTS `CHARGE_STATEMENT_DEFINITION`;
CREATE TABLE IF NOT EXISTS `CHARGE_STATEMENT_DEFINITION` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `RATE_PLAN_TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `ITEM_TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `REFERENCE_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `EVENT_TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `IS_CHARGE_STATEMENT_XML` varchar(32) COLLATE utf8_bin NOT NULL,
  `IS_ESTIMATE` varchar(32) COLLATE utf8_bin NOT NULL,
  `IS_DATA_ANALYSIS` varchar(32) COLLATE utf8_bin NOT NULL,
  `ITEM_ID` text COLLATE utf8_bin,
  `ITEM_NAME` text COLLATE utf8_bin,
  `DESCRIPTION` text COLLATE utf8_bin,
  `USAGE_VALUE` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `USAGE_UNIT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `AMOUNT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `SERVICE` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `MENU_CATEGORY` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `MENU` text COLLATE utf8_bin,
  `MENU_DETAL` text COLLATE utf8_bin,
  `PLAN` text COLLATE utf8_bin,
  `PLAN_DETAIL` text COLLATE utf8_bin,
  `B_END_COUNTRY` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `REGION` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `AREA` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `IS_TERMINAL_ITEM` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `SERVICE_MENU_ID` text COLLATE utf8_bin,
  `SERVICE_MENU_NAME` text COLLATE utf8_bin,
  `NODE_TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `DISPLAY_LAYER` varchar(32) COLLATE utf8_bin NOT NULL,
  `DISPLAY_OPTION` varchar(64) COLLATE utf8_bin NOT NULL,
  `DISPLAY_ORDER` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `LANGUAGE` varchar(32) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime NOT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `CHARGE_STATEMENT_LANGUAGE_DEFINITION`
--

DROP TABLE IF EXISTS `CHARGE_STATEMENT_LANGUAGE_DEFINITION`;
CREATE TABLE IF NOT EXISTS `CHARGE_STATEMENT_LANGUAGE_DEFINITION` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `CHANNEL_OBJ_ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `CHARGE_TYPE_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `LANGUAGE` varchar(32) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime NOT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `CHARGE_TYPE`
--

DROP TABLE IF EXISTS `CHARGE_TYPE`;
CREATE TABLE IF NOT EXISTS `CHARGE_TYPE` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `CHARGE_TYPE_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `DISCOUNT_AMOUNT`
--

DROP TABLE IF EXISTS `DISCOUNT_AMOUNT`;
CREATE TABLE IF NOT EXISTS `DISCOUNT_AMOUNT` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `STATUS` char(10) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `PRICE` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `DISCOUNT_CARRYOVER`
--

DROP TABLE IF EXISTS `DISCOUNT_CARRYOVER`;
CREATE TABLE IF NOT EXISTS `DISCOUNT_CARRYOVER` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `PRICE` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `NOTE` text COLLATE utf8_bin,
  `OBJ_ID_UUID` char(32) COLLATE utf8_bin NOT NULL,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `DISCOUNT_CONDITION`
--

DROP TABLE IF EXISTS `DISCOUNT_CONDITION`;
CREATE TABLE IF NOT EXISTS `DISCOUNT_CONDITION` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `COUPON_OBJ_ID` char(32) COLLATE utf8_bin NOT NULL,
  `DISCOUNT_TARGET` varchar(32) COLLATE utf8_bin NOT NULL,
  `DISCOUNT_PERIOD` varchar(32) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `DISCOUNT_RATE`
--

DROP TABLE IF EXISTS `DISCOUNT_RATE`;
CREATE TABLE IF NOT EXISTS `DISCOUNT_RATE` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `ROUND_INPUT_FLAG` varchar(32) COLLATE utf8_bin NOT NULL,
  `ROUND_INTERVAL_INPUT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ROUND_THRESHOLD_INPUT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ROUND_UNIT_INPUT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ROUND_OUTPUT_FLAG` varchar(32) COLLATE utf8_bin NOT NULL,
  `ROUND_INTERVAL_OUTPUT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ROUND_THRESHOLD_OUTPUT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ROUND_UNIT_OUTPUT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `LOWER_LIMIT_FLAG` varchar(32) COLLATE utf8_bin NOT NULL,
  `LOWER_LIMIT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `UPPER_LIMIT_FLAG` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPPER_LIMIT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `DISCOUNT_RATE_DETAIL`
--

DROP TABLE IF EXISTS `DISCOUNT_RATE_DETAIL`;
CREATE TABLE IF NOT EXISTS `DISCOUNT_RATE_DETAIL` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `DISCOUNT_RATE_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `LOWER_LIMIT` decimal(38,6) COLLATE utf8_bin DEFAULT NULL,
  `UPPER_LIMIT` decimal(38,6) COLLATE utf8_bin DEFAULT NULL,
  `INTERCEPT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `SLOPE` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `DISCOUNT_RATE_PLAN`
--

DROP TABLE IF EXISTS `DISCOUNT_RATE_PLAN`;
CREATE TABLE IF NOT EXISTS `DISCOUNT_RATE_PLAN` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `NORMAL_RATE_PLAN_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `COUPON_OBJ_ID` char(32) COLLATE utf8_bin NOT NULL,
  `TARGET` varchar(32) COLLATE utf8_bin NOT NULL,
  `RATING_METHOD` varchar(32) COLLATE utf8_bin NOT NULL,
  `RATING_METHOD_REFERENCE_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `PRIORITY` varchar(32) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GET_BELUGA_REPORT_EXCEPTION_CHANNEL`
--

DROP TABLE IF EXISTS `GET_BELUGA_REPORT_EXCEPTION_CHANNEL`;
CREATE TABLE IF NOT EXISTS `GET_BELUGA_REPORT_EXCEPTION_CHANNEL` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'active',
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `CHANNEL_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GET_BILLING_DEFINITION`
--

DROP TABLE IF EXISTS `GET_BILLING_DEFINITION`;
CREATE TABLE IF NOT EXISTS `GET_BILLING_DEFINITION` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `LABEL` varchar(32) COLLATE utf8_bin NOT NULL,
  `CONTRACT_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `CHARGE_TYPE_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GET_BILLING_IN_BULK_DEFINITION`
--

DROP TABLE IF EXISTS `GET_BILLING_IN_BULK_DEFINITION`;
CREATE TABLE IF NOT EXISTS `GET_BILLING_IN_BULK_DEFINITION` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `LABEL` varchar(32) COLLATE utf8_bin NOT NULL,
  `CONTRACT_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GET_GBS_REPORT_BILLING_ACCOUNT_ID_DEFINITION`
--

DROP TABLE IF EXISTS `GET_GBS_REPORT_BILLING_ACCOUNT_ID_DEFINITION`;
CREATE TABLE IF NOT EXISTS `GET_GBS_REPORT_BILLING_ACCOUNT_ID_DEFINITION` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'active',
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `AFFILIATE_CHANNEL_OBJ_ID` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '対象現法ルートのCHANNEL_OBJ_ID',
  `CHARGE_TYPE_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `DISPLAY_ORDER` bigint(20) DEFAULT NULL,
  `BILLING_ACCOUNT_ID` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'GBS指定のID',
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GET_GBS_REPORT_EXCEPTION_DEFINITION`
--

DROP TABLE IF EXISTS `GET_GBS_REPORT_EXCEPTION_DEFINITION`;
CREATE TABLE IF NOT EXISTS `GET_GBS_REPORT_EXCEPTION_DEFINITION` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'active',
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `BILLING_TYPE` varchar(16) COLLATE utf8_bin NOT NULL COMMENT 'wholesale/retail',
  `EXCEPTION_TYPE` varchar(16) COLLATE utf8_bin NOT NULL COMMENT 'channel/contract',
  `TARGET_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'channelの場合:CHANNEL_OBJ_ID,contrac:CONTRACT_OBJ_ID',
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GET_GBS_REPORT_NRC_DEFINITION`
--

DROP TABLE IF EXISTS `GET_GBS_REPORT_NRC_DEFINITION`;
CREATE TABLE IF NOT EXISTS `GET_GBS_REPORT_NRC_DEFINITION` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'active',
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `AFFILIATE_CHANNEL_OBJ_ID` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '現法ルートのCHANNEL_OBJ_ID',
  `ITEM_ID` text COLLATE utf8_bin COMMENT '明細に出力するITEM_ID',
  `PACKAGE_ID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'GBS指定のPACKAGE_ID',
  `COMPONENT_ID` varchar(64) COLLATE utf8_bin NOT NULL COMMENT 'GBS指定のCOMPONENT_ID',
  `PACKAGE_DESCRIPTION` text COLLATE utf8_bin COMMENT '明細出力するPackage名',
  `COMPONENT_DESCRIPTION` text COLLATE utf8_bin COMMENT '明細出力するComponent名',
  `SERVICE_IF_ID_LABEL` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `REMARK_TYPE` varchar(15) COLLATE utf8_bin NOT NULL COMMENT 'tenant,adjustment',
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GET_GBS_REPORT_SERVICE_DEFINITION`
--

DROP TABLE IF EXISTS `GET_GBS_REPORT_SERVICE_DEFINITION`;
CREATE TABLE IF NOT EXISTS `GET_GBS_REPORT_SERVICE_DEFINITION` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'active',
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `AFFILIATE_CHANNEL_OBJ_ID` varchar(128) COLLATE utf8_bin NOT NULL COMMENT '収集対象とする現法ルートのチャネルを指定',
  `SERVICE_TYPE` varchar(2) COLLATE utf8_bin NOT NULL COMMENT 'GBS指定のSERVICE_TYPE',
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GET_SALES_DATA_BILLING_ITEM_DEFINITION`
--

DROP TABLE IF EXISTS `GET_SALES_DATA_BILLING_ITEM_DEFINITION`;
CREATE TABLE IF NOT EXISTS `GET_SALES_DATA_BILLING_ITEM_DEFINITION` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `FILENAME` varchar(256) COLLATE utf8_bin NOT NULL,
  `CHARGE_STATEMENT_ITEM_ID` varchar(256) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GOL_DEDICATED_HYPERVISOR_RHEL_TARGET_ITEM`
--

DROP TABLE IF EXISTS `GOL_DEDICATED_HYPERVISOR_RHEL_TARGET_ITEM`;
CREATE TABLE IF NOT EXISTS `GOL_DEDICATED_HYPERVISOR_RHEL_TARGET_ITEM` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'active',
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `ITEM_ID` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '明細に出力するITEM_ID',
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GOL_DEDICATED_HYPERVISOR_SQLSERVER_TARGET_ITEM`
--

DROP TABLE IF EXISTS `GOL_DEDICATED_HYPERVISOR_SQLSERVER_TARGET_ITEM`;
CREATE TABLE IF NOT EXISTS `GOL_DEDICATED_HYPERVISOR_SQLSERVER_TARGET_ITEM` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'active',
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `ITEM_ID` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '明細に出力するITEM_ID',
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GOL_DEDICATED_HYPERVISOR_WINDOWS_TARGET_ITEM`
--

DROP TABLE IF EXISTS `GOL_DEDICATED_HYPERVISOR_WINDOWS_TARGET_ITEM`;
CREATE TABLE IF NOT EXISTS `GOL_DEDICATED_HYPERVISOR_WINDOWS_TARGET_ITEM` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'active',
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `ITEM_ID` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '明細に出力するITEM_ID',
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GOL_HYPERV_TARGET_ITEM`
--

DROP TABLE IF EXISTS `GOL_HYPERV_TARGET_ITEM`;
CREATE TABLE IF NOT EXISTS `GOL_HYPERV_TARGET_ITEM` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'active',
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `ITEM_ID` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '明細に出力するITEM_ID',
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GOL_VIRTUAL_SERVER_RHEL_CPU_GROUP`
--

DROP TABLE IF EXISTS `GOL_VIRTUAL_SERVER_RHEL_CPU_GROUP`;
CREATE TABLE IF NOT EXISTS `GOL_VIRTUAL_SERVER_RHEL_CPU_GROUP` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'active',
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `LICENSE_TYPE` char(10) COLLATE utf8_bin NOT NULL,
  `FLAVOR` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `CPU_GROUP` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GOL_VIRTUAL_SERVER_RHEL_PRICE_LIST`
--

DROP TABLE IF EXISTS `GOL_VIRTUAL_SERVER_RHEL_PRICE_LIST`;
CREATE TABLE IF NOT EXISTS `GOL_VIRTUAL_SERVER_RHEL_PRICE_LIST` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'active',
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `CPU_GROUP` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `UNIT_PRICE` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `CAP_PRICE` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GOL_VIRTUAL_SERVER_RHEL_TARGET_ITEM`
--

DROP TABLE IF EXISTS `GOL_VIRTUAL_SERVER_RHEL_TARGET_ITEM`;
CREATE TABLE IF NOT EXISTS `GOL_VIRTUAL_SERVER_RHEL_TARGET_ITEM` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'active',
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `ITEM_ID` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '明細に出力するITEM_ID',
  `LICENSE_TYPE` char(10) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `GOL_VIRTUAL_SERVER_TARGET_ITEM`
--

DROP TABLE IF EXISTS `GOL_VIRTUAL_SERVER_TARGET_ITEM`;
CREATE TABLE IF NOT EXISTS `GOL_VIRTUAL_SERVER_TARGET_ITEM` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL DEFAULT 'active',
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `ITEM_ID` varchar(512) COLLATE utf8_bin DEFAULT NULL COMMENT '明細に出力するITEM_ID',
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `INTERNAL_USE_RULE`
--

DROP TABLE IF EXISTS `INTERNAL_USE_RULE`;
CREATE TABLE IF NOT EXISTS `INTERNAL_USE_RULE` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `CHANNEL_OBJ_ID` char(32) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `NORMAL_RATE`
--

DROP TABLE IF EXISTS `NORMAL_RATE`;
CREATE TABLE IF NOT EXISTS `NORMAL_RATE` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `RATING_TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `ROUND_INPUT_FLAG` varchar(32) COLLATE utf8_bin NOT NULL,
  `ROUND_INTERVAL_INPUT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ROUND_THRESHOLD_INPUT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ROUND_UNIT_INPUT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ROUND_SELF_FLAG` varchar(32) COLLATE utf8_bin NOT NULL,
  `ROUND_INTERVAL_SELF` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ROUND_THRESHOLD_SELF` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ROUND_UNIT_SELF` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ROUND_INHERITED_FLAG` varchar(32) COLLATE utf8_bin NOT NULL,
  `ROUND_INTERVAL_INHERITED` varchar(32) COLLATE utf8_bin DEFAULT '',
  `ROUND_THRESHOLD_INHERITED` varchar(32) COLLATE utf8_bin DEFAULT '',
  `ROUND_UNIT_INHERITED` varchar(32) COLLATE utf8_bin DEFAULT '',
  `ROUND_TOTAL_FLAG` varchar(32) COLLATE utf8_bin NOT NULL,
  `ROUND_INTERVAL_TOTAL` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ROUND_THRESHOLD_TOTAL` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ROUND_UNIT_TOTAL` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `LOWER_LIMIT_SELF_FLAG` varchar(32) COLLATE utf8_bin NOT NULL,
  `LOWER_LIMIT_SELF` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `LOWER_LIMIT_INHERITED_FLAG` varchar(32) COLLATE utf8_bin NOT NULL,
  `LOWER_LIMIT_INHERITED` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `LOWER_LIMIT_TOTAL_FLAG` varchar(32) COLLATE utf8_bin NOT NULL,
  `LOWER_LIMIT_TOTAL` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `UPPER_LIMIT_SELF_FLAG` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPPER_LIMIT_SELF` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `UPPER_LIMIT_INHERITED_FLAG` varchar(64) COLLATE utf8_bin NOT NULL,
  `UPPER_LIMIT_INHERITED` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `UPPER_LIMIT_TOTAL_FLAG` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPPER_LIMIT_TOTAL` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ADJUSTMENT_INHERITED_FLAG` varchar(64) COLLATE utf8_bin NOT NULL,
  `ADJUSTMENT_INHERITED` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `NORMAL_RATE_DETAIL`
--

DROP TABLE IF EXISTS `NORMAL_RATE_DETAIL`;
CREATE TABLE IF NOT EXISTS `NORMAL_RATE_DETAIL` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `NORMAL_RATE_OBJ_ID` char(64) COLLATE utf8_bin NOT NULL,
  `LOWER_LIMIT` decimal(38,6) COLLATE utf8_bin DEFAULT NULL,
  `UPPER_LIMIT` decimal(38,6) COLLATE utf8_bin DEFAULT NULL,
  `INTERCEPT` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `SLOPE` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `NORMAL_RATE_PLAN`
--

DROP TABLE IF EXISTS `NORMAL_RATE_PLAN`;
CREATE TABLE IF NOT EXISTS `NORMAL_RATE_PLAN` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `ITEM_TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `REFERENCE_OBJ_ID` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `CHANNEL_OBJ_ID` char(32) COLLATE utf8_bin NOT NULL,
  `CHARGE_TYPE_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `EVENT_TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `EVENT_CONDITION` varchar(32) COLLATE utf8_bin NOT NULL,
  `RATING_METHOD` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `RATING_METHOD_REFERENCE_OBJ_ID` char(32) COLLATE utf8_bin DEFAULT NULL,
  `CURRENCY` char(5) COLLATE utf8_bin DEFAULT NULL,
  `FORWARDING_EVENT_TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `PRIVATE_SDP`
--

DROP TABLE IF EXISTS `PRIVATE_SDP`;
CREATE TABLE IF NOT EXISTS `PRIVATE_SDP` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `SDP_ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `SDP_NAME` varchar(255) COLLATE utf8_bin NOT NULL,
  `REGION_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(1) COLLATE utf8_bin NOT NULL,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `PROCESS_MANAGEMENT`
--

DROP TABLE IF EXISTS `PROCESS_MANAGEMENT`;
CREATE TABLE IF NOT EXISTS `PROCESS_MANAGEMENT` (
  `OBJ_ID` char(32) COLLATE utf8_bin NOT NULL,
  `EXECUTING_PROCESS` varchar(128) COLLATE utf8_bin NOT NULL,
  `START_TIME` datetime NOT NULL,
  `END_TIME` datetime NOT NULL DEFAULT '9999-12-31 23:59:59',
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT '0000-00-00 00:00:00',
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `PROCESS_RELATION`
--

DROP TABLE IF EXISTS `PROCESS_RELATION`;
CREATE TABLE IF NOT EXISTS `PROCESS_RELATION` (
  `OBJ_ID` char(32) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `TARGET_PROCESS` varchar(128) COLLATE utf8_bin NOT NULL,
  `RELATED_PROCESS` varchar(128) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT '0000-00-00 00:00:00',
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `SDP_USAGE_DATA_COLLECTION_INFO`
--

DROP TABLE IF EXISTS `SDP_USAGE_DATA_COLLECTION_INFO`;
CREATE TABLE IF NOT EXISTS `SDP_USAGE_DATA_COLLECTION_INFO` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `SDP_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `COLLECTION_TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `FORCED_TERMINATION_FLAG` char(1) COLLATE utf8_bin DEFAULT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `TAX`
--

DROP TABLE IF EXISTS `TAX`;
CREATE TABLE IF NOT EXISTS `TAX` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `TAX_ID` varchar(32) COLLATE utf8_bin NOT NULL,
  `TAX_CLASS` varchar(20) COLLATE utf8_bin NOT NULL,
  `RATE` decimal(38,6) COLLATE utf8_bin DEFAULT NULL,
  `SCALE` varchar(4) COLLATE utf8_bin DEFAULT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `TAX_PLAN`
--

DROP TABLE IF EXISTS `TAX_PLAN`;
CREATE TABLE IF NOT EXISTS `TAX_PLAN` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `RATE_PLAN_TYPE` varchar(32) COLLATE utf8_bin NOT NULL,
  `RATE_PLAN_REFERENCE_OBJ_ID` varchar(50) COLLATE utf8_bin NOT NULL,
  `TARGET_AMOUNT` varchar(32) COLLATE utf8_bin NOT NULL,
  `TAX_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `NOTE` text COLLATE utf8_bin,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- テーブルの構造 `USAGE_DATA_GENERATION`
--

DROP TABLE IF EXISTS `USAGE_DATA_GENERATION`;
CREATE TABLE IF NOT EXISTS `USAGE_DATA_GENERATION` (
  `OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `STATUS` char(10) COLLATE utf8_bin NOT NULL,
  `START_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `END_TIME` char(20) COLLATE utf8_bin NOT NULL,
  `BILLING_ITEM_OBJ_ID` varbinary(64) NOT NULL,
  `TARGET_BILLING_ITEM_OBJ_ID` varchar(64) COLLATE utf8_bin NOT NULL,
  `REGISTRATION_LAYER` tinyint(3) unsigned NOT NULL,
  `INS_DT` datetime NOT NULL,
  `INS_BY` varchar(32) COLLATE utf8_bin NOT NULL,
  `UPD_DT` datetime DEFAULT NULL,
  `UPD_BY` varchar(32) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADJUSTMENT`
--
ALTER TABLE `ADJUSTMENT`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `BILLING_CHECK_TARGET`
--
ALTER TABLE `BILLING_CHECK_TARGET`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `BILLING_ITEM`
--
ALTER TABLE `BILLING_ITEM`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `BILLING_ITEM_EXTERNAL_DEPENDENCIES`
--
ALTER TABLE `BILLING_ITEM_EXTERNAL_DEPENDENCIES`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `CHANNEL_REFERENCE`
--
ALTER TABLE `CHANNEL_REFERENCE`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `CHARGE_STATEMENT_DEFINITION`
--
ALTER TABLE `CHARGE_STATEMENT_DEFINITION`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `CHARGE_STATEMENT_LANGUAGE_DEFINITION`
--
ALTER TABLE `CHARGE_STATEMENT_LANGUAGE_DEFINITION`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `CHARGE_TYPE`
--
ALTER TABLE `CHARGE_TYPE`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `DISCOUNT_AMOUNT`
--
ALTER TABLE `DISCOUNT_AMOUNT`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `DISCOUNT_CARRYOVER`
--
ALTER TABLE `DISCOUNT_CARRYOVER`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `DISCOUNT_CONDITION`
--
ALTER TABLE `DISCOUNT_CONDITION`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `DISCOUNT_RATE`
--
ALTER TABLE `DISCOUNT_RATE`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `DISCOUNT_RATE_DETAIL`
--
ALTER TABLE `DISCOUNT_RATE_DETAIL`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `DISCOUNT_RATE_PLAN`
--
ALTER TABLE `DISCOUNT_RATE_PLAN`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GET_BELUGA_REPORT_EXCEPTION_CHANNEL`
--
ALTER TABLE `GET_BELUGA_REPORT_EXCEPTION_CHANNEL`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GET_BILLING_DEFINITION`
--
ALTER TABLE `GET_BILLING_DEFINITION`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GET_BILLING_IN_BULK_DEFINITION`
--
ALTER TABLE `GET_BILLING_IN_BULK_DEFINITION`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GET_GBS_REPORT_BILLING_ACCOUNT_ID_DEFINITION`
--
ALTER TABLE `GET_GBS_REPORT_BILLING_ACCOUNT_ID_DEFINITION`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GET_GBS_REPORT_EXCEPTION_DEFINITION`
--
ALTER TABLE `GET_GBS_REPORT_EXCEPTION_DEFINITION`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GET_GBS_REPORT_NRC_DEFINITION`
--
ALTER TABLE `GET_GBS_REPORT_NRC_DEFINITION`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GET_GBS_REPORT_SERVICE_DEFINITION`
--
ALTER TABLE `GET_GBS_REPORT_SERVICE_DEFINITION`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GET_SALES_DATA_BILLING_ITEM_DEFINITION`
--
ALTER TABLE `GET_SALES_DATA_BILLING_ITEM_DEFINITION`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GOL_DEDICATED_HYPERVISOR_RHEL_TARGET_ITEM`
--
ALTER TABLE `GOL_DEDICATED_HYPERVISOR_RHEL_TARGET_ITEM`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GOL_DEDICATED_HYPERVISOR_SQLSERVER_TARGET_ITEM`
--
ALTER TABLE `GOL_DEDICATED_HYPERVISOR_SQLSERVER_TARGET_ITEM`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GOL_DEDICATED_HYPERVISOR_WINDOWS_TARGET_ITEM`
--
ALTER TABLE `GOL_DEDICATED_HYPERVISOR_WINDOWS_TARGET_ITEM`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GOL_HYPERV_TARGET_ITEM`
--
ALTER TABLE `GOL_HYPERV_TARGET_ITEM`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GOL_VIRTUAL_SERVER_RHEL_CPU_GROUP`
--
ALTER TABLE `GOL_VIRTUAL_SERVER_RHEL_CPU_GROUP`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GOL_VIRTUAL_SERVER_RHEL_PRICE_LIST`
--
ALTER TABLE `GOL_VIRTUAL_SERVER_RHEL_PRICE_LIST`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GOL_VIRTUAL_SERVER_RHEL_TARGET_ITEM`
--
ALTER TABLE `GOL_VIRTUAL_SERVER_RHEL_TARGET_ITEM`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `GOL_VIRTUAL_SERVER_TARGET_ITEM`
--
ALTER TABLE `GOL_VIRTUAL_SERVER_TARGET_ITEM`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `INTERNAL_USE_RULE`
--
ALTER TABLE `INTERNAL_USE_RULE`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `NORMAL_RATE`
--
ALTER TABLE `NORMAL_RATE`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `NORMAL_RATE_DETAIL`
--
ALTER TABLE `NORMAL_RATE_DETAIL`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `NORMAL_RATE_PLAN`
--
ALTER TABLE `NORMAL_RATE_PLAN`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `PRIVATE_SDP`
--
ALTER TABLE `PRIVATE_SDP`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `PROCESS_MANAGEMENT`
--
ALTER TABLE `PROCESS_MANAGEMENT`
  ADD PRIMARY KEY (`OBJ_ID`),
  ADD KEY `EXECUTING_PROCESS` (`EXECUTING_PROCESS`);

--
-- Indexes for table `PROCESS_RELATION`
--
ALTER TABLE `PROCESS_RELATION`
  ADD PRIMARY KEY (`OBJ_ID`),
  ADD KEY `TARGET_PROCESS` (`TARGET_PROCESS`,`RELATED_PROCESS`);

--
-- Indexes for table `SDP_USAGE_DATA_COLLECTION_INFO`
--
ALTER TABLE `SDP_USAGE_DATA_COLLECTION_INFO`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `TAX`
--
ALTER TABLE `TAX`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `TAX_PLAN`
--
ALTER TABLE `TAX_PLAN`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `USAGE_DATA_GENERATION`
--
ALTER TABLE `USAGE_DATA_GENERATION`
  ADD PRIMARY KEY (`OBJ_ID`);

--
-- Indexes for table `PROCESS_MANAGEMENT`
--
ALTER TABLE `PROCESS_MANAGEMENT`
  ADD PRIMARY KEY (`OBJ_ID`),
  ADD KEY `EXECUTING_PROCESS` (`EXECUTING_PROCESS`);

--
-- Indexes for table `PROCESS_RELATION`
--
ALTER TABLE `PROCESS_RELATION`
  ADD PRIMARY KEY (`OBJ_ID`),
  ADD KEY `TARGET_PROCESS` (`TARGET_PROCESS`,`RELATED_PROCESS`);
  
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
