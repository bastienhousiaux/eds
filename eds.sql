-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 17 sep. 2018 à 15:37
-- Version du serveur :  10.1.33-MariaDB
-- Version de PHP :  7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `eds`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-15 10:26:23', '2018-09-15 08:26:23', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_em_bookings`
--

CREATE TABLE `wp_em_bookings` (
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED DEFAULT NULL,
  `person_id` bigint(20) UNSIGNED NOT NULL,
  `booking_spaces` int(5) NOT NULL,
  `booking_comment` mediumtext COLLATE utf8mb4_unicode_ci,
  `booking_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `booking_status` tinyint(1) NOT NULL DEFAULT '1',
  `booking_price` decimal(14,4) UNSIGNED NOT NULL DEFAULT '0.0000',
  `booking_tax_rate` decimal(7,4) DEFAULT NULL,
  `booking_taxes` decimal(14,4) DEFAULT NULL,
  `booking_meta` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_em_events`
--

CREATE TABLE `wp_em_events` (
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `event_slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_owner` bigint(20) UNSIGNED DEFAULT NULL,
  `event_status` int(1) DEFAULT NULL,
  `event_name` mediumtext COLLATE utf8mb4_unicode_ci,
  `event_start_date` date DEFAULT NULL,
  `event_end_date` date DEFAULT NULL,
  `event_start_time` time DEFAULT NULL,
  `event_end_time` time DEFAULT NULL,
  `event_all_day` int(1) DEFAULT NULL,
  `event_start` datetime DEFAULT NULL,
  `event_end` datetime DEFAULT NULL,
  `event_timezone` text COLLATE utf8mb4_unicode_ci,
  `post_content` longtext COLLATE utf8mb4_unicode_ci,
  `event_rsvp` tinyint(1) NOT NULL DEFAULT '0',
  `event_rsvp_date` date DEFAULT NULL,
  `event_rsvp_time` time DEFAULT NULL,
  `event_rsvp_spaces` int(5) DEFAULT NULL,
  `event_spaces` int(5) DEFAULT '0',
  `event_private` tinyint(1) NOT NULL DEFAULT '0',
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `recurrence_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event_date_created` datetime DEFAULT NULL,
  `event_date_modified` datetime DEFAULT NULL,
  `recurrence` tinyint(1) DEFAULT '0',
  `recurrence_interval` int(4) DEFAULT NULL,
  `recurrence_freq` text COLLATE utf8mb4_unicode_ci,
  `recurrence_byday` text COLLATE utf8mb4_unicode_ci,
  `recurrence_byweekno` int(4) DEFAULT NULL,
  `recurrence_days` int(4) DEFAULT NULL,
  `recurrence_rsvp_days` int(3) DEFAULT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_em_events`
--

INSERT INTO `wp_em_events` (`event_id`, `post_id`, `event_slug`, `event_owner`, `event_status`, `event_name`, `event_start_date`, `event_end_date`, `event_start_time`, `event_end_time`, `event_all_day`, `event_start`, `event_end`, `event_timezone`, `post_content`, `event_rsvp`, `event_rsvp_date`, `event_rsvp_time`, `event_rsvp_spaces`, `event_spaces`, `event_private`, `location_id`, `recurrence_id`, `event_date_created`, `event_date_modified`, `recurrence`, `recurrence_interval`, `recurrence_freq`, `recurrence_byday`, `recurrence_byweekno`, `recurrence_days`, `recurrence_rsvp_days`, `blog_id`, `group_id`) VALUES
(1, 144, 'test', 1, 1, 'test', '2018-09-20', '2018-09-22', '00:00:00', '23:59:59', 1, '2018-09-19 22:00:00', '2018-09-22 21:59:59', 'Europe/Paris', '', 0, NULL, NULL, NULL, NULL, 0, 2, NULL, '2018-09-17 14:56:49', '2018-09-17 15:01:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_em_locations`
--

CREATE TABLE `wp_em_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `blog_id` bigint(20) UNSIGNED DEFAULT NULL,
  `location_slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_name` mediumtext COLLATE utf8mb4_unicode_ci,
  `location_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `location_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_town` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_state` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_postcode` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_region` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_country` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_latitude` float(10,6) DEFAULT NULL,
  `location_longitude` float(10,6) DEFAULT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_ci,
  `location_status` int(1) DEFAULT NULL,
  `location_private` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_em_locations`
--

INSERT INTO `wp_em_locations` (`location_id`, `post_id`, `blog_id`, `location_slug`, `location_name`, `location_owner`, `location_address`, `location_town`, `location_state`, `location_postcode`, `location_region`, `location_country`, `location_latitude`, `location_longitude`, `post_content`, `location_status`, `location_private`) VALUES
(1, 146, 0, NULL, 'PIL', 1, '9 rue de Mulhouse', 'Liege', NULL, '4020', NULL, NULL, 50.632370, 5.587390, NULL, NULL, 0),
(2, 147, 0, 'pil', 'PIL', 1, '9 rue de Mulhouse', 'Liege', NULL, '4020', NULL, 'BE', 50.632370, 5.587390, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_em_meta`
--

CREATE TABLE `wp_em_meta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  `meta_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_em_tickets`
--

CREATE TABLE `wp_em_tickets` (
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `ticket_price` decimal(14,4) DEFAULT NULL,
  `ticket_start` datetime DEFAULT NULL,
  `ticket_end` datetime DEFAULT NULL,
  `ticket_min` int(10) DEFAULT NULL,
  `ticket_max` int(10) DEFAULT NULL,
  `ticket_spaces` int(11) DEFAULT NULL,
  `ticket_members` int(1) DEFAULT NULL,
  `ticket_members_roles` longtext COLLATE utf8mb4_unicode_ci,
  `ticket_guests` int(1) DEFAULT NULL,
  `ticket_required` int(1) DEFAULT NULL,
  `ticket_meta` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_em_tickets_bookings`
--

CREATE TABLE `wp_em_tickets_bookings` (
  `ticket_booking_id` bigint(20) UNSIGNED NOT NULL,
  `booking_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_booking_spaces` int(6) NOT NULL,
  `ticket_booking_price` decimal(14,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/eds', 'yes'),
(2, 'home', 'http://localhost/eds', 'yes'),
(3, 'blogname', 'eds', 'yes'),
(4, 'blogdescription', 'Un site utilisant WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'bertholdberthi@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:7:{i:0;s:33:\"addthis/addthis_social_widget.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:50:\"contact-form-7-mailchimp-extension/cf7-mch-ext.php\";i:4;s:36:\"contact-form-7/wp-contact-form-7.php\";i:5;s:33:\"events-manager/events-manager.php\";i:6;s:21:\"flamingo/flamingo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'eds', 'yes'),
(41, 'stylesheet', 'eds', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'Europe/Paris', 'yes'),
(83, 'page_for_posts', '7', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:106:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:14:\"publish_events\";b:1;s:20:\"delete_others_events\";b:1;s:18:\"edit_others_events\";b:1;s:22:\"manage_others_bookings\";b:1;s:24:\"publish_recurring_events\";b:1;s:30:\"delete_others_recurring_events\";b:1;s:28:\"edit_others_recurring_events\";b:1;s:17:\"publish_locations\";b:1;s:23:\"delete_others_locations\";b:1;s:16:\"delete_locations\";b:1;s:21:\"edit_others_locations\";b:1;s:23:\"delete_event_categories\";b:1;s:21:\"edit_event_categories\";b:1;s:15:\"manage_bookings\";b:1;s:19:\"upload_event_images\";b:1;s:13:\"delete_events\";b:1;s:11:\"edit_events\";b:1;s:19:\"read_private_events\";b:1;s:23:\"delete_recurring_events\";b:1;s:21:\"edit_recurring_events\";b:1;s:14:\"edit_locations\";b:1;s:22:\"read_private_locations\";b:1;s:21:\"read_others_locations\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:79:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:14:\"publish_events\";b:1;s:20:\"delete_others_events\";b:1;s:18:\"edit_others_events\";b:1;s:22:\"manage_others_bookings\";b:1;s:24:\"publish_recurring_events\";b:1;s:30:\"delete_others_recurring_events\";b:1;s:28:\"edit_others_recurring_events\";b:1;s:17:\"publish_locations\";b:1;s:23:\"delete_others_locations\";b:1;s:16:\"delete_locations\";b:1;s:21:\"edit_others_locations\";b:1;s:23:\"delete_event_categories\";b:1;s:21:\"edit_event_categories\";b:1;s:15:\"manage_bookings\";b:1;s:19:\"upload_event_images\";b:1;s:13:\"delete_events\";b:1;s:11:\"edit_events\";b:1;s:19:\"read_private_events\";b:1;s:23:\"delete_recurring_events\";b:1;s:21:\"edit_recurring_events\";b:1;s:14:\"edit_locations\";b:1;s:22:\"read_private_locations\";b:1;s:21:\"read_others_locations\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;s:31:\"read_private_aggregator-records\";b:1;s:23:\"edit_aggregator-records\";b:1;s:30:\"edit_others_aggregator-records\";b:1;s:31:\"edit_private_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:32:\"delete_others_aggregator-records\";b:1;s:33:\"delete_private_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:32:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:15:\"manage_bookings\";b:1;s:19:\"upload_event_images\";b:1;s:13:\"delete_events\";b:1;s:11:\"edit_events\";b:1;s:19:\"read_private_events\";b:1;s:23:\"delete_recurring_events\";b:1;s:21:\"edit_recurring_events\";b:1;s:14:\"edit_locations\";b:1;s:22:\"read_private_locations\";b:1;s:21:\"read_others_locations\";b:1;s:11:\"edit_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;s:23:\"edit_aggregator-records\";b:1;s:33:\"edit_published_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;s:35:\"delete_published_aggregator-records\";b:1;s:26:\"publish_aggregator-records\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:18:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:15:\"manage_bookings\";b:1;s:19:\"upload_event_images\";b:1;s:13:\"delete_events\";b:1;s:11:\"edit_events\";b:1;s:19:\"read_private_events\";b:1;s:23:\"delete_recurring_events\";b:1;s:21:\"edit_recurring_events\";b:1;s:14:\"edit_locations\";b:1;s:22:\"read_private_locations\";b:1;s:21:\"read_others_locations\";b:1;s:11:\"read_blocks\";b:1;s:23:\"edit_aggregator-records\";b:1;s:25:\"delete_aggregator-records\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:4:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;s:22:\"read_private_locations\";b:1;s:19:\"read_private_events\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:6:{i:1537194383;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1537215983;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1537259206;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1537260097;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1537261004;a:1:{s:24:\"tribe_common_log_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537187773;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(125, '_site_transient_timeout_browser_01fe6d96f512df15cc1b10345d6b37d9', '1537604806', 'no'),
(126, '_site_transient_browser_01fe6d96f512df15cc1b10345d6b37d9', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"68.0.3440.106\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(149, 'recently_activated', 'a:2:{s:43:\"the-events-calendar/the-events-calendar.php\";i:1537183383;s:23:\"gutenberg/gutenberg.php\";i:1537173570;}', 'yes'),
(150, 'acf_version', '5.7.1', 'yes'),
(151, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(152, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.0.3\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1537008572;s:7:\"version\";s:5:\"5.0.3\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(153, 'mce_show_notice', '0', 'no'),
(154, 'mce_loyalty', 'a:11:{s:7:\"seconds\";i:39;s:7:\"minutes\";i:49;s:5:\"hours\";i:8;s:4:\"mday\";i:15;s:4:\"wday\";i:6;s:3:\"mon\";i:9;s:4:\"year\";i:2018;s:4:\"yday\";i:257;s:7:\"weekday\";s:8:\"Saturday\";s:5:\"month\";s:9:\"September\";i:0;i:1537001379;}', 'no'),
(156, 'cf7_mch_21', 'a:25:{s:3:\"api\";s:0:\"\";s:4:\"list\";s:0:\"\";s:5:\"email\";s:0:\"\";s:4:\"name\";s:0:\"\";s:6:\"accept\";s:0:\"\";s:12:\"CustomValue1\";s:0:\"\";s:10:\"CustomKey1\";s:0:\"\";s:12:\"CustomValue2\";s:0:\"\";s:10:\"CustomKey2\";s:0:\"\";s:12:\"CustomValue3\";s:0:\"\";s:10:\"CustomKey3\";s:0:\"\";s:12:\"CustomValue4\";s:0:\"\";s:10:\"CustomKey4\";s:0:\"\";s:12:\"CustomValue5\";s:0:\"\";s:10:\"CustomKey5\";s:0:\"\";s:12:\"CustomValue6\";s:0:\"\";s:10:\"CustomKey6\";s:0:\"\";s:12:\"CustomValue7\";s:0:\"\";s:10:\"CustomKey7\";s:0:\"\";s:12:\"CustomValue8\";s:0:\"\";s:10:\"CustomKey8\";s:0:\"\";s:12:\"CustomValue9\";s:0:\"\";s:10:\"CustomKey9\";s:0:\"\";s:13:\"CustomValue10\";s:0:\"\";s:11:\"CustomKey10\";s:0:\"\";}', 'yes'),
(159, 'dbem_flush_needed', '0', 'yes'),
(160, 'widget_em_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(161, 'widget_em_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(162, 'dbem_events_page', '23', 'yes'),
(163, 'dbem_locations_page', '24', 'yes'),
(164, 'dbem_categories_page', '25', 'yes'),
(165, 'dbem_tags_page', '26', 'yes'),
(166, 'dbem_my_bookings_page', '27', 'yes'),
(167, 'dbem_hello_to_user', '1', 'yes'),
(168, 'dbem_data', 'a:0:{}', 'yes'),
(169, 'dbem_time_format', 'G \\h i \\m\\i\\n', 'yes'),
(170, 'dbem_date_format', 'd/m/Y', 'yes'),
(171, 'dbem_date_format_js', 'dd/mm/yy', 'yes'),
(172, 'dbem_dates_separator', ' - ', 'yes'),
(173, 'dbem_times_separator', ' - ', 'yes'),
(174, 'dbem_default_category', '0', 'yes'),
(175, 'dbem_default_location', '0', 'yes'),
(176, 'dbem_events_default_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(177, 'dbem_events_default_order', 'ASC', 'yes'),
(178, 'dbem_events_default_limit', '10', 'yes'),
(179, 'dbem_search_form_submit', 'Recherche', 'yes'),
(180, 'dbem_search_form_advanced', '1', 'yes'),
(181, 'dbem_search_form_advanced_hidden', '1', 'yes'),
(182, 'dbem_search_form_advanced_show', 'Afficher la recherche avancée', 'yes'),
(183, 'dbem_search_form_advanced_hide', 'Cacher la recherche avancée', 'yes'),
(184, 'dbem_search_form_text', '1', 'yes'),
(185, 'dbem_search_form_text_label', 'Recherche', 'yes'),
(186, 'dbem_search_form_geo', '1', 'yes'),
(187, 'dbem_search_form_geo_label', 'Proche de&hellip;', 'yes'),
(188, 'dbem_search_form_geo_units', '1', 'yes'),
(189, 'dbem_search_form_geo_units_label', 'à l’intérieur de', 'yes'),
(190, 'dbem_search_form_geo_unit_default', 'mi', 'yes'),
(191, 'dbem_search_form_geo_distance_default', '25', 'yes'),
(192, 'dbem_search_form_geo_distance_options', '5,10,25,50,100', 'yes'),
(193, 'dbem_search_form_dates', '1', 'yes'),
(194, 'dbem_search_form_dates_label', 'Dates', 'yes'),
(195, 'dbem_search_form_dates_separator', 'et', 'yes'),
(196, 'dbem_search_form_categories', '1', 'yes'),
(197, 'dbem_search_form_categories_label', 'Toutes les catégories', 'yes'),
(198, 'dbem_search_form_category_label', 'Catégorie', 'yes'),
(199, 'dbem_search_form_countries', '1', 'yes'),
(200, 'dbem_search_form_default_country', '', 'yes'),
(201, 'dbem_search_form_countries_label', 'Tous les pays', 'yes'),
(202, 'dbem_search_form_country_label', 'Pays', 'yes'),
(203, 'dbem_search_form_regions', '1', 'yes'),
(204, 'dbem_search_form_regions_label', 'Toutes les régions', 'yes'),
(205, 'dbem_search_form_region_label', 'Région', 'yes'),
(206, 'dbem_search_form_states', '1', 'yes'),
(207, 'dbem_search_form_states_label', 'Tous les régions/départements', 'yes'),
(208, 'dbem_search_form_state_label', 'État/Pays', 'yes'),
(209, 'dbem_search_form_towns', '0', 'yes'),
(210, 'dbem_search_form_towns_label', 'Toutes les villes', 'yes'),
(211, 'dbem_search_form_town_label', 'Ville', 'yes'),
(212, 'dbem_events_form_editor', '1', 'yes'),
(213, 'dbem_events_form_reshow', '1', 'yes'),
(214, 'dbem_events_form_result_success', 'Vous avez soumis votre évènement, celui-ci sera publié après approbation.', 'yes'),
(215, 'dbem_events_form_result_success_updated', 'Vous avez mis à jour votre évènement, celui-ci sera republié après approbation.', 'yes'),
(216, 'dbem_events_anonymous_submissions', '0', 'yes'),
(217, 'dbem_events_anonymous_user', '0', 'yes'),
(218, 'dbem_events_anonymous_result_success', 'Vous avez soumis votre évènement, celui-ci sera publié après approbation.', 'yes'),
(219, 'dbem_event_submitted_email_admin', '', 'yes'),
(220, 'dbem_event_submitted_email_subject', 'Évènement en attente d’approbation', 'yes'),
(221, 'dbem_event_submitted_email_body', 'Un nouvel évènement vient d’être soumis par #_CONTACTNAME.\n\rNom&nbsp;: #_EVENTNAME \n\rDate&nbsp;: #_EVENTDATES \n\rHeure&nbsp;: #_EVENTTIMES \n\rVeuillez visiter la page http://localhost/eds/wp-admin/post.php?action=edit&post=#_EVENTPOSTID pour valider cet évènement.\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(222, 'dbem_event_resubmitted_email_subject', 'Évènement resoumis en attente d’approbation', 'yes'),
(223, 'dbem_event_resubmitted_email_body', 'Un évènement déjà publié vient d’être modifié par #_CONTACTNAME, et cet évènement n’est plus en ligne, il attend votre validation.\n\r Nom&nbsp;: #_EVENTNAME \n\rDate&nbsp;: #_EVENTDATES \n\rHeure&nbsp;: #_EVENTTIMES \n\rVeuillez visiter la page http://localhost/eds/wp-admin/post.php?action=edit&post=#_EVENTPOSTID pour valider cet évènement.\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(224, 'dbem_event_published_email_subject', 'Soumettre - #_EVENTNAME', 'yes'),
(225, 'dbem_event_published_email_body', 'Un nouvel évènement vient d’être publié par #_CONTACTNAME.\n\rNom&nbsp;: #_EVENTNAME \n\rDate&nbsp;: #_EVENTDATES \n\rHeure&nbsp;: #_EVENTTIMES \n\rModifier cet évènement - http://localhost/eds/wp-admin/post.php?action=edit&post=#_EVENTPOSTID\n\rVoir cet évènement - #_EVENTURL\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(226, 'dbem_event_approved_email_subject', 'Évènement approuvé - #_EVENTNAME', 'yes'),
(227, 'dbem_event_approved_email_body', 'Cher/chère #_CONTACTNAME, \n\rVotre évènement #_EVENTNAME le #_EVENTDATES a été approuvé.\n\rVous pouvez visualiser votre évènement ici&nbsp;: #_EVENTURL\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(228, 'dbem_event_reapproved_email_subject', 'Évènement approuvé - #_EVENTNAME', 'yes'),
(229, 'dbem_event_reapproved_email_body', 'Cher/chère #_CONTACTNAME, \n\rVotre évènement #_EVENTNAME le #_EVENTDATES a été approuvé.\n\rVous pouvez visualiser votre évènement ici&nbsp;: #_EVENTURL\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(230, 'dbem_events_page_title', 'Évènements', 'yes'),
(231, 'dbem_events_page_scope', 'future', 'yes'),
(232, 'dbem_events_page_search_form', '1', 'yes'),
(233, 'dbem_event_list_item_format_header', '<table class=\"events-table\" >\r\n    <thead>\r\n        <tr>\r\n			<th class=\"event-time\" scope=\"col\">Date/heure</th>\r\n			<th class=\"event-description\" scope=\"col\">Évènement</th>\r\n		</tr>\r\n   	</thead>\r\n    <tbody>', 'yes'),
(234, 'dbem_event_list_item_format', '<tr>\r\n			<td>\r\n                #_EVENTDATES<br/>\r\n                #_EVENTTIMES\r\n            </td>\r\n            <td>\r\n                #_EVENTLINK\r\n                {has_location}<br/><i>#_LOCATIONNAME, #_LOCATIONTOWN #_LOCATIONSTATE</i>{/has_location}\r\n            </td>\r\n        </tr>', 'yes'),
(235, 'dbem_event_list_item_format_footer', '</tbody></table>', 'yes'),
(236, 'dbem_event_list_groupby', '0', 'yes'),
(237, 'dbem_event_list_groupby_format', '', 'yes'),
(238, 'dbem_event_list_groupby_header_format', '<h2>#s</h2>', 'yes'),
(239, 'dbem_display_calendar_in_events_page', '0', 'yes'),
(240, 'dbem_single_event_format', '<div style=\"float:right; margin:0px 0px 15px 15px;\">#_LOCATIONMAP</div>\r\n<p>\r\n	<strong>Date/heure</strong><br/>\r\n	Date(s) - #_EVENTDATES<br /><i>#_EVENTTIMES</i>\r\n</p>\r\n{has_location}\r\n<p>\r\n	<strong>Emplacement</strong><br/>\r\n	#_LOCATIONLINK\r\n</p>\r\n{/has_location}\r\n<p>\r\n	<strong>Catégories</strong>\r\n	#_CATEGORIES\r\n</p>\r\n<br style=\"clear:both\" />\r\n#_EVENTNOTES\r\n{has_bookings}\r\n<h3>Réservations</h3>\r\n#_BOOKINGFORM\r\n{/has_bookings}', 'yes'),
(241, 'dbem_event_excerpt_format', '#_EVENTDATES @ #_EVENTTIMES - #_EVENTEXCERPT', 'yes'),
(242, 'dbem_event_excerpt_alt_format', '#_EVENTDATES @ #_EVENTTIMES - #_EVENTEXCERPT{55}', 'yes'),
(243, 'dbem_event_page_title_format', '#_EVENTNAME', 'yes'),
(244, 'dbem_event_all_day_message', 'Toute la journée', 'yes'),
(245, 'dbem_no_events_message', 'Pas de Évènements', 'yes'),
(246, 'dbem_locations_default_orderby', 'location_name', 'yes'),
(247, 'dbem_locations_default_order', 'ASC', 'yes'),
(248, 'dbem_locations_default_limit', '10', 'yes'),
(249, 'dbem_locations_page_title', 'Évènement Emplacements', 'yes'),
(250, 'dbem_locations_page_search_form', '1', 'yes'),
(251, 'dbem_no_locations_message', 'Pas de Emplacements', 'yes'),
(252, 'dbem_location_default_country', '', 'yes'),
(253, 'dbem_location_list_item_format_header', '<ul class=\"em-locations-list\">', 'yes'),
(254, 'dbem_location_list_item_format', '<li>#_LOCATIONLINK<ul><li>#_LOCATIONFULLLINE</li></ul></li>', 'yes'),
(255, 'dbem_location_list_item_format_footer', '</ul>', 'yes'),
(256, 'dbem_location_page_title_format', '#_LOCATIONNAME', 'yes'),
(257, 'dbem_single_location_format', '<div style=\"float:right; margin:0px 0px 15px 15px;\">#_LOCATIONMAP</div>\r\n<p>\r\n	<strong>Adresse</strong><br/>\r\n	#_LOCATIONADDRESS<br/>\r\n	#_LOCATIONTOWN<br/>\r\n	#_LOCATIONSTATE<br/>\r\n	#_LOCATIONREGION<br/>\r\n	#_LOCATIONPOSTCODE<br/>\r\n	#_LOCATIONCOUNTRY\r\n</p>\r\n<br style=\"clear:both\" />\r\n#_LOCATIONNOTES\r\n\r\n<h3>Évènement à venir</h3>\r\n<p>#_LOCATIONNEXTEVENTS</p>', 'yes'),
(258, 'dbem_location_excerpt_format', '#_LOCATIONEXCERPT', 'yes'),
(259, 'dbem_location_excerpt_alt_format', '#_LOCATIONEXCERPT{55}', 'yes'),
(260, 'dbem_location_no_events_message', '<li>Aucun évènement à cet emplacement</li>', 'yes'),
(261, 'dbem_location_event_list_item_header_format', '<ul>', 'yes'),
(262, 'dbem_location_event_list_item_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>', 'yes'),
(263, 'dbem_location_event_list_item_footer_format', '</ul>', 'yes'),
(264, 'dbem_location_event_list_limit', '20', 'yes'),
(265, 'dbem_location_event_list_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(266, 'dbem_location_event_list_order', 'ASC', 'yes'),
(267, 'dbem_location_event_single_format', '#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES', 'yes'),
(268, 'dbem_location_no_event_message', 'Aucun évènement à cet emplacement', 'yes'),
(269, 'dbem_categories_default_limit', '10', 'yes'),
(270, 'dbem_categories_default_orderby', 'name', 'yes'),
(271, 'dbem_categories_default_order', 'ASC', 'yes'),
(272, 'dbem_categories_list_item_format_header', '<ul class=\"em-categories-list\">', 'yes'),
(273, 'dbem_categories_list_item_format', '<li>#_CATEGORYLINK</li>', 'yes'),
(274, 'dbem_categories_list_item_format_footer', '</ul>', 'yes'),
(275, 'dbem_no_categories_message', 'Pas de Catégories', 'yes'),
(276, 'dbem_category_page_title_format', '#_CATEGORYNAME', 'yes'),
(277, 'dbem_category_page_format', '#_CATEGORYNOTES<h3>Évènement à venir</h3>#_CATEGORYNEXTEVENTS', 'yes'),
(278, 'dbem_category_no_events_message', '<li>Aucun évènement dans cette catégorie</li>', 'yes'),
(279, 'dbem_category_event_list_item_header_format', '<ul>', 'yes'),
(280, 'dbem_category_event_list_item_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>', 'yes'),
(281, 'dbem_category_event_list_item_footer_format', '</ul>', 'yes'),
(282, 'dbem_category_event_list_limit', '20', 'yes'),
(283, 'dbem_category_event_list_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(284, 'dbem_category_event_list_order', 'ASC', 'yes'),
(285, 'dbem_category_event_single_format', '#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES', 'yes'),
(286, 'dbem_category_no_event_message', 'Aucun évènement dans cette catégorie', 'yes'),
(287, 'dbem_category_default_color', '#a8d144', 'yes'),
(288, 'dbem_tags_default_limit', '10', 'yes'),
(289, 'dbem_tags_default_orderby', 'name', 'yes'),
(290, 'dbem_tags_default_order', 'ASC', 'yes'),
(291, 'dbem_tags_list_item_format_header', '<ul class=\"em-tags-list\">', 'yes'),
(292, 'dbem_tags_list_item_format', '<li>#_TAGLINK</li>', 'yes'),
(293, 'dbem_tags_list_item_format_footer', '</ul>', 'yes'),
(294, 'dbem_no_tags_message', 'Pas de Étiquettes', 'yes'),
(295, 'dbem_tag_page_title_format', '#_TAGNAME', 'yes'),
(296, 'dbem_tag_page_format', '<h3>Évènement à venir</h3>#_TAGNEXTEVENTS', 'yes'),
(297, 'dbem_tag_no_events_message', '<li>Aucun évènement dans cette catégorie</li>', 'yes'),
(298, 'dbem_tag_event_list_item_header_format', '<ul class=\"em-tags-list\">', 'yes'),
(299, 'dbem_tag_event_list_item_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES</li>', 'yes'),
(300, 'dbem_tag_event_list_item_footer_format', '</ul>', 'yes'),
(301, 'dbem_tag_event_single_format', '#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES', 'yes'),
(302, 'dbem_tag_no_event_message', 'Aucun évènement dans cette catégorie', 'yes'),
(303, 'dbem_tag_event_list_limit', '20', 'yes'),
(304, 'dbem_tag_event_list_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(305, 'dbem_tag_event_list_order', 'ASC', 'yes'),
(306, 'dbem_tag_default_color', '#a8d145', 'yes'),
(307, 'dbem_rss_limit', '50', 'yes'),
(308, 'dbem_rss_scope', 'future', 'yes'),
(309, 'dbem_rss_main_title', 'eds - Évènements', 'yes'),
(310, 'dbem_rss_main_description', 'Un site utilisant WordPress - Évènements', 'yes'),
(311, 'dbem_rss_description_format', '#_EVENTDATES - #_EVENTTIMES <br/>#_LOCATIONNAME <br/>#_LOCATIONADDRESS <br/>#_LOCATIONTOWN', 'yes'),
(312, 'dbem_rss_title_format', '#_EVENTNAME', 'yes'),
(313, 'dbem_rss_order', 'ASC', 'yes'),
(314, 'dbem_rss_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(315, 'em_rss_pubdate', 'Sat, 15 Sep 2018 08:53:39 +0000', 'yes'),
(316, 'dbem_ical_limit', '50', 'yes'),
(317, 'dbem_ical_scope', 'future', 'yes'),
(318, 'dbem_ical_description_format', '#_EVENTNAME', 'yes'),
(319, 'dbem_ical_real_description_format', '#_EVENTEXCERPT', 'yes'),
(320, 'dbem_ical_location_format', '#_LOCATIONNAME, #_LOCATIONFULLLINE, #_LOCATIONCOUNTRY', 'yes'),
(321, 'dbem_gmap_is_active', '1', 'yes'),
(322, 'dbem_google_maps_browser_key', '', 'yes'),
(323, 'dbem_map_default_width', '400px', 'yes'),
(324, 'dbem_map_default_height', '300px', 'yes'),
(325, 'dbem_location_baloon_format', '<strong>#_LOCATIONNAME</strong><br/>#_LOCATIONADDRESS - #_LOCATIONTOWN<br/><a href=\"#_LOCATIONPAGEURL\">Évènements</a>', 'yes'),
(326, 'dbem_map_text_format', '<strong>#_LOCATIONNAME</strong><p>#_LOCATIONADDRESS</p><p>#_LOCATIONTOWN</p>', 'yes'),
(327, 'dbem_email_disable_registration', '0', 'yes'),
(328, 'dbem_rsvp_mail_port', '465', 'yes'),
(329, 'dbem_smtp_host', 'localhost', 'yes'),
(330, 'dbem_mail_sender_name', '', 'yes'),
(331, 'dbem_rsvp_mail_send_method', 'wp_mail', 'yes'),
(332, 'dbem_rsvp_mail_SMTPAuth', '1', 'yes'),
(333, 'dbem_smtp_html', '1', 'yes'),
(334, 'dbem_smtp_html_br', '1', 'yes'),
(335, 'dbem_image_max_width', '700', 'yes'),
(336, 'dbem_image_max_height', '700', 'yes'),
(337, 'dbem_image_min_width', '50', 'yes'),
(338, 'dbem_image_min_height', '50', 'yes'),
(339, 'dbem_image_max_size', '204800', 'yes'),
(340, 'dbem_list_date_title', 'Évènements - #j #M #y', 'yes'),
(341, 'dbem_full_calendar_month_format', 'M Y', 'yes'),
(342, 'dbem_full_calendar_event_format', '<li>#_EVENTLINK</li>', 'yes'),
(343, 'dbem_full_calendar_long_events', '0', 'yes'),
(344, 'dbem_full_calendar_initials_length', '0', 'yes'),
(345, 'dbem_full_calendar_abbreviated_weekdays', '1', 'yes'),
(346, 'dbem_display_calendar_day_single_yes', '1', 'yes'),
(347, 'dbem_small_calendar_month_format', 'M Y', 'yes'),
(348, 'dbem_small_calendar_event_title_format', '#_EVENTNAME', 'yes'),
(349, 'dbem_small_calendar_event_title_separator', ', ', 'yes'),
(350, 'dbem_small_calendar_initials_length', '1', 'yes'),
(351, 'dbem_small_calendar_abbreviated_weekdays', '', 'yes'),
(352, 'dbem_small_calendar_long_events', '0', 'yes'),
(353, 'dbem_display_calendar_order', 'ASC', 'yes'),
(354, 'dbem_display_calendar_orderby', 'event_name,event_start_time', 'yes'),
(355, 'dbem_display_calendar_events_limit', '3', 'yes'),
(356, 'dbem_display_calendar_events_limit_msg', 'plus...', 'yes'),
(357, 'dbem_calendar_direct_links', '1', 'yes'),
(358, 'dbem_timezone_enabled', '1', 'yes'),
(359, 'dbem_timezone_default', 'Europe/Paris', 'yes'),
(360, 'dbem_require_location', '0', 'yes'),
(361, 'dbem_locations_enabled', '1', 'yes'),
(362, 'dbem_use_select_for_locations', '0', 'yes'),
(363, 'dbem_attributes_enabled', '1', 'yes'),
(364, 'dbem_recurrence_enabled', '1', 'yes'),
(365, 'dbem_rsvp_enabled', '1', 'yes'),
(366, 'dbem_categories_enabled', '1', 'yes'),
(367, 'dbem_tags_enabled', '1', 'yes'),
(368, 'dbem_placeholders_custom', '', 'yes'),
(369, 'dbem_location_attributes_enabled', '1', 'yes'),
(370, 'dbem_location_placeholders_custom', '', 'yes'),
(371, 'dbem_bookings_registration_disable', '0', 'yes'),
(372, 'dbem_bookings_registration_disable_user_emails', '0', 'yes'),
(373, 'dbem_bookings_approval', '1', 'yes'),
(374, 'dbem_bookings_approval_reserved', '0', 'yes'),
(375, 'dbem_bookings_approval_overbooking', '0', 'yes'),
(376, 'dbem_bookings_double', '0', 'yes'),
(377, 'dbem_bookings_user_cancellation', '1', 'yes'),
(378, 'dbem_bookings_currency', 'USD', 'yes'),
(379, 'dbem_bookings_currency_decimal_point', ',', 'yes'),
(380, 'dbem_bookings_currency_thousands_sep', ' ', 'yes'),
(381, 'dbem_bookings_currency_format', '@#', 'yes'),
(382, 'dbem_bookings_tax', '0', 'yes'),
(383, 'dbem_bookings_tax_auto_add', '0', 'yes'),
(384, 'dbem_bookings_submit_button', 'Envoyer votre demande de réservation', 'yes'),
(385, 'dbem_bookings_login_form', '1', 'yes'),
(386, 'dbem_bookings_anonymous', '1', 'yes'),
(387, 'dbem_bookings_form_max', '20', 'yes'),
(388, 'dbem_bookings_form_msg_disabled', 'Les réservations en ligne ne sont pas disponibles pour cet évènement.', 'yes'),
(389, 'dbem_bookings_form_msg_closed', 'Les réservations sont closes pour cet évènement.', 'yes'),
(390, 'dbem_bookings_form_msg_full', 'Cet évènement est complet.', 'yes'),
(391, 'dbem_bookings_form_msg_attending', 'Vous avez déjà effectué une réservation pour cet évènement.', 'yes'),
(392, 'dbem_bookings_form_msg_bookings_link', 'Gérer mes réservations', 'yes'),
(393, 'dbem_booking_warning_cancel', 'Confirmez-vous vouloir annuler votre réservation&nbsp;?', 'yes'),
(394, 'dbem_booking_feedback_cancelled', 'Réservation Annulée', 'yes'),
(395, 'dbem_booking_feedback_pending', 'Réservation effectuée, en attente de confirmation (vous recevrez également un e-mail après confirmation).', 'yes'),
(396, 'dbem_booking_feedback', 'Réservation effectuée.', 'yes'),
(397, 'dbem_booking_feedback_full', 'La réservation ne peut être faite, plus de places disponibles&nbsp;!', 'yes'),
(398, 'dbem_booking_feedback_log_in', 'Vous devez vous connecter ou vous enregistrer pour faire une réservation.', 'yes'),
(399, 'dbem_booking_feedback_nomail', 'Cependant, des problèmes se sont produits lors de l’envoi des e-mails de confirmation pour vous et / ou le point de contact de l’évènement. Vous pouvez le contacter directement pour l’informer de cette erreur.', 'yes'),
(400, 'dbem_booking_feedback_error', 'La réservation n’a pu être effectuée :', 'yes'),
(401, 'dbem_booking_feedback_email_exists', 'Cette adresse e-mail existe déjà dans notre système, veuillez vous identifier avec votre compte pour procéder à votre réservation.', 'yes'),
(402, 'dbem_booking_feedback_new_user', 'Un nouveau compte utilisateur a été créé pour vous. Veuillez consulter votre courrier électronique pour plus de détails concernant l’accès à ce compte.', 'yes'),
(403, 'dbem_booking_feedback_reg_error', 'Un problème s’est produit lors de la création du compte utilisateur, veuillez contacter l’administrateur du site.', 'yes'),
(404, 'dbem_booking_feedback_already_booked', 'Vous avez déjà réservé une place à cet évènement.', 'yes'),
(405, 'dbem_booking_feedback_min_space', 'Vous devez demander au moins une place pour votre réservation.', 'yes'),
(406, 'dbem_booking_feedback_spaces_limit', 'Vous ne pouvez pas réserver plus de %d places pour cet évènement.', 'yes'),
(407, 'dbem_booking_button_msg_book', 'Réservez maintenant', 'yes'),
(408, 'dbem_booking_button_msg_booking', 'Réservation en cours...', 'yes'),
(409, 'dbem_booking_button_msg_booked', 'Réservation soumis', 'yes'),
(410, 'dbem_booking_button_msg_already_booked', 'Déjà réservé', 'yes'),
(411, 'dbem_booking_button_msg_error', 'Réservation erreur. Réessayer&nbsp;?', 'yes'),
(412, 'dbem_booking_button_msg_full', 'Complet', 'yes'),
(413, 'dbem_booking_button_msg_closed', 'Les Réservations Sont Fermées', 'yes'),
(414, 'dbem_booking_button_msg_cancel', 'Annuler', 'yes'),
(415, 'dbem_booking_button_msg_canceling', 'Annulation en cours...', 'yes'),
(416, 'dbem_booking_button_msg_cancelled', 'Annulée', 'yes'),
(417, 'dbem_booking_button_msg_cancel_error', 'Annulation erreur. Réessayer&nbsp;?', 'yes'),
(418, 'dbem_bookings_notify_admin', '0', 'yes'),
(419, 'dbem_bookings_contact_email', '1', 'yes'),
(420, 'dbem_bookings_contact_email_pending_subject', 'Réservation en attente', 'yes'),
(421, 'dbem_bookings_contact_email_pending_body', 'La réservation suivante est en attente&nbsp;:\n\r#_EVENTNAME - #_EVENTDATES @ #_EVENTTIMES\n\rMaintenant il y a #_BOOKEDSPACES places réservées. #_AVAILABLESPACES places sont encore disponibles.\n\rDéTAILS DE LA RéSERVATION\n\rNom : #_BOOKINGNAME\n\rE-mail : #_BOOKINGEMAIL\n\r#_BOOKINGSUMMARY\n\r\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(422, 'dbem_bookings_contact_email_confirmed_subject', 'Réservation confirmée', 'yes'),
(423, 'dbem_bookings_contact_email_rejected_subject', 'Réservation rejetée', 'yes'),
(424, 'dbem_bookings_contact_email_cancelled_subject', 'Réservation annulée', 'yes'),
(425, 'dbem_bookings_email_pending_subject', 'Réservation en attente', 'yes'),
(426, 'dbem_bookings_email_pending_body', 'Cher/chère #_BOOKINGNAME,\n\rVous avez demandé à réserver #_BOOKINGSPACES place(s) pour #_EVENTNAME.\n\rQuand&nbsp;: #_EVENTDATES à #_EVENTTIMES\n\rOù&nbsp;: #_LOCATIONNAME - #_LOCATIONFULLLINE\n\rCette réservation est maintenant en attente d’approbation par nos administrateurs&nbsp;: une fois approuvée vous recevrez un e-mail automatique de confirmation.\n\rCordialement,\n\r#_CONTACTNAME\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(427, 'dbem_bookings_email_rejected_subject', 'Réservation rejetée', 'yes'),
(428, 'dbem_bookings_email_rejected_body', 'Cher/chère #_BOOKINGNAME,\n\r\n\rVotre réservation pour#_BOOKINGSPACES place(s) pour #_EVENTNAME le #_EVENTDATES a été rejetée. \n\rCordialement,\n\r#_CONTACTNAME\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(429, 'dbem_bookings_email_confirmed_subject', 'Réservation confirmée', 'yes'),
(430, 'dbem_bookings_email_confirmed_body', 'Cher/chère #_BOOKINGNAME,\n\rVous avez réservé #_BOOKINGSPACES place(s) pour #_EVENTNAME.\n\rQuand&nbsp;: #_EVENTDATES à #_EVENTTIMES\n\rOù&nbsp;: #_LOCATIONNAME - #_LOCATIONFULLLINE\n\rCordialement,\n\r#_CONTACTNAME\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(431, 'dbem_bookings_email_cancelled_subject', 'Réservation annulée', 'yes'),
(432, 'dbem_bookings_email_cancelled_body', 'Cher/chère #_BOOKINGNAME,\n\rVotre réservation de #_BOOKINGSPACES place(s) pour #_EVENTNAME le #_EVENTDATES a été annulée.\n\rCordialement,\n\r#_CONTACTNAME\n\r\n\r-------------------------------\n\rPowered by Events Manager - http://wp-events-plugin.com', 'yes'),
(433, 'dbem_bookings_email_registration_subject', '[eds] Vos nom d’utilisateur et mot de passe', 'yes'),
(434, 'dbem_bookings_email_registration_body', 'Vous avez créé un compte sur eds\n\rVous pouvez vous connecter sur notre site ici&nbsp;: http://localhost/eds/wp-login.php\n\rNom d’utilisateur&nbsp;: : %username%\n\rMot de passe : %password%\n\rPour voir vos réservations, merci de vous rendre ici http://localhost/eds/evenements/mes-reservations/ après vous êtes connectés au site.', 'yes'),
(435, 'dbem_bookings_tickets_orderby', 'ticket_price DESC, ticket_name ASC', 'yes'),
(436, 'dbem_bookings_tickets_priority', '0', 'yes'),
(437, 'dbem_bookings_tickets_show_unavailable', '0', 'yes'),
(438, 'dbem_bookings_tickets_show_loggedout', '1', 'yes'),
(439, 'dbem_bookings_tickets_single', '0', 'yes'),
(440, 'dbem_bookings_tickets_single_form', '0', 'yes'),
(441, 'dbem_bookings_my_title_format', 'Mes réservations', 'yes'),
(442, 'dbem_bp_events_list_format_header', '<ul class=\"em-events-list\">', 'yes'),
(443, 'dbem_bp_events_list_format', '<li>#_EVENTLINK - #_EVENTDATES - #_EVENTTIMES<ul><li>#_LOCATIONLINK - #_LOCATIONADDRESS, #_LOCATIONTOWN</li></ul></li>', 'yes'),
(444, 'dbem_bp_events_list_format_footer', '</ul>', 'yes'),
(445, 'dbem_bp_events_list_none_format', '<p class=\"em-events-list\">Aucun évènement</p>', 'yes'),
(446, 'dbem_css_editors', '1', 'yes'),
(447, 'dbem_css_rsvp', '1', 'yes'),
(448, 'dbem_css_rsvpadmin', '1', 'yes'),
(449, 'dbem_css_evlist', '1', 'yes'),
(450, 'dbem_css_search', '1', 'yes'),
(451, 'dbem_css_loclist', '1', 'yes'),
(452, 'dbem_css_catlist', '1', 'yes'),
(453, 'dbem_css_taglist', '1', 'yes'),
(454, 'dbem_cp_events_slug', 'events', 'yes'),
(455, 'dbem_cp_locations_slug', 'locations', 'yes'),
(456, 'dbem_taxonomy_category_slug', 'events/categories', 'yes'),
(457, 'dbem_taxonomy_tag_slug', 'events/tags', 'yes'),
(458, 'dbem_cp_events_template', '', 'yes'),
(459, 'dbem_cp_events_body_class', '', 'yes'),
(460, 'dbem_cp_events_post_class', '', 'yes'),
(461, 'dbem_cp_events_formats', '1', 'yes'),
(462, 'dbem_cp_events_has_archive', '1', 'yes'),
(463, 'dbem_events_default_archive_orderby', '_event_start', 'yes'),
(464, 'dbem_events_default_archive_order', 'ASC', 'yes'),
(465, 'dbem_events_archive_scope', 'past', 'yes'),
(466, 'dbem_cp_events_archive_formats', '1', 'yes'),
(467, 'dbem_cp_events_excerpt_formats', '1', 'yes'),
(468, 'dbem_cp_events_search_results', '0', 'yes'),
(469, 'dbem_cp_events_custom_fields', '0', 'yes'),
(470, 'dbem_cp_events_comments', '1', 'yes'),
(471, 'dbem_cp_locations_template', '', 'yes'),
(472, 'dbem_cp_locations_body_class', '', 'yes'),
(473, 'dbem_cp_locations_post_class', '', 'yes'),
(474, 'dbem_cp_locations_formats', '1', 'yes'),
(475, 'dbem_cp_locations_has_archive', '1', 'yes'),
(476, 'dbem_locations_default_archive_orderby', 'title', 'yes'),
(477, 'dbem_locations_default_archive_order', 'ASC', 'yes'),
(478, 'dbem_cp_locations_archive_formats', '1', 'yes'),
(479, 'dbem_cp_locations_excerpt_formats', '1', 'yes'),
(480, 'dbem_cp_locations_search_results', '0', 'yes'),
(481, 'dbem_cp_locations_custom_fields', '0', 'yes'),
(482, 'dbem_cp_locations_comments', '1', 'yes'),
(483, 'dbem_cp_categories_formats', '1', 'yes'),
(484, 'dbem_categories_default_archive_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(485, 'dbem_categories_default_archive_order', 'ASC', 'yes'),
(486, 'dbem_cp_tags_formats', '1', 'yes'),
(487, 'dbem_tags_default_archive_orderby', 'event_start_date,event_start_time,event_name', 'yes'),
(488, 'dbem_tags_default_archive_order', 'ASC', 'yes'),
(489, 'dbem_disable_thumbnails', '', 'yes'),
(490, 'dbem_feedback_reminder', '1537001619', 'yes'),
(491, 'dbem_events_page_ajax', '0', 'yes'),
(492, 'dbem_conditional_recursions', '1', 'yes'),
(493, 'dbem_data_privacy_consent_text', 'Je consens à ce que mes données soumises soient recueillies et stockées comme décrit par le site %s.', 'yes'),
(494, 'dbem_data_privacy_consent_remember', '1', 'yes'),
(495, 'dbem_data_privacy_consent_events', '1', 'yes'),
(496, 'dbem_data_privacy_consent_locations', '1', 'yes'),
(497, 'dbem_data_privacy_consent_bookings', '1', 'yes'),
(498, 'dbem_data_privacy_export_events', '1', 'yes'),
(499, 'dbem_data_privacy_export_locations', '1', 'yes'),
(500, 'dbem_data_privacy_export_bookings', '1', 'yes'),
(501, 'dbem_data_privacy_erase_events', '1', 'yes'),
(502, 'dbem_data_privacy_erase_locations', '1', 'yes'),
(503, 'dbem_data_privacy_erase_bookings', '1', 'yes'),
(504, 'dbem_time_24h', '1', 'yes'),
(505, 'dbem_credits', '1', 'yes'),
(506, 'dbem_version', '5.95', 'yes'),
(507, 'widget_em_locations_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(510, 'addthis_shared_settings', 'a:48:{s:28:\"addthis_asynchronous_loading\";b:0;s:24:\"addthis_per_post_enabled\";b:1;s:15:\"addthis_profile\";s:0:\"\";s:15:\"addthis_rate_us\";s:0:\"\";s:15:\"profile_edition\";s:9:\"anonymous\";s:7:\"api_key\";s:0:\"\";s:12:\"ajax_support\";b:0;s:28:\"credential_validation_status\";i:0;s:22:\"filter_get_the_excerpt\";b:1;s:18:\"filter_the_excerpt\";b:1;s:22:\"filter_wp_trim_excerpt\";b:0;s:8:\"wpfooter\";b:1;s:11:\"xmlns_attrs\";b:1;s:30:\"follow_buttons_feature_enabled\";b:0;s:35:\"recommended_content_feature_enabled\";b:0;s:31:\"sharing_buttons_feature_enabled\";b:1;s:14:\"enqueue_client\";b:1;s:22:\"enqueue_local_settings\";b:0;s:12:\"debug_enable\";b:0;s:19:\"addthis_environment\";s:0:\"\";s:23:\"addthis_plugin_controls\";s:9:\"WordPress\";s:20:\"darkseid_environment\";s:0:\"\";s:20:\"settings_ui_base_url\";s:0:\"\";s:24:\"addthis_twitter_template\";s:0:\"\";s:13:\"addthis_bitly\";b:0;s:18:\"addthis_share_json\";s:0:\"\";s:25:\"addthis_share_follow_json\";s:0:\"\";s:30:\"addthis_share_recommended_json\";s:0:\"\";s:27:\"addthis_share_trending_json\";s:0:\"\";s:26:\"addthis_share_welcome_json\";s:0:\"\";s:19:\"addthis_layers_json\";s:0:\"\";s:26:\"addthis_layers_follow_json\";s:0:\"\";s:31:\"addthis_layers_recommended_json\";s:0:\"\";s:28:\"addthis_layers_trending_json\";s:0:\"\";s:27:\"addthis_layers_welcome_json\";s:0:\"\";s:16:\"data_ga_property\";s:0:\"\";s:16:\"addthis_language\";s:0:\"\";s:9:\"atversion\";i:300;s:19:\"addthis_append_data\";b:1;s:18:\"addthis_addressbar\";b:0;s:11:\"addthis_508\";s:0:\"\";s:19:\"addthis_config_json\";s:0:\"\";s:26:\"addthis_config_follow_json\";s:0:\"\";s:31:\"addthis_config_recommended_json\";s:0:\"\";s:28:\"addthis_config_trending_json\";s:0:\"\";s:27:\"addthis_config_welcome_json\";s:0:\"\";s:14:\"startUpgradeAt\";i:4;s:25:\"addthis_anonymous_profile\";s:35:\"wp-a60a49463016cd8f7795b60bf74f5125\";}', 'yes'),
(511, 'addthis_follow_buttons_settings', 'a:3:{s:4:\"flwh\";a:5:{s:7:\"enabled\";b:0;s:4:\"size\";s:5:\"large\";s:8:\"thankyou\";b:1;s:5:\"title\";s:0:\"\";s:8:\"services\";O:8:\"stdClass\":0:{}}s:4:\"flwv\";a:5:{s:7:\"enabled\";b:0;s:4:\"size\";s:5:\"large\";s:5:\"title\";s:0:\"\";s:8:\"thankyou\";b:1;s:8:\"services\";O:8:\"stdClass\":0:{}}s:5:\"smlfw\";a:7:{s:7:\"enabled\";b:0;s:5:\"theme\";s:11:\"transparent\";s:10:\"responsive\";i:979;s:6:\"offset\";a:3:{s:8:\"location\";s:3:\"top\";s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}s:8:\"thankyou\";b:1;s:5:\"title\";s:0:\"\";s:8:\"services\";O:8:\"stdClass\":0:{}}}', 'yes'),
(512, 'addthis_sharing_buttons_settings', 'a:3:{s:14:\"startUpgradeAt\";i:6;s:4:\"om4w\";a:10:{s:2:\"id\";s:4:\"shin\";s:7:\"enabled\";b:0;s:6:\"counts\";s:5:\"jumbo\";s:20:\"numPreferredServices\";i:4;s:20:\"auto_personalization\";b:1;s:4:\"size\";s:4:\"20px\";s:5:\"style\";s:10:\"responsive\";s:8:\"elements\";a:11:{i:0;s:34:\".addthis_inline_share_toolbox_om4w\";i:1;s:23:\".at-above-post-homepage\";i:2;s:23:\".at-below-post-homepage\";i:3;s:14:\".at-above-post\";i:4;s:14:\".at-below-post\";i:5;s:19:\".at-above-post-page\";i:6;s:19:\".at-below-post-page\";i:7;s:23:\".at-above-post-cat-page\";i:8;s:23:\".at-below-post-cat-page\";i:9;s:24:\".at-above-post-arch-page\";i:10;s:24:\".at-below-post-arch-page\";}s:8:\"widgetId\";s:4:\"om4w\";s:8:\"services\";a:5:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:5:\"email\";i:3;s:15:\"pinterest_share\";i:4;s:7:\"addthis\";}}s:4:\"65vq\";a:13:{s:2:\"id\";s:4:\"shfs\";s:7:\"enabled\";b:1;s:6:\"counts\";s:4:\"none\";s:15:\"desktopPosition\";s:4:\"left\";s:20:\"numPreferredServices\";i:5;s:20:\"auto_personalization\";b:1;s:5:\"style\";s:6:\"modern\";s:14:\"mobilePosition\";s:6:\"bottom\";s:16:\"mobileButtonSize\";s:5:\"large\";s:5:\"theme\";s:11:\"transparent\";s:9:\"templates\";a:5:{i:0;s:4:\"home\";i:1;s:5:\"posts\";i:2;s:5:\"pages\";i:3;s:8:\"archives\";i:4;s:10:\"categories\";}s:8:\"widgetId\";s:4:\"65vq\";s:8:\"services\";a:5:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:5:\"email\";i:3;s:15:\"pinterest_share\";i:4;s:7:\"addthis\";}}}', 'yes'),
(513, 'addthis_recommended_content_settings', 'a:2:{s:5:\"smlre\";a:3:{s:7:\"enabled\";b:0;s:5:\"title\";s:19:\"Recommended for you\";s:5:\"theme\";s:5:\"light\";}s:5:\"smlwn\";a:4:{s:7:\"enabled\";b:0;s:5:\"title\";s:19:\"Recommended for you\";s:5:\"theme\";s:5:\"light\";s:6:\"offset\";a:3:{s:8:\"location\";s:5:\"right\";s:6:\"amount\";i:0;s:4:\"unit\";s:2:\"px\";}}}', 'yes'),
(514, 'widget_addthis_tool_by_class_name_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(515, 'widget_addthis_global_options_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(518, 'tribe_events_calendar_options', 'a:5:{s:14:\"schema-version\";s:3:\"3.9\";s:27:\"recurring_events_are_hidden\";s:6:\"hidden\";s:21:\"previous_ecp_versions\";a:1:{i:0;s:1:\"0\";}s:18:\"latest_ecp_version\";s:8:\"4.6.22.1\";s:39:\"last-update-message-the-events-calendar\";s:8:\"4.6.22.1\";}', 'yes'),
(519, 'widget_tribe-events-list-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(520, 'tribe_last_save_post', '1537183383', 'yes'),
(534, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(539, 'current_theme', '', 'yes'),
(540, 'theme_mods_eds', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:11:\"header_menu\";i:2;s:8:\"faq_menu\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537175285;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(541, 'theme_switched', '', 'yes'),
(543, 'theme_mods_twentyfifteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"social\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537106131;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(572, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"fr_FR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/fr_FR/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1537172791;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(596, '_transient_timeout_tribe_aggregator_services_list', '1537192515', 'no'),
(597, '_transient_tribe_aggregator_services_list', 'a:1:{s:6:\"origin\";a:1:{i:0;O:8:\"stdClass\":2:{s:2:\"id\";s:3:\"csv\";s:4:\"name\";s:11:\"Fichier CSV\";}}}', 'no'),
(622, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1537187769;s:7:\"checked\";a:5:{s:3:\"eds\";s:0:\"\";s:8:\"edsrecup\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(623, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1537183382;s:7:\"checked\";a:18:{s:25:\"accordions/accordions.php\";s:6:\"2.0.23\";s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.1\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.0.3\";s:50:\"contact-form-7-mailchimp-extension/cf7-mch-ext.php\";s:6:\"0.4.50\";s:43:\"disable-comments-rb/disable-comments-rb.php\";s:5:\"1.0.7\";s:33:\"events-manager/events-manager.php\";s:5:\"5.9.5\";s:21:\"flamingo/flamingo.php\";s:3:\"1.8\";s:23:\"gutenberg/gutenberg.php\";s:5:\"3.4.0\";s:9:\"hello.php\";s:3:\"1.7\";s:33:\"addthis/addthis_social_widget.php\";s:5:\"6.1.6\";s:43:\"the-events-calendar/the-events-calendar.php\";s:8:\"4.6.22.1\";s:27:\"updraftplus/updraftplus.php\";s:7:\"1.14.13\";s:23:\"wpml-cms-nav/plugin.php\";s:6:\"1.4.23\";s:40:\"sitepress-multilingual-cms/sitepress.php\";s:5:\"4.0.5\";s:28:\"wpml-sticky-links/plugin.php\";s:5:\"1.4.4\";s:34:\"wpml-string-translation/plugin.php\";s:5:\"2.8.5\";s:38:\"wpml-translation-management/plugin.php\";s:5:\"2.6.5\";}s:8:\"response\";a:8:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.0.4\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.0.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=984007\";s:2:\"1x\";s:66:\"https://ps.w.org/contact-form-7/assets/icon-128x128.png?rev=984007\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:228:\"<p>This is a security and maintenance release and we strongly encourage you to update to it immediately. For more information, refer to the <a href=\"https://contactform7.com/category/releases/\">release announcement post</a>.</p>\";s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:21:\"flamingo/flamingo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/flamingo\";s:4:\"slug\";s:8:\"flamingo\";s:6:\"plugin\";s:21:\"flamingo/flamingo.php\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/flamingo/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/flamingo.1.9.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/flamingo/assets/icon-128x128.png?rev=1540977\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/flamingo/assets/banner-772x250.png?rev=544829\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:23:\"gutenberg/gutenberg.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:6:\"plugin\";s:23:\"gutenberg/gutenberg.php\";s:11:\"new_version\";s:5:\"3.8.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/gutenberg/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/gutenberg.3.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-256x256.jpg?rev=1776042\";s:2:\"1x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-128x128.jpg?rev=1776042\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/gutenberg/assets/banner-1544x500.jpg?rev=1718710\";s:2:\"1x\";s:64:\"https://ps.w.org/gutenberg/assets/banner-772x250.jpg?rev=1718710\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"addthis/addthis_social_widget.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/addthis\";s:4:\"slug\";s:7:\"addthis\";s:6:\"plugin\";s:33:\"addthis/addthis_social_widget.php\";s:11:\"new_version\";s:5:\"6.1.7\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/addthis/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/addthis.6.1.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/addthis/assets/icon-256x256.png?rev=1223867\";s:2:\"1x\";s:60:\"https://ps.w.org/addthis/assets/icon-128x128.png?rev=1223867\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/addthis/assets/banner-1544x500.png?rev=1499004\";s:2:\"1x\";s:62:\"https://ps.w.org/addthis/assets/banner-772x250.png?rev=1499004\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:76:\"<ul>\n<li>Fixed a bug where previewing a new post may remove tools</li>\n</ul>\";s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"the-events-calendar/the-events-calendar.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/the-events-calendar\";s:4:\"slug\";s:19:\"the-events-calendar\";s:6:\"plugin\";s:43:\"the-events-calendar/the-events-calendar.php\";s:11:\"new_version\";s:6:\"4.6.23\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/the-events-calendar/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/the-events-calendar.4.6.23.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/the-events-calendar/assets/icon-256x256.png?rev=1679210\";s:2:\"1x\";s:72:\"https://ps.w.org/the-events-calendar/assets/icon-128x128.png?rev=1679210\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/the-events-calendar/assets/banner-1544x500.png?rev=1907269\";s:2:\"1x\";s:74:\"https://ps.w.org/the-events-calendar/assets/banner-772x250.png?rev=1907269\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"updraftplus/updraftplus.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/updraftplus\";s:4:\"slug\";s:11:\"updraftplus\";s:6:\"plugin\";s:27:\"updraftplus/updraftplus.php\";s:11:\"new_version\";s:6:\"1.15.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/updraftplus/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/updraftplus.1.15.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-256x256.jpg?rev=1686200\";s:2:\"1x\";s:64:\"https://ps.w.org/updraftplus/assets/icon-128x128.jpg?rev=1686200\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/updraftplus/assets/banner-1544x500.png?rev=1686200\";s:2:\"1x\";s:66:\"https://ps.w.org/updraftplus/assets/banner-772x250.png?rev=1686200\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.7.6\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:25:\"accordions/accordions.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/accordions\";s:4:\"slug\";s:10:\"accordions\";s:6:\"plugin\";s:25:\"accordions/accordions.php\";s:11:\"new_version\";s:6:\"2.0.23\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/accordions/\";s:7:\"package\";s:53:\"https://downloads.wordpress.org/plugin/accordions.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/accordions/assets/icon-256x256.png?rev=1636706\";s:2:\"1x\";s:63:\"https://ps.w.org/accordions/assets/icon-128x128.png?rev=1636706\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/accordions/assets/banner-1544x500.png?rev=1636706\";s:2:\"1x\";s:65:\"https://ps.w.org/accordions/assets/banner-772x250.png?rev=1636706\";}s:11:\"banners_rtl\";a:0:{}}s:50:\"contact-form-7-mailchimp-extension/cf7-mch-ext.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:48:\"w.org/plugins/contact-form-7-mailchimp-extension\";s:4:\"slug\";s:34:\"contact-form-7-mailchimp-extension\";s:6:\"plugin\";s:50:\"contact-form-7-mailchimp-extension/cf7-mch-ext.php\";s:11:\"new_version\";s:6:\"0.4.50\";s:3:\"url\";s:65:\"https://wordpress.org/plugins/contact-form-7-mailchimp-extension/\";s:7:\"package\";s:77:\"https://downloads.wordpress.org/plugin/contact-form-7-mailchimp-extension.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/contact-form-7-mailchimp-extension/assets/icon-256x256.png?rev=1072113\";s:2:\"1x\";s:87:\"https://ps.w.org/contact-form-7-mailchimp-extension/assets/icon-128x128.png?rev=1072113\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:90:\"https://ps.w.org/contact-form-7-mailchimp-extension/assets/banner-1544x500.png?rev=1072092\";s:2:\"1x\";s:89:\"https://ps.w.org/contact-form-7-mailchimp-extension/assets/banner-772x250.png?rev=1625715\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"disable-comments-rb/disable-comments-rb.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/disable-comments-rb\";s:4:\"slug\";s:19:\"disable-comments-rb\";s:6:\"plugin\";s:43:\"disable-comments-rb/disable-comments-rb.php\";s:11:\"new_version\";s:5:\"1.0.7\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/disable-comments-rb/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/disable-comments-rb.1.0.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/disable-comments-rb/assets/icon-256x256.png?rev=1911683\";s:2:\"1x\";s:72:\"https://ps.w.org/disable-comments-rb/assets/icon-128x128.png?rev=1911683\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/disable-comments-rb/assets/banner-1544x500.png?rev=1911683\";s:2:\"1x\";s:74:\"https://ps.w.org/disable-comments-rb/assets/banner-772x250.png?rev=1911683\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"events-manager/events-manager.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/events-manager\";s:4:\"slug\";s:14:\"events-manager\";s:6:\"plugin\";s:33:\"events-manager/events-manager.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/events-manager/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/events-manager.5.9.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/events-manager/assets/icon-256x256.png?rev=1039078\";s:2:\"1x\";s:67:\"https://ps.w.org/events-manager/assets/icon-128x128.png?rev=1039078\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/events-manager/assets/banner-1544x500.png?rev=1039078\";s:2:\"1x\";s:69:\"https://ps.w.org/events-manager/assets/banner-772x250.png?rev=1039078\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(625, '_transient_timeout_oembed_bc2903c0cdcc090bc93b982e9a34f0ba', '1537259949', 'no'),
(626, '_transient_oembed_bc2903c0cdcc090bc93b982e9a34f0ba', 'O:8:\"stdClass\":21:{s:4:\"type\";s:5:\"video\";s:7:\"version\";s:3:\"1.0\";s:13:\"provider_name\";s:5:\"Vimeo\";s:12:\"provider_url\";s:18:\"https://vimeo.com/\";s:5:\"title\";s:12:\"The Mountain\";s:11:\"author_name\";s:15:\"TSO Photography\";s:10:\"author_url\";s:24:\"https://vimeo.com/terjes\";s:7:\"is_plus\";s:1:\"0\";s:12:\"account_type\";s:5:\"basic\";s:4:\"html\";s:196:\"<iframe src=\"https://player.vimeo.com/video/22439234?app_id=122963\" width=\"600\" height=\"338\" frameborder=\"0\" title=\"The Mountain\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:8:\"duration\";i:189;s:11:\"description\";s:1978:\"Follow on:\nhttps://facebook.com/TSOphotography for more photos, videos and updates. \n\nThis was filmed between 4th and 11th April 2011. I had the pleasure of visiting El Teide.\nSpain´s highest mountain  @(3718m) is one of the best places in the world to photograph the stars and is also the location of Teide Observatories, considered to be one of the world´s best observatories. \n\nThe goal was to capture the beautiful Milky Way galaxy along with one of the most amazing mountains I know El Teide. I have to say this was one of the most exhausting trips I have done. There was a lot of hiking at high altitudes and probably less than 10 hours of sleep in total for the whole week. Having been here 10-11 times before I had a long list of must-see locations I wanted to capture for this movie, but I am still not 100% used to carrying around so much gear required for time-lapse movies.\n \nA large sandstorm hit the Sahara Desert on the 9th April (http://bit.ly/g3tsDW) and at approx 3am in the night the sandstorm hit me, making  it nearly impossible to see the sky with my own eyes.\n\nInterestingly enough my camera was set for a 5 hour sequence of the milky way during this time and I was sure my whole scene was ruined. To my surprise, my camera had managed to capture the sandstorm which was backlit by Grand Canary Island making it look like golden clouds. The Milky Way was shining through the clouds, making the stars sparkle in an interesting way. So if you ever wondered how the Milky Way would look through a Sahara sandstorm, look at 00:32.\n\nAvailable in Digital Cinema 4k.\n\nFollow Facebook: http://www.facebook.com/TSOPhotography\nFollow Twitter:\nhttp://twitter.com/TSOPhotography\nFollow Google+:\nhttps://plus.google.com/107543460658107759808\n\nPress/licensing/projects contact: tsophotography@gmail.com\n\n\nMusic by my friend: Ludovico Einaudi - \"Nuvole bianche\" with permission. \nPlease support the artist here:\nhttp://itunes.apple.com/us/album/una-mattina/id217799399\";s:13:\"thumbnail_url\";s:50:\"https://i.vimeocdn.com/video/145026168_295x166.jpg\";s:15:\"thumbnail_width\";i:295;s:16:\"thumbnail_height\";i:166;s:30:\"thumbnail_url_with_play_button\";s:168:\"https://i.vimeocdn.com/filter/overlay?src0=https%3A%2F%2Fi.vimeocdn.com%2Fvideo%2F145026168_295x166.jpg&src1=http%3A%2F%2Ff.vimeocdn.com%2Fp%2Fimages%2Fcrawler_play.png\";s:11:\"upload_date\";s:19:\"2011-04-15 08:35:35\";s:8:\"video_id\";i:22439234;s:3:\"uri\";s:16:\"/videos/22439234\";}', 'no'),
(627, '_transient_timeout_plugin_slugs', '1537269798', 'no'),
(628, '_transient_plugin_slugs', 'a:18:{i:0;s:25:\"accordions/accordions.php\";i:1;s:34:\"advanced-custom-fields-pro/acf.php\";i:2;s:19:\"akismet/akismet.php\";i:3;s:36:\"contact-form-7/wp-contact-form-7.php\";i:4;s:50:\"contact-form-7-mailchimp-extension/cf7-mch-ext.php\";i:5;s:43:\"disable-comments-rb/disable-comments-rb.php\";i:6;s:33:\"events-manager/events-manager.php\";i:7;s:21:\"flamingo/flamingo.php\";i:8;s:23:\"gutenberg/gutenberg.php\";i:9;s:9:\"hello.php\";i:10;s:33:\"addthis/addthis_social_widget.php\";i:11;s:43:\"the-events-calendar/the-events-calendar.php\";i:12;s:27:\"updraftplus/updraftplus.php\";i:13;s:23:\"wpml-cms-nav/plugin.php\";i:14;s:40:\"sitepress-multilingual-cms/sitepress.php\";i:15;s:28:\"wpml-sticky-links/plugin.php\";i:16;s:34:\"wpml-string-translation/plugin.php\";i:17;s:38:\"wpml-translation-management/plugin.php\";}', 'no'),
(629, '_transient_timeout_tribe_plugin_upgrade_notice-064bf00e', '1537269676', 'no'),
(630, '_transient_tribe_plugin_upgrade_notice-064bf00e', '', 'no'),
(639, 'theme_mods_eds/public_html', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:11:\"header_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1537187769;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(640, 'theme_mods_edsrecup', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(645, 'options_footer_links_0_nom', '', 'no'),
(646, '_options_footer_links_0_nom', 'field_5b9f5dfd569fa', 'no'),
(647, 'options_footer_links_0_adresse_links', '', 'no'),
(648, '_options_footer_links_0_adresse_links', 'field_5b9f5e06569fb', 'no'),
(649, 'options_footer_links_0_image', '96', 'no'),
(650, '_options_footer_links_0_image', 'field_5b9f5e21569fc', 'no'),
(651, 'options_footer_links_1_nom', '', 'no'),
(652, '_options_footer_links_1_nom', 'field_5b9f5dfd569fa', 'no'),
(653, 'options_footer_links_1_adresse_links', 'http://www.possibles.org', 'no'),
(654, '_options_footer_links_1_adresse_links', 'field_5b9f5e06569fb', 'no'),
(655, 'options_footer_links_1_image', '97', 'no'),
(656, '_options_footer_links_1_image', 'field_5b9f5e21569fc', 'no'),
(657, 'options_footer_links_2_nom', '', 'no'),
(658, '_options_footer_links_2_nom', 'field_5b9f5dfd569fa', 'no'),
(659, 'options_footer_links_2_adresse_links', '', 'no'),
(660, '_options_footer_links_2_adresse_links', 'field_5b9f5e06569fb', 'no'),
(661, 'options_footer_links_2_image', '98', 'no'),
(662, '_options_footer_links_2_image', 'field_5b9f5e21569fc', 'no'),
(663, 'options_footer_links_3_nom', '', 'no'),
(664, '_options_footer_links_3_nom', 'field_5b9f5dfd569fa', 'no'),
(665, 'options_footer_links_3_adresse_links', '', 'no'),
(666, '_options_footer_links_3_adresse_links', 'field_5b9f5e06569fb', 'no'),
(667, 'options_footer_links_3_image', '99', 'no'),
(668, '_options_footer_links_3_image', 'field_5b9f5e21569fc', 'no'),
(669, 'options_footer_links_4_nom', '', 'no'),
(670, '_options_footer_links_4_nom', 'field_5b9f5dfd569fa', 'no'),
(671, 'options_footer_links_4_adresse_links', 'http://www.cepag.be', 'no'),
(672, '_options_footer_links_4_adresse_links', 'field_5b9f5e06569fb', 'no'),
(673, 'options_footer_links_4_image', '100', 'no'),
(674, '_options_footer_links_4_image', 'field_5b9f5e21569fc', 'no'),
(675, 'options_footer_links_5_nom', '', 'no'),
(676, '_options_footer_links_5_nom', 'field_5b9f5dfd569fa', 'no'),
(677, 'options_footer_links_5_adresse_links', '', 'no'),
(678, '_options_footer_links_5_adresse_links', 'field_5b9f5e06569fb', 'no'),
(679, 'options_footer_links_5_image', '', 'no'),
(680, '_options_footer_links_5_image', 'field_5b9f5e21569fc', 'no'),
(681, 'options_footer_links_6_nom', '', 'no'),
(682, '_options_footer_links_6_nom', 'field_5b9f5dfd569fa', 'no'),
(683, 'options_footer_links_6_adresse_links', 'http://accg.be', 'no'),
(684, '_options_footer_links_6_adresse_links', 'field_5b9f5e06569fb', 'no'),
(685, 'options_footer_links_6_image', '101', 'no'),
(686, '_options_footer_links_6_image', 'field_5b9f5e21569fc', 'no'),
(687, 'options_footer_links_7_nom', '', 'no'),
(688, '_options_footer_links_7_nom', 'field_5b9f5dfd569fa', 'no'),
(689, 'options_footer_links_7_adresse_links', 'http://accg.be', 'no'),
(690, '_options_footer_links_7_adresse_links', 'field_5b9f5e06569fb', 'no'),
(691, 'options_footer_links_7_image', '102', 'no'),
(692, '_options_footer_links_7_image', 'field_5b9f5e21569fc', 'no'),
(693, 'options_footer_links', '8', 'no'),
(694, '_options_footer_links', 'field_5b9f5de4569f9', 'no'),
(695, 'options_deuxime', '', 'no'),
(696, '_options_deuxime', 'field_5b9f79696ed58', 'no'),
(698, 'cf7_mch_103', 'a:25:{s:3:\"api\";s:0:\"\";s:4:\"list\";s:0:\"\";s:5:\"email\";s:0:\"\";s:4:\"name\";s:0:\"\";s:6:\"accept\";s:0:\"\";s:12:\"CustomValue1\";s:0:\"\";s:10:\"CustomKey1\";s:0:\"\";s:12:\"CustomValue2\";s:0:\"\";s:10:\"CustomKey2\";s:0:\"\";s:12:\"CustomValue3\";s:0:\"\";s:10:\"CustomKey3\";s:0:\"\";s:12:\"CustomValue4\";s:0:\"\";s:10:\"CustomKey4\";s:0:\"\";s:12:\"CustomValue5\";s:0:\"\";s:10:\"CustomKey5\";s:0:\"\";s:12:\"CustomValue6\";s:0:\"\";s:10:\"CustomKey6\";s:0:\"\";s:12:\"CustomValue7\";s:0:\"\";s:10:\"CustomKey7\";s:0:\"\";s:12:\"CustomValue8\";s:0:\"\";s:10:\"CustomKey8\";s:0:\"\";s:12:\"CustomValue9\";s:0:\"\";s:10:\"CustomKey9\";s:0:\"\";s:13:\"CustomValue10\";s:0:\"\";s:11:\"CustomKey10\";s:0:\"\";}', 'yes'),
(703, '_transient_timeout_acf_plugin_updates', '1537269675', 'no'),
(704, '_transient_acf_plugin_updates', 'a:3:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.7.6\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;}', 'no'),
(705, 'rewrite_rules', 'a:180:{s:31:\"evenements/(\\d{4}-\\d{2}-\\d{2})$\";s:55:\"index.php?pagename=evenements/&calendar_day=$matches[1]\";s:17:\"evenements/rss/?$\";s:35:\"index.php?post_type=event&feed=feed\";s:18:\"evenements/feed/?$\";s:35:\"index.php?post_type=event&feed=feed\";s:22:\"evenements/event/(.+)$\";s:67:\"index.php?pagename=evenements/&em_redirect=1&event_slug=$matches[1]\";s:25:\"evenements/location/(.+)$\";s:70:\"index.php?pagename=evenements/&em_redirect=1&location_slug=$matches[1]\";s:25:\"evenements/category/(.+)$\";s:70:\"index.php?pagename=evenements/&em_redirect=1&category_slug=$matches[1]\";s:13:\"evenements/?$\";s:29:\"index.php?pagename=evenements\";s:22:\"events/([^/]+)/ical/?$\";s:34:\"index.php?event=$matches[1]&ical=1\";s:25:\"locations/([^/]+)/ical/?$\";s:37:\"index.php?location=$matches[1]&ical=1\";s:30:\"events/categories/(.+)/ical/?$\";s:45:\"index.php?event-categories=$matches[1]&ical=1\";s:24:\"events/tags/(.+)/ical/?$\";s:39:\"index.php?event-tags=$matches[1]&ical=1\";s:24:\"locations/([^/]+)/rss/?$\";s:36:\"index.php?location=$matches[1]&rss=1\";s:12:\"locations/?$\";s:28:\"index.php?post_type=location\";s:42:\"locations/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=location&feed=$matches[1]\";s:37:\"locations/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?post_type=location&feed=$matches[1]\";s:29:\"locations/page/([0-9]{1,})/?$\";s:46:\"index.php?post_type=location&paged=$matches[1]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:55:\"media_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?media_category=$matches[1]&feed=$matches[2]\";s:50:\"media_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?media_category=$matches[1]&feed=$matches[2]\";s:31:\"media_category/([^/]+)/embed/?$\";s:47:\"index.php?media_category=$matches[1]&embed=true\";s:43:\"media_category/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?media_category=$matches[1]&paged=$matches[2]\";s:25:\"media_category/([^/]+)/?$\";s:36:\"index.php?media_category=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:52:\"events/tags/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?event-tags=$matches[1]&feed=$matches[2]\";s:47:\"events/tags/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?event-tags=$matches[1]&feed=$matches[2]\";s:28:\"events/tags/([^/]+)/embed/?$\";s:43:\"index.php?event-tags=$matches[1]&embed=true\";s:40:\"events/tags/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?event-tags=$matches[1]&paged=$matches[2]\";s:22:\"events/tags/([^/]+)/?$\";s:32:\"index.php?event-tags=$matches[1]\";s:56:\"events/categories/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?event-categories=$matches[1]&feed=$matches[2]\";s:51:\"events/categories/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?event-categories=$matches[1]&feed=$matches[2]\";s:32:\"events/categories/(.+?)/embed/?$\";s:49:\"index.php?event-categories=$matches[1]&embed=true\";s:44:\"events/categories/(.+?)/page/?([0-9]{1,})/?$\";s:56:\"index.php?event-categories=$matches[1]&paged=$matches[2]\";s:26:\"events/categories/(.+?)/?$\";s:38:\"index.php?event-categories=$matches[1]\";s:37:\"locations/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"locations/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"locations/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"locations/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"locations/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"locations/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"locations/([^/]+)/embed/?$\";s:41:\"index.php?location=$matches[1]&embed=true\";s:30:\"locations/([^/]+)/trackback/?$\";s:35:\"index.php?location=$matches[1]&tb=1\";s:50:\"locations/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?location=$matches[1]&feed=$matches[2]\";s:45:\"locations/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?location=$matches[1]&feed=$matches[2]\";s:38:\"locations/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?location=$matches[1]&paged=$matches[2]\";s:45:\"locations/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?location=$matches[1]&cpage=$matches[2]\";s:34:\"locations/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?location=$matches[1]&page=$matches[2]\";s:26:\"locations/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"locations/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"locations/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"locations/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"locations/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"locations/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"events-recurring/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"events-recurring/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"events-recurring/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"events-recurring/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"events-recurring/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"events-recurring/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"events-recurring/([^/]+)/embed/?$\";s:48:\"index.php?event-recurring=$matches[1]&embed=true\";s:37:\"events-recurring/([^/]+)/trackback/?$\";s:42:\"index.php?event-recurring=$matches[1]&tb=1\";s:45:\"events-recurring/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?event-recurring=$matches[1]&paged=$matches[2]\";s:52:\"events-recurring/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?event-recurring=$matches[1]&cpage=$matches[2]\";s:41:\"events-recurring/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?event-recurring=$matches[1]&page=$matches[2]\";s:33:\"events-recurring/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"events-recurring/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"events-recurring/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"events-recurring/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"events-recurring/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"events-recurring/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(709, '_transient_timeout_feed_3ca2a73478cc83bbe37e39039b345a78', '1537227709', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(710, '_transient_feed_3ca2a73478cc83bbe37e39039b345a78', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n		\n		\n		\n		\n		\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"https://wpfr.net\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Site officiel de la communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 17 Sep 2018 11:16:28 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"https://wpfr.net/wordpress-gutenberg/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Apr 2018 09:00:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"éditeur visuel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"Gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2117903\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1474:\"Gutenberg arrive à grand pas, alors voici un résumé de tout ce qu&#8217;il faut savoir sur le nouvel éditeur visuel de WordPress au travers de questions / réponses ! Difficile de marcher tranquillement dans le quartier WordPress sans entendre parler de ce fameux Gutenberg ! C&#8217;est un nouvel éditeur ? C&#8217;est un nouveau page builder<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i6NQjnc9uiQ:TQYicJ8IHdE:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i6NQjnc9uiQ\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wordpress-gutenberg/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"https://wpfr.net/wordpress-gutenberg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Résultats des élections du bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/qvTDw6NqY5Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://wpfr.net/resultats-elections-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 05 Mar 2018 08:00:52 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2107099\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1521:\"Suite à la votation électronique qui s&#8217;est déroulée du 24 février au 3 mars 2018, nous vous communiquons les résultats pour l&#8217;élection du bureau 2018. Vous avez été 40% des adhérents à participer au vote, soit 85 suffrages exprimés. C&#8217;est pratiquement autant de votants que l&#8217;an passé avec un nombre d&#8217;adhérents moins élevé, l&#8217;abstention reste<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=qvTDw6NqY5Q:LD0dZBWRJa4:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/qvTDw6NqY5Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/resultats-elections-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"13\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"https://wpfr.net/resultats-elections-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Liste des candidats au bureau 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/mYCnwrPtTAY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wpfr.net/liste-candidats-bureau-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 16 Feb 2018 11:45:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2092699\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Les élections pour le renouvellement du bureau auront lieu du 24 février au 3 mars 2018 par voie électronique. Nous vous communiquons dès à présent la liste des candidats validée par l&#8217;actuel bureau, classés par ordre alphabétique. Les candidats Willy Bahuaud Présentation Je suis développeur full-stack. Après quelques années passées en agence à Nantes, j’ai<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=mYCnwrPtTAY:g4F7i0PDxEQ:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/mYCnwrPtTAY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"https://wpfr.net/liste-candidats-bureau-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"https://wpfr.net/liste-candidats-bureau-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"WPFR sponsor du WP Tech Lyon !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/kVgok7MJrJM/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 12 Feb 2018 07:00:30 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2082223\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1507:\"L’association WPFR est fière de vous annoncer qu’elle sponsorise WP Tech 2018 qui aura lieu le 28 avril à Lyon. Le WP Tech est une journée de conférences et d’ateliers exclusivement consacrée aux aspects techniques de WordPress. Vous y découvrirez des outils pour améliorer vos méthodes de travail, apprendrez de nouvelles méthodes de développements d’extensions,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=kVgok7MJrJM:wfMH9NuDwps:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/kVgok7MJrJM\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:42:\"https://wpfr.net/wpfr-sponsor-wptech-lyon/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Loi anti-fraude et l’e-commerce : les informations officielles\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/KBb85wMEo0g/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 31 Jan 2018 14:51:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:10:\"Extensions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:21:\"WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:15:\"Loi anti-fraude\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2072415\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1503:\"Cette nouvelle loi a fait couler pas mal d&#8217;encre ces derniers temps et afin d&#8217;apporter des réponses concrètes et officielles, nous nous sommes penchés sur le sujet en profondeur. Voici donc ce qu&#8217;il en ressort officiellement : Les plateformes e-commerce open source sont bien concernées par la loi anti-fraude Que ce soit WooCommerce, Magento, Prestashop,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=KBb85wMEo0g:NZq1YCx1Y5E:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/KBb85wMEo0g\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"39\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/loi-anti-fraude-et-le-commerce-les-informations-officielles/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:33:\"L’élection du bureau WPFR 2018\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/BC2q8usn6uA/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"https://wpfr.net/election-bureau-wpfr-2018/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 15 Jan 2018 11:30:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2041252\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1530:\"Comme annoncé lors de l’assemblée générale du 12 décembre 2017, l&#8217;heure des élections a sonné. Le bureau actuellement en place voit son mandat terminé, de nouvelles élections doivent donc avoir lieu afin de le renouveler  Ces élections sont prévues pour le 26 février 2018 et nous invitons les membres l&#8217;association désireux d&#8217;occuper des responsabilités nationales à<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=BC2q8usn6uA:rovaWM-7xzU:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/BC2q8usn6uA\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/election-bureau-wpfr-2018/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"https://wpfr.net/election-bureau-wpfr-2018/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:30:\"\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"PHP Tour Montpellier 2018 : WPFR est partenaire !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/i_ty7z2Kg6A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 11 Jan 2018 10:12:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2035309\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1489:\"WPFR est fière d&#8217;être partenaire du PHP Tour Montpellier 2018 qui se tiendra les 17 et 18 mai. Cet évènement porté par l&#8217;AFUP (Association Française des Utilisateurs de PHP) rassemble une sélection d&#8217;orateurs reconnus du monde PHP. Et comme vous le savez, WordPress repose en grande partie sur le langage PHP. Si vous êtes développeurs,<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=i_ty7z2Kg6A:5FE8vgrgZLs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/i_ty7z2Kg6A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:59:\"https://wpfr.net/php-tour-montpellier-2018-wpfr-partenaire/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Le point sur les certifications WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/SbTm014V92I/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://wpfr.net/point-certifications-wordpress/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 11 Dec 2017 17:15:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=2001761\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1552:\"Le sujet des certifications WordPress est de retour en cette fin d&#8217;année pour faire un point de situation. L&#8217;association s&#8217;est penchée dessus et voici les conclusions actuelles. Pour rappel, j&#8217;avais émis l&#8217;idée en 2016 de faire certifier les formations WordPress. D&#8217;autres idées ont ensuite suivi, dont notamment celle d&#8217;inscrire WordPress au Registre National des Certifications<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=SbTm014V92I:Cd3SuKi-siI:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/SbTm014V92I\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"maximebj\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wpfr.net/point-certifications-wordpress/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"11\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:48:\"https://wpfr.net/point-certifications-wordpress/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:39:\"\n		\n		\n		\n		\n		\n				\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"Certification WordPress par WPFR, appel à contributions\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/UUGDJmDzVjE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 19 Oct 2017 06:46:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:16:\"Association WPFR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1931227\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1508:\"Le chantier lié à la mise en place d&#8217;une certification WordPress accessible via le Compte Personnel de Formation (CPF) et enregistré auprès du Registre National des Certifications Professionnelles (RNCP) est en marche. Ce dernier est mené par Maxime Bernard-Jacquet avec nous l&#8217;espérons des résultats concrets pour 2018. Cette mission a été relancée lors de la<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=UUGDJmDzVjE:jTMHK5CfDEs:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/UUGDJmDzVjE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Aurélien Denis\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wpfr.net/certification-wordpress-wpfr-appel-contributions/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:45:\"\n		\n		\n		\n		\n		\n				\n		\n		\n		\n\n		\n		\n		\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Le 30 septembre, c’est le WordPress Translation Day 2017 !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"http://feedproxy.google.com/~r/WordpressFrancophone/~3/PgJgl5KXQwk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 12 Sep 2017 12:03:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:4:\"Blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"Evènements\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"communauté\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"traduction\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"https://wpfr.net/?p=1883236\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1488:\"Le troisième WordPress Translation Day aura lieu le 30 septembre 2017 ! Le 30/09 se déroulera un marathon mondial de 24 heures dédié à la traduction et à la localisation de la plate-forme WordPress et de son écosystème : thèmes, extensions, applications… Organisé par l&#8217;équipe WordPress Polyglots dont la mission est de traduire WordPress dans<div class=\"btn btn-default read-more text-uppercase\">Lire la suite <span class=\"meta-nav\"><i class=\"fa fa-caret-right\"></i></span></div><div class=\"feedflare\">\n<a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:yIl2AUoC8zA\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=yIl2AUoC8zA\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:V_sGLiPBpWU\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:qj6IDK7rITs\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?d=qj6IDK7rITs\" border=\"0\"></img></a> <a href=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?a=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\"><img src=\"http://feeds.feedburner.com/~ff/WordpressFrancophone?i=PgJgl5KXQwk:7QgDYesvNPg:gIN9vFwOqvQ\" border=\"0\"></img></a>\n</div><img src=\"http://feeds.feedburner.com/~r/WordpressFrancophone/~4/PgJgl5KXQwk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Jb Audras\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wpfr.net/le-30-septembre-cest-le-wordpress-translation-day-2017/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:48:\"http://feeds.feedburner.com/WordpressFrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:4:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:20:\"wordpressfrancophone\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordpressFrancophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"feedFlare\";a:9:{i:0;a:5:{s:4:\"data\";s:24:\"Subscribe with NewsGator\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:112:\"http://www.newsgator.com/ngs/subscriber/subext.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://www.newsgator.com/images/ngsub1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"Subscribe with Bloglines\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:77:\"http://www.bloglines.com/sub/http://feeds.feedburner.com/WordpressFrancophone\";s:3:\"src\";s:48:\"http://www.bloglines.com/images/sub_modern11.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:23:\"Subscribe with Netvibes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:98:\"http://www.netvibes.com/subscribe.php?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:39:\"//www.netvibes.com/img/add2netvibes.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:21:\"Subscribe with Google\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:93:\"http://fusion.google.com/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:51:\"http://buttons.googlesyndication.com/fusion/add.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:25:\"Subscribe with Pageflakes\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:101:\"http://www.pageflakes.com/subscribe.aspx?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:87:\"http://www.pageflakes.com/ImageFile.ashx?instanceId=Static_4&fileName=ATP_blu_91x17.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:21:\"Subscribe with Plusmo\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:86:\"http://www.plusmo.com/add?url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:43:\"http://plusmo.com/res/graphics/fbplusmo.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:23:\"Subscribe with Live.com\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:81:\"http://www.live.com/?add=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:141:\"http://tkfiles.storage.msn.com/x1piYkpqHC_35nIp1gLE68-wvzLZO8iXl_JMledmJQXP-XTBOLfmQv4zhj4MhcWEJh_GtoBIiAl1Mjh-ndp9k47If7hTaFno0mxW9_i3p_5qQw\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"Subscribe with Mon Yahoo!\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:99:\"https://add.my.yahoo.com/content?lg=fr&url=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:60:\"http://us.i1.yimg.com/us.yimg.com/i/us/my/bn/intatm_fr_1.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"Subscribe with Excite MIX\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:4:\"href\";s:89:\"http://mix.excite.eu/add?feedurl=http%3A%2F%2Ffeeds.feedburner.com%2FWordpressFrancophone\";s:3:\"src\";s:42:\"http://image.excite.co.uk/mix/addtomix.gif\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"B5hPZQFZsWrnmJ+C7a7G2lahqaI\";s:13:\"last-modified\";s:29:\"Mon, 17 Sep 2018 11:33:07 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Mon, 17 Sep 2018 11:41:46 GMT\";s:7:\"expires\";s:29:\"Mon, 17 Sep 2018 11:41:46 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:40:\"quic=\":443\"; ma=2592000; v=\"44,43,39,35\"\";}}s:5:\"build\";s:14:\"20180910094813\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(711, '_transient_timeout_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1537227709', 'no'),
(712, '_transient_feed_mod_3ca2a73478cc83bbe37e39039b345a78', '1537184509', 'no'),
(713, '_transient_timeout_feed_76f8d9281c01f21e505004d0986f50c6', '1537227709', 'no'),
(714, '_transient_feed_76f8d9281c01f21e505004d0986f50c6', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:5:\"\n		\n	\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:79:\"\n		\n		\n		\n		\n		\n		\n					\n						\n						\n						\n						\n						\n						\n						\n					\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"Planète WordPress Francophone\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"https://wpfr.net/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Toute l’actualité de WordPress en français !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"fr-FR\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:8:{i:0;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"Ajouter une checkbox à la page Commande de WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/Hh0osGhHgvU/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:171:\"https://wpmarmite.com/snippet/ajouter-checkbox-page-commande-woocommerce/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=ajouter-checkbox-page-commande-woocommerce\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 14 Sep 2018 10:38:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:324:\"\n		        \nVous avez parfois besoin de faire accepter certaines conditions à vos clients lors de leurs commandes sur votre boutique en ligne WooCommerce, comme des délais de livraison ou votre politique...\nL’article Ajouter une checkbox à la page Commande de WooCommerce est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:754:\"<p><img width=\"640\" height=\"220\" src=\"https://wpmarmite.com/wp-content/uploads/2017/06/woocommerce-snippet.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"woocommerce snippet\" /></p>\n<p>Vous avez parfois besoin de faire accepter certaines conditions à vos clients lors de leurs commandes sur votre boutique en ligne WooCommerce, comme des délais de livraison ou votre politique...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/snippet/ajouter-checkbox-page-commande-woocommerce/\">Ajouter une checkbox à la page Commande de WooCommerce</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/Hh0osGhHgvU\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:171:\"https://wpmarmite.com/snippet/ajouter-checkbox-page-commande-woocommerce/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=ajouter-checkbox-page-commande-woocommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Hestia : le thème WordPress parfait pour les débutants !\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/_UdwAl878vY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wpformation.com/hestia-theme-wordpress-parfait-debutants/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 13 Sep 2018 06:00:26 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:583:\"\n		        Hestia est le thème WordPress &#8220;coup de cœur&#8221; de cette rentrée ! Il n&#8217;est pourtant pas nouveau, ses 100.000 installations actives et sa note de 4,5/5 prouvent qu&#8217;il est très apprécié. Le thème Hestia est parfait pour les débutants mais également pour les initiés qui en ont ras le bol de jouer avec des tableaux [&#8230;]\n\nL’article Hestia : le thème WordPress parfait pour les débutants ! est apparu en premier sur WPFormation. Tutoriels WordPress, Formation WordPress, Woocommerce, SEO. Abonnez-vous pour ne rien manquer !\n		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"WP Formation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1418:\"<p><img width=\"1000\" height=\"592\" src=\"https://wpformation.com/wp-content/uploads/2018/09/theme-hestia.jpg\" class=\"attachment-Large size-Large wp-post-image\" alt=\"Le Thème Hestia\" style=\"margin-left: 0px;margin-right: auto;margin-top:10px;margin-bottom:10px;max-width: 640px;max-height: 400px\" />Hestia est le thème WordPress &#8220;coup de cœur&#8221; de cette rentrée ! Il n&#8217;est pourtant pas nouveau, ses 100.000 installations actives et sa note de 4,5/5 prouvent qu&#8217;il est très apprécié. Le thème Hestia est parfait pour les débutants mais également pour les initiés qui en ont ras le bol de jouer avec des tableaux [&#8230;]</p>\n<hr />\nL’article <a rel=\"nofollow\" href=\"https://wpformation.com/hestia-theme-wordpress-parfait-debutants/\">Hestia : le thème WordPress parfait pour les débutants !</a> est apparu en premier sur <a href=\"https://wpformation.com/\">WPFormation</a>.<br /> <a href=\"https://wpformation.com/wordpress/\">Tutoriels WordPress</a>, <a href=\"https://wpformation.com/formation-wordpress/\">Formation WordPress</a>, <a href=\"https://wpformation.com/formation-woocommerce-e-commerce/\">Woocommerce</a>, <a href=\"https://wpformation.com/formation-wordpress-pro/\">SEO</a>. <a href=\"https://wpformation.com/abonnement-newsletter-wpf/\">Abonnez-vous</a> pour ne rien manquer !</p>\n<hr /><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/_UdwAl878vY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://wpformation.com/hestia-theme-wordpress-parfait-debutants/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:50:\"Les 25 meilleurs plugins WordPress (édition 2018)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/LEtV9kSr0Ck/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:133:\"https://wpmarmite.com/meilleurs-plugins-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=meilleurs-plugins-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 12 Sep 2018 06:01:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:298:\"\n		        \n56 000. Soit le nombre de plugins WordPress présents sur le répertoire officiel, au moment d’écrire ces lignes. Et je ne vous parle même pas de ceux présents sur des...\nL’article Les 25 meilleurs plugins WordPress (édition 2018) est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:675:\"<p><img width=\"1500\" height=\"750\" src=\"https://wpmarmite.com/wp-content/uploads/2018/09/plugins.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>56 000. Soit le nombre de plugins WordPress présents sur le répertoire officiel, au moment d’écrire ces lignes. Et je ne vous parle même pas de ceux présents sur des...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/meilleurs-plugins-wordpress/\">Les 25 meilleurs plugins WordPress (édition 2018)</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/LEtV9kSr0Ck\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:133:\"https://wpmarmite.com/meilleurs-plugins-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=meilleurs-plugins-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"Maintenance pour WordPress : opération nettoyage en profondeur\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/k1Xq66K9KaY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wpchannel.com/wordpress/tutoriels-wordpress/maintenance-wordpress-nettoyage/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 11 Sep 2018 06:55:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:450:\"\n		        Maintenir à jour un site WordPress consiste en une série d&#8217;opérations techniques allant de la simple mise à jour d&#8217;extension ou de thème à un nettoyage en profondeur de votre base de données. En tant que spécialiste de la maintenance de site sous WordPress, je me suis donné pour challenge d&#8217;optimiser au mieux WP Channel fort d&#8217;un historique de bientôt 10 ans d&#8217;existence. Mener [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:713:\"<div class=\"post-thumbnail\"><img width=\"356\" height=\"327\" src=\"https://wpchannel.com/images/2018/01/lego-star-wars-356x327.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"\" /></div>Maintenir à jour un site WordPress consiste en une série d&#8217;opérations techniques allant de la simple mise à jour d&#8217;extension ou de thème à un nettoyage en profondeur de votre base de données. En tant que spécialiste de la maintenance de site sous WordPress, je me suis donné pour challenge d&#8217;optimiser au mieux WP Channel fort d&#8217;un historique de bientôt 10 ans d&#8217;existence. Mener [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/k1Xq66K9KaY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wpchannel.com/wordpress/tutoriels-wordpress/maintenance-wordpress-nettoyage/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"Passer son site WordPress en HTTPS : le guide complet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/MhTNg3XdEpI/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://wpchannel.com/wordpress/tutoriels-wordpress/passer-site-wordpress-https-guide-complet/\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 06 Sep 2018 08:28:22 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:405:\"\n		        Comment basculer votre site sous WordPress de HTTP à HTTPS ? Avec le déploiement massif des certificats gratuits proposés par Let&#8217;s Encrypt &#8211; un projet mondial soutenu par de gros acteurs du Web, plus de 60% des sites français sont passés à HTTPS&#8230; pour le meilleur et pour le pire ! Ce tutoriel fait suite au meetup WP Bordeaux du 8 février 2018 qui [&#8230;]		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Channel\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:673:\"<div class=\"post-thumbnail\"><img width=\"356\" height=\"327\" src=\"https://wpchannel.com/images/2018/08/wordpress-ssl-https-356x327.jpg\" class=\"attachment-large size-large wp-post-image\" alt=\"\" /></div>Comment basculer votre site sous WordPress de HTTP à HTTPS ? Avec le déploiement massif des certificats gratuits proposés par Let&#8217;s Encrypt &#8211; un projet mondial soutenu par de gros acteurs du Web, plus de 60% des sites français sont passés à HTTPS&#8230; pour le meilleur et pour le pire ! Ce tutoriel fait suite au meetup WP Bordeaux du 8 février 2018 qui [&#8230;]<img src=\"http://feeds.feedburner.com/~r/wpfr/~4/MhTNg3XdEpI\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:94:\"https://wpchannel.com/wordpress/tutoriels-wordpress/passer-site-wordpress-https-guide-complet/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"Comment créer aisément des Landing Pages sur WordPress ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/nMIyImIpORg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:123:\"https://wpmarmite.com/landing-page-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=landing-page-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 05 Sep 2018 06:30:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:340:\"\n		        \nPage d’accueil, page produit pour les sites e-commerce, page de contact… La structure d’un site web est généralement assez attendue, et il existe moult bonnes pratiques qui vous expliqueront comment...\nL’article Comment créer aisément des Landing Pages sur WordPress ? est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:714:\"<p><img width=\"1500\" height=\"750\" src=\"https://wpmarmite.com/wp-content/uploads/2018/09/landing-1.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Page d’accueil, page produit pour les sites e-commerce, page de contact… La structure d’un site web est généralement assez attendue, et il existe moult bonnes pratiques qui vous expliqueront comment...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/landing-page-wordpress/\">Comment créer aisément des Landing Pages sur WordPress ?</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/nMIyImIpORg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:123:\"https://wpmarmite.com/landing-page-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=landing-page-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"Le fichier robots.txt de votre site WordPress est-il optimisé ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/e2LfTeUMTFc/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"https://wpmarmite.com/robots-txt-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=robots-txt-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 29 Aug 2018 06:00:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:310:\"\n		        \nSi je vous demande de me définir ce qu’est un fichier robots.txt sur WordPress, êtes-vous capable de me donner une réponse du tac au tac ? Pas facile, n’est-ce pas...\nL’article Le fichier robots.txt de votre site WordPress est-il optimisé ? est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:682:\"<p><img width=\"1500\" height=\"750\" src=\"https://wpmarmite.com/wp-content/uploads/2018/08/robot.txt.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Si je vous demande de me définir ce qu’est un fichier robots.txt sur WordPress, êtes-vous capable de me donner une réponse du tac au tac ? Pas facile, n’est-ce pas...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/robots-txt-wordpress/\">Le fichier robots.txt de votre site WordPress est-il optimisé ?</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/e2LfTeUMTFc\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:119:\"https://wpmarmite.com/robots-txt-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=robots-txt-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:84:\"\n		        \n		        \n		        \n		        \n		        \n		        \n		        \n		    \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"Quel plugin choisir pour installer un captcha sur WordPress ?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"http://feedproxy.google.com/~r/wpfr/~3/eLm2D0c6tK8/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://wpmarmite.com/captcha-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=captcha-wordpress\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 22 Aug 2018 06:00:46 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:307:\"\n		        \nVoilà un truc qui peut vous rendre zinzin, vous faire passer pour un déficient visuel, ou un illettré. Voire les trois en même temps. Ce truc, c’est un captcha. Ça...\nL’article Quel plugin choisir pour installer un captcha sur WordPress ? est apparu en premier sur WP Marmite.		        \";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:10:\"WP Marmite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:674:\"<p><img width=\"1500\" height=\"750\" src=\"https://wpmarmite.com/wp-content/uploads/2018/08/captcha.jpg\" class=\"attachment-full size-full wp-post-image\" alt=\"\" /></p>\n<p>Voilà un truc qui peut vous rendre zinzin, vous faire passer pour un déficient visuel, ou un illettré. Voire les trois en même temps. Ce truc, c’est un captcha. Ça...</p>\n<p>L’article <a rel=\"nofollow\" href=\"https://wpmarmite.com/captcha-wordpress/\">Quel plugin choisir pour installer un captcha sur WordPress ?</a> est apparu en premier sur <a rel=\"nofollow\" href=\"https://wpmarmite.com\">WP Marmite</a>.</p><img src=\"http://feeds.feedburner.com/~r/wpfr/~4/eLm2D0c6tK8\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:113:\"https://wpmarmite.com/captcha-wordpress/?utm_source=rss&#038;utm_medium=rss&%23038;utm_campaign=captcha-wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:52:\"http://backend.userland.com/creativeCommonsRssModule\";a:1:{s:7:\"license\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"http://creativecommons.org/licenses/by-nc-sa/3.0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:32:\"http://feeds.feedburner.com/wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:4:\"wpfr\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:11:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"VDvETbpbRY5dloRqM77I2OdZaHQ\";s:13:\"last-modified\";s:29:\"Mon, 17 Sep 2018 11:13:22 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Mon, 17 Sep 2018 11:41:46 GMT\";s:7:\"expires\";s:29:\"Mon, 17 Sep 2018 11:41:46 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";s:7:\"alt-svc\";s:40:\"quic=\":443\"; ma=2592000; v=\"44,43,39,35\"\";}}s:5:\"build\";s:14:\"20180910094813\";}', 'no'),
(715, '_transient_timeout_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1537227709', 'no'),
(716, '_transient_feed_mod_76f8d9281c01f21e505004d0986f50c6', '1537184509', 'no'),
(717, '_transient_timeout_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '1537227709', 'no'),
(718, '_transient_dash_v2_bd94b8f41e74bae2f4dc72e9bd8379af', '<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/WordpressFrancophone/~3/i6NQjnc9uiQ/\'>Tout savoir sur l’arrivée de Gutenberg en quelques points essentiels</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/Hh0osGhHgvU/\'>Ajouter une checkbox à la page Commande de WooCommerce</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/_UdwAl878vY/\'>Hestia : le thème WordPress parfait pour les débutants !</a></li><li><a class=\'rsswidget\' href=\'http://feedproxy.google.com/~r/wpfr/~3/LEtV9kSr0Ck/\'>Les 25 meilleurs plugins WordPress (édition 2018)</a></li></ul></div>', 'no'),
(719, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1537233860', 'no'),
(720, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:4:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:18:\"WordCamp Würzburg\";s:3:\"url\";s:35:\"https://2018.wuerzburg.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-09-22 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:18:\"Würzburg, Germany\";s:7:\"country\";s:2:\"DE\";s:8:\"latitude\";d:49.7839695;s:9:\"longitude\";d:9.9690454;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:57:\"Getting Started with WordPress 2/3 | WordPress Luxembourg\";s:3:\"url\";s:68:\"https://www.meetup.com/WordPress-Meetup-Luxembourg/events/254607509/\";s:6:\"meetup\";s:27:\"WordPress Meetup Luxembourg\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/WordPress-Meetup-Luxembourg/\";s:4:\"date\";s:19:\"2018-09-25 18:30:00\";s:8:\"location\";a:4:{s:8:\"location\";s:22:\"Luxembourg, Luxembourg\";s:7:\"country\";s:2:\"lu\";s:8:\"latitude\";d:49.61039;s:9:\"longitude\";d:6.134193;}}i:2;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Cologne\";s:3:\"url\";s:33:\"https://2018.cologne.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-10-20 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:20:\"Cologne, Germany/NRW\";s:7:\"country\";s:2:\"DE\";s:8:\"latitude\";d:50.91399;s:9:\"longitude\";d:6.94335;}}i:3;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Utrecht\";s:3:\"url\";s:33:\"https://2018.utrecht.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-10-27 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:7:\"Utrecht\";s:7:\"country\";s:2:\"NL\";s:8:\"latitude\";d:52.0890859;s:9:\"longitude\";d:5.1133135;}}}}', 'no'),
(722, '_site_transient_timeout_theme_roots', '1537189568', 'no'),
(723, '_site_transient_theme_roots', 'a:5:{s:3:\"eds\";s:7:\"/themes\";s:8:\"edsrecup\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(729, 'em_last_modified', '1537189308', 'yes'),
(730, 'event-categories_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1537190078:1'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1537000803:1'),
(7, 9, '_edit_last', '1'),
(8, 9, '_edit_lock', '1537000820:1'),
(9, 11, '_edit_last', '1'),
(10, 11, '_edit_lock', '1537191160:1'),
(11, 13, '_edit_last', '1'),
(12, 13, '_edit_lock', '1537001183:1'),
(13, 15, '_wp_trash_meta_status', 'publish'),
(14, 15, '_wp_trash_meta_time', '1537001099'),
(15, 16, '_wp_trash_meta_status', 'publish'),
(16, 16, '_wp_trash_meta_time', '1537001125'),
(17, 17, '_edit_last', '1'),
(18, 17, '_edit_lock', '1537183357:1'),
(19, 19, '_form', '<label> Votre nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Votre adresse de messagerie (obligatoire)\n    [email* your-email] </label>\n\n<label> Objet\n    [text your-subject] </label>\n\n<label> Votre message\n    [textarea your-message] </label>\n\n[submit \"Envoyer\"]'),
(20, 19, '_mail', 'a:8:{s:7:\"subject\";s:20:\"eds \"[your-subject]\"\";s:6:\"sender\";s:38:\"[your-name] <bertholdberthi@gmail.com>\";s:4:\"body\";s:184:\"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de eds (http://localhost/eds)\";s:9:\"recipient\";s:24:\"bertholdberthi@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(21, 19, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:20:\"eds \"[your-subject]\"\";s:6:\"sender\";s:30:\"eds <bertholdberthi@gmail.com>\";s:4:\"body\";s:126:\"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de eds (http://localhost/eds)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:34:\"Reply-To: bertholdberthi@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(22, 19, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:77:\"Vous devez accepter les termes et conditions avant d’envoyer votre message.\";s:16:\"invalid_required\";s:25:\"Ce champ est obligatoire.\";s:16:\"invalid_too_long\";s:23:\"Le champ est trop long.\";s:17:\"invalid_too_short\";s:24:\"Le champ est trop court.\";}'),
(23, 19, '_additional_settings', NULL),
(24, 19, '_locale', 'fr_FR'),
(25, 21, '_form', '<label> votre message \n   [text* your-name placeholder\"votre message\"]</label>\n<label> email\n    [email* your-email placeholder\"votre message\"]</label>\n<label>votre site web\n    [url* your_web_site placeholder\"votre site web\"]</label>\n<label>Votre message\n    [textarea* your_message placeholder\"votre message\"]</label>\n<label>[submit \"send\"]</label>\n<input type=\"hidden\" name=\"your-subject\" value=\"Spritz contact\">'),
(26, 21, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:20:\"eds \"[your-subject]\"\";s:6:\"sender\";s:38:\"[your-name] <bertholdberthi@gmail.com>\";s:9:\"recipient\";s:24:\"bertholdberthi@gmail.com\";s:4:\"body\";s:183:\"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de eds (http://localhost/eds)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(27, 21, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:20:\"eds \"[your-subject]\"\";s:6:\"sender\";s:30:\"eds <bertholdberthi@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:125:\"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de eds (http://localhost/eds)\";s:18:\"additional_headers\";s:34:\"Reply-To: bertholdberthi@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(28, 21, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:77:\"Vous devez accepter les termes et conditions avant d’envoyer votre message.\";s:16:\"invalid_required\";s:25:\"Ce champ est obligatoire.\";s:16:\"invalid_too_long\";s:23:\"Le champ est trop long.\";s:17:\"invalid_too_short\";s:24:\"Le champ est trop court.\";s:12:\"invalid_date\";s:32:\"Le format de date est incorrect.\";s:14:\"date_too_early\";s:47:\"La date précède la première date autorisée.\";s:13:\"date_too_late\";s:57:\"La date est postérieure à la dernière date autorisée.\";s:13:\"upload_failed\";s:72:\"Une erreur inconnue s’est produite lors du téléversement du fichier.\";s:24:\"upload_file_type_invalid\";s:79:\"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\";s:21:\"upload_file_too_large\";s:31:\"Le fichier est trop volumineux.\";s:23:\"upload_failed_php_error\";s:63:\"Une erreur s’est produite lors du téléversement du fichier.\";s:14:\"invalid_number\";s:33:\"Le format du nombre est invalide.\";s:16:\"number_too_small\";s:50:\"Le nombre est plus petit que le minimum autorisé.\";s:16:\"number_too_large\";s:50:\"Le nombre est plus grand que le maximum autorisé.\";s:23:\"quiz_answer_not_correct\";s:42:\"La réponse à la question est incorrecte.\";s:17:\"captcha_not_match\";s:29:\"Le code entré est incorrect.\";s:13:\"invalid_email\";s:38:\"L’adresse e-mail n’est pas valide.\";s:11:\"invalid_url\";s:27:\"L’URL n’est pas valide.\";s:11:\"invalid_tel\";s:45:\"Le numéro de téléphone n’est pas valide.\";}'),
(29, 21, '_additional_settings', ''),
(30, 21, '_locale', 'fr_FR'),
(31, 28, '_email', 'bertholdberthi@gmail.com'),
(32, 28, '_name', 'Berthold'),
(33, 28, '_props', 'a:2:{s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";}'),
(34, 28, '_last_contacted', '2018-09-15 10:53:53'),
(35, 29, '_email', 'wapuu@wordpress.example'),
(36, 29, '_name', 'Un commentateur WordPress'),
(37, 29, '_props', 'a:0:{}'),
(38, 29, '_last_contacted', '2018-09-15 10:53:53'),
(39, 31, '_EventOrigin', 'events-calendar'),
(40, 31, '_tribe_modified_fields', 'a:1:{s:12:\"_EventOrigin\";d:1537009027;}'),
(41, 33, '_wp_trash_meta_status', 'publish'),
(42, 33, '_wp_trash_meta_time', '1537002421'),
(43, 34, '_menu_item_type', 'post_type'),
(44, 34, '_menu_item_menu_item_parent', '0'),
(45, 34, '_menu_item_object_id', '17'),
(46, 34, '_menu_item_object', 'page'),
(47, 34, '_menu_item_target', ''),
(48, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(49, 34, '_menu_item_xfn', ''),
(50, 34, '_menu_item_url', ''),
(61, 36, '_menu_item_type', 'post_type'),
(62, 36, '_menu_item_menu_item_parent', '0'),
(63, 36, '_menu_item_object_id', '11'),
(64, 36, '_menu_item_object', 'page'),
(65, 36, '_menu_item_target', ''),
(66, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 36, '_menu_item_xfn', ''),
(68, 36, '_menu_item_url', ''),
(79, 38, '_menu_item_type', 'post_type'),
(80, 38, '_menu_item_menu_item_parent', '0'),
(81, 38, '_menu_item_object_id', '7'),
(82, 38, '_menu_item_object', 'page'),
(83, 38, '_menu_item_target', ''),
(84, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 38, '_menu_item_xfn', ''),
(86, 38, '_menu_item_url', ''),
(88, 39, '_menu_item_type', 'post_type'),
(89, 39, '_menu_item_menu_item_parent', '0'),
(90, 39, '_menu_item_object_id', '5'),
(91, 39, '_menu_item_object', 'page'),
(92, 39, '_menu_item_target', ''),
(93, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 39, '_menu_item_xfn', ''),
(95, 39, '_menu_item_url', ''),
(97, 40, '_edit_last', '1'),
(98, 41, '_at_widget', '1'),
(99, 42, '_at_widget', '1'),
(100, 43, '_at_widget', '1'),
(101, 44, '_at_widget', '1'),
(102, 40, '_at_widget', '1'),
(103, 40, '_edit_lock', '1537178113:1'),
(112, 46, '_edit_last', '1'),
(113, 46, '_at_widget', '1'),
(114, 46, '_edit_lock', '1537183558:1'),
(115, 50, '_menu_item_type', 'post_type'),
(116, 50, '_menu_item_menu_item_parent', '36'),
(117, 50, '_menu_item_object_id', '49'),
(118, 50, '_menu_item_object', 'page'),
(119, 50, '_menu_item_target', ''),
(120, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 50, '_menu_item_xfn', ''),
(122, 50, '_menu_item_url', ''),
(123, 49, '_edit_last', '1'),
(124, 49, '_at_widget', '1'),
(125, 49, '_edit_lock', '1537182293:1'),
(126, 53, '_edit_last', '1'),
(127, 53, '_wp_page_template', 'default'),
(137, 53, '_at_widget', '1'),
(138, 53, '_edit_lock', '1537173613:1'),
(139, 56, '_edit_last', '1'),
(140, 56, '_wp_page_template', 'template-faq.php'),
(141, 57, '_at_widget', '1'),
(142, 57, '_menu_item_type', 'post_type'),
(143, 57, '_menu_item_menu_item_parent', '36'),
(144, 57, '_menu_item_object_id', '56'),
(145, 57, '_menu_item_object', 'page'),
(146, 57, '_menu_item_target', ''),
(147, 57, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 57, '_menu_item_xfn', ''),
(149, 57, '_menu_item_url', ''),
(150, 56, '_at_widget', '1'),
(151, 56, '_edit_lock', '1537191310:1'),
(152, 59, '_edit_last', '1'),
(153, 59, '_wp_page_template', 'default'),
(154, 60, '_at_widget', '1'),
(155, 60, '_menu_item_type', 'post_type'),
(156, 60, '_menu_item_menu_item_parent', '36'),
(157, 60, '_menu_item_object_id', '59'),
(158, 60, '_menu_item_object', 'page'),
(159, 60, '_menu_item_target', ''),
(160, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(161, 60, '_menu_item_xfn', ''),
(162, 60, '_menu_item_url', ''),
(163, 59, '_at_widget', '1'),
(164, 59, '_edit_lock', '1537173669:1'),
(165, 62, '_edit_last', '1'),
(166, 62, '_wp_page_template', 'template-cpas.php'),
(167, 63, '_at_widget', '1'),
(168, 63, '_menu_item_type', 'post_type'),
(169, 63, '_menu_item_menu_item_parent', '36'),
(170, 63, '_menu_item_object_id', '62'),
(171, 63, '_menu_item_object', 'page'),
(172, 63, '_menu_item_target', ''),
(173, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(174, 63, '_menu_item_xfn', ''),
(175, 63, '_menu_item_url', ''),
(176, 62, '_at_widget', '1'),
(177, 62, '_edit_lock', '1537182449:1'),
(178, 65, '_edit_last', '1'),
(179, 65, '_wp_page_template', 'template-devoirs.php'),
(180, 66, '_at_widget', '1'),
(181, 66, '_menu_item_type', 'post_type'),
(182, 66, '_menu_item_menu_item_parent', '36'),
(183, 66, '_menu_item_object_id', '65'),
(184, 66, '_menu_item_object', 'page'),
(185, 66, '_menu_item_target', ''),
(186, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(187, 66, '_menu_item_xfn', ''),
(188, 66, '_menu_item_url', ''),
(189, 65, '_at_widget', '1'),
(190, 65, '_edit_lock', '1537182491:1'),
(191, 68, '_edit_last', '1'),
(192, 68, '_wp_page_template', 'template-faq.php'),
(193, 69, '_at_widget', '1'),
(194, 69, '_menu_item_type', 'post_type'),
(195, 69, '_menu_item_menu_item_parent', '36'),
(196, 69, '_menu_item_object_id', '68'),
(197, 69, '_menu_item_object', 'page'),
(198, 69, '_menu_item_target', ''),
(199, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(200, 69, '_menu_item_xfn', ''),
(201, 69, '_menu_item_url', ''),
(202, 68, '_at_widget', '1'),
(203, 68, '_edit_lock', '1537186885:1'),
(204, 71, '_edit_last', '1'),
(205, 71, '_wp_page_template', 'template-logement.php'),
(206, 72, '_at_widget', '1'),
(207, 72, '_menu_item_type', 'post_type'),
(208, 72, '_menu_item_menu_item_parent', '36'),
(209, 72, '_menu_item_object_id', '71'),
(210, 72, '_menu_item_object', 'page'),
(211, 72, '_menu_item_target', ''),
(212, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(213, 72, '_menu_item_xfn', ''),
(214, 72, '_menu_item_url', ''),
(215, 71, '_at_widget', '1'),
(216, 71, '_edit_lock', '1537182658:1'),
(217, 74, '_edit_last', '1'),
(218, 74, '_wp_page_template', 'default'),
(219, 75, '_at_widget', '1'),
(220, 75, '_menu_item_type', 'post_type'),
(221, 75, '_menu_item_menu_item_parent', '36'),
(222, 75, '_menu_item_object_id', '74'),
(223, 75, '_menu_item_object', 'page'),
(224, 75, '_menu_item_target', ''),
(225, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(226, 75, '_menu_item_xfn', ''),
(227, 75, '_menu_item_url', ''),
(228, 74, '_at_widget', '1'),
(229, 74, '_edit_lock', '1537173762:1'),
(230, 77, '_edit_last', '1'),
(231, 77, '_wp_page_template', 'default'),
(232, 78, '_at_widget', '1'),
(233, 78, '_menu_item_type', 'post_type'),
(234, 78, '_menu_item_menu_item_parent', '36'),
(235, 78, '_menu_item_object_id', '77'),
(236, 78, '_menu_item_object', 'page'),
(237, 78, '_menu_item_target', ''),
(238, 78, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(239, 78, '_menu_item_xfn', ''),
(240, 78, '_menu_item_url', ''),
(241, 77, '_at_widget', '1'),
(242, 77, '_edit_lock', '1537173781:1'),
(243, 80, '_edit_last', '1'),
(244, 80, '_wp_page_template', 'template-culture.php'),
(245, 81, '_at_widget', '1'),
(246, 81, '_menu_item_type', 'post_type'),
(247, 81, '_menu_item_menu_item_parent', '36'),
(248, 81, '_menu_item_object_id', '80'),
(249, 81, '_menu_item_object', 'page'),
(250, 81, '_menu_item_target', ''),
(251, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(252, 81, '_menu_item_xfn', ''),
(253, 81, '_menu_item_url', ''),
(254, 80, '_at_widget', '1'),
(255, 80, '_edit_lock', '1537182403:1'),
(256, 83, '_edit_last', '1'),
(257, 83, '_wp_page_template', 'template-economie.php'),
(258, 84, '_at_widget', '1'),
(259, 84, '_menu_item_type', 'post_type'),
(260, 84, '_menu_item_menu_item_parent', '36'),
(261, 84, '_menu_item_object_id', '83'),
(262, 84, '_menu_item_object', 'page'),
(263, 84, '_menu_item_target', ''),
(264, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(265, 84, '_menu_item_xfn', ''),
(266, 84, '_menu_item_url', ''),
(267, 83, '_at_widget', '1'),
(268, 83, '_edit_lock', '1537182618:1'),
(269, 86, '_edit_last', '1'),
(270, 86, '_wp_page_template', 'template-emploie.php'),
(271, 87, '_at_widget', '1'),
(272, 87, '_menu_item_type', 'post_type'),
(273, 87, '_menu_item_menu_item_parent', '36'),
(274, 87, '_menu_item_object_id', '86'),
(275, 87, '_menu_item_object', 'page'),
(276, 87, '_menu_item_target', ''),
(277, 87, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(278, 87, '_menu_item_xfn', ''),
(279, 87, '_menu_item_url', ''),
(280, 86, '_at_widget', '1'),
(281, 86, '_edit_lock', '1537182633:1'),
(282, 89, '_edit_last', '1'),
(283, 89, '_wp_page_template', 'default'),
(284, 90, '_at_widget', '1'),
(285, 90, '_menu_item_type', 'post_type'),
(286, 90, '_menu_item_menu_item_parent', '36'),
(287, 90, '_menu_item_object_id', '89'),
(288, 90, '_menu_item_object', 'page'),
(289, 90, '_menu_item_target', ''),
(290, 90, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(291, 90, '_menu_item_xfn', ''),
(292, 90, '_menu_item_url', ''),
(293, 89, '_at_widget', '1'),
(294, 89, '_edit_lock', '1537173839:1'),
(295, 92, '_edit_last', '1'),
(296, 92, '_wp_page_template', 'default'),
(297, 93, '_at_widget', '1'),
(298, 93, '_menu_item_type', 'post_type'),
(299, 93, '_menu_item_menu_item_parent', '36'),
(300, 93, '_menu_item_object_id', '92'),
(301, 93, '_menu_item_object', 'page'),
(302, 93, '_menu_item_target', ''),
(303, 93, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(304, 93, '_menu_item_xfn', ''),
(305, 93, '_menu_item_url', ''),
(306, 92, '_at_widget', '1'),
(307, 92, '_edit_lock', '1537173873:1'),
(308, 11, '_wp_page_template', 'template-faq.php'),
(309, 11, '_at_widget', '1'),
(310, 95, '_at_widget', '1'),
(311, 96, '_wp_attached_file', '2018/09/Mettalos_MWB_Wallons.png'),
(312, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1736;s:6:\"height\";i:830;s:4:\"file\";s:32:\"2018/09/Mettalos_MWB_Wallons.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"Mettalos_MWB_Wallons-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"Mettalos_MWB_Wallons-300x143.png\";s:5:\"width\";i:300;s:6:\"height\";i:143;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"Mettalos_MWB_Wallons-768x367.png\";s:5:\"width\";i:768;s:6:\"height\";i:367;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"Mettalos_MWB_Wallons-1024x490.png\";s:5:\"width\";i:1024;s:6:\"height\";i:490;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(313, 97, '_wp_attached_file', '2018/09/Logos-MdP-long-web.png'),
(314, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:124;s:4:\"file\";s:30:\"2018/09/Logos-MdP-long-web.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"Logos-MdP-long-web-150x124.png\";s:5:\"width\";i:150;s:6:\"height\";i:124;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"Logos-MdP-long-web-300x124.png\";s:5:\"width\";i:300;s:6:\"height\";i:124;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(315, 98, '_wp_attached_file', '2018/09/JeunesFGTB_logo_Web.png'),
(316, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:187;s:4:\"file\";s:31:\"2018/09/JeunesFGTB_logo_Web.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"JeunesFGTB_logo_Web-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"JeunesFGTB_logo_Web-300x94.png\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(317, 99, '_wp_attached_file', '2018/09/logo_cepag.png'),
(318, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:239;s:6:\"height\";i:192;s:4:\"file\";s:22:\"2018/09/logo_cepag.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"logo_cepag-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(319, 100, '_wp_attached_file', '2018/09/promotion-et-culture.png'),
(320, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2077;s:6:\"height\";i:231;s:4:\"file\";s:32:\"2018/09/promotion-et-culture.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"promotion-et-culture-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"promotion-et-culture-300x33.png\";s:5:\"width\";i:300;s:6:\"height\";i:33;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"promotion-et-culture-768x85.png\";s:5:\"width\";i:768;s:6:\"height\";i:85;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"promotion-et-culture-1024x114.png\";s:5:\"width\";i:1024;s:6:\"height\";i:114;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(321, 101, '_wp_attached_file', '2018/09/centrale-generale.png'),
(322, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:271;s:6:\"height\";i:111;s:4:\"file\";s:29:\"2018/09/centrale-generale.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"centrale-generale-150x111.png\";s:5:\"width\";i:150;s:6:\"height\";i:111;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(323, 102, '_wp_attached_file', '2018/09/Groupe-38.png'),
(324, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:147;s:6:\"height\";i:79;s:4:\"file\";s:21:\"2018/09/Groupe-38.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(325, 17, '_wp_page_template', 'template-contact.php'),
(326, 17, '_at_widget', '1'),
(327, 103, '_form', '<label> votre message \n   [text* your-name placeholder\"votre message\"]</label>\n<label> email\n    [email* your-email placeholder\"votre message\"]</label>\n<label>votre site web\n    [url* your_web_site placeholder\"votre site web\"]</label>\n<label>Votre message\n    [textarea* your_message placeholder\"votre message\"]</label>\n<label>[submit \"send\"]</label>\n<input type=\"hidden\" name=\"your-subject\" value=\"Spritz contact\">'),
(328, 103, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:20:\"eds \"[your-subject]\"\";s:6:\"sender\";s:38:\"[your-name] <bertholdberthi@gmail.com>\";s:9:\"recipient\";s:24:\"bertholdberthi@gmail.com\";s:4:\"body\";s:183:\"De : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de eds (http://localhost/eds)\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(329, 103, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:20:\"eds \"[your-subject]\"\";s:6:\"sender\";s:30:\"eds <bertholdberthi@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:125:\"Corps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de eds (http://localhost/eds)\";s:18:\"additional_headers\";s:34:\"Reply-To: bertholdberthi@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(330, 103, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:45:\"Merci pour votre message. Il a été envoyé.\";s:12:\"mail_sent_ng\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:16:\"validation_error\";s:88:\"Un ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\";s:4:\"spam\";s:102:\"Une erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\";s:12:\"accept_terms\";s:77:\"Vous devez accepter les termes et conditions avant d’envoyer votre message.\";s:16:\"invalid_required\";s:25:\"Ce champ est obligatoire.\";s:16:\"invalid_too_long\";s:23:\"Le champ est trop long.\";s:17:\"invalid_too_short\";s:24:\"Le champ est trop court.\";s:12:\"invalid_date\";s:32:\"Le format de date est incorrect.\";s:14:\"date_too_early\";s:47:\"La date précède la première date autorisée.\";s:13:\"date_too_late\";s:57:\"La date est postérieure à la dernière date autorisée.\";s:13:\"upload_failed\";s:72:\"Une erreur inconnue s’est produite lors du téléversement du fichier.\";s:24:\"upload_file_type_invalid\";s:79:\"Vous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\";s:21:\"upload_file_too_large\";s:31:\"Le fichier est trop volumineux.\";s:23:\"upload_failed_php_error\";s:63:\"Une erreur s’est produite lors du téléversement du fichier.\";s:14:\"invalid_number\";s:33:\"Le format du nombre est invalide.\";s:16:\"number_too_small\";s:50:\"Le nombre est plus petit que le minimum autorisé.\";s:16:\"number_too_large\";s:50:\"Le nombre est plus grand que le maximum autorisé.\";s:23:\"quiz_answer_not_correct\";s:42:\"La réponse à la question est incorrecte.\";s:17:\"captcha_not_match\";s:29:\"Le code entré est incorrect.\";s:13:\"invalid_email\";s:38:\"L’adresse e-mail n’est pas valide.\";s:11:\"invalid_url\";s:27:\"L’URL n’est pas valide.\";s:11:\"invalid_tel\";s:45:\"Le numéro de téléphone n’est pas valide.\";}'),
(331, 103, '_additional_settings', ''),
(332, 103, '_locale', 'fr_FR'),
(333, 105, '_edit_last', '1'),
(334, 105, '_edit_lock', '1537180225:1'),
(335, 105, '_wp_page_template', 'template-presentation.php'),
(345, 105, '_at_widget', '1'),
(346, 49, '_wp_page_template', 'template-allocation.php'),
(347, 109, '_edit_last', '1'),
(348, 109, '_edit_lock', '1537182816:1'),
(349, 109, '_wp_page_template', 'template-regroupement.php'),
(359, 109, '_at_widget', '1'),
(360, 112, '_edit_last', '1'),
(361, 112, '_wp_page_template', 'template-presentation.php'),
(371, 112, '_at_widget', '1'),
(372, 112, '_edit_lock', '1537183043:1'),
(373, 115, '_EventOrigin', 'events-calendar'),
(374, 115, '_tribe_modified_fields', 'a:1:{s:12:\"_EventOrigin\";d:1537190462;}'),
(375, 46, '_wp_trash_meta_status', 'publish'),
(376, 46, '_wp_trash_meta_time', '1537183701'),
(377, 46, '_wp_desired_post_slug', '46-2'),
(378, 116, '_edit_last', '1'),
(379, 116, '_edit_lock', '1537183700:1'),
(380, 116, '_wp_page_template', 'template-presentation.php'),
(381, 117, '_at_widget', '1'),
(382, 117, '_menu_item_type', 'post_type'),
(383, 117, '_menu_item_menu_item_parent', '0'),
(384, 117, '_menu_item_object_id', '116'),
(385, 117, '_menu_item_object', 'page'),
(386, 117, '_menu_item_target', ''),
(387, 117, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(388, 117, '_menu_item_xfn', ''),
(389, 117, '_menu_item_url', ''),
(390, 116, '_at_widget', '1'),
(391, 119, '_menu_item_type', 'post_type'),
(392, 119, '_menu_item_menu_item_parent', '0'),
(393, 119, '_menu_item_object_id', '116'),
(394, 119, '_menu_item_object', 'page'),
(395, 119, '_menu_item_target', ''),
(396, 119, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(397, 119, '_menu_item_xfn', ''),
(398, 119, '_menu_item_url', ''),
(399, 119, '_menu_item_orphaned', '1537183850'),
(400, 120, '_edit_last', '1'),
(401, 120, '_edit_lock', '1537184118:1'),
(402, 121, '_edit_last', '1'),
(403, 121, '_edit_lock', '1537184247:1'),
(404, 123, '_edit_last', '1'),
(405, 124, '_at_widget', '1'),
(406, 125, '_at_widget', '1'),
(407, 126, '_at_widget', '1'),
(408, 123, '_at_widget', '1'),
(409, 123, '_edit_lock', '1537184608:1'),
(410, 127, '_at_widget', '1'),
(411, 128, '_menu_item_type', 'post_type'),
(412, 128, '_menu_item_menu_item_parent', '0'),
(413, 128, '_menu_item_object_id', '56'),
(414, 128, '_menu_item_object', 'page'),
(415, 128, '_menu_item_target', ''),
(416, 128, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(417, 128, '_menu_item_xfn', ''),
(418, 128, '_menu_item_url', ''),
(420, 129, '_menu_item_type', 'post_type'),
(421, 129, '_menu_item_menu_item_parent', '0'),
(422, 129, '_menu_item_object_id', '49'),
(423, 129, '_menu_item_object', 'page'),
(424, 129, '_menu_item_target', ''),
(425, 129, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(426, 129, '_menu_item_xfn', ''),
(427, 129, '_menu_item_url', ''),
(429, 130, '_menu_item_type', 'post_type'),
(430, 130, '_menu_item_menu_item_parent', '0'),
(431, 130, '_menu_item_object_id', '68'),
(432, 130, '_menu_item_object', 'page'),
(433, 130, '_menu_item_target', ''),
(434, 130, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(435, 130, '_menu_item_xfn', ''),
(436, 130, '_menu_item_url', ''),
(438, 131, '_menu_item_type', 'post_type'),
(439, 131, '_menu_item_menu_item_parent', '0'),
(440, 131, '_menu_item_object_id', '62'),
(441, 131, '_menu_item_object', 'page'),
(442, 131, '_menu_item_target', ''),
(443, 131, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(444, 131, '_menu_item_xfn', ''),
(445, 131, '_menu_item_url', ''),
(447, 132, '_menu_item_type', 'post_type'),
(448, 132, '_menu_item_menu_item_parent', '0'),
(449, 132, '_menu_item_object_id', '80'),
(450, 132, '_menu_item_object', 'page'),
(451, 132, '_menu_item_target', ''),
(452, 132, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(453, 132, '_menu_item_xfn', ''),
(454, 132, '_menu_item_url', ''),
(456, 133, '_menu_item_type', 'post_type'),
(457, 133, '_menu_item_menu_item_parent', '0'),
(458, 133, '_menu_item_object_id', '65'),
(459, 133, '_menu_item_object', 'page'),
(460, 133, '_menu_item_target', ''),
(461, 133, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(462, 133, '_menu_item_xfn', ''),
(463, 133, '_menu_item_url', ''),
(465, 134, '_menu_item_type', 'post_type'),
(466, 134, '_menu_item_menu_item_parent', '0'),
(467, 134, '_menu_item_object_id', '83'),
(468, 134, '_menu_item_object', 'page'),
(469, 134, '_menu_item_target', ''),
(470, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(471, 134, '_menu_item_xfn', ''),
(472, 134, '_menu_item_url', ''),
(474, 135, '_menu_item_type', 'post_type'),
(475, 135, '_menu_item_menu_item_parent', '0'),
(476, 135, '_menu_item_object_id', '86'),
(477, 135, '_menu_item_object', 'page'),
(478, 135, '_menu_item_target', ''),
(479, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(480, 135, '_menu_item_xfn', ''),
(481, 135, '_menu_item_url', ''),
(483, 136, '_menu_item_type', 'post_type'),
(484, 136, '_menu_item_menu_item_parent', '0'),
(485, 136, '_menu_item_object_id', '11'),
(486, 136, '_menu_item_object', 'page'),
(487, 136, '_menu_item_target', ''),
(488, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(489, 136, '_menu_item_xfn', ''),
(490, 136, '_menu_item_url', ''),
(492, 137, '_menu_item_type', 'post_type'),
(493, 137, '_menu_item_menu_item_parent', '0'),
(494, 137, '_menu_item_object_id', '71'),
(495, 137, '_menu_item_object', 'page'),
(496, 137, '_menu_item_target', ''),
(497, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(498, 137, '_menu_item_xfn', ''),
(499, 137, '_menu_item_url', ''),
(501, 138, '_menu_item_type', 'post_type'),
(502, 138, '_menu_item_menu_item_parent', '0'),
(503, 138, '_menu_item_object_id', '74'),
(504, 138, '_menu_item_object', 'page'),
(505, 138, '_menu_item_target', ''),
(506, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(507, 138, '_menu_item_xfn', ''),
(508, 138, '_menu_item_url', ''),
(510, 139, '_menu_item_type', 'post_type'),
(511, 139, '_menu_item_menu_item_parent', '0'),
(512, 139, '_menu_item_object_id', '89'),
(513, 139, '_menu_item_object', 'page'),
(514, 139, '_menu_item_target', ''),
(515, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(516, 139, '_menu_item_xfn', ''),
(517, 139, '_menu_item_url', ''),
(519, 140, '_menu_item_type', 'post_type'),
(520, 140, '_menu_item_menu_item_parent', '0'),
(521, 140, '_menu_item_object_id', '92'),
(522, 140, '_menu_item_object', 'page'),
(523, 140, '_menu_item_target', ''),
(524, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(525, 140, '_menu_item_xfn', ''),
(526, 140, '_menu_item_url', ''),
(528, 141, '_menu_item_type', 'post_type'),
(529, 141, '_menu_item_menu_item_parent', '0'),
(530, 141, '_menu_item_object_id', '59'),
(531, 141, '_menu_item_object', 'page'),
(532, 141, '_menu_item_target', ''),
(533, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(534, 141, '_menu_item_xfn', ''),
(535, 141, '_menu_item_url', ''),
(537, 142, '_menu_item_type', 'post_type'),
(538, 142, '_menu_item_menu_item_parent', '0'),
(539, 142, '_menu_item_object_id', '77'),
(540, 142, '_menu_item_object', 'page'),
(541, 142, '_menu_item_target', ''),
(542, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(543, 142, '_menu_item_xfn', ''),
(544, 142, '_menu_item_url', ''),
(546, 5, '_wp_page_template', 'default'),
(547, 5, '_at_widget', '1'),
(548, 144, '_edit_last', '1'),
(549, 144, '_edit_lock', '1537189184:1'),
(550, 144, '_event_id', '1'),
(551, 144, '_event_timezone', 'Europe/Paris'),
(552, 144, '_event_start_time', '00:00:00'),
(553, 144, '_event_end_time', '23:59:59'),
(554, 144, '_event_start', '2018-09-19 22:00:00'),
(555, 144, '_event_end', '2018-09-22 21:59:59'),
(556, 144, '_event_start_date', '2018-09-20'),
(557, 144, '_event_end_date', '2018-09-22'),
(558, 144, '_event_start_local', '2018-09-20 00:00:00'),
(559, 144, '_event_end_local', '2018-09-22 23:59:59'),
(560, 144, '_at_widget', '1'),
(561, 144, '_event_all_day', '1'),
(562, 146, '_at_widget', '1'),
(563, 146, '_location_address', '9 rue de Mulhouse'),
(564, 146, '_location_town', 'Liege'),
(565, 146, '_location_postcode', '4020'),
(566, 146, '_location_latitude', '50.6323702'),
(567, 146, '_location_longitude', '5.587390199999959'),
(568, 146, '_location_id', '1'),
(569, 147, '_at_widget', '1'),
(570, 147, '_location_address', '9 rue de Mulhouse'),
(571, 147, '_location_town', 'Liege'),
(572, 147, '_location_postcode', '4020'),
(573, 147, '_location_country', 'BE'),
(574, 147, '_location_latitude', '50.6323702'),
(575, 147, '_location_longitude', '5.587390199999959'),
(576, 147, '_location_id', '2'),
(577, 144, '_location_id', '2'),
(578, 151, '_edit_last', '1'),
(579, 152, '_at_widget', '1'),
(580, 153, '_at_widget', '1'),
(581, 154, '_at_widget', '1'),
(582, 151, '_at_widget', '1'),
(583, 151, '_edit_lock', '1537191101:1');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-09-15 10:26:23', '2018-09-15 08:26:23', 'Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis lancez-vous !', 'Bonjour tout le monde !', '', 'publish', 'open', 'open', '', 'bonjour-tout-le-monde', '', '', '2018-09-15 10:26:23', '2018-09-15 08:26:23', '', 0, 'http://localhost/eds/?p=1', 0, 'post', '', 1),
(2, 1, '2018-09-15 10:26:23', '2018-09-15 08:26:23', 'Voici un exemple de page. Elle est différente d’un article de blog, en cela qu’elle restera à la même place, et s’affichera dans le menu de navigation de votre site (en fonction de votre thème). La plupart des gens commencent par écrire une page « À Propos » qui les présente aux visiteurs potentiels du site. Vous pourriez y écrire quelque chose de ce tenant :\n\n<blockquote>Bonjour ! Je suis un mécanicien qui aspire à devenir un acteur, et ceci est mon blog. J’habite à Bordeaux, j’ai un super chien qui s’appelle Russell, et j’aime la vodka-ananas (ainsi que perdre mon temps à regarder la pluie tomber).</blockquote>\n\n...ou bien quelque chose comme cela :\n\n<blockquote>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis cette année. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</blockquote>\n\nÉtant donné que vous êtes un nouvel utilisateur ou une nouvelle utilisatrice de WordPress, vous devriez vous rendre sur votre <a href=\"http://localhost/eds/wp-admin/\">tableau de bord</a> pour effacer la présente page, et créer de nouvelles pages avec votre propre contenu. Amusez-vous bien !', 'Page d’exemple', '', 'publish', 'closed', 'open', '', 'page-d-exemple', '', '', '2018-09-15 10:26:23', '2018-09-15 08:26:23', '', 0, 'http://localhost/eds/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-09-15 10:26:23', '2018-09-15 08:26:23', '<h2>Qui sommes-nous ?</h2><p>L’adresse de notre site Web est : http://localhost/eds.</p><h2>Utilisation des données personnelles collectées</h2><h3>Commentaires</h3><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><h3>Médias</h3><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><h3>Formulaires de contact</h3><h3>Cookies</h3><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><h3>Contenu embarqué depuis d’autres sites</h3><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><h3>Statistiques et mesures d’audience</h3><h2>Utilisation et transmission de vos données personnelles</h2><h2>Durées de stockage de vos données</h2><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><h2>Les droits que vous avez sur vos données</h2><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><h2>Transmission de vos données personnelles</h2><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><h2>Informations de contact</h2><h2>Informations supplémentaires</h2><h3>Comment nous protégeons vos données</h3><h3>Procédures mises en œuvre en cas de fuite de données</h3><h3>Les services tiers qui nous transmettent des données</h3><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3>', 'Politique de confidentialité', '', 'draft', 'closed', 'open', '', 'politique-de-confidentialite', '', '', '2018-09-15 10:26:23', '2018-09-15 08:26:23', '', 0, 'http://localhost/eds/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-09-15 10:26:47', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-15 10:26:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/eds/?p=4', 0, 'post', '', 0),
(5, 1, '2018-09-15 10:41:48', '2018-09-15 08:41:48', 'a\r\n\r\n[events_list limit=\"10\" ]\r\n\r\nb', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2018-09-17 15:07:32', '2018-09-17 13:07:32', '', 0, 'http://localhost/eds/?page_id=5', 0, 'page', '', 0),
(6, 1, '2018-09-15 10:41:48', '2018-09-15 08:41:48', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-15 10:41:48', '2018-09-15 08:41:48', '', 5, 'http://localhost/eds/2018/09/15/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-09-15 10:42:25', '2018-09-15 08:42:25', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-09-15 10:42:25', '2018-09-15 08:42:25', '', 0, 'http://localhost/eds/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-09-15 10:42:25', '2018-09-15 08:42:25', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-09-15 10:42:25', '2018-09-15 08:42:25', '', 7, 'http://localhost/eds/2018/09/15/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-09-15 10:42:40', '2018-09-15 08:42:40', '', 'Présentation', '', 'publish', 'closed', 'closed', '', 'presentation', '', '', '2018-09-15 10:42:43', '2018-09-15 08:42:43', '', 0, 'http://localhost/eds/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-09-15 10:42:36', '2018-09-15 08:42:36', '', 'Présentation', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-09-15 10:42:36', '2018-09-15 08:42:36', '', 9, 'http://localhost/eds/2018/09/15/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-09-15 10:42:57', '2018-09-15 08:42:57', '', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2018-09-17 11:12:51', '2018-09-17 09:12:51', '', 0, 'http://localhost/eds/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-09-15 10:42:57', '2018-09-15 08:42:57', '', 'FAQ', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-09-15 10:42:57', '2018-09-15 08:42:57', '', 11, 'http://localhost/eds/2018/09/15/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-09-15 10:43:21', '2018-09-15 08:43:21', '', 'Sirius', '', 'publish', 'closed', 'closed', '', 'sirius', '', '', '2018-09-15 10:48:45', '2018-09-15 08:48:45', '', 0, 'http://localhost/eds/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-09-15 10:43:21', '2018-09-15 08:43:21', '', 'Sirius', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-09-15 10:43:21', '2018-09-15 08:43:21', '', 13, 'http://localhost/eds/2018/09/15/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-09-15 10:44:59', '2018-09-15 08:44:59', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-15 08:44:59\"\n    },\n    \"page_on_front\": {\n        \"value\": \"5\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-15 08:44:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e973e8e-4b45-4983-98be-4202a751ac01', '', '', '2018-09-15 10:44:59', '2018-09-15 08:44:59', '', 0, 'http://localhost/eds/2018/09/15/1e973e8e-4b45-4983-98be-4202a751ac01/', 0, 'customize_changeset', '', 0),
(16, 1, '2018-09-15 10:45:25', '2018-09-15 08:45:25', '{\n    \"page_for_posts\": {\n        \"value\": \"7\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-15 08:45:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a3e2203b-7898-4e21-b415-51a73ac52576', '', '', '2018-09-15 10:45:25', '2018-09-15 08:45:25', '', 0, 'http://localhost/eds/2018/09/15/a3e2203b-7898-4e21-b415-51a73ac52576/', 0, 'customize_changeset', '', 0),
(17, 1, '2018-09-15 10:49:10', '2018-09-15 08:49:10', '[contact-form-7 id=\"103\" title=\"Sans titre\"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-09-17 13:24:57', '2018-09-17 11:24:57', '', 0, 'http://localhost/eds/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-09-15 10:49:10', '2018-09-15 08:49:10', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-15 10:49:10', '2018-09-15 08:49:10', '', 17, 'http://localhost/eds/2018/09/15/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-09-15 10:49:32', '2018-09-15 08:49:32', '<label> Votre nom (obligatoire)\n    [text* your-name] </label>\n\n<label> Votre adresse de messagerie (obligatoire)\n    [email* your-email] </label>\n\n<label> Objet\n    [text your-subject] </label>\n\n<label> Votre message\n    [textarea your-message] </label>\n\n[submit \"Envoyer\"]\neds \"[your-subject]\"\n[your-name] <bertholdberthi@gmail.com>\nDe : [your-name] <[your-email]>\nObjet : [your-subject]\n\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de eds (http://localhost/eds)\nbertholdberthi@gmail.com\nReply-To: [your-email]\n\n0\n0\n\neds \"[your-subject]\"\neds <bertholdberthi@gmail.com>\nCorps du message :\n[your-message]\n\n-- \nCet e-mail a été envoyé via le formulaire de contact de eds (http://localhost/eds)\n[your-email]\nReply-To: bertholdberthi@gmail.com\n\n0\n0\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.', 'Formulaire de contact 1', '', 'publish', 'closed', 'closed', '', 'formulaire-de-contact-1', '', '', '2018-09-15 10:49:32', '2018-09-15 08:49:32', '', 0, 'http://localhost/eds/?post_type=wpcf7_contact_form&p=19', 0, 'wpcf7_contact_form', '', 0),
(20, 1, '2018-09-15 10:50:58', '2018-09-15 08:50:58', '[contact-form-7 id=\"100\" title=\"Formulaire de contact FR\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-15 10:50:58', '2018-09-15 08:50:58', '', 17, 'http://localhost/eds/2018/09/15/17-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-09-15 10:52:09', '2018-09-15 08:52:09', '<label> votre message \r\n   [text* your-name placeholder\"votre message\"]</label>\r\n<label> email\r\n    [email* your-email placeholder\"votre message\"]</label>\r\n<label>votre site web\r\n    [url* your_web_site placeholder\"votre site web\"]</label>\r\n<label>Votre message\r\n    [textarea* your_message placeholder\"votre message\"]</label>\r\n<label>[submit \"send\"]</label>\r\n<input type=\"hidden\" name=\"your-subject\" value=\"Spritz contact\">\n1\neds \"[your-subject]\"\n[your-name] <bertholdberthi@gmail.com>\nbertholdberthi@gmail.com\nDe : [your-name] <[your-email]>\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de eds (http://localhost/eds)\nReply-To: [your-email]\n\n\n\n\neds \"[your-subject]\"\neds <bertholdberthi@gmail.com>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de eds (http://localhost/eds)\nReply-To: bertholdberthi@gmail.com\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Sans titre', '', 'publish', 'closed', 'closed', '', 'sans-titre', '', '', '2018-09-15 10:52:09', '2018-09-15 08:52:09', '', 0, 'http://localhost/eds/?post_type=wpcf7_contact_form&p=21', 0, 'wpcf7_contact_form', '', 0),
(22, 1, '2018-09-15 10:53:09', '2018-09-15 08:53:09', '[contact-form-7 id=\"19\" title=\"Formulaire de contact 1\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-15 10:53:09', '2018-09-15 08:53:09', '', 17, 'http://localhost/eds/2018/09/15/17-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-09-15 10:53:38', '2018-09-15 08:53:38', 'CONTENTS', 'Évènements', 'CONTENTS', 'publish', 'closed', 'open', '', 'evenements', '', '', '2018-09-15 10:53:38', '2018-09-15 08:53:38', '', 0, 'http://localhost/eds/evenements/', 0, 'page', '', 0),
(24, 1, '2018-09-15 10:53:38', '2018-09-15 08:53:38', 'CONTENTS', 'Emplacements', '', 'publish', 'closed', 'open', '', 'emplacements', '', '', '2018-09-15 10:53:38', '2018-09-15 08:53:38', '', 23, 'http://localhost/eds/evenements/emplacements/', 0, 'page', '', 0),
(25, 1, '2018-09-15 10:53:38', '2018-09-15 08:53:38', 'CONTENTS', 'Catégories', '', 'publish', 'closed', 'open', '', 'categories', '', '', '2018-09-15 10:53:38', '2018-09-15 08:53:38', '', 23, 'http://localhost/eds/evenements/categories/', 0, 'page', '', 0),
(26, 1, '2018-09-15 10:53:38', '2018-09-15 08:53:38', 'CONTENTS', 'Étiquettes', '', 'publish', 'closed', 'open', '', 'etiquettes', '', '', '2018-09-15 10:53:38', '2018-09-15 08:53:38', '', 23, 'http://localhost/eds/evenements/etiquettes/', 0, 'page', '', 0),
(27, 1, '2018-09-15 10:53:38', '2018-09-15 08:53:38', 'CONTENTS', 'Mes réservations', '', 'publish', 'closed', 'open', '', 'mes-reservations', '', '', '2018-09-15 10:53:38', '2018-09-15 08:53:38', '', 23, 'http://localhost/eds/evenements/mes-reservations/', 0, 'page', '', 0),
(28, 1, '2018-09-15 10:53:53', '2018-09-15 08:53:53', 'bertholdberthi@gmail.com\nBerthold', 'bertholdberthi@gmail.com', '', 'publish', 'closed', 'closed', '', 'bertholdberthi-gmail-com', '', '', '2018-09-15 10:53:53', '2018-09-15 08:53:53', '', 0, 'http://localhost/eds/2018/09/15/bertholdberthi-gmail-com/', 0, 'flamingo_contact', '', 0),
(29, 1, '2018-09-15 10:53:53', '2018-09-15 08:53:53', 'wapuu@wordpress.example\nUn commentateur WordPress', 'wapuu@wordpress.example', '', 'publish', 'closed', 'closed', '', 'wapuu-wordpress-example', '', '', '2018-09-15 10:53:53', '2018-09-15 08:53:53', '', 0, 'http://localhost/eds/2018/09/15/wapuu-wordpress-example/', 0, 'flamingo_contact', '', 0),
(30, 1, '2018-09-15 10:55:58', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-15 10:55:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/eds/?post_type=event&p=30', 0, 'event', '', 0),
(31, 1, '2018-09-15 10:57:07', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-15 10:57:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/eds/?post_type=tribe_events&p=31', 0, 'tribe_events', '', 0),
(32, 1, '2018-09-17 14:57:26', '2018-09-17 12:57:26', '[events_list]\n\n', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-autosave-v1', '', '', '2018-09-17 14:57:26', '2018-09-17 12:57:26', '', 5, 'http://localhost/eds/2018/09/15/5-autosave-v1/', 0, 'revision', '', 0),
(33, 1, '2018-09-15 11:07:01', '2018-09-15 09:07:01', '{\n    \"twentyfifteen::nav_menu_locations[primary]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-15 09:07:01\"\n    },\n    \"twentyfifteen::nav_menu_locations[social]\": {\n        \"value\": 2,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-09-15 09:07:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5e75fb28-08ee-4923-857a-b0b9c59368c7', '', '', '2018-09-15 11:07:01', '2018-09-15 09:07:01', '', 0, 'http://localhost/eds/2018/09/15/5e75fb28-08ee-4923-857a-b0b9c59368c7/', 0, 'customize_changeset', '', 0),
(34, 1, '2018-09-15 11:11:12', '2018-09-15 09:11:12', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2018-09-17 14:44:14', '2018-09-17 12:44:14', '', 0, 'http://localhost/eds/?p=34', 19, 'nav_menu_item', '', 0),
(36, 1, '2018-09-15 11:11:12', '2018-09-15 09:11:12', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/?p=36', 4, 'nav_menu_item', '', 0),
(38, 1, '2018-09-15 11:11:12', '2018-09-15 09:11:12', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/?p=38', 3, 'nav_menu_item', '', 0),
(39, 1, '2018-09-15 11:11:12', '2018-09-15 09:11:12', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2018-09-17 09:56:51', '2018-09-17 07:56:51', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-footer\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'group_5b9f5d4e80a5c', '', '', '2018-09-17 11:57:08', '2018-09-17 09:57:08', '', 0, 'http://localhost/eds/?post_type=acf-field-group&#038;p=40', 0, 'acf-field-group', '', 0),
(41, 1, '2018-09-17 09:56:51', '2018-09-17 07:56:51', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'footer_links', 'footer_links', 'publish', 'closed', 'closed', '', 'field_5b9f5de4569f9', '', '', '2018-09-17 09:56:51', '2018-09-17 07:56:51', '', 40, 'http://localhost/eds/?post_type=acf-field&p=41', 0, 'acf-field', '', 0),
(42, 1, '2018-09-17 09:56:51', '2018-09-17 07:56:51', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'nom', 'nom', 'publish', 'closed', 'closed', '', 'field_5b9f5dfd569fa', '', '', '2018-09-17 11:57:08', '2018-09-17 09:57:08', '', 41, 'http://localhost/eds/?post_type=acf-field&#038;p=42', 0, 'acf-field', '', 0),
(43, 1, '2018-09-17 09:56:51', '2018-09-17 07:56:51', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'adresse links', 'adresse_links', 'publish', 'closed', 'closed', '', 'field_5b9f5e06569fb', '', '', '2018-09-17 11:57:08', '2018-09-17 09:57:08', '', 41, 'http://localhost/eds/?post_type=acf-field&#038;p=43', 1, 'acf-field', '', 0),
(44, 1, '2018-09-17 09:56:51', '2018-09-17 07:56:51', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5b9f5e21569fc', '', '', '2018-09-17 11:57:08', '2018-09-17 09:57:08', '', 41, 'http://localhost/eds/?post_type=acf-field&#038;p=44', 2, 'acf-field', '', 0),
(46, 1, '2018-09-17 10:38:18', '2018-09-17 08:38:18', '<!-- wp:heading -->\n<h2>Actualité</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'trash', 'closed', 'closed', '', '46-2__trashed', '', '', '2018-09-17 13:28:21', '2018-09-17 11:28:21', '', 0, 'http://localhost/eds/?page_id=46', 0, 'page', '', 0),
(48, 1, '2018-09-17 10:38:18', '2018-09-17 08:38:18', '<!-- wp:heading -->\n<h2>Actualité</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2018-09-17 10:38:18', '2018-09-17 08:38:18', '', 46, 'http://localhost/eds/2018/09/17/46-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2018-09-17 10:38:47', '2018-09-17 08:38:47', '', 'Allocation', '', 'publish', 'closed', 'closed', '', 'allocation', '', '', '2018-09-17 13:04:52', '2018-09-17 11:04:52', '', 0, 'http://localhost/eds/?page_id=49', 0, 'page', '', 0),
(50, 1, '2018-09-17 10:38:47', '2018-09-17 08:38:47', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/50/', 6, 'nav_menu_item', '', 0),
(51, 1, '2018-09-17 10:38:47', '2018-09-17 08:38:47', '', 'Allocation', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2018-09-17 10:38:47', '2018-09-17 08:38:47', '', 49, 'http://localhost/eds/2018/09/17/49-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-09-17 10:39:05', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-09-17 10:39:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/eds/?p=52', 0, 'post', '', 0),
(53, 1, '2018-09-17 10:42:33', '2018-09-17 08:42:33', '', 'Allocation', '', 'publish', 'closed', 'closed', '', 'allocation-2', '', '', '2018-09-17 10:42:33', '2018-09-17 08:42:33', '', 0, 'http://localhost/eds/?page_id=53', 0, 'page', '', 0),
(55, 1, '2018-09-17 10:42:33', '2018-09-17 08:42:33', '', 'Allocation', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2018-09-17 10:42:33', '2018-09-17 08:42:33', '', 53, 'http://localhost/eds/2018/09/17/53-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-09-17 10:42:50', '2018-09-17 08:42:50', '', 'Actualité', '', 'publish', 'closed', 'closed', '', 'actualite', '', '', '2018-09-17 14:50:26', '2018-09-17 12:50:26', '', 0, 'http://localhost/eds/?page_id=56', 0, 'page', '', 0),
(57, 1, '2018-09-17 10:42:50', '2018-09-17 08:42:50', ' ', '', '', 'publish', 'closed', 'closed', '', '57', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/57/', 7, 'nav_menu_item', '', 0),
(58, 1, '2018-09-17 10:42:50', '2018-09-17 08:42:50', '', 'Actualité', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-09-17 10:42:50', '2018-09-17 08:42:50', '', 56, 'http://localhost/eds/2018/09/17/56-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-09-17 10:43:29', '2018-09-17 08:43:29', '', 'Regroupement Familial', '', 'publish', 'closed', 'closed', '', 'regroupement-familial', '', '', '2018-09-17 10:43:29', '2018-09-17 08:43:29', '', 0, 'http://localhost/eds/?page_id=59', 0, 'page', '', 0),
(60, 1, '2018-09-17 10:43:29', '2018-09-17 08:43:29', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/60/', 5, 'nav_menu_item', '', 0),
(61, 1, '2018-09-17 10:43:29', '2018-09-17 08:43:29', '', 'Regroupement Familial', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-09-17 10:43:29', '2018-09-17 08:43:29', '', 59, 'http://localhost/eds/2018/09/17/59-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-09-17 10:43:44', '2018-09-17 08:43:44', '', 'CPAS', '', 'publish', 'closed', 'closed', '', 'cpas', '', '', '2018-09-17 13:07:28', '2018-09-17 11:07:28', '', 0, 'http://localhost/eds/?page_id=62', 0, 'page', '', 0),
(63, 1, '2018-09-17 10:43:44', '2018-09-17 08:43:44', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2018-09-17 14:44:14', '2018-09-17 12:44:14', '', 0, 'http://localhost/eds/2018/09/17/63/', 18, 'nav_menu_item', '', 0),
(64, 1, '2018-09-17 10:43:44', '2018-09-17 08:43:44', '', 'CPAS', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-09-17 10:43:44', '2018-09-17 08:43:44', '', 62, 'http://localhost/eds/2018/09/17/62-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-09-17 10:44:08', '2018-09-17 08:44:08', '', 'Devoirs et Droits', '', 'publish', 'closed', 'closed', '', 'devoirs-et-droits', '', '', '2018-09-17 13:10:31', '2018-09-17 11:10:31', '', 0, 'http://localhost/eds/?page_id=65', 0, 'page', '', 0),
(66, 1, '2018-09-17 10:44:08', '2018-09-17 08:44:08', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/66/', 10, 'nav_menu_item', '', 0),
(67, 1, '2018-09-17 10:44:08', '2018-09-17 08:44:08', '', 'Devoirs et Droits', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2018-09-17 10:44:08', '2018-09-17 08:44:08', '', 65, 'http://localhost/eds/2018/09/17/65-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-09-17 10:44:21', '2018-09-17 08:44:21', '', 'Assurances', '', 'publish', 'closed', 'closed', '', 'assurances', '', '', '2018-09-17 14:21:24', '2018-09-17 12:21:24', '', 0, 'http://localhost/eds/?page_id=68', 0, 'page', '', 0),
(69, 1, '2018-09-17 10:44:21', '2018-09-17 08:44:21', ' ', '', '', 'publish', 'closed', 'closed', '', '69', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/69/', 8, 'nav_menu_item', '', 0),
(70, 1, '2018-09-17 10:44:21', '2018-09-17 08:44:21', '', 'Assurances', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2018-09-17 10:44:21', '2018-09-17 08:44:21', '', 68, 'http://localhost/eds/2018/09/17/68-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-09-17 10:44:34', '2018-09-17 08:44:34', '', 'Logement', '', 'publish', 'closed', 'closed', '', 'logement', '', '', '2018-09-17 13:13:18', '2018-09-17 11:13:18', '', 0, 'http://localhost/eds/?page_id=71', 0, 'page', '', 0),
(72, 1, '2018-09-17 10:44:34', '2018-09-17 08:44:34', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/72/', 9, 'nav_menu_item', '', 0),
(73, 1, '2018-09-17 10:44:34', '2018-09-17 08:44:34', '', 'Logement', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2018-09-17 10:44:34', '2018-09-17 08:44:34', '', 71, 'http://localhost/eds/2018/09/17/71-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-09-17 10:45:02', '2018-09-17 08:45:02', '', 'Partis Politiques', '', 'publish', 'closed', 'closed', '', 'partis-politiques', '', '', '2018-09-17 10:45:02', '2018-09-17 08:45:02', '', 0, 'http://localhost/eds/?page_id=74', 0, 'page', '', 0),
(75, 1, '2018-09-17 10:45:02', '2018-09-17 08:45:02', ' ', '', '', 'publish', 'closed', 'closed', '', '75', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/75/', 11, 'nav_menu_item', '', 0),
(76, 1, '2018-09-17 10:45:02', '2018-09-17 08:45:02', '', 'Partis Politiques', '', 'inherit', 'closed', 'closed', '', '74-revision-v1', '', '', '2018-09-17 10:45:02', '2018-09-17 08:45:02', '', 74, 'http://localhost/eds/2018/09/17/74-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2018-09-17 10:45:21', '2018-09-17 08:45:21', '', 'Union Européenne', '', 'publish', 'closed', 'closed', '', 'union-europeenne', '', '', '2018-09-17 10:45:21', '2018-09-17 08:45:21', '', 0, 'http://localhost/eds/?page_id=77', 0, 'page', '', 0),
(78, 1, '2018-09-17 10:45:21', '2018-09-17 08:45:21', ' ', '', '', 'publish', 'closed', 'closed', '', '78', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/78/', 12, 'nav_menu_item', '', 0),
(79, 1, '2018-09-17 10:45:21', '2018-09-17 08:45:21', '', 'Union Européenne', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2018-09-17 10:45:21', '2018-09-17 08:45:21', '', 77, 'http://localhost/eds/2018/09/17/77-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2018-09-17 10:45:32', '2018-09-17 08:45:32', '', 'Culture', '', 'publish', 'closed', 'closed', '', 'culture', '', '', '2018-09-17 13:09:03', '2018-09-17 11:09:03', '', 0, 'http://localhost/eds/?page_id=80', 0, 'page', '', 0),
(81, 1, '2018-09-17 10:45:32', '2018-09-17 08:45:32', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/81/', 13, 'nav_menu_item', '', 0),
(82, 1, '2018-09-17 10:45:32', '2018-09-17 08:45:32', '', 'Culture', '', 'inherit', 'closed', 'closed', '', '80-revision-v1', '', '', '2018-09-17 10:45:32', '2018-09-17 08:45:32', '', 80, 'http://localhost/eds/2018/09/17/80-revision-v1/', 0, 'revision', '', 0),
(83, 1, '2018-09-17 10:45:46', '2018-09-17 08:45:46', '', 'Economie', '', 'publish', 'closed', 'closed', '', 'economie', '', '', '2018-09-17 13:12:39', '2018-09-17 11:12:39', '', 0, 'http://localhost/eds/?page_id=83', 0, 'page', '', 0),
(84, 1, '2018-09-17 10:45:46', '2018-09-17 08:45:46', ' ', '', '', 'publish', 'closed', 'closed', '', '84', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/84/', 14, 'nav_menu_item', '', 0),
(85, 1, '2018-09-17 10:45:46', '2018-09-17 08:45:46', '', 'Economie', '', 'inherit', 'closed', 'closed', '', '83-revision-v1', '', '', '2018-09-17 10:45:46', '2018-09-17 08:45:46', '', 83, 'http://localhost/eds/2018/09/17/83-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2018-09-17 10:46:01', '2018-09-17 08:46:01', '', 'Emploie', '', 'publish', 'closed', 'closed', '', 'emploie', '', '', '2018-09-17 13:12:53', '2018-09-17 11:12:53', '', 0, 'http://localhost/eds/?page_id=86', 0, 'page', '', 0),
(87, 1, '2018-09-17 10:46:01', '2018-09-17 08:46:01', ' ', '', '', 'publish', 'closed', 'closed', '', '87', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/87/', 16, 'nav_menu_item', '', 0),
(88, 1, '2018-09-17 10:46:01', '2018-09-17 08:46:01', '', 'Emploie', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-09-17 10:46:01', '2018-09-17 08:46:01', '', 86, 'http://localhost/eds/2018/09/17/86-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-09-17 10:46:19', '2018-09-17 08:46:19', '', 'Paysage Institutionnel', '', 'publish', 'closed', 'closed', '', 'paysage-institutionnel', '', '', '2018-09-17 10:46:19', '2018-09-17 08:46:19', '', 0, 'http://localhost/eds/?page_id=89', 0, 'page', '', 0),
(90, 1, '2018-09-17 10:46:19', '2018-09-17 08:46:19', ' ', '', '', 'publish', 'closed', 'closed', '', '90', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/90/', 15, 'nav_menu_item', '', 0),
(91, 1, '2018-09-17 10:46:19', '2018-09-17 08:46:19', '', 'Paysage Institutionnel', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2018-09-17 10:46:19', '2018-09-17 08:46:19', '', 89, 'http://localhost/eds/2018/09/17/89-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-09-17 10:46:50', '2018-09-17 08:46:50', '', 'Procédure Asile', '', 'publish', 'closed', 'closed', '', 'procedure-asile', '', '', '2018-09-17 10:46:50', '2018-09-17 08:46:50', '', 0, 'http://localhost/eds/?page_id=92', 0, 'page', '', 0),
(93, 1, '2018-09-17 10:46:50', '2018-09-17 08:46:50', ' ', '', '', 'publish', 'closed', 'closed', '', '93', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/93/', 17, 'nav_menu_item', '', 0),
(94, 1, '2018-09-17 10:46:50', '2018-09-17 08:46:50', '', 'Procédure Asile', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2018-09-17 10:46:50', '2018-09-17 08:46:50', '', 92, 'http://localhost/eds/2018/09/17/92-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2018-09-17 11:57:08', '2018-09-17 09:57:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'deuxime', 'deuxime', 'publish', 'closed', 'closed', '', 'field_5b9f79696ed58', '', '', '2018-09-17 11:57:08', '2018-09-17 09:57:08', '', 40, 'http://localhost/eds/?post_type=acf-field&p=95', 1, 'acf-field', '', 0),
(96, 1, '2018-09-17 11:59:52', '2018-09-17 09:59:52', '', 'Mettalos_MWB_Wallons', '', 'inherit', 'open', 'closed', '', 'mettalos_mwb_wallons', '', '', '2018-09-17 11:59:52', '2018-09-17 09:59:52', '', 0, 'http://localhost/eds/wp-content/uploads/2018/09/Mettalos_MWB_Wallons.png', 0, 'attachment', 'image/png', 0),
(97, 1, '2018-09-17 12:00:14', '2018-09-17 10:00:14', '', 'Logos-MdP-long-web', '', 'inherit', 'open', 'closed', '', 'logos-mdp-long-web', '', '', '2018-09-17 12:00:14', '2018-09-17 10:00:14', '', 0, 'http://localhost/eds/wp-content/uploads/2018/09/Logos-MdP-long-web.png', 0, 'attachment', 'image/png', 0),
(98, 1, '2018-09-17 12:00:34', '2018-09-17 10:00:34', '', 'JeunesFGTB_logo_Web', '', 'inherit', 'open', 'closed', '', 'jeunesfgtb_logo_web', '', '', '2018-09-17 12:00:34', '2018-09-17 10:00:34', '', 0, 'http://localhost/eds/wp-content/uploads/2018/09/JeunesFGTB_logo_Web.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2018-09-17 12:01:04', '2018-09-17 10:01:04', '', 'logo_cepag', '', 'inherit', 'open', 'closed', '', 'logo_cepag', '', '', '2018-09-17 12:01:04', '2018-09-17 10:01:04', '', 0, 'http://localhost/eds/wp-content/uploads/2018/09/logo_cepag.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2018-09-17 12:01:32', '2018-09-17 10:01:32', '', 'promotion-et-culture', '', 'inherit', 'open', 'closed', '', 'promotion-et-culture', '', '', '2018-09-17 12:01:32', '2018-09-17 10:01:32', '', 0, 'http://localhost/eds/wp-content/uploads/2018/09/promotion-et-culture.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2018-09-17 12:03:52', '2018-09-17 10:03:52', '', 'centrale-generale', '', 'inherit', 'open', 'closed', '', 'centrale-generale', '', '', '2018-09-17 12:03:52', '2018-09-17 10:03:52', '', 0, 'http://localhost/eds/wp-content/uploads/2018/09/centrale-generale.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2018-09-17 12:04:31', '2018-09-17 10:04:31', '', 'Groupe-38', '', 'inherit', 'open', 'closed', '', 'groupe-38', '', '', '2018-09-17 12:04:31', '2018-09-17 10:04:31', '', 0, 'http://localhost/eds/wp-content/uploads/2018/09/Groupe-38.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2018-09-17 12:14:45', '2018-09-17 10:14:45', '<label> votre message \r\n   [text* your-name placeholder\"votre message\"]</label>\r\n<label> email\r\n    [email* your-email placeholder\"votre message\"]</label>\r\n<label>votre site web\r\n    [url* your_web_site placeholder\"votre site web\"]</label>\r\n<label>Votre message\r\n    [textarea* your_message placeholder\"votre message\"]</label>\r\n<label>[submit \"send\"]</label>\r\n<input type=\"hidden\" name=\"your-subject\" value=\"Spritz contact\">\n1\neds \"[your-subject]\"\n[your-name] <bertholdberthi@gmail.com>\nbertholdberthi@gmail.com\nDe : [your-name] <[your-email]>\r\nObjet : [your-subject]\r\n\r\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de eds (http://localhost/eds)\nReply-To: [your-email]\n\n\n\n\neds \"[your-subject]\"\neds <bertholdberthi@gmail.com>\n[your-email]\nCorps du message :\r\n[your-message]\r\n\r\n-- \r\nCet e-mail a été envoyé via le formulaire de contact de eds (http://localhost/eds)\nReply-To: bertholdberthi@gmail.com\n\n\n\nMerci pour votre message. Il a été envoyé.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nUn ou plusieurs champs contiennent une erreur. Veuillez vérifier et essayer à nouveau.\nUne erreur s’est produite lors de l’envoi de votre message. Veuillez essayer à nouveau plus tard.\nVous devez accepter les termes et conditions avant d’envoyer votre message.\nCe champ est obligatoire.\nLe champ est trop long.\nLe champ est trop court.\nLe format de date est incorrect.\nLa date précède la première date autorisée.\nLa date est postérieure à la dernière date autorisée.\nUne erreur inconnue s’est produite lors du téléversement du fichier.\nVous n’avez pas les droits nécessaires pour téléverser ce type de fichier.\nLe fichier est trop volumineux.\nUne erreur s’est produite lors du téléversement du fichier.\nLe format du nombre est invalide.\nLe nombre est plus petit que le minimum autorisé.\nLe nombre est plus grand que le maximum autorisé.\nLa réponse à la question est incorrecte.\nLe code entré est incorrect.\nL’adresse e-mail n’est pas valide.\nL’URL n’est pas valide.\nLe numéro de téléphone n’est pas valide.', 'Sans titre', '', 'publish', 'closed', 'closed', '', 'sans-titre-2', '', '', '2018-09-17 12:14:45', '2018-09-17 10:14:45', '', 0, 'http://localhost/eds/?post_type=wpcf7_contact_form&p=103', 0, 'wpcf7_contact_form', '', 0),
(104, 1, '2018-09-17 12:15:15', '2018-09-17 10:15:15', '[contact-form-7 id=\"103\" title=\"Sans titre\"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-09-17 12:15:15', '2018-09-17 10:15:15', '', 17, 'http://localhost/eds/2018/09/17/17-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2018-09-17 12:30:24', '2018-09-17 10:30:24', '', 'Présentation', '', 'publish', 'closed', 'closed', '', 'presentation-2', '', '', '2018-09-17 12:30:24', '2018-09-17 10:30:24', '', 0, 'http://localhost/eds/?page_id=105', 0, 'page', '', 0),
(107, 1, '2018-09-17 12:30:24', '2018-09-17 10:30:24', '', 'Présentation', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2018-09-17 12:30:24', '2018-09-17 10:30:24', '', 105, 'http://localhost/eds/2018/09/17/105-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2018-09-17 13:14:10', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-09-17 13:14:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/eds/?page_id=108', 0, 'page', '', 0),
(109, 1, '2018-09-17 13:15:55', '2018-09-17 11:15:55', '', 'Regroupement Familial', '', 'publish', 'closed', 'closed', '', 'regroupement-familial-2', '', '', '2018-09-17 13:15:55', '2018-09-17 11:15:55', '', 0, 'http://localhost/eds/?page_id=109', 0, 'page', '', 0),
(111, 1, '2018-09-17 13:15:55', '2018-09-17 11:15:55', '', 'Regroupement Familial', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2018-09-17 13:15:55', '2018-09-17 11:15:55', '', 109, 'http://localhost/eds/2018/09/17/109-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2018-09-17 13:19:24', '2018-09-17 11:19:24', '', 'Présentation', '', 'publish', 'closed', 'closed', '', 'presentation-3', '', '', '2018-09-17 13:19:37', '2018-09-17 11:19:37', '', 0, 'http://localhost/eds/?page_id=112', 0, 'page', '', 0),
(114, 1, '2018-09-17 13:19:24', '2018-09-17 11:19:24', '', 'Présentation', '', 'inherit', 'closed', 'closed', '', '112-revision-v1', '', '', '2018-09-17 13:19:24', '2018-09-17 11:19:24', '', 112, 'http://localhost/eds/2018/09/17/112-revision-v1/', 0, 'revision', '', 0),
(115, 1, '2018-09-17 13:21:02', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-17 13:21:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/eds/?post_type=tribe_events&p=115', 0, 'tribe_events', '', 0),
(116, 1, '2018-09-17 13:30:19', '2018-09-17 11:30:19', '', 'Présentation', '', 'publish', 'closed', 'closed', '', 'presentation-4', '', '', '2018-09-17 13:30:19', '2018-09-17 11:30:19', '', 0, 'http://localhost/eds/?page_id=116', 0, 'page', '', 0),
(117, 1, '2018-09-17 13:30:19', '2018-09-17 11:30:19', ' ', '', '', 'publish', 'closed', 'closed', '', '117', '', '', '2018-09-17 14:44:13', '2018-09-17 12:44:13', '', 0, 'http://localhost/eds/2018/09/17/117/', 2, 'nav_menu_item', '', 0),
(118, 1, '2018-09-17 13:30:19', '2018-09-17 11:30:19', '', 'Présentation', '', 'inherit', 'closed', 'closed', '', '116-revision-v1', '', '', '2018-09-17 13:30:19', '2018-09-17 11:30:19', '', 116, 'http://localhost/eds/2018/09/17/116-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2018-09-17 13:30:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-09-17 13:30:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/eds/?p=119', 1, 'nav_menu_item', '', 0),
(120, 1, '2018-09-17 13:35:53', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-17 13:35:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/eds/?post_type=event&p=120', 0, 'event', '', 0),
(121, 1, '2018-09-17 13:38:02', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-17 13:38:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/eds/?post_type=event&p=121', 0, 'event', '', 0),
(122, 1, '2018-09-17 13:39:59', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2018-09-17 13:39:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/eds/?post_type=event&p=122', 0, 'event', '', 0),
(123, 1, '2018-09-17 13:44:59', '2018-09-17 11:44:59', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:18:\"acf-options-header\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Header', 'header', 'publish', 'closed', 'closed', '', 'group_5b9f9360484fe', '', '', '2018-09-17 13:45:37', '2018-09-17 11:45:37', '', 0, 'http://localhost/eds/?post_type=acf-field-group&#038;p=123', 0, 'acf-field-group', '', 0),
(124, 1, '2018-09-17 13:44:59', '2018-09-17 11:44:59', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'images', 'images', 'publish', 'closed', 'closed', '', 'field_5b9f9372675f2', '', '', '2018-09-17 13:44:59', '2018-09-17 11:44:59', '', 123, 'http://localhost/eds/?post_type=acf-field&p=124', 0, 'acf-field', '', 0),
(125, 1, '2018-09-17 13:44:59', '2018-09-17 11:44:59', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'image', 'image', 'publish', 'closed', 'closed', '', 'field_5b9f9398675f3', '', '', '2018-09-17 13:44:59', '2018-09-17 11:44:59', '', 124, 'http://localhost/eds/?post_type=acf-field&p=125', 0, 'acf-field', '', 0),
(126, 1, '2018-09-17 13:44:59', '2018-09-17 11:44:59', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'titre', 'titre', 'publish', 'closed', 'closed', '', 'field_5b9f93a6675f4', '', '', '2018-09-17 13:44:59', '2018-09-17 11:44:59', '', 124, 'http://localhost/eds/?post_type=acf-field&p=126', 1, 'acf-field', '', 0),
(127, 1, '2018-09-17 13:45:37', '2018-09-17 11:45:37', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'link', 'link', 'publish', 'closed', 'closed', '', 'field_5b9f93c87288f', '', '', '2018-09-17 13:45:37', '2018-09-17 11:45:37', '', 123, 'http://localhost/eds/?post_type=acf-field&p=127', 1, 'acf-field', '', 0),
(128, 1, '2018-09-17 14:45:55', '2018-09-17 12:45:55', ' ', '', '', 'publish', 'closed', 'closed', '', '128', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=128', 1, 'nav_menu_item', '', 0),
(129, 1, '2018-09-17 14:45:55', '2018-09-17 12:45:55', ' ', '', '', 'publish', 'closed', 'closed', '', '129', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=129', 2, 'nav_menu_item', '', 0),
(130, 1, '2018-09-17 14:45:55', '2018-09-17 12:45:55', ' ', '', '', 'publish', 'closed', 'closed', '', '130', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=130', 3, 'nav_menu_item', '', 0),
(131, 1, '2018-09-17 14:45:55', '2018-09-17 12:45:55', ' ', '', '', 'publish', 'closed', 'closed', '', '131', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=131', 4, 'nav_menu_item', '', 0),
(132, 1, '2018-09-17 14:45:55', '2018-09-17 12:45:55', ' ', '', '', 'publish', 'closed', 'closed', '', '132', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=132', 5, 'nav_menu_item', '', 0),
(133, 1, '2018-09-17 14:45:56', '2018-09-17 12:45:56', ' ', '', '', 'publish', 'closed', 'closed', '', '133', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=133', 6, 'nav_menu_item', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(134, 1, '2018-09-17 14:45:56', '2018-09-17 12:45:56', ' ', '', '', 'publish', 'closed', 'closed', '', '134', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=134', 7, 'nav_menu_item', '', 0),
(135, 1, '2018-09-17 14:45:56', '2018-09-17 12:45:56', ' ', '', '', 'publish', 'closed', 'closed', '', '135', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=135', 8, 'nav_menu_item', '', 0),
(136, 1, '2018-09-17 14:45:56', '2018-09-17 12:45:56', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=136', 9, 'nav_menu_item', '', 0),
(137, 1, '2018-09-17 14:45:56', '2018-09-17 12:45:56', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=137', 10, 'nav_menu_item', '', 0),
(138, 1, '2018-09-17 14:45:56', '2018-09-17 12:45:56', ' ', '', '', 'publish', 'closed', 'closed', '', '138', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=138', 11, 'nav_menu_item', '', 0),
(139, 1, '2018-09-17 14:45:56', '2018-09-17 12:45:56', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=139', 12, 'nav_menu_item', '', 0),
(140, 1, '2018-09-17 14:45:56', '2018-09-17 12:45:56', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=140', 13, 'nav_menu_item', '', 0),
(141, 1, '2018-09-17 14:45:56', '2018-09-17 12:45:56', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=141', 14, 'nav_menu_item', '', 0),
(142, 1, '2018-09-17 14:45:56', '2018-09-17 12:45:56', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2018-09-17 14:47:52', '2018-09-17 12:47:52', '', 0, 'http://localhost/eds/?p=142', 15, 'nav_menu_item', '', 0),
(143, 1, '2018-09-17 14:56:11', '2018-09-17 12:56:11', '[events_list limit=\"10\" location=\"1\"]\r\n\r\n', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-17 14:56:11', '2018-09-17 12:56:11', '', 5, 'http://localhost/eds/2018/09/17/5-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2018-09-17 14:56:49', '2018-09-17 12:56:49', '', 'test', '', 'publish', 'open', 'closed', '', 'test', '', '', '2018-09-17 15:01:48', '2018-09-17 13:01:48', '', 0, 'http://localhost/eds/?post_type=event&#038;p=144', 0, 'event', '', 0),
(145, 1, '2018-09-17 14:57:28', '2018-09-17 12:57:28', '[events_list]\r\n\r\n', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-17 14:57:28', '2018-09-17 12:57:28', '', 5, 'http://localhost/eds/2018/09/17/5-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-09-17 15:00:51', '0000-00-00 00:00:00', '', 'PIL', '', 'draft', 'open', 'closed', '', '', '', '', '2018-09-17 15:00:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/eds/?post_type=location&p=146', 0, 'location', '', 0),
(147, 1, '2018-09-17 15:01:48', '2018-09-17 13:01:48', '', 'PIL', '', 'publish', 'open', 'closed', '', 'pil', '', '', '2018-09-17 15:01:48', '2018-09-17 13:01:48', '', 0, 'http://localhost/eds/locations/pil/', 0, 'location', '', 0),
(148, 1, '2018-09-17 15:04:16', '2018-09-17 13:04:16', '[events_list limit=\"10\" location=\"1\"]', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-17 15:04:16', '2018-09-17 13:04:16', '', 5, 'http://localhost/eds/2018/09/17/5-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2018-09-17 15:05:48', '2018-09-17 13:05:48', 'a\r\n\r\n[events_list limit=\"10\" location=\"1\"]\r\n\r\nb', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-17 15:05:48', '2018-09-17 13:05:48', '', 5, 'http://localhost/eds/2018/09/17/5-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2018-09-17 15:07:32', '2018-09-17 13:07:32', 'a\r\n\r\n[events_list limit=\"10\" ]\r\n\r\nb', 'Accueil', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2018-09-17 15:07:32', '2018-09-17 13:07:32', '', 5, 'http://localhost/eds/2018/09/17/5-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2018-09-17 15:33:53', '2018-09-17 13:33:53', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"template-faq.php\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'FAQ', 'faq', 'publish', 'closed', 'closed', '', 'group_5b9face5bb3d1', '', '', '2018-09-17 15:33:53', '2018-09-17 13:33:53', '', 0, 'http://localhost/eds/?post_type=acf-field-group&#038;p=151', 0, 'acf-field-group', '', 0),
(152, 1, '2018-09-17 15:33:53', '2018-09-17 13:33:53', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'faq', 'faq', 'publish', 'closed', 'closed', '', 'field_5b9faceac3655', '', '', '2018-09-17 15:33:53', '2018-09-17 13:33:53', '', 151, 'http://localhost/eds/?post_type=acf-field&p=152', 0, 'acf-field', '', 0),
(153, 1, '2018-09-17 15:33:53', '2018-09-17 13:33:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Question', 'question', 'publish', 'closed', 'closed', '', 'field_5b9fad03c3656', '', '', '2018-09-17 15:33:53', '2018-09-17 13:33:53', '', 152, 'http://localhost/eds/?post_type=acf-field&p=153', 0, 'acf-field', '', 0),
(154, 1, '2018-09-17 15:33:53', '2018-09-17 13:33:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Réponse', 'reponse', 'publish', 'closed', 'closed', '', 'field_5b9fad14c3657', '', '', '2018-09-17 15:33:53', '2018-09-17 13:33:53', '', 152, 'http://localhost/eds/?post_type=acf-field&p=154', 1, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Header', 'header', 0),
(3, 'faq', 'faq', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(34, 2, 0),
(36, 2, 0),
(38, 2, 0),
(39, 2, 0),
(50, 2, 0),
(57, 2, 0),
(60, 2, 0),
(63, 2, 0),
(66, 2, 0),
(69, 2, 0),
(72, 2, 0),
(75, 2, 0),
(78, 2, 0),
(81, 2, 0),
(84, 2, 0),
(87, 2, 0),
(90, 2, 0),
(93, 2, 0),
(117, 2, 0),
(128, 3, 0),
(129, 3, 0),
(130, 3, 0),
(131, 3, 0),
(132, 3, 0),
(133, 3, 0),
(134, 3, 0),
(135, 3, 0),
(136, 3, 0),
(137, 3, 0),
(138, 3, 0),
(139, 3, 0),
(140, 3, 0),
(141, 3, 0),
(142, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 19),
(3, 3, 'nav_menu', '', 0, 15);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Berthold'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"c322d06cb3483dbe4c4bba658682151787df35307846176fb022e1f361c6c57d\";a:4:{s:10:\"expiration\";i:1537172806;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1537000006;}s:64:\"6eaf82bcb307d27771d26bf501db95a207554993d26a49c8e181154483eb09ce\";a:4:{s:10:\"expiration\";i:1537290017;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36\";s:5:\"login\";i:1537117217;}}'),
(17, 1, 'wp_user-settings', 'tribe_events_cat_tab=pop&editor=html&libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1537178692'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:7:{i:0;s:22:\"add-post-type-location\";i:1;s:19:\"add-post-type-event\";i:2;s:26:\"add-post-type-tribe_events\";i:3;s:12:\"add-post_tag\";i:4;s:15:\"add-post_format\";i:5;s:14:\"add-event-tags\";i:6;s:20:\"add-event-categories\";}'),
(22, 1, 'tribe_setDefaultNavMenuBoxes', '1'),
(23, 1, 'nav_menu_recently_edited', '3'),
(24, 1, 'closedpostboxes_theme-settings_page_acf-options-header', 'a:0:{}'),
(25, 1, 'metaboxhidden_theme-settings_page_acf-options-header', 'a:0:{}'),
(26, 1, 'manageedit-eventcolumnshidden', 'a:1:{i:0;s:8:\"event-id\";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Berthold', '$P$BgAbr0CVuIQHmbJkkLlbJhCRxoNB8T0', 'berthold', 'bertholdberthi@gmail.com', '', '2018-09-15 08:26:22', '', 0, 'Berthold');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Index pour la table `wp_em_bookings`
--
ALTER TABLE `wp_em_bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `person_id` (`person_id`),
  ADD KEY `booking_status` (`booking_status`);

--
-- Index pour la table `wp_em_events`
--
ALTER TABLE `wp_em_events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `event_status` (`event_status`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `event_start` (`event_start`),
  ADD KEY `event_end` (`event_end`),
  ADD KEY `event_start_date` (`event_start_date`),
  ADD KEY `event_end_date` (`event_end_date`);

--
-- Index pour la table `wp_em_locations`
--
ALTER TABLE `wp_em_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_state` (`location_state`(191)),
  ADD KEY `location_region` (`location_region`(191)),
  ADD KEY `location_country` (`location_country`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Index pour la table `wp_em_meta`
--
ALTER TABLE `wp_em_meta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `object_id` (`object_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_em_tickets`
--
ALTER TABLE `wp_em_tickets`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Index pour la table `wp_em_tickets_bookings`
--
ALTER TABLE `wp_em_tickets_bookings`
  ADD PRIMARY KEY (`ticket_booking_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_em_bookings`
--
ALTER TABLE `wp_em_bookings`
  MODIFY `booking_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_em_events`
--
ALTER TABLE `wp_em_events`
  MODIFY `event_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `wp_em_locations`
--
ALTER TABLE `wp_em_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `wp_em_meta`
--
ALTER TABLE `wp_em_meta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_em_tickets`
--
ALTER TABLE `wp_em_tickets`
  MODIFY `ticket_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_em_tickets_bookings`
--
ALTER TABLE `wp_em_tickets_bookings`
  MODIFY `ticket_booking_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=732;

--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=584;

--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
