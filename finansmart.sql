-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/09/2025 às 15:58
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `finansmart`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_access_log`
--

CREATE TABLE `system_access_log` (
  `id` int(11) NOT NULL,
  `sessionid` varchar(256) DEFAULT NULL,
  `login` varchar(256) DEFAULT NULL,
  `login_time` varchar(20) DEFAULT NULL,
  `login_year` varchar(4) DEFAULT NULL,
  `login_month` varchar(2) DEFAULT NULL,
  `login_day` varchar(2) DEFAULT NULL,
  `logout_time` varchar(20) DEFAULT NULL,
  `impersonated` char(1) DEFAULT NULL,
  `access_ip` varchar(45) DEFAULT NULL,
  `impersonated_by` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `system_access_log`
--

INSERT INTO `system_access_log` (`id`, `sessionid`, `login`, `login_time`, `login_year`, `login_month`, `login_day`, `logout_time`, `impersonated`, `access_ip`, `impersonated_by`) VALUES
(1, 'n4r0q7hbbl4fpor48m001j7djk', 'admin', '2025-09-15 14:40:25', '2025', '09', '15', '2025-09-15 14:48:04', 'N', '::1', NULL),
(2, 'l1mg5v9b0btphgj8nhqgv9tc6c', 'admin', '2025-09-15 14:48:11', '2025', '09', '15', '2025-09-15 17:39:11', 'N', '::1', NULL),
(3, 'fum47ai76e27qa04ges4ba4rhm', 'admin', '2025-09-15 17:39:18', '2025', '09', '15', '2025-09-15 17:44:23', 'N', '::1', NULL),
(4, 'k4te5ak0vsaokklq2ckcbfjc5g', 'admin', '2025-09-15 17:45:21', '2025', '09', '15', '2025-09-15 18:16:44', 'N', '::1', NULL),
(5, '01nvqr2pbc99r855agdr44s2n2', 'admin', '2025-09-15 18:16:51', '2025', '09', '15', '2025-09-15 18:17:18', 'N', '::1', NULL),
(6, '5rdrk5c2be6c9oufr7mhvdgccs', 'admin', '2025-09-15 18:17:24', '2025', '09', '15', '2025-09-15 19:07:11', 'N', '::1', NULL),
(7, 'oj44b1mcaip2tfujlf34cuus62', 'admin', '2025-09-15 19:07:18', '2025', '09', '15', '2025-09-15 19:10:55', 'N', '::1', NULL),
(8, 'tdh2b59028opvas0efp8b6tkp2', 'user', '2025-09-15 19:11:03', '2025', '09', '15', '2025-09-15 19:11:08', 'N', '::1', NULL),
(9, '5mnam129o41pqtalf1e6m8f9rq', 'admin', '2025-09-15 19:11:42', '2025', '09', '15', '2025-09-15 19:12:39', 'N', '::1', NULL),
(10, '8clo9lfo3hc8ispd8pvsui31a3', 'user', '2025-09-15 19:12:45', '2025', '09', '15', '2025-09-15 19:12:55', 'N', '::1', NULL),
(11, 'hf8e7uil5g2chgpfls1k578nbk', 'admin', '2025-09-15 19:13:05', '2025', '09', '15', '2025-09-15 19:13:25', 'N', '::1', NULL),
(12, 'np2d3lh3epj3v017ft8kq3pj9e', 'user', '2025-09-15 19:13:32', '2025', '09', '15', '2025-09-15 20:03:06', 'N', '::1', NULL),
(13, 'aj7f7tjpbfd6nmvt7j491ulm6e', 'admin', '2025-09-15 20:03:12', '2025', '09', '15', NULL, 'N', '::1', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_access_notification_log`
--

