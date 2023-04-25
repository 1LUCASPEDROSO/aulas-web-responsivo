-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 25-Abr-2023 às 17:09
-- Versão do servidor: 10.4.16-MariaDB
-- versão do PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_rede`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_access_collections`
--

CREATE TABLE `elgg_access_collections` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `owner_guid` int(20) UNSIGNED NOT NULL,
  `subtype` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `elgg_access_collections`
--

INSERT INTO `elgg_access_collections` (`id`, `name`, `owner_guid`, `subtype`) VALUES
(3, 'friends', 40, 'friends');

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_access_collection_membership`
--

CREATE TABLE `elgg_access_collection_membership` (
  `user_guid` int(20) UNSIGNED NOT NULL,
  `access_collection_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_annotations`
--

CREATE TABLE `elgg_annotations` (
  `id` int(11) NOT NULL,
  `entity_guid` int(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `value` longtext NOT NULL,
  `value_type` enum('integer','text','bool') NOT NULL,
  `owner_guid` int(20) UNSIGNED NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_api_users`
--

CREATE TABLE `elgg_api_users` (
  `id` int(11) NOT NULL,
  `api_key` varchar(40) DEFAULT NULL,
  `secret` varchar(40) NOT NULL,
  `active` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_config`
--

CREATE TABLE `elgg_config` (
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `elgg_config`
--

INSERT INTO `elgg_config` (`name`, `value`) VALUES
('allowed_languages', 's:89:\"bg,ca,hr,da,de,es,fi,fr,gl,el,id,it,ja,ko,cmn,nl,fa,pl,ro_ro,ru,gd,sr,sv,tr,cs,zh_hans,en\";'),
('allow_registration', 'b:1;'),
('allow_user_default_access', 'b:0;'),
('can_change_username', 'b:0;'),
('comments_group_only', 'b:1;'),
('comments_latest_first', 'b:1;'),
('comments_max_depth', 'i:0;'),
('comments_per_page', 'i:25;'),
('comment_box_collapses', 'b:1;'),
('default_access', 'i:1;'),
('default_limit', 'i:10;'),
('disable_rss', 'b:0;'),
('email_html_part', 'b:1;'),
('email_html_part_images', 's:2:\"no\";'),
('enable_delayed_email', 'b:1;'),
('friendly_time_number_of_days', 'i:30;'),
('installed', 'i:1682434114;'),
('language', 's:2:\"en\";'),
('lastcache', 'i:1682434592;'),
('message_delay', 'i:6;'),
('pagination_behaviour', 's:12:\"ajax-replace\";'),
('remove_branding', 'b:0;'),
('require_admin_validation', 'b:0;'),
('simplecache_enabled', 'i:1;'),
('simplecache_minify_css', 'b:1;'),
('simplecache_minify_js', 'b:1;'),
('system_cache_enabled', 'i:1;'),
('walled_garden', 'b:0;'),
('who_can_change_language', 's:8:\"everyone\";'),
('__site_secret__', 's:32:\"zZ13dQptr-rcEXXGbdAVvkMzI7yEOhxw\";');

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_delayed_email_queue`
--

CREATE TABLE `elgg_delayed_email_queue` (
  `id` int(11) UNSIGNED NOT NULL,
  `recipient_guid` bigint(20) UNSIGNED NOT NULL,
  `delivery_interval` varchar(255) NOT NULL,
  `data` mediumblob NOT NULL,
  `timestamp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_entities`
--

CREATE TABLE `elgg_entities` (
  `guid` int(20) UNSIGNED NOT NULL,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` varchar(252) CHARACTER SET utf8 NOT NULL,
  `owner_guid` int(20) UNSIGNED NOT NULL,
  `container_guid` int(20) UNSIGNED NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) NOT NULL,
  `last_action` int(11) NOT NULL DEFAULT 0,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `elgg_entities`
--

INSERT INTO `elgg_entities` (`guid`, `type`, `subtype`, `owner_guid`, `container_guid`, `access_id`, `time_created`, `time_updated`, `last_action`, `enabled`) VALUES
(1, 'site', 'site', 0, 0, 2, 1682434114, 1682434592, 1682434114, 'yes'),
(2, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(3, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(4, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(5, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(6, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(7, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(8, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(9, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(10, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(11, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(12, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(13, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(14, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(15, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(16, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(17, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(18, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(19, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(20, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(21, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(22, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(23, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(24, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(25, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(26, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(27, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(28, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(29, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(30, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(31, 'object', 'plugin', 1, 1, 2, 1682434114, 1682434114, 1682434114, 'yes'),
(32, 'object', 'elgg_upgrade', 1, 1, 0, 1682434117, 1682434117, 1682434117, 'yes'),
(33, 'object', 'elgg_upgrade', 1, 1, 0, 1682434117, 1682434117, 1682434117, 'yes'),
(34, 'object', 'elgg_upgrade', 1, 1, 0, 1682434117, 1682434117, 1682434117, 'yes'),
(35, 'object', 'elgg_upgrade', 1, 1, 0, 1682434117, 1682434117, 1682434117, 'yes'),
(36, 'object', 'elgg_upgrade', 1, 1, 0, 1682434117, 1682434117, 1682434117, 'yes'),
(37, 'object', 'elgg_upgrade', 1, 1, 0, 1682434117, 1682434117, 1682434117, 'yes'),
(38, 'object', 'elgg_upgrade', 1, 1, 0, 1682434117, 1682434117, 1682434117, 'yes'),
(39, 'object', 'elgg_upgrade', 1, 1, 0, 1682434117, 1682434117, 1682434117, 'yes'),
(40, 'user', 'user', 0, 0, 2, 1682434246, 1682434246, 1682434692, 'yes'),
(41, 'object', 'widget', 40, 40, 2, 1682434246, 1682434246, 1682434246, 'yes'),
(42, 'object', 'widget', 40, 40, 2, 1682434246, 1682434246, 1682434246, 'yes'),
(43, 'object', 'widget', 40, 40, 2, 1682434246, 1682434246, 1682434246, 'yes'),
(44, 'object', 'widget', 40, 40, 2, 1682434246, 1682434246, 1682434246, 'yes'),
(46, 'object', 'widget', 40, 40, 2, 1682434354, 1682434354, 1682434354, 'yes');

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_entity_relationships`
--

CREATE TABLE `elgg_entity_relationships` (
  `id` int(11) NOT NULL,
  `guid_one` int(20) UNSIGNED NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `guid_two` int(20) UNSIGNED NOT NULL,
  `time_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `elgg_entity_relationships`
--

INSERT INTO `elgg_entity_relationships` (`id`, `guid_one`, `relationship`, `guid_two`, `time_created`) VALUES
(1, 2, 'active_plugin', 1, 1682434115),
(2, 3, 'active_plugin', 1, 1682434115),
(3, 4, 'active_plugin', 1, 1682434115),
(4, 5, 'active_plugin', 1, 1682434115),
(5, 6, 'active_plugin', 1, 1682434116),
(7, 10, 'active_plugin', 1, 1682434116),
(9, 13, 'active_plugin', 1, 1682434116),
(10, 14, 'active_plugin', 1, 1682434116),
(11, 15, 'active_plugin', 1, 1682434116),
(12, 16, 'active_plugin', 1, 1682434116),
(13, 17, 'active_plugin', 1, 1682434116),
(14, 18, 'active_plugin', 1, 1682434116),
(15, 19, 'active_plugin', 1, 1682434116),
(16, 20, 'active_plugin', 1, 1682434116),
(17, 21, 'active_plugin', 1, 1682434116),
(18, 22, 'active_plugin', 1, 1682434116),
(19, 23, 'active_plugin', 1, 1682434117),
(20, 24, 'active_plugin', 1, 1682434117),
(21, 25, 'active_plugin', 1, 1682434117),
(22, 27, 'active_plugin', 1, 1682434117),
(23, 29, 'active_plugin', 1, 1682434117),
(24, 30, 'active_plugin', 1, 1682434117),
(25, 40, 'notify:email', 41, 1682434246),
(26, 40, 'notify:email', 42, 1682434246),
(27, 40, 'notify:email', 43, 1682434246),
(28, 40, 'notify:email', 44, 1682434246),
(30, 40, 'notify:email', 46, 1682434354);

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_hmac_cache`
--

CREATE TABLE `elgg_hmac_cache` (
  `hmac` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ts` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_metadata`
--

CREATE TABLE `elgg_metadata` (
  `id` int(11) NOT NULL,
  `entity_guid` int(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `value` longtext NOT NULL,
  `value_type` enum('integer','text','bool') NOT NULL,
  `time_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `elgg_metadata`
--

INSERT INTO `elgg_metadata` (`id`, `entity_guid`, `name`, `value`, `value_type`, `time_created`) VALUES
(1, 1, 'name', 'Lprd', 'text', 1682434114),
(2, 1, 'email', 'lprd@elgg.com', 'text', 1682434114),
(3, 2, 'title', 'activity', 'text', 1682434114),
(4, 3, 'title', 'blog', 'text', 1682434114),
(5, 4, 'title', 'bookmarks', 'text', 1682434114),
(6, 5, 'title', 'ckeditor', 'text', 1682434114),
(7, 6, 'title', 'custom_index', 'text', 1682434114),
(8, 7, 'title', 'dashboard', 'text', 1682434114),
(9, 8, 'title', 'developers', 'text', 1682434114),
(10, 9, 'title', 'discussions', 'text', 1682434114),
(11, 10, 'title', 'embed', 'text', 1682434114),
(12, 11, 'title', 'externalpages', 'text', 1682434114),
(13, 12, 'title', 'file', 'text', 1682434114),
(14, 13, 'title', 'friends', 'text', 1682434114),
(15, 14, 'title', 'friends_collections', 'text', 1682434114),
(16, 15, 'title', 'garbagecollector', 'text', 1682434114),
(17, 16, 'title', 'groups', 'text', 1682434114),
(18, 17, 'title', 'invitefriends', 'text', 1682434114),
(19, 18, 'title', 'likes', 'text', 1682434114),
(20, 19, 'title', 'members', 'text', 1682434114),
(21, 20, 'title', 'messageboard', 'text', 1682434114),
(22, 21, 'title', 'messages', 'text', 1682434114),
(23, 22, 'title', 'pages', 'text', 1682434114),
(24, 23, 'title', 'profile', 'text', 1682434114),
(25, 24, 'title', 'reportedcontent', 'text', 1682434114),
(26, 25, 'title', 'search', 'text', 1682434114),
(27, 26, 'title', 'site_notifications', 'text', 1682434114),
(28, 27, 'title', 'system_log', 'text', 1682434114),
(29, 28, 'title', 'tagcloud', 'text', 1682434114),
(30, 29, 'title', 'thewire', 'text', 1682434114),
(31, 30, 'title', 'uservalidationbyemail', 'text', 1682434114),
(32, 31, 'title', 'web_services', 'text', 1682434114),
(33, 40, 'banned', 'no', 'text', 1682434246),
(34, 40, 'admin', 'yes', 'text', 1682434246),
(35, 40, 'prev_last_action', '1682434666', 'integer', 1682434246),
(36, 40, 'last_login', '1682434246', 'integer', 1682434246),
(37, 40, 'prev_last_login', '0', 'integer', 1682434246),
(38, 40, 'username', '1lucaspedroso1', 'text', 1682434246),
(39, 40, 'email', 'pedrosolucas1745@gmail.com', 'text', 1682434246),
(40, 40, 'name', '1lucaspedroso1', 'text', 1682434246),
(41, 40, 'language', 'pt_br', 'text', 1682434246),
(42, 40, 'password_hash', '$2y$10$UX4nrdxA0VRlGdo/sAikoOClea/8XML.Pe7xXx88EE7BTFUZmEDR6', 'text', 1682434246),
(43, 40, 'notification:default:email', '1', 'integer', 1682434246),
(44, 40, 'validated', '1', 'bool', 1682434246),
(45, 40, 'validated_method', 'admin_user', 'text', 1682434246),
(46, 40, 'validated_ts', '1682434246', 'integer', 1682434246),
(47, 40, 'first_login', '1682434246', 'integer', 1682434246);

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_migrations`
--

CREATE TABLE `elgg_migrations` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `elgg_migrations`
--

INSERT INTO `elgg_migrations` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20170728010000, 'RemoveSiteGuid', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728020000, 'MigrateDatalistsToConfig', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728030000, 'DenormalizeMetastrings', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728040000, 'ChangeTableEngine', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728050000, 'ExpandTextColumnsToLongtext', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728060000, 'RemoveLegacyPasswordHashes', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728072548, 'CreateAccessCollectionsTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728073540, 'CreateAccessCollectionMembershipTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728073706, 'CreateAnnotationsTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728074504, 'CreateApiUsersTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728074600, 'CreateEntitiesTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728074645, 'CreateEntityRelationshipsTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728074729, 'CreateEntitySubtypesTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728074757, 'CreateGeoCacheTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728074828, 'CreateGroupsEntityTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728074857, 'CreateHmacCacheTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728074925, 'CreateMetadataTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728074959, 'CreateObjectsEntityTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728075027, 'CreatePrivateSettingsTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728075056, 'CreateQueueTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728075129, 'CreateRiverTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728075155, 'CreateSitesEntityTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728075232, 'CreateSystemLogTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728075306, 'CreateUsersApiSessionsTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728075337, 'CreateUsersEntityTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728075418, 'CreateUsersRememberMeCookiesTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728075454, 'CreateUsersSessionsTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170728075716, 'CreateConfigTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20170808084728, 'DropGeocodeCache', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20171006111953, 'DropSitesEntityTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20171006131622, 'DropGroupsEntityTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20171009115032, 'DropObjectsEntityTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20171010095648, 'DropUsersEntityTable', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20171016113827, 'UpdateMetadataColumns', '2023-04-25 17:47:55', '2023-04-25 17:47:55', 0),
(20171021111005, 'AddSubtypeIndexToRiverTable', '2023-04-25 17:47:55', '2023-04-25 17:47:56', 0),
(20171021111059, 'DenormalizeEntitySubtypes', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20171021111132, 'AlignSubtypeColumns', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20171106100916, 'AddAclSubtype', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20180109135052, 'DropTypeSubtypeFromRiverTable', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20180609152817, 'CreateSiteSecret', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20181107091651, 'AddEntitiesSubtypeIndex', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20190125082345, 'EntitiesAddTypeSubtypeIndex', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20190606111641, 'EntitiesAddTypeSubtypeContainerAndOwnerIndexes', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20191015125417, 'SetRiverEnabledToYes', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20200130161435, 'RemoveMetadataColumns', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20200130162616, 'RemoveRiverEnabledColumn', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20200303122949, 'AddTimeCreatedIndexToAnnotationsTable', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20200331083912, 'AddEntityGuidNameIndexToAnnotations', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20210225131119, 'IncreaseRelationshipColumnLength', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20210412110921, 'CreateDelayedEmailQueueTable', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20211224075815, 'SetCommentsLevelOne', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0),
(20220125084422, 'AddBooleanValueTypes', '2023-04-25 17:47:56', '2023-04-25 17:47:56', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_private_settings`
--

CREATE TABLE `elgg_private_settings` (
  `id` int(11) NOT NULL,
  `entity_guid` int(20) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `elgg_private_settings`
--

INSERT INTO `elgg_private_settings` (`id`, `entity_guid`, `name`, `value`) VALUES
(1, 2, 'elgg:internal:priority', '1'),
(2, 3, 'elgg:internal:priority', '2'),
(3, 4, 'elgg:internal:priority', '3'),
(4, 5, 'elgg:internal:priority', '4'),
(5, 6, 'elgg:internal:priority', '5'),
(6, 7, 'elgg:internal:priority', '6'),
(7, 8, 'elgg:internal:priority', '7'),
(8, 9, 'elgg:internal:priority', '8'),
(9, 10, 'elgg:internal:priority', '9'),
(10, 11, 'elgg:internal:priority', '10'),
(11, 12, 'elgg:internal:priority', '11'),
(12, 13, 'elgg:internal:priority', '12'),
(13, 14, 'elgg:internal:priority', '13'),
(14, 15, 'elgg:internal:priority', '14'),
(15, 16, 'elgg:internal:priority', '15'),
(16, 17, 'elgg:internal:priority', '16'),
(17, 18, 'elgg:internal:priority', '17'),
(18, 19, 'elgg:internal:priority', '18'),
(19, 20, 'elgg:internal:priority', '19'),
(20, 21, 'elgg:internal:priority', '20'),
(21, 22, 'elgg:internal:priority', '21'),
(22, 23, 'elgg:internal:priority', '22'),
(23, 24, 'elgg:internal:priority', '23'),
(24, 25, 'elgg:internal:priority', '24'),
(25, 26, 'elgg:internal:priority', '25'),
(26, 27, 'elgg:internal:priority', '26'),
(27, 28, 'elgg:internal:priority', '27'),
(28, 29, 'elgg:internal:priority', '28'),
(29, 30, 'elgg:internal:priority', '29'),
(30, 31, 'elgg:internal:priority', '30'),
(31, 32, 'id', 'core:2017080900'),
(32, 32, 'class', 'Elgg\\Upgrades\\AlterDatabaseToMultiByteCharset'),
(33, 32, 'title', 'core:upgrade:2017080900:title'),
(34, 32, 'description', 'core:upgrade:2017080900:description'),
(35, 32, 'offset', '0'),
(36, 32, 'is_completed', '1'),
(37, 33, 'id', 'core:2021040701'),
(38, 33, 'class', 'Elgg\\Upgrades\\ChangeUserNotificationSettingsNamespace'),
(39, 33, 'title', 'core:upgrade:2021040701:title'),
(40, 33, 'description', 'core:upgrade:2021040701:description'),
(41, 33, 'offset', '0'),
(42, 33, 'is_completed', '1'),
(43, 34, 'id', 'core:2021060401'),
(44, 34, 'class', 'Elgg\\Upgrades\\ContentOwnerSubscriptions'),
(45, 34, 'title', 'core:upgrade:2021060401:title'),
(46, 34, 'description', 'core:upgrade:2021060401:description'),
(47, 34, 'offset', '0'),
(48, 34, 'is_completed', '1'),
(49, 35, 'id', 'core:2020102301'),
(50, 35, 'class', 'Elgg\\Upgrades\\DeleteDiagnosticsPlugin'),
(51, 35, 'title', 'core:upgrade:2020102301:title'),
(52, 35, 'description', 'core:upgrade:2020102301:description'),
(53, 35, 'offset', '0'),
(54, 35, 'is_completed', '1'),
(55, 36, 'id', 'core:2021041901'),
(56, 36, 'class', 'Elgg\\Upgrades\\DeleteNotificationsPlugin'),
(57, 36, 'title', 'core:upgrade:2021041901:title'),
(58, 36, 'description', 'core:upgrade:2021041901:description'),
(59, 36, 'offset', '0'),
(60, 36, 'is_completed', '1'),
(61, 37, 'id', 'core:2021040801'),
(62, 37, 'class', 'Elgg\\Upgrades\\MigrateACLNotificationPreferences'),
(63, 37, 'title', 'core:upgrade:2021040801:title'),
(64, 37, 'description', 'core:upgrade:2021040801:description'),
(65, 37, 'offset', '0'),
(66, 37, 'is_completed', '1'),
(67, 38, 'id', 'core:2021022401'),
(68, 38, 'class', 'Elgg\\Upgrades\\NotificationsPrefix'),
(69, 38, 'title', 'core:upgrade:2021022401:title'),
(70, 38, 'description', 'core:upgrade:2021022401:description'),
(71, 38, 'offset', '0'),
(72, 38, 'is_completed', '1'),
(73, 39, 'id', 'core:2023011701'),
(74, 39, 'class', 'Elgg\\Upgrades\\RemoveOrphanedThreadedComments'),
(75, 39, 'title', 'core:upgrade:2023011701:title'),
(76, 39, 'description', 'core:upgrade:2023011701:description'),
(77, 39, 'offset', '0'),
(78, 39, 'is_completed', '1'),
(79, 32, 'start_time', '1682434117'),
(80, 32, 'completed_time', '1682434117'),
(81, 33, 'start_time', '1682434117'),
(82, 33, 'completed_time', '1682434117'),
(83, 34, 'start_time', '1682434117'),
(84, 34, 'completed_time', '1682434117'),
(85, 35, 'start_time', '1682434117'),
(86, 35, 'completed_time', '1682434117'),
(87, 36, 'start_time', '1682434117'),
(88, 36, 'completed_time', '1682434117'),
(89, 37, 'start_time', '1682434117'),
(90, 37, 'completed_time', '1682434117'),
(91, 38, 'start_time', '1682434117'),
(92, 38, 'completed_time', '1682434117'),
(93, 39, 'start_time', '1682434117'),
(94, 39, 'completed_time', '1682434117'),
(95, 41, 'handler', 'admin_welcome'),
(96, 41, 'context', 'admin'),
(97, 41, 'column', '1'),
(98, 41, 'order', '0'),
(99, 42, 'handler', 'content_stats'),
(100, 42, 'context', 'admin'),
(101, 42, 'order', '10'),
(102, 42, 'column', '1'),
(103, 43, 'handler', 'online_users'),
(104, 43, 'context', 'admin'),
(105, 43, 'column', '2'),
(106, 43, 'order', '0'),
(107, 44, 'handler', 'new_users'),
(108, 44, 'context', 'admin'),
(109, 44, 'order', '10'),
(110, 44, 'column', '2'),
(111, 46, 'handler', 'banned_users'),
(112, 46, 'context', 'admin'),
(113, 46, 'order', '-10'),
(114, 46, 'column', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_queue`
--

CREATE TABLE `elgg_queue` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `data` mediumblob NOT NULL,
  `timestamp` int(11) NOT NULL,
  `worker` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `elgg_queue`
--

INSERT INTO `elgg_queue` (`id`, `name`, `data`, `timestamp`, `worker`) VALUES
(1, 'notifications', 0x4f3a34383a22456c67675c4e6f74696669636174696f6e735c537562736372697074696f6e4e6f74696669636174696f6e4576656e74223a343a7b733a363a22616374696f6e223b733a31303a226d616b655f61646d696e223b733a393a226f626a6563745f6964223b693a34303b733a31313a226f626a6563745f74797065223b733a343a2275736572223b733a31343a226f626a6563745f73756274797065223b733a343a2275736572223b7d, 1682434246, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_river`
--

CREATE TABLE `elgg_river` (
  `id` int(11) NOT NULL,
  `action_type` varchar(32) NOT NULL,
  `view` text NOT NULL,
  `subject_guid` int(20) UNSIGNED NOT NULL,
  `object_guid` int(20) UNSIGNED NOT NULL,
  `target_guid` int(20) UNSIGNED NOT NULL,
  `annotation_id` int(11) NOT NULL,
  `posted` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_system_log`
--

CREATE TABLE `elgg_system_log` (
  `id` int(11) NOT NULL,
  `object_id` int(11) NOT NULL,
  `object_class` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `object_subtype` varchar(252) CHARACTER SET utf8 NOT NULL,
  `event` varchar(50) NOT NULL,
  `performed_by_guid` int(20) UNSIGNED NOT NULL,
  `owner_guid` int(20) UNSIGNED NOT NULL,
  `access_id` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `time_created` int(11) NOT NULL,
  `ip_address` varchar(46) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `elgg_system_log`
--

INSERT INTO `elgg_system_log` (`id`, `object_id`, `object_class`, `object_type`, `object_subtype`, `event`, `performed_by_guid`, `owner_guid`, `access_id`, `enabled`, `time_created`, `ip_address`) VALUES
(1, 45, 'ElggAdminNotice', 'object', 'admin_notice', 'delete:object', 40, 40, 0, 'yes', 1682434278, '::1'),
(2, 46, 'ElggWidget', 'object', 'widget', 'create:object', 40, 40, 2, 'yes', 1682434354, '::1'),
(3, 30, 'ElggRelationship', 'relationship', 'notify:email', 'create:relationship', 40, 0, 2, 'yes', 1682434354, '::1'),
(4, 6, 'ElggRelationship', 'relationship', 'active_plugin', 'delete:relationship', 40, 0, 2, 'yes', 1682434386, '::1'),
(5, 8, 'ElggRelationship', 'relationship', 'active_plugin', 'delete:relationship', 40, 0, 2, 'yes', 1682434392, '::1'),
(6, 1, 'ElggSite', 'site', 'site', 'update:site', 40, 0, 2, 'yes', 1682434592, '::1'),
(7, 1, 'ElggSite', 'site', 'site', 'update:after:site', 40, 0, 2, 'yes', 1682434592, '::1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_users_apisessions`
--

CREATE TABLE `elgg_users_apisessions` (
  `id` int(11) NOT NULL,
  `user_guid` int(20) UNSIGNED NOT NULL,
  `token` varchar(40) DEFAULT NULL,
  `expires` int(11) NOT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_users_remember_me_cookies`
--

CREATE TABLE `elgg_users_remember_me_cookies` (
  `code` varchar(32) NOT NULL,
  `guid` int(20) UNSIGNED NOT NULL,
  `timestamp` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `elgg_users_sessions`
--

CREATE TABLE `elgg_users_sessions` (
  `session` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ts` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `data` mediumblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `elgg_users_sessions`
--

INSERT INTO `elgg_users_sessions` (`session`, `ts`, `data`) VALUES
('80hu8robtpgp2ct316rrekmi43', 1682434693, 0x5f7366325f617474726962757465737c613a343a7b733a31343a225f5f656c67675f73657373696f6e223b733a32323a22474f325a72757351325278596f31334d78424c2d7a49223b733a343a2267756964223b693a34303b733a31323a225f5f757365725f746f6b656e223b733a34333a22657a326179326e78484f5732414e767249385a717a46775a65797a736a7138797334396779504c6a326941223b733a31303a225f656c67675f6d736773223b613a303a7b7d7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638323433343639323b733a313a2263223b693a313638323433343132303b733a313a226c223b693a303b7d),
('lio42o7pvu8dsveh0iqctiilm8', 1682434246, 0x5f7366325f617474726962757465737c613a333a7b733a31343a225f5f656c67675f73657373696f6e223b733a32323a22474f325a72757351325278596f31334d78424c2d7a49223b733a343a2267756964223b693a34303b733a31323a225f5f757365725f746f6b656e223b733a34333a22657a326179326e78484f5732414e767249385a717a46775a65797a736a7138797334396779504c6a326941223b7d5f7366325f6d6574617c613a333a7b733a313a2275223b693a313638323433343234363b733a313a2263223b693a313638323433343132303b733a313a226c223b693a303b7d5f73796d666f6e795f666c61736865737c613a303a7b7d);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `elgg_access_collections`
--
ALTER TABLE `elgg_access_collections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `owner_guid` (`owner_guid`);

--
-- Índices para tabela `elgg_access_collection_membership`
--
ALTER TABLE `elgg_access_collection_membership`
  ADD PRIMARY KEY (`user_guid`,`access_collection_id`);

--
-- Índices para tabela `elgg_annotations`
--
ALTER TABLE `elgg_annotations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_guid` (`entity_guid`),
  ADD KEY `name` (`name`(50)),
  ADD KEY `value` (`value`(50)),
  ADD KEY `owner_guid` (`owner_guid`),
  ADD KEY `access_id` (`access_id`),
  ADD KEY `time_created` (`time_created`),
  ADD KEY `entity_guid_name` (`entity_guid`,`name`(255));

--
-- Índices para tabela `elgg_api_users`
--
ALTER TABLE `elgg_api_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_key` (`api_key`);

--
-- Índices para tabela `elgg_config`
--
ALTER TABLE `elgg_config`
  ADD PRIMARY KEY (`name`);

--
-- Índices para tabela `elgg_delayed_email_queue`
--
ALTER TABLE `elgg_delayed_email_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipient_guid` (`recipient_guid`),
  ADD KEY `delivery_interval` (`delivery_interval`),
  ADD KEY `recipient_interval` (`recipient_guid`,`delivery_interval`);

--
-- Índices para tabela `elgg_entities`
--
ALTER TABLE `elgg_entities`
  ADD PRIMARY KEY (`guid`),
  ADD KEY `type` (`type`),
  ADD KEY `owner_guid` (`owner_guid`),
  ADD KEY `container_guid` (`container_guid`),
  ADD KEY `access_id` (`access_id`),
  ADD KEY `time_created` (`time_created`),
  ADD KEY `time_updated` (`time_updated`),
  ADD KEY `subtype` (`subtype`(50)),
  ADD KEY `type_subtype` (`type`,`subtype`(50)),
  ADD KEY `type_subtype_owner` (`type`,`subtype`(50),`owner_guid`),
  ADD KEY `type_subtype_container` (`type`,`subtype`(50),`container_guid`);

--
-- Índices para tabela `elgg_entity_relationships`
--
ALTER TABLE `elgg_entity_relationships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `guid_one` (`guid_one`,`relationship`,`guid_two`),
  ADD KEY `relationship` (`relationship`),
  ADD KEY `guid_two` (`guid_two`);

--
-- Índices para tabela `elgg_hmac_cache`
--
ALTER TABLE `elgg_hmac_cache`
  ADD PRIMARY KEY (`hmac`),
  ADD KEY `ts` (`ts`);

--
-- Índices para tabela `elgg_metadata`
--
ALTER TABLE `elgg_metadata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entity_guid` (`entity_guid`),
  ADD KEY `name` (`name`(50)),
  ADD KEY `value` (`value`(50));

--
-- Índices para tabela `elgg_migrations`
--
ALTER TABLE `elgg_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Índices para tabela `elgg_private_settings`
--
ALTER TABLE `elgg_private_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `entity_guid` (`entity_guid`,`name`),
  ADD KEY `name` (`name`),
  ADD KEY `value` (`value`(50));

--
-- Índices para tabela `elgg_queue`
--
ALTER TABLE `elgg_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `retrieve` (`timestamp`,`worker`);

--
-- Índices para tabela `elgg_river`
--
ALTER TABLE `elgg_river`
  ADD PRIMARY KEY (`id`),
  ADD KEY `action_type` (`action_type`),
  ADD KEY `subject_guid` (`subject_guid`),
  ADD KEY `object_guid` (`object_guid`),
  ADD KEY `target_guid` (`target_guid`),
  ADD KEY `annotation_id` (`annotation_id`),
  ADD KEY `posted` (`posted`);

--
-- Índices para tabela `elgg_system_log`
--
ALTER TABLE `elgg_system_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `object_class` (`object_class`),
  ADD KEY `object_type` (`object_type`),
  ADD KEY `object_subtype` (`object_subtype`),
  ADD KEY `event` (`event`),
  ADD KEY `performed_by_guid` (`performed_by_guid`),
  ADD KEY `access_id` (`access_id`),
  ADD KEY `time_created` (`time_created`),
  ADD KEY `river_key` (`object_type`,`object_subtype`,`event`(25));

--
-- Índices para tabela `elgg_users_apisessions`
--
ALTER TABLE `elgg_users_apisessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_guid` (`user_guid`),
  ADD KEY `token` (`token`);

--
-- Índices para tabela `elgg_users_remember_me_cookies`
--
ALTER TABLE `elgg_users_remember_me_cookies`
  ADD PRIMARY KEY (`code`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Índices para tabela `elgg_users_sessions`
--
ALTER TABLE `elgg_users_sessions`
  ADD PRIMARY KEY (`session`),
  ADD KEY `ts` (`ts`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `elgg_access_collections`
--
ALTER TABLE `elgg_access_collections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `elgg_annotations`
--
ALTER TABLE `elgg_annotations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `elgg_api_users`
--
ALTER TABLE `elgg_api_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `elgg_delayed_email_queue`
--
ALTER TABLE `elgg_delayed_email_queue`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `elgg_entities`
--
ALTER TABLE `elgg_entities`
  MODIFY `guid` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de tabela `elgg_entity_relationships`
--
ALTER TABLE `elgg_entity_relationships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `elgg_metadata`
--
ALTER TABLE `elgg_metadata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `elgg_private_settings`
--
ALTER TABLE `elgg_private_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT de tabela `elgg_queue`
--
ALTER TABLE `elgg_queue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `elgg_river`
--
ALTER TABLE `elgg_river`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `elgg_system_log`
--
ALTER TABLE `elgg_system_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `elgg_users_apisessions`
--
ALTER TABLE `elgg_users_apisessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
