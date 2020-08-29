-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 29, 2020 at 05:16 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sportdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `actividades`
--

CREATE TABLE `actividades` (
  `id` int(10) UNSIGNED NOT NULL,
  `FECHA` date NOT NULL,
  `HORA` time(3) NOT NULL,
  `DURACION` int(11) NOT NULL,
  `OBSERVACIONES` longtext,
  `categoria` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ID_ACTIVIDAD` int(11) NOT NULL,
  `lugar` int(11) DEFAULT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `lugare` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actividades`
--

INSERT INTO `actividades` (`id`, `FECHA`, `HORA`, `DURACION`, `OBSERVACIONES`, `categoria`, `created_at`, `updated_at`, `ID_ACTIVIDAD`, `lugar`, `NOMBRE`, `lugare`) VALUES
(4, '2020-07-30', '10:00:00.000', 2, 'hidratacion\npuntualidad', 3, '2020-07-27 13:18:56', '2020-07-27 13:18:56', 2, NULL, 'entrenamiento', 20),
(5, '2020-07-30', '12:00:00.000', 2, 'hidratacion\npuntualidad', 4, '2020-07-27 13:19:26', '2020-07-27 13:19:26', 3, NULL, 'entrenamiento', 21),
(6, '2020-07-30', '14:00:00.000', 2, 'hidratacion\npuntualidad', 5, '2020-07-27 13:20:12', '2020-07-27 13:20:12', 4, NULL, 'entrenamiento', 22),
(7, '2020-07-30', '16:00:00.000', 2, 'hidratacion\npuntualidad', 6, '2020-07-27 13:21:30', '2020-07-27 13:21:30', 5, NULL, 'entrenamiento', 23),
(8, '2020-07-31', '08:00:00.000', 2, 'hidratacion\npuntualidad', 7, '2020-07-27 15:44:14', '2020-07-27 15:44:14', 6, NULL, 'test rendimiento', 24),
(9, '2020-07-31', '12:00:00.000', 2, 'hidratacion y puntualidad', 2, '2020-07-27 15:45:44', '2020-07-27 15:45:44', 7, NULL, 'test rendimiento', 19),
(10, '2020-07-31', '02:00:00.000', 2, 'hidratacion y puntualidad', 3, '2020-07-27 15:46:30', '2020-07-27 15:46:30', 8, NULL, 'test rendimiento', 20),
(11, '2020-07-31', '04:00:00.000', 2, 'hidratacion y puntualidad', 4, '2020-07-27 15:48:20', '2020-07-27 15:48:20', 9, NULL, 'test rendimiento', 21),
(12, '2020-07-31', '18:00:00.000', 2, 'hidratacion y puntualidad', 6, '2020-07-27 15:50:18', '2020-07-27 15:50:18', 10, NULL, 'test rendimiento', 19),
(13, '2020-08-31', '09:00:00.000', 2, 'hidratacion', 2, '2020-08-29 07:24:11', '2020-08-29 07:24:11', 1, NULL, 'entrenamiento ', 19),
(16, '2020-08-31', '13:00:00.000', 2, 'hidratacion uniforme', 2, '2020-08-29 07:25:17', '2020-08-29 07:25:17', 15, NULL, 'entrenamiento', 19),
(17, '2020-09-01', '08:00:00.000', 2, 'hidratacion puntualidad', 2, '2020-08-29 07:26:04', '2020-08-29 07:26:04', 16, NULL, 'entrenamiento', 19),
(18, '2020-09-02', '16:00:00.000', 2, 'hidratacion', 2, '2020-08-29 07:26:53', '2020-08-29 07:26:53', 17, NULL, 'entrenamiento', 19);

-- --------------------------------------------------------

--
-- Table structure for table `acudientes`
--

CREATE TABLE `acudientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `ID_ACUDIENTE` int(11) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `DIRECCION` varchar(255) DEFAULT NULL,
  `TELEFONO` varchar(255) NOT NULL,
  `CORREO` varchar(255) DEFAULT NULL,
  `ESTADO` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `APELLIDO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acudientes`
--

INSERT INTO `acudientes` (`id`, `ID_ACUDIENTE`, `NOMBRE`, `DIRECCION`, `TELEFONO`, `CORREO`, `ESTADO`, `created_at`, `updated_at`, `APELLIDO`) VALUES
(1, 1, 'Milciades', ' far far away 2', '3107654321', 'milciades@strapi.io', 1, '2020-07-27 04:10:28', '2020-07-27 04:10:28', 'Van Basten'),
(2, 2, 'agustin', 'far far away 3', '3117654321', 'agustin@strapi.o', 1, '2020-07-27 05:03:07', '2020-07-27 05:03:07', 'lopera'),
(3, 3, 'memo', 'far far away 4', '3127654321', 'memo@strapi.io', 1, '2020-07-27 05:05:06', '2020-07-27 05:05:06', 'marin'),
(5, 4, 'checho', 'far far away 5', '3137654321', 'checho@strapi.io', 1, '2020-07-27 05:54:09', '2020-07-27 05:54:09', 'pachanga'),
(6, 5, 'celso', 'far far away 6', '3147654321', 'celso@strapi.io', 1, '2020-07-27 05:57:01', '2020-07-27 05:57:01', 'fruta');

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(10) UNSIGNED NOT NULL,
  `ID_ALUMNO` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `NOMBRE` varchar(255) NOT NULL,
  `APELLIDO` varchar(255) NOT NULL,
  `DIRECCION` varchar(255) NOT NULL,
  `TELEFONO` varchar(255) NOT NULL,
  `CORREO` varchar(255) NOT NULL,
  `ESTADO` tinyint(1) NOT NULL,
  `FECHA_NACIMIENTO` date NOT NULL,
  `FECHA_INGRESO` date NOT NULL,
  `acudiente` int(11) DEFAULT NULL,
  `categoria` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` (`id`, `ID_ALUMNO`, `created_at`, `updated_at`, `NOMBRE`, `APELLIDO`, `DIRECCION`, `TELEFONO`, `CORREO`, `ESTADO`, `FECHA_NACIMIENTO`, `FECHA_INGRESO`, `acudiente`, `categoria`) VALUES
(1, 1, '2020-07-27 06:44:47', '2020-07-27 06:44:47', 'carlos', 'moran', 'far far far away', '29348756923', 'carlos@strapi.io', 1, '2014-08-05', '2018-10-03', 1, 2),
(2, 2, '2020-07-27 06:46:26', '2020-07-27 06:46:26', 'alexandra ', 'valencia ocampo', 'far far away', '28374192837', 'alexandra@strapi.io', 1, '2009-02-11', '2020-02-20', 2, 3),
(3, 3, '2020-07-27 06:47:48', '2020-07-27 06:47:48', 'benito', 'reyes', 'far far away', '87346192834', 'benito@strapi.io', 1, '2007-04-04', '2019-08-01', 3, 4),
(4, 4, '2020-07-27 06:49:09', '2020-07-27 06:49:09', 'edilberto', 'morales', 'far far away', '2384759', 'edilberto@strapi.io', 1, '2012-01-04', '2019-10-02', 5, 5),
(5, 5, '2020-07-27 06:50:29', '2020-07-27 06:50:29', 'nataly', 'buitrago', 'far far away', '02348957', 'nataly@stapi.io', 1, '2012-10-25', '2020-03-11', 1, 6),
(6, 6, '2020-07-27 06:52:25', '2020-07-27 06:52:25', 'yohan ', 'villa', 'far far away', '09825720345', 'yohan@strapi.io', 1, '2007-08-16', '2019-05-23', 2, 7),
(7, 7, '2020-07-27 06:54:12', '2020-07-27 06:54:12', 'johana', 'lopez', 'far far away', '7348921', 'johana@strapi.op', 1, '2017-09-06', '2020-03-18', 3, 8),
(8, 8, '2020-07-27 06:56:47', '2020-07-27 06:56:47', 'pablo', 'marulanda', 'far far away', '23489501', 'pablo@strapi.io', 1, '2015-10-13', '2019-01-17', 5, 9);

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ID_CATEGORIA` int(11) NOT NULL,
  `NOMBRE_CATEGORIA` varchar(255) NOT NULL,
  `deporte` int(11) DEFAULT NULL,
  `entrenadore` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `created_at`, `updated_at`, `ID_CATEGORIA`, `NOMBRE_CATEGORIA`, `deporte`, `entrenadore`) VALUES
(2, '2020-07-26 23:29:32', '2020-07-26 23:29:32', 10, 'infantil', 5, 1),
(3, '2020-07-27 02:37:32', '2020-07-27 02:37:32', 20, 'infantil femenino', 5, 1),
(4, '2020-07-27 02:38:54', '2020-07-27 02:38:54', 30, 'juvenil basico hombres', 5, 1),
(5, '2020-07-27 02:39:16', '2020-07-27 02:39:16', 40, 'juvenil intermedio hombres', 5, 1),
(6, '2020-07-27 02:39:47', '2020-07-27 02:39:47', 50, 'juvenil avanzado hombres', 5, 1),
(7, '2020-07-27 02:40:24', '2020-07-27 02:40:24', 60, 'infantil niñas', 4, 1),
(8, '2020-07-27 02:40:39', '2020-07-27 02:40:39', 70, 'infantil niños', 4, 1),
(9, '2020-07-27 02:41:12', '2020-07-27 02:41:12', 80, 'juvenil femenino', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categorias_restaurantes__restaurantes_categorias`
--

CREATE TABLE `categorias_restaurantes__restaurantes_categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  `restaurante_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorias_restaurantes__restaurantes_categorias`
--

INSERT INTO `categorias_restaurantes__restaurantes_categorias` (`id`, `categoria_id`, `restaurante_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `core_store`
--

CREATE TABLE `core_store` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `core_store`
--

INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'db_model_strapi_webhooks', '{\"name\":{\"type\":\"string\"},\"url\":{\"type\":\"text\"},\"headers\":{\"type\":\"json\"},\"events\":{\"type\":\"json\"},\"enabled\":{\"type\":\"boolean\"}}', 'object', NULL, NULL),
(2, 'db_model_users-permissions_permission', '{\"type\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"controller\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"enabled\":{\"type\":\"boolean\",\"required\":true,\"configurable\":false},\"policy\":{\"type\":\"string\",\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"permissions\",\"plugin\":\"users-permissions\",\"configurable\":false}}', 'object', NULL, NULL),
(3, 'db_model_core_store', '{\"key\":{\"type\":\"string\"},\"value\":{\"type\":\"text\"},\"type\":{\"type\":\"string\"},\"environment\":{\"type\":\"string\"},\"tag\":{\"type\":\"string\"}}', 'object', NULL, NULL),
(4, 'db_model_upload_file', '{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"collection\":\"*\",\"filter\":\"field\",\"configurable\":false},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(5, 'db_model_strapi_administrator', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"required\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false}}', 'object', NULL, NULL),
(6, 'db_model_users-permissions_user', '{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"model\":\"role\",\"via\":\"users\",\"plugin\":\"users-permissions\",\"configurable\":false},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(7, 'db_model_upload_file_morph', '{\"upload_file_id\":{\"type\":\"integer\"},\"related_id\":{\"type\":\"integer\"},\"related_type\":{\"type\":\"text\"},\"field\":{\"type\":\"text\"},\"order\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(8, 'db_model_users-permissions_role', '{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"collection\":\"permission\",\"via\":\"role\",\"plugin\":\"users-permissions\",\"configurable\":false,\"isVirtual\":true},\"users\":{\"collection\":\"user\",\"via\":\"role\",\"configurable\":false,\"plugin\":\"users-permissions\",\"isVirtual\":true}}', 'object', NULL, NULL),
(9, 'plugin_users-permissions_grant', '{\"email\":{\"enabled\":true,\"icon\":\"envelope\"},\"discord\":{\"enabled\":false,\"icon\":\"discord\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"enabled\":false,\"icon\":\"facebook-square\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"enabled\":false,\"icon\":\"google\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"enabled\":false,\"icon\":\"github\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"enabled\":false,\"icon\":\"windows\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"enabled\":false,\"icon\":\"twitter\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitter/callback\"},\"instagram\":{\"enabled\":false,\"icon\":\"instagram\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/instagram/callback\"},\"vk\":{\"enabled\":false,\"icon\":\"vk\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"enabled\":false,\"icon\":\"twitch\",\"key\":\"\",\"secret\":\"\",\"callback\":\"/auth/twitch/callback\",\"scope\":[\"user:read:email\"]}}', 'object', '', ''),
(10, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true}', 'object', 'development', ''),
(11, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.permission', '{\"uid\":\"plugins::users-permissions.permission\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"type\",\"defaultSortBy\":\"type\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"controller\":{\"edit\":{\"label\":\"Controller\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Controller\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"Action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Action\",\"searchable\":true,\"sortable\":true}},\"enabled\":{\"edit\":{\"label\":\"Enabled\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Enabled\",\"searchable\":true,\"sortable\":true}},\"policy\":{\"edit\":{\"label\":\"Policy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Policy\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"type\",\"controller\",\"action\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"controller\",\"size\":6}],[{\"name\":\"action\",\"size\":6},{\"name\":\"enabled\",\"size\":4}],[{\"name\":\"policy\",\"size\":6}]]}}', 'object', '', ''),
(12, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.role', '{\"uid\":\"plugins::users-permissions.role\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"Description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"Type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"Permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"type\"},\"list\":{\"label\":\"Permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"Users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"Users\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"editRelations\":[\"permissions\",\"users\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6}]]}}', 'object', '', ''),
(13, 'plugin_content_manager_configuration_content_types::plugins::upload.file', '{\"uid\":\"plugins::upload.file\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"Name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"AlternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"AlternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"Caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"Width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"Height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"Formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"Hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"Ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"Mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"Size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"Url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"PreviewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PreviewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"Provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Provider_metadata\",\"searchable\":false,\"sortable\":false}},\"related\":{\"edit\":{\"label\":\"Related\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"id\"},\"list\":{\"label\":\"Related\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"editRelations\":[\"related\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}]]}}', 'object', '', ''),
(14, 'plugin_content_manager_configuration_content_types::strapi::administrator', '{\"uid\":\"strapi::administrator\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"blocked\"],\"editRelations\":[],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(15, 'plugin_content_manager_configuration_content_types::plugins::users-permissions.user', '{\"uid\":\"plugins::users-permissions.user\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"Username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"Email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"Provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"Password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"ResetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"ResetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"Confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"Blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"Blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"Role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"Role\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"editRelations\":[\"role\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4}]]}}', 'object', '', ''),
(16, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', '', ''),
(17, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_confirmation_redirection\":\"/admin/admin\",\"email_reset_password\":\"/admin/admin\",\"default_role\":\"authenticated\"}', 'object', '', ''),
(18, 'db_model_restaurantes', '{\"nombre\":{\"type\":\"string\",\"unique\":true,\"required\":true},\"descripcion\":{\"type\":\"richtext\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL),
(20, 'db_model_categorias', '{\"ID_CATEGORIA\":{\"type\":\"integer\",\"required\":true,\"unique\":true},\"NOMBRE_CATEGORIA\":{\"type\":\"string\",\"required\":true},\"deporte\":{\"model\":\"deportes\",\"via\":\"categorias\"},\"alumnos\":{\"collection\":\"alumnos\",\"via\":\"categoria\",\"isVirtual\":true},\"entrenadore\":{\"model\":\"entrenador\",\"via\":\"categorias\"},\"actividades\":{\"via\":\"categoria\",\"collection\":\"actividades\",\"isVirtual\":true}}', 'object', NULL, NULL),
(21, 'db_model_categorias_restaurantes__restaurantes_categorias', '{\"categoria_id\":{\"type\":\"integer\"},\"restaurante_id\":{\"type\":\"integer\"}}', 'object', NULL, NULL),
(23, 'db_model_escuelas', '{\"NOMBRE_ESCUELA\":{\"type\":\"string\",\"required\":true},\"DIRECCION\":{\"type\":\"string\",\"required\":true},\"TELEFONO\":{\"type\":\"string\",\"required\":true},\"FAX\":{\"type\":\"string\"},\"ID_ESCUELA\":{\"type\":\"string\"},\"deportes\":{\"via\":\"escuela\",\"collection\":\"deportes\",\"isVirtual\":true}}', 'object', NULL, NULL),
(24, 'plugin_content_manager_configuration_content_types::application::escuelas.escuelas', '{\"uid\":\"application::escuelas.escuelas\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"ID_ESCUELA\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"NOMBRE_ESCUELA\":{\"edit\":{\"label\":\"NOMBRE_ESCUELA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NOMBRE_ESCUELA\",\"searchable\":true,\"sortable\":true}},\"DIRECCION\":{\"edit\":{\"label\":\"DIRECCION\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DIRECCION\",\"searchable\":true,\"sortable\":true}},\"TELEFONO\":{\"edit\":{\"label\":\"TELEFONO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TELEFONO\",\"searchable\":true,\"sortable\":true}},\"FAX\":{\"edit\":{\"label\":\"FAX\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FAX\",\"searchable\":true,\"sortable\":true}},\"ID_ESCUELA\":{\"edit\":{\"label\":\"ID_ESCUELA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ID_ESCUELA\",\"searchable\":true,\"sortable\":true}},\"deportes\":{\"edit\":{\"label\":\"Deportes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_DEPORTE\"},\"list\":{\"label\":\"Deportes\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"NOMBRE_ESCUELA\",\"DIRECCION\",\"ID_ESCUELA\"],\"edit\":[[{\"name\":\"ID_ESCUELA\",\"size\":6},{\"name\":\"NOMBRE_ESCUELA\",\"size\":6}],[{\"name\":\"DIRECCION\",\"size\":6},{\"name\":\"TELEFONO\",\"size\":6}],[{\"name\":\"FAX\",\"size\":6}]],\"editRelations\":[\"deportes\"]}}', 'object', '', ''),
(25, 'db_model_deportes', '{\"ID_DEPORTE\":{\"type\":\"integer\",\"required\":true,\"unique\":true},\"NOMBRE\":{\"type\":\"string\",\"required\":true},\"escuela\":{\"model\":\"escuelas\",\"via\":\"deportes\"},\"categorias\":{\"via\":\"deporte\",\"collection\":\"categorias\",\"isVirtual\":true}}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::application::deportes.deportes', '{\"uid\":\"application::deportes.deportes\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"ID_DEPORTE\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"ID_DEPORTE\":{\"edit\":{\"label\":\"ID_DEPORTE\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ID_DEPORTE\",\"searchable\":true,\"sortable\":true}},\"NOMBRE\":{\"edit\":{\"label\":\"NOMBRE\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NOMBRE\",\"searchable\":true,\"sortable\":true}},\"escuela\":{\"edit\":{\"label\":\"Escuela\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_ESCUELA\"},\"list\":{\"label\":\"Escuela\",\"searchable\":false,\"sortable\":false}},\"categorias\":{\"edit\":{\"label\":\"Categorias\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_CATEGORIA\"},\"list\":{\"label\":\"Categorias\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"ID_DEPORTE\",\"NOMBRE\"],\"edit\":[[{\"name\":\"ID_DEPORTE\",\"size\":4}],[{\"name\":\"NOMBRE\",\"size\":6}]],\"editRelations\":[\"escuela\",\"categorias\"]}}', 'object', '', ''),
(27, 'db_model_entrenadors', '{\"ID_ENTRENADOR\":{\"type\":\"integer\",\"required\":true,\"unique\":true},\"NOMBRE\":{\"type\":\"string\",\"required\":true},\"APELLIDO\":{\"type\":\"string\",\"required\":true},\"DIRECCION\":{\"type\":\"string\"},\"TELEFONO\":{\"type\":\"string\",\"required\":true},\"CORREO\":{\"type\":\"email\",\"required\":true},\"SALARIO\":{\"type\":\"integer\",\"required\":true},\"FECHA_CONTRATACION\":{\"type\":\"date\",\"required\":true},\"ESTADO\":{\"type\":\"boolean\",\"required\":true},\"categorias\":{\"via\":\"entrenadore\",\"collection\":\"categorias\",\"isVirtual\":true}}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::application::entrenador.entrenador', '{\"uid\":\"application::entrenador.entrenador\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"ID_ENTRENADOR\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"categorias\":{\"edit\":{\"label\":\"Categorias\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_CATEGORIA\"},\"list\":{\"label\":\"Categorias\",\"searchable\":false,\"sortable\":false}},\"ESTADO\":{\"edit\":{\"label\":\"ESTADO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ESTADO\",\"searchable\":true,\"sortable\":true}},\"NOMBRE\":{\"edit\":{\"label\":\"NOMBRE\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NOMBRE\",\"searchable\":true,\"sortable\":true}},\"DIRECCION\":{\"edit\":{\"label\":\"DIRECCION\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DIRECCION\",\"searchable\":true,\"sortable\":true}},\"TELEFONO\":{\"edit\":{\"label\":\"TELEFONO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TELEFONO\",\"searchable\":true,\"sortable\":true}},\"SALARIO\":{\"edit\":{\"label\":\"SALARIO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"SALARIO\",\"searchable\":true,\"sortable\":true}},\"FECHA_CONTRATACION\":{\"edit\":{\"label\":\"FECHA_CONTRATACION\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FECHA_CONTRATACION\",\"searchable\":true,\"sortable\":true}},\"CORREO\":{\"edit\":{\"label\":\"CORREO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CORREO\",\"searchable\":true,\"sortable\":true}},\"ID_ENTRENADOR\":{\"edit\":{\"label\":\"ID_ENTRENADOR\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ID_ENTRENADOR\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"APELLIDO\":{\"edit\":{\"label\":\"APELLIDO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"APELLIDO\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"ID_ENTRENADOR\",\"NOMBRE\",\"APELLIDO\"],\"edit\":[[{\"name\":\"ID_ENTRENADOR\",\"size\":4},{\"name\":\"NOMBRE\",\"size\":6}],[{\"name\":\"APELLIDO\",\"size\":6},{\"name\":\"DIRECCION\",\"size\":6}],[{\"name\":\"TELEFONO\",\"size\":6},{\"name\":\"CORREO\",\"size\":6}],[{\"name\":\"SALARIO\",\"size\":4},{\"name\":\"FECHA_CONTRATACION\",\"size\":4},{\"name\":\"ESTADO\",\"size\":4}]],\"editRelations\":[\"categorias\"]}}', 'object', '', ''),
(29, 'db_model_acudientes', '{\"ID_ACUDIENTE\":{\"type\":\"integer\",\"required\":true,\"unique\":true},\"NOMBRE\":{\"type\":\"string\",\"required\":true},\"APELLIDO\":{\"type\":\"string\",\"required\":true},\"DIRECCION\":{\"type\":\"string\",\"required\":false},\"TELEFONO\":{\"type\":\"string\",\"required\":true},\"CORREO\":{\"type\":\"email\"},\"ESTADO\":{\"type\":\"boolean\",\"required\":true},\"alumnos\":{\"collection\":\"alumnos\",\"via\":\"acudiente\",\"isVirtual\":true}}', 'object', NULL, NULL),
(30, 'plugin_content_manager_configuration_content_types::application::acudiente.acudiente', '{\"uid\":\"application::acudiente.acudiente\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"ID_ACUDIENTE\",\"defaultSortBy\":\"NOMBRE\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"ESTADO\":{\"edit\":{\"label\":\"ESTADO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ESTADO\",\"searchable\":true,\"sortable\":true}},\"NOMBRE\":{\"edit\":{\"label\":\"NOMBRE\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NOMBRE\",\"searchable\":true,\"sortable\":true}},\"ID_ACUDIENTE\":{\"edit\":{\"label\":\"ID_ACUDIENTE\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ID_ACUDIENTE\",\"searchable\":true,\"sortable\":true}},\"alumnos\":{\"edit\":{\"label\":\"Alumnos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_ALUMNO\"},\"list\":{\"label\":\"Alumnos\",\"searchable\":false,\"sortable\":false}},\"DIRECCION\":{\"edit\":{\"label\":\"DIRECCION\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DIRECCION\",\"searchable\":true,\"sortable\":true}},\"TELEFONO\":{\"edit\":{\"label\":\"TELEFONO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TELEFONO\",\"searchable\":true,\"sortable\":true}},\"CORREO\":{\"edit\":{\"label\":\"CORREO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CORREO\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"APELLIDO\":{\"edit\":{\"label\":\"APELLIDO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"APELLIDO\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"NOMBRE\",\"ID_ACUDIENTE\",\"APELLIDO\"],\"edit\":[[{\"name\":\"ID_ACUDIENTE\",\"size\":4},{\"name\":\"NOMBRE\",\"size\":6}],[{\"name\":\"APELLIDO\",\"size\":6},{\"name\":\"DIRECCION\",\"size\":6}],[{\"name\":\"TELEFONO\",\"size\":6},{\"name\":\"CORREO\",\"size\":6}],[{\"name\":\"ESTADO\",\"size\":4}]],\"editRelations\":[\"alumnos\"]}}', 'object', '', ''),
(31, 'db_model_alumnos', '{\"ID_ALUMNO\":{\"type\":\"integer\",\"required\":true,\"unique\":true},\"NOMBRE\":{\"type\":\"string\",\"required\":true},\"APELLIDO\":{\"type\":\"string\",\"required\":true},\"DIRECCION\":{\"type\":\"string\",\"required\":true},\"TELEFONO\":{\"type\":\"string\",\"required\":true},\"CORREO\":{\"type\":\"email\",\"required\":true},\"FECHA_NACIMIENTO\":{\"type\":\"date\",\"required\":true},\"FECHA_INGRESO\":{\"type\":\"date\",\"required\":true},\"ESTADO\":{\"type\":\"boolean\",\"required\":true},\"categoria\":{\"via\":\"alumnos\",\"model\":\"categorias\"},\"acudiente\":{\"via\":\"alumnos\",\"model\":\"acudiente\"},\"valoraciones\":{\"via\":\"alumno\",\"collection\":\"valoracion\",\"isVirtual\":true},\"mensualidades\":{\"via\":\"alumno\",\"collection\":\"mensualidades\",\"isVirtual\":true}}', 'object', NULL, NULL),
(32, 'plugin_content_manager_configuration_content_types::application::alumnos.alumnos', '{\"uid\":\"application::alumnos.alumnos\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"ID_ALUMNO\",\"defaultSortBy\":\"NOMBRE\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"ESTADO\":{\"edit\":{\"label\":\"ESTADO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ESTADO\",\"searchable\":true,\"sortable\":true}},\"ID_ALUMNO\":{\"edit\":{\"label\":\"ID_ALUMNO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ID_ALUMNO\",\"searchable\":true,\"sortable\":true}},\"NOMBRE\":{\"edit\":{\"label\":\"NOMBRE\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NOMBRE\",\"searchable\":true,\"sortable\":true}},\"mensualidades\":{\"edit\":{\"label\":\"Mensualidades\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_MENSUALIDAD\"},\"list\":{\"label\":\"Mensualidades\",\"searchable\":false,\"sortable\":false}},\"FECHA_INGRESO\":{\"edit\":{\"label\":\"FECHA_INGRESO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FECHA_INGRESO\",\"searchable\":true,\"sortable\":true}},\"DIRECCION\":{\"edit\":{\"label\":\"DIRECCION\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DIRECCION\",\"searchable\":true,\"sortable\":true}},\"valoraciones\":{\"edit\":{\"label\":\"Valoraciones\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_VALORACION\"},\"list\":{\"label\":\"Valoraciones\",\"searchable\":false,\"sortable\":false}},\"acudiente\":{\"edit\":{\"label\":\"Acudiente\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_ACUDIENTE\"},\"list\":{\"label\":\"Acudiente\",\"searchable\":false,\"sortable\":false}},\"categoria\":{\"edit\":{\"label\":\"Categoria\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_CATEGORIA\"},\"list\":{\"label\":\"Categoria\",\"searchable\":false,\"sortable\":false}},\"TELEFONO\":{\"edit\":{\"label\":\"TELEFONO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TELEFONO\",\"searchable\":true,\"sortable\":true}},\"CORREO\":{\"edit\":{\"label\":\"CORREO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CORREO\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"FECHA_NACIMIENTO\":{\"edit\":{\"label\":\"FECHA_NACIMIENTO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FECHA_NACIMIENTO\",\"searchable\":true,\"sortable\":true}},\"APELLIDO\":{\"edit\":{\"label\":\"APELLIDO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"APELLIDO\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"ID_ALUMNO\"],\"edit\":[[{\"name\":\"ID_ALUMNO\",\"size\":4}],[{\"name\":\"NOMBRE\",\"size\":6}],[{\"name\":\"APELLIDO\",\"size\":6},{\"name\":\"DIRECCION\",\"size\":6}],[{\"name\":\"TELEFONO\",\"size\":6},{\"name\":\"CORREO\",\"size\":6}],[{\"name\":\"FECHA_NACIMIENTO\",\"size\":4}],[{\"name\":\"FECHA_INGRESO\",\"size\":4},{\"name\":\"ESTADO\",\"size\":4}]],\"editRelations\":[\"categoria\",\"acudiente\",\"valoraciones\",\"mensualidades\"]}}', 'object', '', ''),
(33, 'plugin_content_manager_configuration_content_types::application::categorias.categorias', '{\"uid\":\"application::categorias.categorias\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"ID_CATEGORIA\",\"defaultSortBy\":\"NOMBRE_CATEGORIA\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"ID_CATEGORIA\":{\"edit\":{\"label\":\"ID_CATEGORIA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ID_CATEGORIA\",\"searchable\":true,\"sortable\":true}},\"NOMBRE_CATEGORIA\":{\"edit\":{\"label\":\"NOMBRE_CATEGORIA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NOMBRE_CATEGORIA\",\"searchable\":true,\"sortable\":true}},\"deporte\":{\"edit\":{\"label\":\"Deporte\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_DEPORTE\"},\"list\":{\"label\":\"Deporte\",\"searchable\":false,\"sortable\":false}},\"alumnos\":{\"edit\":{\"label\":\"Alumnos\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_ALUMNO\"},\"list\":{\"label\":\"Alumnos\",\"searchable\":false,\"sortable\":false}},\"entrenadore\":{\"edit\":{\"label\":\"Entrenadore\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_ENTRENADOR\"},\"list\":{\"label\":\"Entrenadore\",\"searchable\":false,\"sortable\":false}},\"actividades\":{\"edit\":{\"label\":\"Actividades\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_ACTIVIDAD\"},\"list\":{\"label\":\"Actividades\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"ID_CATEGORIA\"],\"edit\":[[{\"name\":\"ID_CATEGORIA\",\"size\":4},{\"name\":\"NOMBRE_CATEGORIA\",\"size\":6}]],\"editRelations\":[\"deporte\",\"alumnos\",\"entrenadore\",\"actividades\"]}}', 'object', '', ''),
(34, 'db_model_valoracions', '{\"ID_VALORACION\":{\"type\":\"integer\",\"required\":true,\"unique\":true},\"NOMBRE\":{\"type\":\"string\",\"required\":true},\"VALOR\":{\"type\":\"string\",\"required\":true},\"alumno\":{\"model\":\"alumnos\",\"via\":\"valoraciones\"}}', 'object', NULL, NULL),
(35, 'plugin_content_manager_configuration_content_types::application::valoracion.valoracion', '{\"uid\":\"application::valoracion.valoracion\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"ID_VALORACION\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"ID_VALORACION\":{\"edit\":{\"label\":\"ID_VALORACION\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ID_VALORACION\",\"searchable\":true,\"sortable\":true}},\"NOMBRE\":{\"edit\":{\"label\":\"NOMBRE\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NOMBRE\",\"searchable\":true,\"sortable\":true}},\"VALOR\":{\"edit\":{\"label\":\"VALOR\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"VALOR\",\"searchable\":true,\"sortable\":true}},\"alumno\":{\"edit\":{\"label\":\"Alumno\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_ALUMNO\"},\"list\":{\"label\":\"Alumno\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"ID_VALORACION\",\"NOMBRE\"],\"edit\":[[{\"name\":\"ID_VALORACION\",\"size\":4}],[{\"name\":\"NOMBRE\",\"size\":6},{\"name\":\"VALOR\",\"size\":6}]],\"editRelations\":[\"alumno\"]}}', 'object', '', ''),
(36, 'db_model_movimientos', '{\"ID_ESCUELA\":{\"type\":\"integer\",\"required\":true},\"FECHA\":{\"type\":\"date\",\"required\":true},\"NOMBRE\":{\"type\":\"string\",\"required\":true},\"VALOR\":{\"type\":\"integer\",\"required\":true},\"OBSERVACION\":{\"type\":\"text\",\"required\":true},\"TIPO\":{\"type\":\"string\",\"required\":true}}', 'object', NULL, NULL),
(37, 'plugin_content_manager_configuration_content_types::application::movimientos.movimientos', '{\"uid\":\"application::movimientos.movimientos\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"ID_ESCUELA\":{\"edit\":{\"label\":\"ID_ESCUELA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ID_ESCUELA\",\"searchable\":true,\"sortable\":true}},\"FECHA\":{\"edit\":{\"label\":\"FECHA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FECHA\",\"searchable\":true,\"sortable\":true}},\"NOMBRE\":{\"edit\":{\"label\":\"NOMBRE\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NOMBRE\",\"searchable\":true,\"sortable\":true}},\"VALOR\":{\"edit\":{\"label\":\"VALOR\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"VALOR\",\"searchable\":true,\"sortable\":true}},\"OBSERVACION\":{\"edit\":{\"label\":\"OBSERVACION\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"OBSERVACION\",\"searchable\":true,\"sortable\":true}},\"TIPO\":{\"edit\":{\"label\":\"TIPO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"TIPO\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"ID_ESCUELA\",\"FECHA\"],\"edit\":[[{\"name\":\"ID_ESCUELA\",\"size\":4},{\"name\":\"FECHA\",\"size\":4}],[{\"name\":\"NOMBRE\",\"size\":6},{\"name\":\"VALOR\",\"size\":4}],[{\"name\":\"OBSERVACION\",\"size\":6},{\"name\":\"TIPO\",\"size\":6}]],\"editRelations\":[]}}', 'object', '', ''),
(38, 'db_model_inventarios', '{\"ID_OBJETO\":{\"type\":\"integer\",\"required\":true,\"unique\":true},\"ID_ESCUELA\":{\"type\":\"integer\",\"required\":true},\"NOMBRE_OBJETO\":{\"type\":\"text\",\"required\":true},\"CANTIDAD_ACTIVOS\":{\"type\":\"integer\",\"required\":true},\"CANTIDAD_BAJAS\":{\"type\":\"integer\"},\"VALOR_UNITARIO\":{\"type\":\"integer\",\"required\":true},\"FECHA_INGRESO\":{\"type\":\"date\",\"required\":true}}', 'object', NULL, NULL),
(39, 'plugin_content_manager_configuration_content_types::application::inventarios.inventarios', '{\"uid\":\"application::inventarios.inventarios\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"ID_OBJETO\":{\"edit\":{\"label\":\"ID_OBJETO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ID_OBJETO\",\"searchable\":true,\"sortable\":true}},\"ID_ESCUELA\":{\"edit\":{\"label\":\"ID_ESCUELA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ID_ESCUELA\",\"searchable\":true,\"sortable\":true}},\"NOMBRE_OBJETO\":{\"edit\":{\"label\":\"NOMBRE_OBJETO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NOMBRE_OBJETO\",\"searchable\":true,\"sortable\":true}},\"CANTIDAD_ACTIVOS\":{\"edit\":{\"label\":\"CANTIDAD_ACTIVOS\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CANTIDAD_ACTIVOS\",\"searchable\":true,\"sortable\":true}},\"CANTIDAD_BAJAS\":{\"edit\":{\"label\":\"CANTIDAD_BAJAS\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"CANTIDAD_BAJAS\",\"searchable\":true,\"sortable\":true}},\"VALOR_UNITARIO\":{\"edit\":{\"label\":\"VALOR_UNITARIO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"VALOR_UNITARIO\",\"searchable\":true,\"sortable\":true}},\"FECHA_INGRESO\":{\"edit\":{\"label\":\"FECHA_INGRESO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FECHA_INGRESO\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"ID_OBJETO\",\"ID_ESCUELA\",\"NOMBRE_OBJETO\"],\"edit\":[[{\"name\":\"ID_OBJETO\",\"size\":4},{\"name\":\"ID_ESCUELA\",\"size\":4}],[{\"name\":\"NOMBRE_OBJETO\",\"size\":6},{\"name\":\"CANTIDAD_ACTIVOS\",\"size\":4}],[{\"name\":\"CANTIDAD_BAJAS\",\"size\":4},{\"name\":\"VALOR_UNITARIO\",\"size\":4},{\"name\":\"FECHA_INGRESO\",\"size\":4}]],\"editRelations\":[]}}', 'object', '', ''),
(40, 'db_model_lugares', '{\"ID_LUGAR\":{\"type\":\"integer\",\"required\":true,\"unique\":true},\"NOMBRE_LUGAR\":{\"type\":\"string\",\"required\":true},\"actividades\":{\"collection\":\"actividades\",\"via\":\"lugare\",\"isVirtual\":true}}', 'object', NULL, NULL),
(41, 'plugin_content_manager_configuration_content_types::application::lugares.lugares', '{\"uid\":\"application::lugares.lugares\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"ID_LUGAR\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"ID_LUGAR\":{\"edit\":{\"label\":\"ID_LUGAR\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ID_LUGAR\",\"searchable\":true,\"sortable\":true}},\"NOMBRE_LUGAR\":{\"edit\":{\"label\":\"NOMBRE_LUGAR\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NOMBRE_LUGAR\",\"searchable\":true,\"sortable\":true}},\"actividades\":{\"edit\":{\"label\":\"Actividades\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_ACTIVIDAD\"},\"list\":{\"label\":\"Actividades\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"ID_LUGAR\",\"NOMBRE_LUGAR\"],\"edit\":[[{\"name\":\"ID_LUGAR\",\"size\":4},{\"name\":\"NOMBRE_LUGAR\",\"size\":6}]],\"editRelations\":[\"actividades\"]}}', 'object', '', ''),
(42, 'db_model_actividades', '{\"ID_ACTIVIDAD\":{\"type\":\"integer\",\"required\":true,\"unique\":true},\"NOMBRE\":{\"type\":\"string\",\"required\":true},\"FECHA\":{\"type\":\"date\",\"required\":true},\"HORA\":{\"type\":\"time\",\"required\":true},\"DURACION\":{\"type\":\"integer\",\"required\":true},\"OBSERVACIONES\":{\"type\":\"text\"},\"categoria\":{\"model\":\"categorias\",\"via\":\"actividades\"},\"lugare\":{\"via\":\"actividades\",\"model\":\"lugares\"}}', 'object', NULL, NULL),
(43, 'plugin_content_manager_configuration_content_types::application::actividades.actividades', '{\"uid\":\"application::actividades.actividades\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"ID_ACTIVIDAD\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"DURACION\":{\"edit\":{\"label\":\"DURACION\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"DURACION\",\"searchable\":true,\"sortable\":true}},\"NOMBRE\":{\"edit\":{\"label\":\"NOMBRE\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"NOMBRE\",\"searchable\":true,\"sortable\":true}},\"OBSERVACIONES\":{\"edit\":{\"label\":\"OBSERVACIONES\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"OBSERVACIONES\",\"searchable\":true,\"sortable\":true}},\"categoria\":{\"edit\":{\"label\":\"Categoria\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_CATEGORIA\"},\"list\":{\"label\":\"Categoria\",\"searchable\":false,\"sortable\":false}},\"HORA\":{\"edit\":{\"label\":\"HORA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"HORA\",\"searchable\":true,\"sortable\":true}},\"lugare\":{\"edit\":{\"label\":\"Lugare\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_LUGAR\"},\"list\":{\"label\":\"Lugare\",\"searchable\":false,\"sortable\":false}},\"ID_ACTIVIDAD\":{\"edit\":{\"label\":\"ID_ACTIVIDAD\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ID_ACTIVIDAD\",\"searchable\":true,\"sortable\":true}},\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"FECHA\":{\"edit\":{\"label\":\"FECHA\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"FECHA\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"FECHA\",\"ID_ACTIVIDAD\"],\"edit\":[[{\"name\":\"ID_ACTIVIDAD\",\"size\":4}],[{\"name\":\"NOMBRE\",\"size\":6},{\"name\":\"DURACION\",\"size\":4}],[{\"name\":\"FECHA\",\"size\":4},{\"name\":\"HORA\",\"size\":4}],[{\"name\":\"OBSERVACIONES\",\"size\":6}]],\"editRelations\":[\"categoria\",\"lugare\"]}}', 'object', '', ''),
(44, 'plugin_documentation_config', '{\"restrictedAccess\":false}', 'object', '', ''),
(45, 'db_model_mensualidades', '{\"ID_MENSUALIDAD\":{\"type\":\"integer\",\"required\":true,\"unique\":true},\"PERIODO\":{\"type\":\"string\",\"required\":true},\"VALOR\":{\"type\":\"integer\",\"required\":true},\"ESTADO\":{\"type\":\"boolean\",\"required\":true},\"alumno\":{\"model\":\"alumnos\",\"via\":\"mensualidades\"},\"created_at\":{\"type\":\"currentTimestamp\"},\"updated_at\":{\"type\":\"currentTimestamp\"}}', 'object', NULL, NULL);
INSERT INTO `core_store` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(46, 'plugin_content_manager_configuration_content_types::application::mensualidades.mensualidades', '{\"uid\":\"application::mensualidades.mensualidades\",\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"ID_MENSUALIDAD\",\"defaultSortBy\":\"PERIODO\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"Id\",\"searchable\":true,\"sortable\":true}},\"ID_MENSUALIDAD\":{\"edit\":{\"label\":\"ID_MENSUALIDAD\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ID_MENSUALIDAD\",\"searchable\":true,\"sortable\":true}},\"PERIODO\":{\"edit\":{\"label\":\"PERIODO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"PERIODO\",\"searchable\":true,\"sortable\":true}},\"VALOR\":{\"edit\":{\"label\":\"VALOR\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"VALOR\",\"searchable\":true,\"sortable\":true}},\"ESTADO\":{\"edit\":{\"label\":\"ESTADO\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ESTADO\",\"searchable\":true,\"sortable\":true}},\"alumno\":{\"edit\":{\"label\":\"Alumno\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"ID_ALUMNO\"},\"list\":{\"label\":\"Alumno\",\"searchable\":false,\"sortable\":false}},\"created_at\":{\"edit\":{\"label\":\"Created_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Created_at\",\"searchable\":true,\"sortable\":true}},\"updated_at\":{\"edit\":{\"label\":\"Updated_at\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"Updated_at\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"ID_MENSUALIDAD\",\"PERIODO\",\"VALOR\"],\"editRelations\":[\"alumno\"],\"edit\":[[{\"name\":\"ID_MENSUALIDAD\",\"size\":4},{\"name\":\"PERIODO\",\"size\":6}],[{\"name\":\"VALOR\",\"size\":4},{\"name\":\"ESTADO\",\"size\":4}]]}}', 'object', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `deportes`
--

CREATE TABLE `deportes` (
  `id` int(10) UNSIGNED NOT NULL,
  `ID_DEPORTE` int(11) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `escuela` int(11) DEFAULT NULL,
  `ID_ESCUELA` int(11) DEFAULT NULL,
  `escuelas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deportes`
--

INSERT INTO `deportes` (`id`, `ID_DEPORTE`, `NOMBRE`, `created_at`, `updated_at`, `escuela`, `ID_ESCUELA`, `escuelas`) VALUES
(4, 1, 'Baloncesto', '2020-07-26 22:44:50', '2020-07-26 22:44:50', 6, NULL, NULL),
(5, 2, 'Futbol', '2020-07-26 22:45:02', '2020-07-26 22:45:02', 6, NULL, NULL),
(6, 3, 'Ballet', '2020-07-26 22:46:15', '2020-07-26 22:46:15', 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `entrenadors`
--

CREATE TABLE `entrenadors` (
  `id` int(10) UNSIGNED NOT NULL,
  `ID_ENTRENADOR` int(11) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `APELLIDO` varchar(255) NOT NULL,
  `DIRECCION` varchar(255) DEFAULT NULL,
  `TELEFONO` varchar(255) NOT NULL,
  `CORREO` varchar(255) NOT NULL,
  `ESTADO` tinyint(1) NOT NULL,
  `SALARIO` int(11) NOT NULL,
  `FECHA_CONTRATACION` date NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `entrenadors`
--

INSERT INTO `entrenadors` (`id`, `ID_ENTRENADOR`, `NOMBRE`, `APELLIDO`, `DIRECCION`, `TELEFONO`, `CORREO`, `ESTADO`, `SALARIO`, `FECHA_CONTRATACION`, `created_at`, `updated_at`) VALUES
(1, 1, 'jose', 'perez', 'far far away', '04823750', 'profesor1@strapi.io', 1, 1280000, '2015-01-15', '2020-07-27 11:32:18', '2020-07-27 11:32:18');

-- --------------------------------------------------------

--
-- Table structure for table `escuelas`
--

CREATE TABLE `escuelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `ID_ESCUELA` varchar(255) DEFAULT NULL,
  `DIRECCION` varchar(255) NOT NULL,
  `TELEFONO` varchar(255) NOT NULL,
  `FAX` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `NOMBRE_ESCUELA` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `escuelas`
--

INSERT INTO `escuelas` (`id`, `ID_ESCUELA`, `DIRECCION`, `TELEFONO`, `FAX`, `created_at`, `updated_at`, `NOMBRE_ESCUELA`) VALUES
(6, '1234-7', 'calle45', '2435234', '453635', '2020-07-26 22:44:35', '2020-07-26 22:44:35', 'Manizales mas'),
(7, '2543-76', 'calle 4243', '4253453', '4352345', '2020-07-26 22:45:23', '2020-07-26 22:45:23', 'Rockeros');

-- --------------------------------------------------------

--
-- Table structure for table `inventarios`
--

CREATE TABLE `inventarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `ID_OBJETO` int(11) NOT NULL,
  `NOMBRE` longtext NOT NULL,
  `CANTIDAD_ACTIVOS` int(11) NOT NULL,
  `CANTIDAD_BAJAS` int(11) DEFAULT NULL,
  `VALOR_UNITARIO` int(11) NOT NULL,
  `FECHA_INGRESO` date NOT NULL,
  `escuela` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ID_ESCUELA` int(11) NOT NULL,
  `NOMBRE_OBJETO` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `lugares`
--

CREATE TABLE `lugares` (
  `id` int(10) UNSIGNED NOT NULL,
  `ID_LUGAR` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `NOMBRE_LUGAR` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lugares`
--

INSERT INTO `lugares` (`id`, `ID_LUGAR`, `created_at`, `updated_at`, `NOMBRE_LUGAR`) VALUES
(19, 1, '2020-07-27 12:45:12', '2020-07-27 12:45:12', 'CANCHA AUXILIAR'),
(20, 2, '2020-07-27 12:45:23', '2020-07-27 12:45:23', 'CANCHA VELODROMO'),
(21, 3, '2020-07-27 12:45:59', '2020-07-27 12:45:59', 'POLIDEPORTIVO UCALDAS'),
(22, 4, '2020-07-27 12:48:32', '2020-07-27 12:48:32', 'CANCHA LA ASUNCION'),
(23, 5, '2020-07-27 12:48:41', '2020-07-27 12:48:41', 'CANCHA FATIMA'),
(24, 6, '2020-07-27 12:48:53', '2020-07-27 12:48:53', 'CANCHA ALTA SUIZA'),
(25, 7, '2020-07-27 12:49:03', '2020-07-27 12:49:03', 'CANCHA EL ARENILLO'),
(26, 8, '2020-07-27 12:49:16', '2020-07-27 12:49:16', 'CANCHA LA CARCEL'),
(27, 9, '2020-07-27 12:49:30', '2020-07-27 12:49:30', 'CANCHA BAJO TABLAZO'),
(28, 10, '2020-07-27 12:49:43', '2020-07-27 12:49:43', 'CANCHA VILLAMARIA'),
(29, 11, '2020-07-27 12:49:55', '2020-07-27 12:49:55', 'CANCHA U NACIONAL'),
(30, 12, '2020-07-27 12:50:08', '2020-07-27 12:50:08', 'CANCHA ARANJUEZ');

-- --------------------------------------------------------

--
-- Table structure for table `mensualidades`
--

CREATE TABLE `mensualidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `ID_MENSUALIDAD` int(11) NOT NULL,
  `PERIODO` varchar(255) NOT NULL,
  `VALOR` int(11) NOT NULL,
  `ESTADO` tinyint(1) NOT NULL,
  `alumno` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mensualidades`
--

INSERT INTO `mensualidades` (`id`, `ID_MENSUALIDAD`, `PERIODO`, `VALOR`, `ESTADO`, `alumno`, `created_at`, `updated_at`) VALUES
(1, 1, 'JUNIO', 150000, 1, 1, '2020-07-27 17:15:19', '2020-07-27 17:15:19'),
(2, 2, 'JULIO', 150000, 1, 1, '2020-07-27 17:15:38', '2020-07-27 17:15:38'),
(3, 3, 'JUNIO', 150000, 1, 2, '2020-07-27 17:16:02', '2020-07-27 17:16:03'),
(4, 4, 'JULIO', 150000, 1, 2, '2020-07-27 17:16:20', '2020-07-27 17:16:20'),
(5, 5, 'JUNIO', 150000, 1, 3, '2020-07-27 17:17:26', '2020-07-27 17:17:26'),
(6, 6, 'JULIO', 150000, 1, 3, '2020-07-27 17:17:56', '2020-07-27 17:17:56'),
(7, 7, 'JUNIO', 150000, 1, 4, '2020-07-27 17:18:14', '2020-07-27 17:18:14'),
(8, 8, 'JULIO', 150000, 1, 4, '2020-07-27 17:18:34', '2020-07-27 17:18:34'),
(9, 9, 'JUNIO', 150000, 1, 5, '2020-07-27 17:18:55', '2020-07-27 17:18:55'),
(10, 10, 'JULIO', 150000, 1, 5, '2020-07-27 17:19:13', '2020-07-27 17:19:13'),
(11, 11, 'JUNIO', 150000, 1, 6, '2020-07-27 17:19:41', '2020-07-27 17:19:41'),
(12, 12, 'JULIO', 150000, 1, 6, '2020-07-27 17:20:10', '2020-07-27 17:20:10'),
(13, 13, 'JUNIO', 150000, 1, 7, '2020-07-27 17:20:34', '2020-07-27 17:20:34'),
(14, 14, 'JUNIO', 150000, 1, 8, '2020-07-27 17:20:50', '2020-07-27 17:20:51');

-- --------------------------------------------------------

--
-- Table structure for table `movimientos`
--

CREATE TABLE `movimientos` (
  `id` int(10) UNSIGNED NOT NULL,
  `ID_MOVIMIENTO` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `VALOR` int(11) NOT NULL,
  `OBSERVACION` longtext NOT NULL,
  `TIPO` varchar(255) NOT NULL,
  `escuela` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ID_ESCUELA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `restaurantes`
--

CREATE TABLE `restaurantes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restaurantes`
--

INSERT INTO `restaurantes` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'Restaurante Biscotte', 'Welcome to Biscotte restaurant! Restaurant Biscotte offers a cuisine based on fresh, quality products, often local, organic when possible, and always produced by passionate producers.', '2020-07-25 11:23:02', '2020-07-25 11:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_administrator`
--

CREATE TABLE `strapi_administrator` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `strapi_administrator`
--

INSERT INTO `strapi_administrator` (`id`, `username`, `email`, `password`, `resetPasswordToken`, `blocked`) VALUES
(1, 'adminsport', 'appsportmgr@gmail.com', '$2a$10$y.HxOKKjx.kw6IGlQnRt5.T/HTT4OqRJkAyOOUB2p99n8cdpFnMMe', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `headers` longtext,
  `events` longtext,
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file`
--

CREATE TABLE `upload_file` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `alternativeText` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext,
  `hash` varchar(255) NOT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) NOT NULL,
  `size` decimal(10,2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `previewUrl` varchar(255) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `provider_metadata` longtext,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `upload_file_morph`
--

CREATE TABLE `upload_file_morph` (
  `id` int(10) UNSIGNED NOT NULL,
  `upload_file_id` int(11) DEFAULT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_type` longtext,
  `field` longtext,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_permission`
--

CREATE TABLE `users-permissions_permission` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `policy` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_permission`
--

INSERT INTO `users-permissions_permission` (`id`, `type`, `controller`, `action`, `enabled`, `policy`, `role`) VALUES
(1, 'content-manager', 'components', 'findcomponent', 0, '', 1),
(2, 'content-manager', 'components', 'findcomponent', 0, '', 2),
(3, 'content-manager', 'components', 'listcomponents', 0, '', 1),
(4, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 1),
(5, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 2),
(6, 'content-manager', 'contentmanager', 'count', 0, '', 1),
(7, 'content-manager', 'components', 'listcomponents', 0, '', 2),
(8, 'content-manager', 'components', 'updatecomponent', 0, '', 1),
(9, 'content-manager', 'contentmanager', 'count', 0, '', 2),
(10, 'content-manager', 'components', 'updatecomponent', 0, '', 2),
(11, 'content-manager', 'contentmanager', 'create', 0, '', 1),
(12, 'content-manager', 'contentmanager', 'create', 0, '', 2),
(13, 'content-manager', 'contentmanager', 'delete', 0, '', 1),
(14, 'content-manager', 'contentmanager', 'delete', 0, '', 2),
(15, 'content-manager', 'contentmanager', 'deletemany', 0, '', 1),
(16, 'content-manager', 'contentmanager', 'deletemany', 0, '', 2),
(17, 'content-manager', 'contentmanager', 'find', 0, '', 1),
(18, 'content-manager', 'contentmanager', 'find', 0, '', 2),
(19, 'content-manager', 'contentmanager', 'findone', 0, '', 1),
(20, 'content-manager', 'contentmanager', 'findone', 0, '', 2),
(21, 'content-manager', 'contentmanager', 'generateuid', 0, '', 1),
(22, 'content-manager', 'contentmanager', 'generateuid', 0, '', 2),
(23, 'content-manager', 'contentmanager', 'update', 0, '', 1),
(24, 'content-manager', 'contentmanager', 'update', 0, '', 2),
(25, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 1),
(26, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 2),
(27, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 1),
(28, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 2),
(29, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 1),
(30, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 2),
(31, 'content-type-builder', 'builder', 'getreservednames', 0, '', 1),
(32, 'content-type-builder', 'builder', 'getreservednames', 0, '', 2),
(33, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 1),
(34, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 2),
(35, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 1),
(36, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 2),
(37, 'content-type-builder', 'components', 'createcomponent', 0, '', 1),
(38, 'content-type-builder', 'components', 'createcomponent', 0, '', 2),
(39, 'content-type-builder', 'components', 'deletecomponent', 0, '', 1),
(40, 'content-type-builder', 'components', 'deletecomponent', 0, '', 2),
(41, 'content-type-builder', 'components', 'getcomponent', 0, '', 1),
(42, 'content-type-builder', 'components', 'getcomponent', 0, '', 2),
(43, 'content-type-builder', 'components', 'getcomponents', 0, '', 1),
(44, 'content-type-builder', 'components', 'getcomponents', 0, '', 2),
(45, 'content-type-builder', 'components', 'updatecomponent', 0, '', 1),
(46, 'content-type-builder', 'components', 'updatecomponent', 0, '', 2),
(47, 'content-type-builder', 'connections', 'getconnections', 0, '', 1),
(48, 'content-type-builder', 'connections', 'getconnections', 0, '', 2),
(49, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 1),
(50, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 2),
(51, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 1),
(52, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 2),
(53, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 1),
(54, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 2),
(55, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 1),
(56, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 2),
(57, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 1),
(58, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 2),
(59, 'email', 'email', 'send', 0, '', 1),
(60, 'email', 'email', 'send', 0, '', 2),
(61, 'upload', 'proxy', 'uploadproxy', 0, '', 1),
(62, 'upload', 'proxy', 'uploadproxy', 0, '', 2),
(63, 'upload', 'upload', 'count', 0, '', 1),
(64, 'upload', 'upload', 'count', 0, '', 2),
(65, 'upload', 'upload', 'destroy', 0, '', 1),
(66, 'upload', 'upload', 'destroy', 0, '', 2),
(67, 'upload', 'upload', 'find', 0, '', 1),
(68, 'upload', 'upload', 'find', 0, '', 2),
(69, 'upload', 'upload', 'findone', 0, '', 1),
(70, 'upload', 'upload', 'findone', 0, '', 2),
(71, 'upload', 'upload', 'getsettings', 0, '', 1),
(72, 'upload', 'upload', 'getsettings', 0, '', 2),
(73, 'upload', 'upload', 'search', 0, '', 1),
(74, 'upload', 'upload', 'search', 0, '', 2),
(75, 'upload', 'upload', 'updatesettings', 0, '', 1),
(76, 'upload', 'upload', 'updatesettings', 0, '', 2),
(77, 'upload', 'upload', 'upload', 0, '', 1),
(78, 'upload', 'upload', 'upload', 0, '', 2),
(79, 'users-permissions', 'auth', 'callback', 0, '', 1),
(80, 'users-permissions', 'auth', 'callback', 1, '', 2),
(81, 'users-permissions', 'auth', 'connect', 1, '', 1),
(82, 'users-permissions', 'auth', 'connect', 1, '', 2),
(83, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 1),
(84, 'users-permissions', 'auth', 'emailconfirmation', 1, '', 2),
(85, 'users-permissions', 'auth', 'forgotpassword', 0, '', 1),
(86, 'users-permissions', 'auth', 'forgotpassword', 1, '', 2),
(87, 'users-permissions', 'auth', 'register', 0, '', 1),
(88, 'users-permissions', 'auth', 'register', 1, '', 2),
(89, 'users-permissions', 'auth', 'resetpassword', 0, '', 1),
(90, 'users-permissions', 'auth', 'resetpassword', 0, '', 2),
(91, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 1),
(92, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 2),
(93, 'users-permissions', 'user', 'count', 0, '', 1),
(94, 'users-permissions', 'user', 'count', 0, '', 2),
(95, 'users-permissions', 'user', 'create', 0, '', 1),
(96, 'users-permissions', 'user', 'create', 0, '', 2),
(97, 'users-permissions', 'user', 'destroy', 0, '', 1),
(98, 'users-permissions', 'user', 'destroy', 0, '', 2),
(99, 'users-permissions', 'user', 'destroyall', 0, '', 1),
(100, 'users-permissions', 'user', 'destroyall', 0, '', 2),
(101, 'users-permissions', 'user', 'find', 0, '', 1),
(102, 'users-permissions', 'user', 'find', 0, '', 2),
(103, 'users-permissions', 'user', 'findone', 0, '', 1),
(104, 'users-permissions', 'user', 'findone', 0, '', 2),
(105, 'users-permissions', 'user', 'me', 1, '', 1),
(106, 'users-permissions', 'user', 'me', 1, '', 2),
(107, 'users-permissions', 'user', 'update', 0, '', 1),
(108, 'users-permissions', 'user', 'update', 0, '', 2),
(109, 'users-permissions', 'userspermissions', 'createrole', 0, '', 1),
(110, 'users-permissions', 'userspermissions', 'createrole', 0, '', 2),
(111, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 1),
(112, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 2),
(113, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 1),
(114, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 2),
(115, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 1),
(116, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 2),
(117, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 1),
(118, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 2),
(119, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 1),
(120, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 2),
(121, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 1),
(122, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 2),
(123, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 1),
(124, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 2),
(125, 'users-permissions', 'userspermissions', 'getrole', 0, '', 1),
(126, 'users-permissions', 'userspermissions', 'getrole', 0, '', 2),
(127, 'users-permissions', 'userspermissions', 'getroles', 0, '', 1),
(128, 'users-permissions', 'userspermissions', 'getroles', 0, '', 2),
(129, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 1),
(130, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 2),
(131, 'users-permissions', 'userspermissions', 'index', 0, '', 1),
(132, 'users-permissions', 'userspermissions', 'index', 0, '', 2),
(133, 'users-permissions', 'userspermissions', 'init', 1, '', 1),
(134, 'users-permissions', 'userspermissions', 'init', 1, '', 2),
(135, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 1),
(136, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 2),
(137, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 1),
(138, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 2),
(139, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 1),
(140, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 2),
(141, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 1),
(142, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 2),
(143, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 1),
(144, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 2),
(169, 'application', 'escuelas', 'count', 0, '', 1),
(170, 'application', 'escuelas', 'count', 1, '', 2),
(171, 'application', 'escuelas', 'create', 0, '', 1),
(172, 'application', 'escuelas', 'create', 1, '', 2),
(173, 'application', 'escuelas', 'delete', 0, '', 1),
(174, 'application', 'escuelas', 'delete', 1, '', 2),
(175, 'application', 'escuelas', 'find', 0, '', 1),
(176, 'application', 'escuelas', 'find', 1, '', 2),
(177, 'application', 'escuelas', 'findone', 0, '', 1),
(178, 'application', 'escuelas', 'findone', 1, '', 2),
(179, 'application', 'escuelas', 'update', 0, '', 1),
(180, 'application', 'escuelas', 'update', 1, '', 2),
(181, 'application', 'deportes', 'count', 0, '', 1),
(182, 'application', 'deportes', 'count', 1, '', 2),
(183, 'application', 'deportes', 'create', 0, '', 1),
(184, 'application', 'deportes', 'create', 1, '', 2),
(185, 'application', 'deportes', 'delete', 0, '', 1),
(186, 'application', 'deportes', 'delete', 1, '', 2),
(187, 'application', 'deportes', 'find', 0, '', 1),
(188, 'application', 'deportes', 'find', 1, '', 2),
(189, 'application', 'deportes', 'findone', 0, '', 1),
(190, 'application', 'deportes', 'findone', 1, '', 2),
(191, 'application', 'deportes', 'update', 0, '', 1),
(192, 'application', 'deportes', 'update', 1, '', 2),
(193, 'application', 'entrenador', 'count', 0, '', 1),
(194, 'application', 'entrenador', 'count', 1, '', 2),
(195, 'application', 'entrenador', 'create', 1, '', 2),
(196, 'application', 'entrenador', 'create', 0, '', 1),
(197, 'application', 'entrenador', 'delete', 0, '', 1),
(198, 'application', 'entrenador', 'delete', 1, '', 2),
(199, 'application', 'entrenador', 'find', 0, '', 1),
(200, 'application', 'entrenador', 'find', 1, '', 2),
(201, 'application', 'entrenador', 'findone', 0, '', 1),
(202, 'application', 'entrenador', 'findone', 1, '', 2),
(203, 'application', 'entrenador', 'update', 0, '', 1),
(204, 'application', 'entrenador', 'update', 1, '', 2),
(205, 'application', 'acudiente', 'count', 0, '', 1),
(206, 'application', 'acudiente', 'count', 1, '', 2),
(207, 'application', 'acudiente', 'create', 0, '', 1),
(208, 'application', 'acudiente', 'create', 1, '', 2),
(209, 'application', 'acudiente', 'delete', 0, '', 1),
(210, 'application', 'acudiente', 'delete', 1, '', 2),
(211, 'application', 'acudiente', 'find', 0, '', 1),
(212, 'application', 'acudiente', 'find', 1, '', 2),
(213, 'application', 'acudiente', 'findone', 0, '', 1),
(214, 'application', 'acudiente', 'findone', 1, '', 2),
(215, 'application', 'acudiente', 'update', 0, '', 1),
(216, 'application', 'acudiente', 'update', 1, '', 2),
(217, 'application', 'alumnos', 'count', 0, '', 1),
(218, 'application', 'alumnos', 'count', 1, '', 2),
(219, 'application', 'alumnos', 'create', 0, '', 1),
(220, 'application', 'alumnos', 'create', 1, '', 2),
(221, 'application', 'alumnos', 'delete', 0, '', 1),
(222, 'application', 'alumnos', 'delete', 1, '', 2),
(223, 'application', 'alumnos', 'find', 1, '', 2),
(224, 'application', 'alumnos', 'find', 0, '', 1),
(225, 'application', 'alumnos', 'findone', 0, '', 1),
(226, 'application', 'alumnos', 'findone', 1, '', 2),
(227, 'application', 'alumnos', 'update', 0, '', 1),
(228, 'application', 'alumnos', 'update', 1, '', 2),
(229, 'application', 'categorias', 'count', 0, '', 1),
(230, 'application', 'categorias', 'count', 1, '', 2),
(231, 'application', 'categorias', 'create', 0, '', 1),
(232, 'application', 'categorias', 'create', 1, '', 2),
(233, 'application', 'categorias', 'delete', 0, '', 1),
(234, 'application', 'categorias', 'delete', 1, '', 2),
(235, 'application', 'categorias', 'find', 0, '', 1),
(236, 'application', 'categorias', 'find', 1, '', 2),
(237, 'application', 'categorias', 'findone', 0, '', 1),
(238, 'application', 'categorias', 'findone', 1, '', 2),
(239, 'application', 'categorias', 'update', 0, '', 1),
(240, 'application', 'categorias', 'update', 1, '', 2),
(241, 'application', 'valoracion', 'count', 0, '', 1),
(242, 'application', 'valoracion', 'count', 1, '', 2),
(243, 'application', 'valoracion', 'create', 0, '', 1),
(244, 'application', 'valoracion', 'create', 1, '', 2),
(245, 'application', 'valoracion', 'delete', 0, '', 1),
(246, 'application', 'valoracion', 'delete', 1, '', 2),
(247, 'application', 'valoracion', 'find', 1, '', 2),
(248, 'application', 'valoracion', 'find', 0, '', 1),
(249, 'application', 'valoracion', 'findone', 0, '', 1),
(250, 'application', 'valoracion', 'findone', 1, '', 2),
(251, 'application', 'valoracion', 'update', 0, '', 1),
(252, 'application', 'valoracion', 'update', 1, '', 2),
(253, 'application', 'movimientos', 'count', 0, '', 1),
(254, 'application', 'movimientos', 'count', 1, '', 2),
(255, 'application', 'movimientos', 'create', 0, '', 1),
(256, 'application', 'movimientos', 'create', 1, '', 2),
(257, 'application', 'movimientos', 'delete', 0, '', 1),
(258, 'application', 'movimientos', 'delete', 1, '', 2),
(259, 'application', 'movimientos', 'find', 0, '', 1),
(260, 'application', 'movimientos', 'findone', 0, '', 1),
(261, 'application', 'movimientos', 'find', 1, '', 2),
(262, 'application', 'movimientos', 'findone', 1, '', 2),
(263, 'application', 'movimientos', 'update', 0, '', 1),
(264, 'application', 'movimientos', 'update', 1, '', 2),
(265, 'application', 'inventarios', 'count', 0, '', 1),
(266, 'application', 'inventarios', 'count', 1, '', 2),
(267, 'application', 'inventarios', 'create', 0, '', 1),
(268, 'application', 'inventarios', 'create', 1, '', 2),
(269, 'application', 'inventarios', 'delete', 0, '', 1),
(270, 'application', 'inventarios', 'delete', 1, '', 2),
(271, 'application', 'inventarios', 'find', 0, '', 1),
(272, 'application', 'inventarios', 'find', 1, '', 2),
(273, 'application', 'inventarios', 'findone', 0, '', 1),
(274, 'application', 'inventarios', 'findone', 1, '', 2),
(275, 'application', 'inventarios', 'update', 0, '', 1),
(276, 'application', 'inventarios', 'update', 1, '', 2),
(277, 'application', 'lugares', 'count', 0, '', 1),
(278, 'application', 'lugares', 'count', 1, '', 2),
(279, 'application', 'lugares', 'create', 0, '', 1),
(280, 'application', 'lugares', 'create', 1, '', 2),
(281, 'application', 'lugares', 'delete', 0, '', 1),
(282, 'application', 'lugares', 'delete', 1, '', 2),
(283, 'application', 'lugares', 'find', 0, '', 1),
(284, 'application', 'lugares', 'find', 1, '', 2),
(285, 'application', 'lugares', 'findone', 0, '', 1),
(286, 'application', 'lugares', 'findone', 1, '', 2),
(287, 'application', 'lugares', 'update', 0, '', 1),
(288, 'application', 'lugares', 'update', 1, '', 2),
(289, 'application', 'actividades', 'count', 0, '', 1),
(290, 'application', 'actividades', 'count', 1, '', 2),
(291, 'application', 'actividades', 'create', 0, '', 1),
(292, 'application', 'actividades', 'create', 1, '', 2),
(293, 'application', 'actividades', 'delete', 0, '', 1),
(294, 'application', 'actividades', 'delete', 1, '', 2),
(295, 'application', 'actividades', 'find', 0, '', 1),
(296, 'application', 'actividades', 'find', 1, '', 2),
(297, 'application', 'actividades', 'findone', 0, '', 1),
(298, 'application', 'actividades', 'findone', 1, '', 2),
(299, 'application', 'actividades', 'update', 0, '', 1),
(300, 'application', 'actividades', 'update', 1, '', 2),
(301, 'documentation', 'documentation', 'deletedoc', 0, '', 1),
(302, 'documentation', 'documentation', 'getinfos', 0, '', 1),
(303, 'documentation', 'documentation', 'deletedoc', 0, '', 2),
(304, 'documentation', 'documentation', 'getinfos', 0, '', 2),
(305, 'documentation', 'documentation', 'index', 0, '', 1),
(306, 'documentation', 'documentation', 'index', 0, '', 2),
(307, 'documentation', 'documentation', 'login', 0, '', 1),
(308, 'documentation', 'documentation', 'login', 0, '', 2),
(309, 'documentation', 'documentation', 'loginview', 0, '', 2),
(310, 'documentation', 'documentation', 'loginview', 0, '', 1),
(311, 'documentation', 'documentation', 'regeneratedoc', 0, '', 1),
(312, 'documentation', 'documentation', 'regeneratedoc', 0, '', 2),
(313, 'documentation', 'documentation', 'updatesettings', 0, '', 1),
(314, 'documentation', 'documentation', 'updatesettings', 0, '', 2),
(315, 'application', 'categorias', 'find', 0, '', 3),
(316, 'application', 'categorias', 'findone', 0, '', 3),
(317, 'application', 'categorias', 'count', 0, '', 3),
(318, 'application', 'categorias', 'create', 0, '', 3),
(319, 'application', 'categorias', 'delete', 0, '', 3),
(320, 'application', 'categorias', 'update', 0, '', 3),
(321, 'application', 'valoracion', 'find', 1, '', 3),
(322, 'application', 'valoracion', 'count', 1, '', 3),
(323, 'application', 'valoracion', 'findone', 1, '', 3),
(324, 'application', 'valoracion', 'create', 1, '', 3),
(325, 'application', 'valoracion', 'update', 0, '', 3),
(326, 'application', 'valoracion', 'delete', 0, '', 3),
(327, 'application', 'inventarios', 'find', 0, '', 3),
(328, 'application', 'inventarios', 'findone', 0, '', 3),
(329, 'application', 'inventarios', 'count', 0, '', 3),
(330, 'application', 'inventarios', 'create', 0, '', 3),
(331, 'application', 'inventarios', 'update', 0, '', 3),
(332, 'application', 'inventarios', 'delete', 0, '', 3),
(333, 'application', 'actividades', 'find', 1, '', 3),
(334, 'application', 'actividades', 'findone', 1, '', 3),
(335, 'application', 'actividades', 'count', 1, '', 3),
(336, 'application', 'actividades', 'create', 1, '', 3),
(337, 'application', 'actividades', 'update', 1, '', 3),
(338, 'application', 'actividades', 'delete', 1, '', 3),
(339, 'application', 'alumnos', 'find', 1, '', 3),
(340, 'application', 'alumnos', 'findone', 1, '', 3),
(341, 'application', 'alumnos', 'count', 1, '', 3),
(342, 'application', 'alumnos', 'create', 1, '', 3),
(343, 'application', 'alumnos', 'update', 1, '', 3),
(344, 'application', 'alumnos', 'delete', 1, '', 3),
(345, 'application', 'deportes', 'find', 0, '', 3),
(346, 'application', 'deportes', 'findone', 0, '', 3),
(347, 'application', 'deportes', 'count', 0, '', 3),
(348, 'application', 'deportes', 'create', 0, '', 3),
(349, 'application', 'deportes', 'update', 0, '', 3),
(350, 'application', 'deportes', 'delete', 0, '', 3),
(351, 'application', 'acudiente', 'find', 0, '', 3),
(352, 'application', 'acudiente', 'findone', 0, '', 3),
(353, 'application', 'acudiente', 'count', 0, '', 3),
(354, 'application', 'acudiente', 'create', 0, '', 3),
(355, 'application', 'acudiente', 'update', 0, '', 3),
(356, 'application', 'acudiente', 'delete', 0, '', 3),
(357, 'application', 'entrenador', 'find', 1, '', 3),
(358, 'application', 'entrenador', 'findone', 1, '', 3),
(359, 'application', 'entrenador', 'count', 1, '', 3),
(360, 'application', 'entrenador', 'create', 1, '', 3),
(361, 'application', 'entrenador', 'update', 0, '', 3),
(362, 'application', 'entrenador', 'delete', 0, '', 3),
(363, 'application', 'escuelas', 'find', 0, '', 3),
(364, 'application', 'escuelas', 'findone', 0, '', 3),
(365, 'application', 'escuelas', 'count', 0, '', 3),
(366, 'application', 'escuelas', 'create', 0, '', 3),
(367, 'application', 'escuelas', 'update', 0, '', 3),
(368, 'application', 'escuelas', 'delete', 0, '', 3),
(369, 'application', 'lugares', 'find', 1, '', 3),
(370, 'application', 'lugares', 'findone', 1, '', 3),
(371, 'application', 'lugares', 'count', 1, '', 3),
(372, 'application', 'lugares', 'create', 1, '', 3),
(373, 'application', 'lugares', 'update', 1, '', 3),
(374, 'application', 'lugares', 'delete', 1, '', 3),
(375, 'application', 'movimientos', 'find', 0, '', 3),
(376, 'application', 'movimientos', 'findone', 0, '', 3),
(377, 'application', 'movimientos', 'count', 0, '', 3),
(378, 'application', 'movimientos', 'create', 0, '', 3),
(379, 'application', 'movimientos', 'update', 0, '', 3),
(380, 'application', 'movimientos', 'delete', 0, '', 3),
(381, 'content-manager', 'components', 'listcomponents', 0, '', 3),
(382, 'content-manager', 'components', 'findcomponent', 0, '', 3),
(383, 'content-manager', 'components', 'updatecomponent', 0, '', 3),
(384, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 3),
(385, 'content-manager', 'contentmanager', 'update', 0, '', 3),
(386, 'content-manager', 'contentmanager', 'deletemany', 0, '', 3),
(387, 'content-manager', 'contentmanager', 'delete', 0, '', 3),
(388, 'content-manager', 'contentmanager', 'findone', 0, '', 3),
(389, 'content-manager', 'contentmanager', 'count', 0, '', 3),
(390, 'content-manager', 'contentmanager', 'find', 0, '', 3),
(391, 'content-manager', 'contentmanager', 'generateuid', 0, '', 3),
(392, 'content-manager', 'contentmanager', 'create', 0, '', 3),
(393, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 3),
(394, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 3),
(395, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 3),
(396, 'content-type-builder', 'builder', 'getreservednames', 0, '', 3),
(397, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 3),
(398, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 3),
(399, 'content-type-builder', 'components', 'getcomponents', 0, '', 3),
(400, 'content-type-builder', 'components', 'getcomponent', 0, '', 3),
(401, 'content-type-builder', 'components', 'createcomponent', 0, '', 3),
(402, 'content-type-builder', 'components', 'updatecomponent', 0, '', 3),
(403, 'content-type-builder', 'components', 'deletecomponent', 0, '', 3),
(404, 'content-type-builder', 'connections', 'getconnections', 0, '', 3),
(405, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 3),
(406, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 3),
(407, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 3),
(408, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 3),
(409, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 3),
(410, 'documentation', 'documentation', 'getinfos', 0, '', 3),
(411, 'documentation', 'documentation', 'index', 0, '', 3),
(412, 'documentation', 'documentation', 'loginview', 0, '', 3),
(413, 'documentation', 'documentation', 'login', 0, '', 3),
(414, 'documentation', 'documentation', 'regeneratedoc', 0, '', 3),
(415, 'documentation', 'documentation', 'deletedoc', 0, '', 3),
(416, 'documentation', 'documentation', 'updatesettings', 0, '', 3),
(417, 'email', 'email', 'send', 0, '', 3),
(418, 'upload', 'proxy', 'uploadproxy', 0, '', 3),
(419, 'upload', 'upload', 'upload', 0, '', 3),
(420, 'upload', 'upload', 'getsettings', 0, '', 3),
(421, 'upload', 'upload', 'updatesettings', 0, '', 3),
(422, 'upload', 'upload', 'find', 0, '', 3),
(423, 'upload', 'upload', 'findone', 0, '', 3),
(424, 'upload', 'upload', 'count', 0, '', 3),
(425, 'upload', 'upload', 'destroy', 0, '', 3),
(426, 'upload', 'upload', 'search', 0, '', 3),
(427, 'users-permissions', 'auth', 'callback', 0, '', 3),
(428, 'users-permissions', 'auth', 'resetpassword', 0, '', 3),
(429, 'users-permissions', 'auth', 'connect', 0, '', 3),
(430, 'users-permissions', 'auth', 'forgotpassword', 0, '', 3),
(431, 'users-permissions', 'auth', 'register', 0, '', 3),
(432, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 3),
(433, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 3),
(434, 'users-permissions', 'user', 'find', 0, '', 3),
(435, 'users-permissions', 'user', 'me', 0, '', 3),
(436, 'users-permissions', 'user', 'count', 0, '', 3),
(437, 'users-permissions', 'user', 'findone', 0, '', 3),
(438, 'users-permissions', 'user', 'create', 0, '', 3),
(439, 'users-permissions', 'user', 'update', 0, '', 3),
(440, 'users-permissions', 'user', 'destroy', 0, '', 3),
(441, 'users-permissions', 'user', 'destroyall', 0, '', 3),
(442, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 3),
(443, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 3),
(444, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 3),
(445, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 3),
(446, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 3),
(447, 'users-permissions', 'userspermissions', 'getroles', 0, '', 3),
(448, 'users-permissions', 'userspermissions', 'getrole', 0, '', 3),
(449, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 3),
(450, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 3),
(451, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 3),
(452, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 3),
(453, 'users-permissions', 'userspermissions', 'init', 0, '', 3),
(454, 'users-permissions', 'userspermissions', 'index', 0, '', 3),
(455, 'users-permissions', 'userspermissions', 'createrole', 0, '', 3),
(456, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 3),
(457, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 3),
(458, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 3),
(459, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 3),
(460, 'application', 'categorias', 'find', 1, '', 7),
(461, 'application', 'categorias', 'findone', 1, '', 7),
(462, 'application', 'categorias', 'count', 1, '', 7),
(463, 'application', 'categorias', 'create', 1, '', 7),
(464, 'application', 'categorias', 'update', 1, '', 7),
(465, 'application', 'categorias', 'delete', 1, '', 7),
(466, 'application', 'valoracion', 'find', 1, '', 7),
(467, 'application', 'valoracion', 'count', 1, '', 7),
(468, 'application', 'valoracion', 'findone', 1, '', 7),
(469, 'application', 'valoracion', 'create', 1, '', 7),
(470, 'application', 'valoracion', 'update', 1, '', 7),
(471, 'application', 'valoracion', 'delete', 1, '', 7),
(472, 'application', 'inventarios', 'find', 1, '', 7),
(473, 'application', 'inventarios', 'findone', 1, '', 7),
(474, 'application', 'inventarios', 'count', 1, '', 7),
(475, 'application', 'inventarios', 'create', 1, '', 7),
(476, 'application', 'inventarios', 'update', 1, '', 7),
(477, 'application', 'inventarios', 'delete', 1, '', 7),
(478, 'application', 'actividades', 'find', 1, '', 7),
(479, 'application', 'actividades', 'findone', 1, '', 7),
(480, 'application', 'actividades', 'count', 1, '', 7),
(481, 'application', 'actividades', 'create', 1, '', 7),
(482, 'application', 'actividades', 'update', 1, '', 7),
(483, 'application', 'actividades', 'delete', 1, '', 7),
(484, 'application', 'alumnos', 'find', 1, '', 7),
(485, 'application', 'alumnos', 'findone', 1, '', 7),
(486, 'application', 'alumnos', 'count', 1, '', 7),
(487, 'application', 'alumnos', 'create', 1, '', 7),
(488, 'application', 'alumnos', 'update', 1, '', 7),
(489, 'application', 'alumnos', 'delete', 1, '', 7),
(490, 'application', 'deportes', 'find', 1, '', 7),
(491, 'application', 'deportes', 'findone', 1, '', 7),
(492, 'application', 'deportes', 'count', 1, '', 7),
(493, 'application', 'deportes', 'create', 1, '', 7),
(494, 'application', 'deportes', 'update', 1, '', 7),
(495, 'application', 'deportes', 'delete', 1, '', 7),
(496, 'application', 'acudiente', 'find', 1, '', 7),
(497, 'application', 'acudiente', 'findone', 1, '', 7),
(498, 'application', 'acudiente', 'count', 1, '', 7),
(499, 'application', 'acudiente', 'create', 1, '', 7),
(500, 'application', 'acudiente', 'update', 1, '', 7),
(501, 'application', 'acudiente', 'delete', 1, '', 7),
(502, 'application', 'entrenador', 'find', 1, '', 7),
(503, 'application', 'entrenador', 'findone', 1, '', 7),
(504, 'application', 'entrenador', 'count', 1, '', 7),
(505, 'application', 'entrenador', 'create', 1, '', 7),
(506, 'application', 'entrenador', 'update', 1, '', 7),
(507, 'application', 'entrenador', 'delete', 1, '', 7),
(508, 'application', 'escuelas', 'find', 1, '', 7),
(509, 'application', 'escuelas', 'findone', 1, '', 7),
(510, 'application', 'escuelas', 'count', 1, '', 7),
(511, 'application', 'escuelas', 'create', 1, '', 7),
(512, 'application', 'escuelas', 'update', 1, '', 7),
(513, 'application', 'escuelas', 'delete', 1, '', 7),
(514, 'application', 'lugares', 'find', 1, '', 7),
(515, 'application', 'lugares', 'findone', 1, '', 7),
(516, 'application', 'lugares', 'count', 1, '', 7),
(517, 'application', 'lugares', 'create', 1, '', 7),
(518, 'application', 'lugares', 'update', 1, '', 7),
(519, 'application', 'lugares', 'delete', 1, '', 7),
(520, 'application', 'movimientos', 'find', 1, '', 7),
(521, 'application', 'movimientos', 'findone', 1, '', 7),
(522, 'application', 'movimientos', 'count', 1, '', 7),
(523, 'application', 'movimientos', 'create', 1, '', 7),
(524, 'application', 'movimientos', 'update', 1, '', 7),
(525, 'application', 'movimientos', 'delete', 1, '', 7),
(526, 'content-manager', 'components', 'listcomponents', 0, '', 7),
(527, 'content-manager', 'components', 'findcomponent', 0, '', 7),
(528, 'content-manager', 'components', 'updatecomponent', 0, '', 7),
(529, 'content-manager', 'contentmanager', 'checkuidavailability', 0, '', 7),
(530, 'content-manager', 'contentmanager', 'update', 0, '', 7),
(531, 'content-manager', 'contentmanager', 'deletemany', 0, '', 7),
(532, 'content-manager', 'contentmanager', 'delete', 0, '', 7),
(533, 'content-manager', 'contentmanager', 'findone', 0, '', 7),
(534, 'content-manager', 'contentmanager', 'count', 0, '', 7),
(535, 'content-manager', 'contentmanager', 'find', 0, '', 7),
(536, 'content-manager', 'contentmanager', 'generateuid', 0, '', 7),
(537, 'content-manager', 'contentmanager', 'create', 0, '', 7),
(538, 'content-manager', 'contenttypes', 'listcontenttypes', 0, '', 7),
(539, 'content-manager', 'contenttypes', 'findcontenttype', 0, '', 7),
(540, 'content-manager', 'contenttypes', 'updatecontenttype', 0, '', 7),
(541, 'content-type-builder', 'builder', 'getreservednames', 0, '', 7),
(542, 'content-type-builder', 'componentcategories', 'editcategory', 0, '', 7),
(543, 'content-type-builder', 'componentcategories', 'deletecategory', 0, '', 7),
(544, 'content-type-builder', 'components', 'getcomponents', 0, '', 7),
(545, 'content-type-builder', 'components', 'getcomponent', 0, '', 7),
(546, 'content-type-builder', 'components', 'createcomponent', 0, '', 7),
(547, 'content-type-builder', 'components', 'updatecomponent', 0, '', 7),
(548, 'content-type-builder', 'components', 'deletecomponent', 0, '', 7),
(549, 'content-type-builder', 'connections', 'getconnections', 0, '', 7),
(550, 'content-type-builder', 'contenttypes', 'getcontenttypes', 0, '', 7),
(551, 'content-type-builder', 'contenttypes', 'getcontenttype', 0, '', 7),
(552, 'content-type-builder', 'contenttypes', 'createcontenttype', 0, '', 7),
(553, 'content-type-builder', 'contenttypes', 'updatecontenttype', 0, '', 7),
(554, 'content-type-builder', 'contenttypes', 'deletecontenttype', 0, '', 7),
(555, 'documentation', 'documentation', 'getinfos', 0, '', 7),
(556, 'documentation', 'documentation', 'index', 0, '', 7),
(557, 'documentation', 'documentation', 'loginview', 0, '', 7),
(558, 'documentation', 'documentation', 'login', 0, '', 7),
(559, 'documentation', 'documentation', 'regeneratedoc', 0, '', 7),
(560, 'documentation', 'documentation', 'deletedoc', 0, '', 7),
(561, 'documentation', 'documentation', 'updatesettings', 0, '', 7),
(562, 'email', 'email', 'send', 0, '', 7),
(563, 'upload', 'proxy', 'uploadproxy', 0, '', 7),
(564, 'upload', 'upload', 'upload', 0, '', 7),
(565, 'upload', 'upload', 'getsettings', 0, '', 7),
(566, 'upload', 'upload', 'updatesettings', 0, '', 7),
(567, 'upload', 'upload', 'find', 0, '', 7),
(568, 'upload', 'upload', 'findone', 0, '', 7),
(569, 'upload', 'upload', 'count', 0, '', 7),
(570, 'upload', 'upload', 'destroy', 0, '', 7),
(571, 'upload', 'upload', 'search', 0, '', 7),
(572, 'users-permissions', 'auth', 'callback', 0, '', 7),
(573, 'users-permissions', 'auth', 'resetpassword', 0, '', 7),
(574, 'users-permissions', 'auth', 'connect', 0, '', 7),
(575, 'users-permissions', 'auth', 'forgotpassword', 0, '', 7),
(576, 'users-permissions', 'auth', 'register', 0, '', 7),
(577, 'users-permissions', 'auth', 'emailconfirmation', 0, '', 7),
(578, 'users-permissions', 'auth', 'sendemailconfirmation', 0, '', 7),
(579, 'users-permissions', 'user', 'find', 0, '', 7),
(580, 'users-permissions', 'user', 'me', 0, '', 7),
(581, 'users-permissions', 'user', 'count', 0, '', 7),
(582, 'users-permissions', 'user', 'findone', 0, '', 7),
(583, 'users-permissions', 'user', 'create', 0, '', 7),
(584, 'users-permissions', 'user', 'update', 0, '', 7),
(585, 'users-permissions', 'user', 'destroy', 0, '', 7),
(586, 'users-permissions', 'user', 'destroyall', 0, '', 7),
(587, 'users-permissions', 'userspermissions', 'getemailtemplate', 0, '', 7),
(588, 'users-permissions', 'userspermissions', 'searchusers', 0, '', 7),
(589, 'users-permissions', 'userspermissions', 'getroutes', 0, '', 7),
(590, 'users-permissions', 'userspermissions', 'deleterole', 0, '', 7),
(591, 'users-permissions', 'userspermissions', 'getpolicies', 0, '', 7),
(592, 'users-permissions', 'userspermissions', 'getroles', 0, '', 7),
(593, 'users-permissions', 'userspermissions', 'getrole', 0, '', 7),
(594, 'users-permissions', 'userspermissions', 'getproviders', 0, '', 7),
(595, 'users-permissions', 'userspermissions', 'updateemailtemplate', 0, '', 7),
(596, 'users-permissions', 'userspermissions', 'updateadvancedsettings', 0, '', 7),
(597, 'users-permissions', 'userspermissions', 'getpermissions', 0, '', 7),
(598, 'users-permissions', 'userspermissions', 'init', 0, '', 7),
(599, 'users-permissions', 'userspermissions', 'index', 0, '', 7),
(600, 'users-permissions', 'userspermissions', 'createrole', 0, '', 7),
(601, 'users-permissions', 'userspermissions', 'updateproviders', 0, '', 7),
(602, 'users-permissions', 'userspermissions', 'getadvancedsettings', 0, '', 7),
(603, 'users-permissions', 'userspermissions', 'deleteprovider', 0, '', 7),
(604, 'users-permissions', 'userspermissions', 'updaterole', 0, '', 7),
(609, 'application', 'mensualidades', 'count', 0, '', 1),
(610, 'application', 'mensualidades', 'count', 1, '', 2),
(611, 'application', 'mensualidades', 'count', 0, '', 3),
(612, 'application', 'mensualidades', 'count', 0, '', 7),
(613, 'application', 'mensualidades', 'create', 1, '', 2),
(614, 'application', 'mensualidades', 'create', 0, '', 1),
(615, 'application', 'mensualidades', 'create', 0, '', 3),
(616, 'application', 'mensualidades', 'create', 0, '', 7),
(617, 'application', 'mensualidades', 'delete', 0, '', 1),
(618, 'application', 'mensualidades', 'delete', 1, '', 2),
(619, 'application', 'mensualidades', 'delete', 0, '', 3),
(620, 'application', 'mensualidades', 'delete', 0, '', 7),
(621, 'application', 'mensualidades', 'find', 0, '', 1),
(622, 'application', 'mensualidades', 'find', 1, '', 2),
(623, 'application', 'mensualidades', 'find', 0, '', 3),
(624, 'application', 'mensualidades', 'find', 0, '', 7),
(625, 'application', 'mensualidades', 'findone', 0, '', 1),
(626, 'application', 'mensualidades', 'findone', 1, '', 2),
(627, 'application', 'mensualidades', 'findone', 0, '', 3),
(628, 'application', 'mensualidades', 'findone', 0, '', 7),
(629, 'application', 'mensualidades', 'update', 0, '', 1),
(630, 'application', 'mensualidades', 'update', 1, '', 2),
(631, 'application', 'mensualidades', 'update', 0, '', 3),
(632, 'application', 'mensualidades', 'update', 0, '', 7),
(641, 'application', 'categorias', 'findbynombre', 0, '', 1),
(642, 'application', 'categorias', 'findbynombre', 1, '', 2),
(643, 'application', 'categorias', 'findbynombre', 0, '', 7),
(644, 'application', 'categorias', 'findbynombre', 0, '', 3),
(645, 'application', 'alumnos', 'findbydocente', 0, '', 1),
(646, 'application', 'alumnos', 'findbydocente', 1, '', 3),
(647, 'application', 'alumnos', 'findbydocente', 1, '', 2),
(648, 'application', 'alumnos', 'findbydocente', 1, '', 7),
(649, 'application', 'alumnos', 'findbyapellido', 0, '', 1),
(650, 'application', 'alumnos', 'findbyapellido', 1, '', 2),
(651, 'application', 'alumnos', 'findbyapellido', 1, '', 3),
(653, 'application', 'alumnos', 'findbyapellido', 1, '', 7),
(656, 'application', 'alumnos', 'findbynombre', 0, '', 1),
(658, 'application', 'alumnos', 'findbynombre', 1, '', 2),
(659, 'application', 'alumnos', 'findbynombre', 1, '', 3),
(660, 'application', 'alumnos', 'findbynombre', 1, '', 7),
(661, 'application', 'alumnos', 'findbydocumento', 0, '', 1),
(662, 'application', 'alumnos', 'findbydocumento', 1, '', 2),
(663, 'application', 'alumnos', 'findbydocumento', 1, '', 3),
(664, 'application', 'alumnos', 'findbydocumento', 1, '', 7),
(665, 'application', 'actividades', 'findalumno', 0, '', 3),
(666, 'application', 'actividades', 'findalumno', 0, '', 7),
(667, 'application', 'actividades', 'findalumno', 0, '', 1),
(668, 'application', 'actividades', 'findalumno', 1, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_role`
--

CREATE TABLE `users-permissions_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_role`
--

INSERT INTO `users-permissions_role` (`id`, `name`, `description`, `type`) VALUES
(1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated'),
(2, 'Public', 'Default role given to unauthenticated user.', 'public'),
(3, 'docente', '', 'docente'),
(7, 'administrador', '', 'administrador');

-- --------------------------------------------------------

--
-- Table structure for table `users-permissions_user`
--

CREATE TABLE `users-permissions_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `resetPasswordToken` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users-permissions_user`
--

INSERT INTO `users-permissions_user` (`id`, `username`, `email`, `provider`, `password`, `resetPasswordToken`, `confirmed`, `blocked`, `role`, `created_at`, `updated_at`) VALUES
(1, 'jose perez', 'profesor1@strapi.io', 'local', '$2a$10$L4MQJ2VThiWv7feKBHUvn.58hr2cyc/tBrnhtSfEoDbRPTTg5vo76', NULL, 1, 0, 3, '2020-07-26 20:19:13', '2020-07-29 15:01:09'),
(2, 'Administrador', 'administrador@strapi.io', 'local', '$2a$10$1/P.Va2siyueGPsVvgj76.z1lhwmpCj036ZnLsYWReewpfX7wEIfq', NULL, 1, 0, 7, '2020-07-26 20:19:53', '2020-08-22 05:15:05');

-- --------------------------------------------------------

--
-- Table structure for table `valoracions`
--

CREATE TABLE `valoracions` (
  `id` int(10) UNSIGNED NOT NULL,
  `ID_VALORACION` int(11) NOT NULL,
  `NOMBRE` varchar(255) NOT NULL,
  `VALOR` varchar(255) NOT NULL,
  `alumno` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ID_ESTUDIANTE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actividades`
--
ALTER TABLE `actividades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `actividades_ID_ACTIVIDAD_unique` (`ID_ACTIVIDAD`);

--
-- Indexes for table `acudientes`
--
ALTER TABLE `acudientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `acudientes_ID_ACUDIENTE_unique` (`ID_ACUDIENTE`);

--
-- Indexes for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alumnos_ID_ALUMNO_unique` (`ID_ALUMNO`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categorias_ID_CATEGORIA_unique` (`ID_CATEGORIA`);

--
-- Indexes for table `categorias_restaurantes__restaurantes_categorias`
--
ALTER TABLE `categorias_restaurantes__restaurantes_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `core_store`
--
ALTER TABLE `core_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deportes`
--
ALTER TABLE `deportes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `deportes_ID_DEPORTE_unique` (`ID_DEPORTE`);

--
-- Indexes for table `entrenadors`
--
ALTER TABLE `entrenadors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `entrenadors_ID_ENTRENADOR_unique` (`ID_ENTRENADOR`);

--
-- Indexes for table `escuelas`
--
ALTER TABLE `escuelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventarios`
--
ALTER TABLE `inventarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventarios_ID_OBJETO_unique` (`ID_OBJETO`);

--
-- Indexes for table `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lugares_ID_LUGAR_unique` (`ID_LUGAR`);

--
-- Indexes for table `mensualidades`
--
ALTER TABLE `mensualidades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mensualidades_ID_MENSUALIDAD_unique` (`ID_MENSUALIDAD`);

--
-- Indexes for table `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `movimientos_ID_MOVIMIENTO_unique` (`ID_MOVIMIENTO`);

--
-- Indexes for table `restaurantes`
--
ALTER TABLE `restaurantes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `restaurantes_nombre_unique` (`nombre`);

--
-- Indexes for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_administrator_username_unique` (`username`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file`
--
ALTER TABLE `upload_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_role_type_unique` (`type`);

--
-- Indexes for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users-permissions_user_username_unique` (`username`);

--
-- Indexes for table `valoracions`
--
ALTER TABLE `valoracions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `valoracions_ID_VALORACION_unique` (`ID_VALORACION`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actividades`
--
ALTER TABLE `actividades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `acudientes`
--
ALTER TABLE `acudientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categorias_restaurantes__restaurantes_categorias`
--
ALTER TABLE `categorias_restaurantes__restaurantes_categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `core_store`
--
ALTER TABLE `core_store`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `deportes`
--
ALTER TABLE `deportes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `entrenadors`
--
ALTER TABLE `entrenadors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `escuelas`
--
ALTER TABLE `escuelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `inventarios`
--
ALTER TABLE `inventarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lugares`
--
ALTER TABLE `lugares`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `mensualidades`
--
ALTER TABLE `mensualidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurantes`
--
ALTER TABLE `restaurantes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_administrator`
--
ALTER TABLE `strapi_administrator`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_file`
--
ALTER TABLE `upload_file`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_file_morph`
--
ALTER TABLE `upload_file_morph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users-permissions_permission`
--
ALTER TABLE `users-permissions_permission`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=669;

--
-- AUTO_INCREMENT for table `users-permissions_role`
--
ALTER TABLE `users-permissions_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users-permissions_user`
--
ALTER TABLE `users-permissions_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `valoracions`
--
ALTER TABLE `valoracions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