CREATE TABLE `system_access_notification_log` (
  `id` int(11) NOT NULL,
  `login` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `ip_address` varchar(256) DEFAULT NULL,
  `login_time` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_change_log`
--

CREATE TABLE `system_change_log` (
  `id` int(11) NOT NULL,
  `logdate` varchar(20) DEFAULT NULL,
  `login` varchar(256) DEFAULT NULL,
  `tablename` varchar(256) DEFAULT NULL,
  `primarykey` varchar(256) DEFAULT NULL,
  `pkvalue` varchar(256) DEFAULT NULL,
  `operation` varchar(256) DEFAULT NULL,
  `columnname` varchar(256) DEFAULT NULL,
  `oldvalue` text DEFAULT NULL,
  `newvalue` text DEFAULT NULL,
  `access_ip` varchar(256) DEFAULT NULL,
  `transaction_id` varchar(256) DEFAULT NULL,
  `log_trace` text DEFAULT NULL,
  `session_id` varchar(256) DEFAULT NULL,
  `class_name` varchar(256) DEFAULT NULL,
  `php_sapi` varchar(256) DEFAULT NULL,
  `log_year` varchar(4) DEFAULT NULL,
  `log_month` varchar(2) DEFAULT NULL,
  `log_day` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_document`
--

CREATE TABLE `system_document` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `archive_date` date DEFAULT NULL,
  `filename` varchar(512) DEFAULT NULL,
  `in_trash` char(1) DEFAULT NULL,
  `system_folder_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `content_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_document_bookmark`
--

CREATE TABLE `system_document_bookmark` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_document_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_document_group`
--

CREATE TABLE `system_document_group` (
  `id` int(11) NOT NULL,
  `document_id` int(11) DEFAULT NULL,
  `system_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_document_user`
--

CREATE TABLE `system_document_user` (
  `id` int(11) NOT NULL,
  `document_id` int(11) DEFAULT NULL,
  `system_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_folder`
--

CREATE TABLE `system_folder` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `in_trash` char(1) DEFAULT NULL,
  `system_folder_parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_folder_bookmark`
--

CREATE TABLE `system_folder_bookmark` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_folder_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_folder_group`
--

CREATE TABLE `system_folder_group` (
  `id` int(11) NOT NULL,
  `system_folder_id` int(11) DEFAULT NULL,
  `system_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_folder_user`
--

CREATE TABLE `system_folder_user` (
  `id` int(11) NOT NULL,
  `system_folder_id` int(11) DEFAULT NULL,
  `system_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_group`
--

CREATE TABLE `system_group` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `system_group`
--

INSERT INTO `system_group` (`id`, `name`) VALUES
(3, 'Application - Programs'),
(1, 'Template - Admin'),
(2, 'Template - Users');

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_group_program`
--

CREATE TABLE `system_group_program` (
  `id` int(11) NOT NULL,
  `system_group_id` int(11) DEFAULT NULL,
  `system_program_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `system_group_program`
--

INSERT INTO `system_group_program` (`id`, `system_group_id`, `system_program_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 2, 29),
(30, 2, 30),
(31, 2, 31),
(32, 2, 32),
(33, 2, 33),
(34, 2, 34),
(35, 2, 35),
(36, 2, 36),
(37, 2, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 2, 46),
(47, 2, 47),
(48, 2, 48),
(49, 2, 49),
(50, 2, 50),
(51, 2, 51),
(52, 2, 52),
(53, 2, 53),
(54, 2, 54),
(55, 2, 55),
(56, 2, 56),
(57, 2, 57),
(58, 2, 58),
(59, 2, 59),
(60, 2, 60),
(61, 2, 61),
(62, 2, 62),
(63, 2, 63),
(64, 2, 64),
(65, 1, 65),
(66, 1, 66),
(67, 1, 67);

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_message`
--

CREATE TABLE `system_message` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_user_to_id` int(11) DEFAULT NULL,
  `subject` varchar(256) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `dt_message` varchar(20) DEFAULT NULL,
  `checked` char(1) DEFAULT NULL,
  `removed` char(1) DEFAULT NULL,
  `viewed` char(1) DEFAULT NULL,
  `attachments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_message_tag`
--

CREATE TABLE `system_message_tag` (
  `id` int(11) NOT NULL,
  `system_message_id` int(11) NOT NULL,
  `tag` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_notification`
--

CREATE TABLE `system_notification` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_user_to_id` int(11) DEFAULT NULL,
  `subject` varchar(256) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `dt_message` varchar(20) DEFAULT NULL,
  `action_url` text DEFAULT NULL,
  `action_label` varchar(256) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `checked` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_post`
--

CREATE TABLE `system_post` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `content` text NOT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  `updated_at` varchar(20) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_post_comment`
--

CREATE TABLE `system_post_comment` (
  `id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `system_user_id` int(11) NOT NULL,
  `system_post_id` int(11) NOT NULL,
  `created_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_post_like`
--

CREATE TABLE `system_post_like` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_post_id` int(11) NOT NULL,
  `created_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_post_share_group`
--

CREATE TABLE `system_post_share_group` (
  `id` int(11) NOT NULL,
  `system_group_id` int(11) DEFAULT NULL,
  `system_post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_post_tag`
--

CREATE TABLE `system_post_tag` (
  `id` int(11) NOT NULL,
  `system_post_id` int(11) NOT NULL,
  `tag` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_preference`
--

CREATE TABLE `system_preference` (
  `id` varchar(256) DEFAULT NULL,
  `value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_program`
--

CREATE TABLE `system_program` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `controller` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `system_program`
--

INSERT INTO `system_program` (`id`, `name`, `controller`) VALUES
(1, 'System Administration Dashboard', 'SystemAdministrationDashboard'),
(2, 'System Program Form', 'SystemProgramForm'),
(3, 'System Program List', 'SystemProgramList'),
(4, 'System Group Form', 'SystemGroupForm'),
(5, 'System Group List', 'SystemGroupList'),
(6, 'System Unit Form', 'SystemUnitForm'),
(7, 'System Unit List', 'SystemUnitList'),
(8, 'System Role Form', 'SystemRoleForm'),
(9, 'System Role List', 'SystemRoleList'),
(10, 'System User Form', 'SystemUserForm'),
(11, 'System User List', 'SystemUserList'),
(12, 'System Preference form', 'SystemPreferenceForm'),
(13, 'System Log Dashboard', 'SystemLogDashboard'),
(14, 'System Access Log', 'SystemAccessLogList'),
(15, 'System ChangeLog View', 'SystemChangeLogView'),
(16, 'System Sql Log', 'SystemSqlLogList'),
(17, 'System Request Log', 'SystemRequestLogList'),
(18, 'System Request Log View', 'SystemRequestLogView'),
(19, 'System PHP Error', 'SystemPHPErrorLogView'),
(20, 'System Session vars', 'SystemSessionVarsView'),
(21, 'System Database Browser', 'SystemDatabaseExplorer'),
(22, 'System Table List', 'SystemTableList'),
(23, 'System Data Browser', 'SystemDataBrowser'),
(24, 'System SQL Panel', 'SystemSQLPanel'),
(25, 'System Modules', 'SystemModulesCheckView'),
(26, 'System files diff', 'SystemFilesDiff'),
(27, 'System Information', 'SystemInformationView'),
(28, 'System PHP Info', 'SystemPHPInfoView'),
(29, 'Common Page', 'CommonPage'),
(30, 'Welcome View', 'WelcomeView'),
(31, 'Welcome dashboard', 'WelcomeDashboardView'),
(32, 'System Profile View', 'SystemProfileView'),
(33, 'System Profile Form', 'SystemProfileForm'),
(34, 'System Notification List', 'SystemNotificationList'),
(35, 'System Notification Form View', 'SystemNotificationFormView'),
(36, 'System Support form', 'SystemSupportForm'),
(37, 'System Profile 2FA Form', 'SystemProfile2FAForm'),
(38, 'System Wiki list', 'SystemWikiList'),
(39, 'System Wiki form', 'SystemWikiForm'),
(40, 'System Wiki page picker', 'SystemWikiPagePicker'),
(41, 'System Post list', 'SystemPostList'),
(42, 'System Post form', 'SystemPostForm'),
(43, 'System schedule list', 'SystemScheduleList'),
(44, 'System schedule form', 'SystemScheduleForm'),
(45, 'System schedule log', 'SystemScheduleLogList'),
(46, 'System Message Form', 'SystemMessageForm'),
(47, 'System Message List', 'SystemMessageList'),
(48, 'System Message Form View', 'SystemMessageFormView'),
(49, 'System Documents', 'SystemDriveList'),
(50, 'System Folder form', 'SystemFolderForm'),
(51, 'System Share folder', 'SystemFolderShareForm'),
(52, 'System Share document', 'SystemDocumentShareForm'),
(53, 'System Document properties', 'SystemDocumentFormWindow'),
(54, 'System Folder properties', 'SystemFolderFormView'),
(55, 'System Document upload', 'SystemDriveDocumentUploadForm'),
(56, 'Post View list', 'SystemPostFeedView'),
(57, 'Post Comment form', 'SystemPostCommentForm'),
(58, 'Post Comment list', 'SystemPostCommentList'),
(59, 'System Wiki search', 'SystemWikiSearchList'),
(60, 'System Wiki view', 'SystemWikiView'),
(61, 'System Message Tag form', 'SystemMessageTagForm'),
(62, 'System Contacts list', 'SystemContactsList'),
(63, 'Text document editor', 'SystemTextDocumentEditor'),
(64, 'System document create form', 'SystemDriveDocumentCreateForm'),
(65, 'Cadastrar Entrada', 'EntradaFormList'),
(66, 'Cadastrar Tipo', 'TipoFormList'),
(67, 'Cadastro de Saída', 'SaidaFormList');

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_program_method_role`
--

CREATE TABLE `system_program_method_role` (
  `id` int(11) NOT NULL,
  `system_program_id` int(11) DEFAULT NULL,
  `system_role_id` int(11) DEFAULT NULL,
  `method_name` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_request_log`
--

CREATE TABLE `system_request_log` (
  `id` int(11) NOT NULL,
  `endpoint` text DEFAULT NULL,
  `logdate` varchar(256) DEFAULT NULL,
  `log_year` varchar(4) DEFAULT NULL,
  `log_month` varchar(2) DEFAULT NULL,
  `log_day` varchar(2) DEFAULT NULL,
  `session_id` varchar(256) DEFAULT NULL,
  `login` varchar(256) DEFAULT NULL,
  `access_ip` varchar(256) DEFAULT NULL,
  `class_name` varchar(256) DEFAULT NULL,
  `class_method` varchar(256) DEFAULT NULL,
  `http_host` varchar(256) DEFAULT NULL,
  `server_port` varchar(256) DEFAULT NULL,
  `request_uri` text DEFAULT NULL,
  `request_method` varchar(256) DEFAULT NULL,
  `query_string` text DEFAULT NULL,
  `request_headers` text DEFAULT NULL,
  `request_body` text DEFAULT NULL,
  `request_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_role`
--

CREATE TABLE `system_role` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `custom_code` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `system_role`
--

INSERT INTO `system_role` (`id`, `name`, `custom_code`) VALUES
(1, 'Role A', ''),
(2, 'Role B', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_schedule`
--

CREATE TABLE `system_schedule` (
  `id` int(11) NOT NULL,
  `schedule_type` char(1) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `class_name` varchar(256) DEFAULT NULL,
  `method` varchar(256) DEFAULT NULL,
  `monthday` char(2) DEFAULT NULL,
  `weekday` char(1) DEFAULT NULL,
  `hour` char(2) DEFAULT NULL,
  `minute` char(2) DEFAULT NULL,
  `active` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_schedule_log`
--

CREATE TABLE `system_schedule_log` (
  `id` int(11) NOT NULL,
  `logdate` varchar(19) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `class_name` varchar(256) DEFAULT NULL,
  `method` varchar(256) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_sql_changes`
--

CREATE TABLE `system_sql_changes` (
  `id` int(11) NOT NULL,
  `db_name` varchar(200) DEFAULT NULL,
  `sql_date` varchar(20) DEFAULT NULL,
  `sql_hash` varchar(32) DEFAULT NULL,
  `sql_command` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_sql_log`
--

CREATE TABLE `system_sql_log` (
  `id` int(11) NOT NULL,
  `logdate` varchar(20) DEFAULT NULL,
  `login` varchar(256) DEFAULT NULL,
  `database_name` varchar(256) DEFAULT NULL,
  `sql_command` text DEFAULT NULL,
  `statement_type` varchar(256) DEFAULT NULL,
  `access_ip` varchar(45) DEFAULT NULL,
  `transaction_id` varchar(256) DEFAULT NULL,
  `log_trace` text DEFAULT NULL,
  `session_id` varchar(256) DEFAULT NULL,
  `class_name` varchar(256) DEFAULT NULL,
  `php_sapi` varchar(256) DEFAULT NULL,
  `request_id` varchar(256) DEFAULT NULL,
  `log_year` varchar(4) DEFAULT NULL,
  `log_month` varchar(2) DEFAULT NULL,
  `log_day` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_unit`
--

CREATE TABLE `system_unit` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `connection_name` varchar(256) DEFAULT NULL,
  `custom_code` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `system_unit`
--

INSERT INTO `system_unit` (`id`, `name`, `connection_name`, `custom_code`) VALUES
(1, 'Unit A', 'unit_a', NULL),
(2, 'Unit B', 'unit_b', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_users`
--

CREATE TABLE `system_users` (
  `id` int(11) NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `login` varchar(256) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `accepted_term_policy` char(1) DEFAULT NULL,
  `phone` varchar(256) DEFAULT NULL,
  `address` varchar(256) DEFAULT NULL,
  `function_name` varchar(256) DEFAULT NULL,
  `about` text DEFAULT NULL,
  `accepted_term_policy_at` varchar(20) DEFAULT NULL,
  `accepted_term_policy_data` text DEFAULT NULL,
  `frontpage_id` int(11) DEFAULT NULL,
  `system_unit_id` int(11) DEFAULT NULL,
  `active` char(1) DEFAULT NULL,
  `custom_code` varchar(256) DEFAULT NULL,
  `otp_secret` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `system_users`
--

INSERT INTO `system_users` (`id`, `name`, `login`, `password`, `email`, `accepted_term_policy`, `phone`, `address`, `function_name`, `about`, `accepted_term_policy_at`, `accepted_term_policy_data`, `frontpage_id`, `system_unit_id`, `active`, `custom_code`, `otp_secret`) VALUES
(1, 'Administrator', 'admin', '$2y$10$xuR3XEc3J6tpv7myC9gPj.Ab5GacSeHSZoYUTYtOg.cEc22G.iBwa', 'admin@admin.net', 'Y', '+123 456 789', 'Admin Street, 123', 'Administrator', 'I\'m the administrator', NULL, NULL, 30, NULL, 'Y', NULL, NULL),
(2, 'User', 'user', '$2y$10$MUYN29LOSHrCSGhrzvYG8O/PtAjbWvCubaUSTJGhVTJhm69WNFJs.', 'user@user.net', 'Y', '+123 456 789', 'User Street, 123', 'End user', 'I\'m the end user', NULL, NULL, 30, NULL, 'Y', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_user_group`
--

CREATE TABLE `system_user_group` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `system_user_group`
--

INSERT INTO `system_user_group` (`id`, `system_user_id`, `system_group_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_user_old_password`
--

CREATE TABLE `system_user_old_password` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `created_at` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_user_program`
--

CREATE TABLE `system_user_program` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_program_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `system_user_program`
--

INSERT INTO `system_user_program` (`id`, `system_user_id`, `system_program_id`) VALUES
(1, 2, 1),
(2, 2, 31),
(3, 2, 65),
(4, 2, 66),
(5, 2, 67);

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_user_role`
--

CREATE TABLE `system_user_role` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_user_unit`
--

CREATE TABLE `system_user_unit` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `system_unit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `system_user_unit`
--

INSERT INTO `system_user_unit` (`id`, `system_user_id`, `system_unit_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_wiki_page`
--

CREATE TABLE `system_wiki_page` (
  `id` int(11) NOT NULL,
  `system_user_id` int(11) DEFAULT NULL,
  `created_at` varchar(20) DEFAULT NULL,
  `updated_at` varchar(20) DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `content` text NOT NULL,
  `active` char(1) NOT NULL DEFAULT 'Y',
  `searchable` char(1) NOT NULL DEFAULT 'Y',
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_wiki_share_group`
--

CREATE TABLE `system_wiki_share_group` (
  `id` int(11) NOT NULL,
  `system_group_id` int(11) DEFAULT NULL,
  `system_wiki_page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `system_wiki_tag`
--

CREATE TABLE `system_wiki_tag` (
  `id` int(11) NOT NULL,
  `system_wiki_page_id` int(11) NOT NULL,
  `tag` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_entrada`
--

CREATE TABLE `tb_entrada` (
  `id_entrada_pk` int(11) NOT NULL,
  `id_tipo_fk` int(11) NOT NULL,
  `dt_entrada` date NOT NULL,
  `vl_entrada` float NOT NULL,
  `ds_entrada` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `tb_entrada`
--

INSERT INTO `tb_entrada` (`id_entrada_pk`, `id_tipo_fk`, `dt_entrada`, `vl_entrada`, `ds_entrada`) VALUES
(1, 1, '2025-09-15', 2118, 'SALARIO MENSAL'),
(2, 4, '2025-09-15', 109, 'PIX PARA PAGAMENTO DE EMPRÉSTIMO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_saida`
--

CREATE TABLE `tb_saida` (
  `id_saida_pk` int(11) NOT NULL,
  `id_tipo_fk` int(11) NOT NULL,
  `dt_saida` date NOT NULL,
  `vl_saida` float NOT NULL,
  `ds_saida` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `tb_saida`
--

INSERT INTO `tb_saida` (`id_saida_pk`, `id_tipo_fk`, `dt_saida`, `vl_saida`, `ds_saida`) VALUES
(1, 3, '2025-09-15', 150, 'CONTA DE LUZ'),
(2, 2, '2025-09-17', 76.5, 'PAGAMENTO DE RECIBO DE ÁGUA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_tipo`
--

CREATE TABLE `tb_tipo` (
  `id_tipo_pk` int(11) NOT NULL,
  `nm_tipo` varchar(250) NOT NULL,
  `tp_ent_sai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Despejando dados para a tabela `tb_tipo`
--

INSERT INTO `tb_tipo` (`id_tipo_pk`, `nm_tipo`, `tp_ent_sai`) VALUES
(1, 'SALÁRIO', 1),
(2, 'CONTA DE ÁGUA', 2),
(3, 'CONTA DE LUZ', 2),
(4, 'PIX', 1);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw_entrada`
-- (Veja abaixo para a visão atual)
--
CREATE TABLE `vw_entrada` (
`id_entrada_pk` int(11)
,`nm_tipo` varchar(250)
,`dt_entrada` date
,`vl_entrada` float
,`ds_entrada` text
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw_entrada_saida`
-- (Veja abaixo para a visão atual)
--
CREATE TABLE `vw_entrada_saida` (
`id_saida_pk` int(11)
,`nm_tipo` varchar(250)
,`dt_saida` date
,`vl_saida` float
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para view `vw_saida`
-- (Veja abaixo para a visão atual)
--
CREATE TABLE `vw_saida` (
`id_saida_pk` int(11)
,`nm_tipo` varchar(250)
,`dt_saida` date
,`vl_saida` float
,`ds_saida` text
);

-- --------------------------------------------------------

--
-- Estrutura para view `vw_entrada`
--
DROP TABLE IF EXISTS `vw_entrada`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_entrada`  AS SELECT `a`.`id_entrada_pk` AS `id_entrada_pk`, `b`.`nm_tipo` AS `nm_tipo`, `a`.`dt_entrada` AS `dt_entrada`, `a`.`vl_entrada` AS `vl_entrada`, `a`.`ds_entrada` AS `ds_entrada` FROM (`tb_entrada` `a` join `tb_tipo` `b` on(`a`.`id_tipo_fk` = `b`.`id_tipo_pk`)) ;

-- --------------------------------------------------------

--
-- Estrutura para view `vw_entrada_saida`
--
DROP TABLE IF EXISTS `vw_entrada_saida`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_entrada_saida`  AS SELECT `a`.`id_saida_pk` AS `id_saida_pk`, `c`.`nm_tipo` AS `nm_tipo`, `a`.`dt_saida` AS `dt_saida`, `a`.`vl_saida` AS `vl_saida` FROM (`tb_saida` `a` join `tb_tipo` `c` on(`a`.`id_tipo_fk` = `c`.`id_tipo_pk`))union select `b`.`id_entrada_pk` AS `id_entrada_pk`,`d`.`nm_tipo` AS `nm_tipo`,`b`.`dt_entrada` AS `dt_entrada`,`b`.`vl_entrada` AS `vl_entrada` from (`tb_entrada` `b` join `tb_tipo` `d` on(`b`.`id_tipo_fk` = `d`.`id_tipo_pk`))  ;

-- --------------------------------------------------------

--
-- Estrutura para view `vw_saida`
--
DROP TABLE IF EXISTS `vw_saida`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_saida`  AS SELECT `a`.`id_saida_pk` AS `id_saida_pk`, `b`.`nm_tipo` AS `nm_tipo`, `a`.`dt_saida` AS `dt_saida`, `a`.`vl_saida` AS `vl_saida`, `a`.`ds_saida` AS `ds_saida` FROM (`tb_saida` `a` join `tb_tipo` `b` on(`a`.`id_tipo_fk` = `b`.`id_tipo_pk`)) ;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `system_access_log`
--
ALTER TABLE `system_access_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_access_log_login_idx` (`login`),
  ADD KEY `sys_access_log_year_idx` (`login_year`),
  ADD KEY `sys_access_log_month_idx` (`login_month`),
  ADD KEY `sys_access_log_day_idx` (`login_day`);

--
-- Índices de tabela `system_access_notification_log`
--
ALTER TABLE `system_access_notification_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_access_notification_log_login_idx` (`login`);

--
-- Índices de tabela `system_change_log`
--
ALTER TABLE `system_change_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_change_log_login_idx` (`login`),
  ADD KEY `sys_change_log_date_idx` (`logdate`),
  ADD KEY `sys_change_log_year_idx` (`log_year`),
  ADD KEY `sys_change_log_month_idx` (`log_month`),
  ADD KEY `sys_change_log_day_idx` (`log_day`),
  ADD KEY `sys_change_log_class_idx` (`class_name`),
  ADD KEY `sys_change_log_table_idx` (`tablename`);

--
-- Índices de tabela `system_document`
--
ALTER TABLE `system_document`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_document_user_idx` (`system_user_id`),
  ADD KEY `sys_document_folder_idx` (`system_folder_id`);

--
-- Índices de tabela `system_document_bookmark`
--
ALTER TABLE `system_document_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_document_bookmark_user_idx` (`system_user_id`),
  ADD KEY `sys_document_bookmark_document_idx` (`system_document_id`);

--
-- Índices de tabela `system_document_group`
--
ALTER TABLE `system_document_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_document_group_document_idx` (`document_id`),
  ADD KEY `sys_document_group_group_idx` (`system_group_id`);

--
-- Índices de tabela `system_document_user`
--
ALTER TABLE `system_document_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_document_user_document_idx` (`document_id`),
  ADD KEY `sys_document_user_user_idx` (`system_user_id`);

--
-- Índices de tabela `system_folder`
--
ALTER TABLE `system_folder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_folder_user_id_idx` (`system_user_id`),
  ADD KEY `sys_folder_name_idx` (`name`),
  ADD KEY `sys_folder_parend_id_idx` (`system_folder_parent_id`);

--
-- Índices de tabela `system_folder_bookmark`
--
ALTER TABLE `system_folder_bookmark`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_folder_bookmark_user_idx` (`system_user_id`),
  ADD KEY `sys_folder_bookmark_folder_idx` (`system_folder_id`);

--
-- Índices de tabela `system_folder_group`
--
ALTER TABLE `system_folder_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_folder_group_folder_idx` (`system_folder_id`),
  ADD KEY `sys_folder_group_group_idx` (`system_group_id`);

--
-- Índices de tabela `system_folder_user`
--
ALTER TABLE `system_folder_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_folder_user_folder_idx` (`system_folder_id`),
  ADD KEY `sys_folder_user_user_idx` (`system_user_id`);

--
-- Índices de tabela `system_group`
--
ALTER TABLE `system_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_group_name_idx` (`name`);

--
-- Índices de tabela `system_group_program`
--
ALTER TABLE `system_group_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_group_program_program_idx` (`system_program_id`),
  ADD KEY `sys_group_program_group_idx` (`system_group_id`);

--
-- Índices de tabela `system_message`
--
ALTER TABLE `system_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_message_user_id_idx` (`system_user_id`),
  ADD KEY `sys_message_user_to_idx` (`system_user_to_id`);

--
-- Índices de tabela `system_message_tag`
--
ALTER TABLE `system_message_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_message_tag_msg_idx` (`system_message_id`);

--
-- Índices de tabela `system_notification`
--
ALTER TABLE `system_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_notification_user_id_idx` (`system_user_id`),
  ADD KEY `sys_notification_user_to_idx` (`system_user_to_id`);

--
-- Índices de tabela `system_post`
--
ALTER TABLE `system_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_post_user_idx` (`system_user_id`);

--
-- Índices de tabela `system_post_comment`
--
ALTER TABLE `system_post_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_post_comment_user_idx` (`system_user_id`),
  ADD KEY `sys_post_comment_post_idx` (`system_post_id`);

--
-- Índices de tabela `system_post_like`
--
ALTER TABLE `system_post_like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_post_like_user_idx` (`system_user_id`),
  ADD KEY `sys_post_like_post_idx` (`system_post_id`);

--
-- Índices de tabela `system_post_share_group`
--
ALTER TABLE `system_post_share_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_post_share_group_group_idx` (`system_group_id`),
  ADD KEY `sys_post_share_group_post_idx` (`system_post_id`);

--
-- Índices de tabela `system_post_tag`
--
ALTER TABLE `system_post_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_post_tag_post_idx` (`system_post_id`);

--
-- Índices de tabela `system_preference`
--
ALTER TABLE `system_preference`
  ADD KEY `sys_preference_id_idx` (`id`);

--
-- Índices de tabela `system_program`
--
ALTER TABLE `system_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_program_name_idx` (`name`),
  ADD KEY `sys_program_controller_idx` (`controller`);

--
-- Índices de tabela `system_program_method_role`
--
ALTER TABLE `system_program_method_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_program_method_role_program_idx` (`system_program_id`),
  ADD KEY `sys_program_method_role_role_idx` (`system_role_id`);

--
-- Índices de tabela `system_request_log`
--
ALTER TABLE `system_request_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_request_log_login_idx` (`login`),
  ADD KEY `sys_request_log_date_idx` (`logdate`),
  ADD KEY `sys_request_log_year_idx` (`log_year`),
  ADD KEY `sys_request_log_month_idx` (`log_month`),
  ADD KEY `sys_request_log_day_idx` (`log_day`),
  ADD KEY `sys_request_log_class_idx` (`class_name`),
  ADD KEY `sys_request_log_method_idx` (`class_method`);

--
-- Índices de tabela `system_role`
--
ALTER TABLE `system_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_role_name_idx` (`name`);

--
-- Índices de tabela `system_schedule`
--
ALTER TABLE `system_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `system_schedule_log`
--
ALTER TABLE `system_schedule_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_schedule_log_class_idx` (`class_name`),
  ADD KEY `sys_schedule_log_method_idx` (`method`);

--
-- Índices de tabela `system_sql_changes`
--
ALTER TABLE `system_sql_changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_sqlchanges_dbname_idx` (`db_name`),
  ADD KEY `sys_sqlchanges_sqldate_idx` (`sql_date`),
  ADD KEY `sys_sqlchanges_sqlhash_idx` (`sql_hash`);

--
-- Índices de tabela `system_sql_log`
--
ALTER TABLE `system_sql_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_sql_log_login_idx` (`login`),
  ADD KEY `sys_sql_log_date_idx` (`logdate`),
  ADD KEY `sys_sql_log_database_idx` (`database_name`),
  ADD KEY `sys_sql_log_class_idx` (`class_name`),
  ADD KEY `sys_sql_log_year_idx` (`log_year`),
  ADD KEY `sys_sql_log_month_idx` (`log_month`),
  ADD KEY `sys_sql_log_day_idx` (`log_day`);

--
-- Índices de tabela `system_unit`
--
ALTER TABLE `system_unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_unit_name_idx` (`name`);

--
-- Índices de tabela `system_users`
--
ALTER TABLE `system_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_user_program_idx` (`frontpage_id`),
  ADD KEY `sys_users_name_idx` (`name`);

--
-- Índices de tabela `system_user_group`
--
ALTER TABLE `system_user_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_user_group_group_idx` (`system_group_id`),
  ADD KEY `sys_user_group_user_idx` (`system_user_id`);

--
-- Índices de tabela `system_user_old_password`
--
ALTER TABLE `system_user_old_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_user_old_password_user_idx` (`system_user_id`);

--
-- Índices de tabela `system_user_program`
--
ALTER TABLE `system_user_program`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_user_program_program_idx` (`system_program_id`),
  ADD KEY `sys_user_program_user_idx` (`system_user_id`);

--
-- Índices de tabela `system_user_role`
--
ALTER TABLE `system_user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_user_role_user_idx` (`system_user_id`),
  ADD KEY `sys_user_role_role_idx` (`system_role_id`);

--
-- Índices de tabela `system_user_unit`
--
ALTER TABLE `system_user_unit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_user_unit_user_idx` (`system_user_id`),
  ADD KEY `sys_user_unit_unit_idx` (`system_unit_id`);

--
-- Índices de tabela `system_wiki_page`
--
ALTER TABLE `system_wiki_page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_wiki_page_user_idx` (`system_user_id`);

--
-- Índices de tabela `system_wiki_share_group`
--
ALTER TABLE `system_wiki_share_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_wiki_share_group_group_idx` (`system_group_id`),
  ADD KEY `sys_wiki_share_group_page_idx` (`system_wiki_page_id`);

--
-- Índices de tabela `system_wiki_tag`
--
ALTER TABLE `system_wiki_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sys_wiki_tag_page_idx` (`system_wiki_page_id`);

--
-- Índices de tabela `tb_entrada`
--
ALTER TABLE `tb_entrada`
  ADD PRIMARY KEY (`id_entrada_pk`);

--
-- Índices de tabela `tb_saida`
--
ALTER TABLE `tb_saida`
  ADD PRIMARY KEY (`id_saida_pk`);

--
-- Índices de tabela `tb_tipo`
--
ALTER TABLE `tb_tipo`
  ADD PRIMARY KEY (`id_tipo_pk`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_entrada`
--
ALTER TABLE `tb_entrada`
  MODIFY `id_entrada_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_saida`
--
ALTER TABLE `tb_saida`
  MODIFY `id_saida_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_tipo`
--
ALTER TABLE `tb_tipo`
  MODIFY `id_tipo_pk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `system_group_program`
--
ALTER TABLE `system_group_program`
  ADD CONSTRAINT `system_group_program_ibfk_1` FOREIGN KEY (`system_group_id`) REFERENCES `system_group` (`id`),
  ADD CONSTRAINT `system_group_program_ibfk_2` FOREIGN KEY (`system_program_id`) REFERENCES `system_program` (`id`);

--
-- Restrições para tabelas `system_program_method_role`
--
ALTER TABLE `system_program_method_role`
  ADD CONSTRAINT `system_program_method_role_ibfk_1` FOREIGN KEY (`system_program_id`) REFERENCES `system_program` (`id`),
  ADD CONSTRAINT `system_program_method_role_ibfk_2` FOREIGN KEY (`system_role_id`) REFERENCES `system_role` (`id`);

--
-- Restrições para tabelas `system_users`
--
ALTER TABLE `system_users`
  ADD CONSTRAINT `system_users_ibfk_1` FOREIGN KEY (`frontpage_id`) REFERENCES `system_program` (`id`);

--
-- Restrições para tabelas `system_user_group`
--
ALTER TABLE `system_user_group`
  ADD CONSTRAINT `system_user_group_ibfk_1` FOREIGN KEY (`system_user_id`) REFERENCES `system_users` (`id`),
  ADD CONSTRAINT `system_user_group_ibfk_2` FOREIGN KEY (`system_group_id`) REFERENCES `system_group` (`id`);

--
-- Restrições para tabelas `system_user_old_password`
--
ALTER TABLE `system_user_old_password`
  ADD CONSTRAINT `system_user_old_password_ibfk_1` FOREIGN KEY (`system_user_id`) REFERENCES `system_users` (`id`);

--
-- Restrições para tabelas `system_user_program`
--
ALTER TABLE `system_user_program`
  ADD CONSTRAINT `system_user_program_ibfk_1` FOREIGN KEY (`system_user_id`) REFERENCES `system_users` (`id`),
  ADD CONSTRAINT `system_user_program_ibfk_2` FOREIGN KEY (`system_program_id`) REFERENCES `system_program` (`id`);

--
-- Restrições para tabelas `system_user_role`
--
ALTER TABLE `system_user_role`
  ADD CONSTRAINT `system_user_role_ibfk_1` FOREIGN KEY (`system_user_id`) REFERENCES `system_users` (`id`),
  ADD CONSTRAINT `system_user_role_ibfk_2` FOREIGN KEY (`system_role_id`) REFERENCES `system_role` (`id`);

--
-- Restrições para tabelas `system_user_unit`
--
ALTER TABLE `system_user_unit`
  ADD CONSTRAINT `system_user_unit_ibfk_1` FOREIGN KEY (`system_user_id`) REFERENCES `system_users` (`id`),
  ADD CONSTRAINT `system_user_unit_ibfk_2` FOREIGN KEY (`system_unit_id`) REFERENCES `system_unit` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
