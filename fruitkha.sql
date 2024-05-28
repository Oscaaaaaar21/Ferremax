-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-05-2024 a las 05:37:54
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fruitkha`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add tipo producto', 7, 'add_tipoproducto'),
(26, 'Can change tipo producto', 7, 'change_tipoproducto'),
(27, 'Can delete tipo producto', 7, 'delete_tipoproducto'),
(28, 'Can view tipo producto', 7, 'view_tipoproducto'),
(29, 'Can add producto', 8, 'add_producto'),
(30, 'Can change producto', 8, 'change_producto'),
(31, 'Can delete producto', 8, 'delete_producto'),
(32, 'Can view producto', 8, 'view_producto'),
(33, 'Can add contacto', 9, 'add_contacto'),
(34, 'Can change contacto', 9, 'change_contacto'),
(35, 'Can delete contacto', 9, 'delete_contacto'),
(36, 'Can view contacto', 9, 'view_contacto'),
(37, 'Can add compra', 10, 'add_compra'),
(38, 'Can change compra', 10, 'change_compra'),
(39, 'Can delete compra', 10, 'delete_compra'),
(40, 'Can view compra', 10, 'view_compra'),
(41, 'Can add pedido', 11, 'add_pedido'),
(42, 'Can change pedido', 11, 'change_pedido'),
(43, 'Can delete pedido', 11, 'delete_pedido'),
(44, 'Can view pedido', 11, 'view_pedido'),
(45, 'Can add linea pedido', 12, 'add_lineapedido'),
(46, 'Can change linea pedido', 12, 'change_lineapedido'),
(47, 'Can delete linea pedido', 12, 'delete_lineapedido'),
(48, 'Can view linea pedido', 12, 'view_lineapedido'),
(49, 'Can add Entrega Pedido', 13, 'add_entregapedido'),
(50, 'Can change Entrega Pedido', 13, 'change_entregapedido'),
(51, 'Can delete Entrega Pedido', 13, 'delete_entregapedido'),
(52, 'Can view Entrega Pedido', 13, 'view_entregapedido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$720000$cOgpijdu5rE7Xa6Mbnro03$2jLT85MYKykiSv/UkGJ8GSCaN5U2ZMsdPfZvXO4Ll0M=', '2024-05-28 03:30:41.665057', 1, 'admin', '', '', 'fra.vasquezo@duocuc.cl', 1, 1, '2024-05-28 01:17:00.624773');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_compra`
--

CREATE TABLE `core_compra` (
  `id` bigint(20) NOT NULL,
  `fecha` datetime(6) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_contacto`
--

CREATE TABLE `core_contacto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(254) NOT NULL,
  `tipo_consulta` int(11) NOT NULL,
  `mensaje` longtext NOT NULL,
  `avisos` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_producto`
--

CREATE TABLE `core_producto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `tipo_id` bigint(20) NOT NULL,
  `imagen` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_producto`
--

INSERT INTO `core_producto` (`id`, `nombre`, `precio`, `stock`, `tipo_id`, `imagen`) VALUES
(1, 'Mjölnir', 10990, 15, 3, 'productos/martillo_de_thor.jpg'),
(2, 'alicate', 5990, 9, 2, 'productos/alicate_wbYEE1R.jpg'),
(3, 'tipos de tornillos', 2000, 100, 1, 'productos/tipos_de_tornillo.jpg'),
(4, 'Tipos de pernos', 1990, 250, 2, 'productos/tipos_de_pernos.jpg'),
(5, 'Destornilladores', 7990, 5, 1, 'productos/desatornilladores_fBeizKl.jpg'),
(6, 'Guincha de medir', 10000, 60, 2, 'productos/guincha_de_medir.jpg'),
(7, 'Taladro 4x4', 27990, 25, 2, 'productos/taladro_25ATr19.jpg'),
(8, 'Serrucho', 12990, 190, 2, 'productos/serrucho_rgzcIuQ.jpg'),
(9, 'pala de acero', 8990, 61, 2, 'productos/pala_sWUvhPi.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `core_tipoproducto`
--

CREATE TABLE `core_tipoproducto` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `core_tipoproducto`
--

INSERT INTO `core_tipoproducto` (`id`, `descripcion`) VALUES
(1, 'herramientas'),
(2, 'herramienta'),
(3, 'herramienta de golpe');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-05-28 01:40:54.102313', '1', 'herramientas', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-05-28 01:41:20.758714', '2', 'herramienta', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-05-28 01:41:53.688999', '3', 'herramienta de golpe', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-05-28 01:41:58.000690', '1', 'Mjölnir', 1, '[{\"added\": {}}]', 8, 1),
(5, '2024-05-28 01:43:32.461772', '2', 'alicate', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'core', 'compra'),
(9, 'core', 'contacto'),
(8, 'core', 'producto'),
(7, 'core', 'tipoproducto'),
(13, 'pedidos', 'entregapedido'),
(12, 'pedidos', 'lineapedido'),
(11, 'pedidos', 'pedido'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-05-28 01:14:08.621111'),
(2, 'auth', '0001_initial', '2024-05-28 01:14:08.961569'),
(3, 'admin', '0001_initial', '2024-05-28 01:14:09.039137'),
(4, 'admin', '0002_logentry_remove_auto_add', '2024-05-28 01:14:09.045008'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2024-05-28 01:14:09.049660'),
(6, 'contenttypes', '0002_remove_content_type_name', '2024-05-28 01:14:09.093583'),
(7, 'auth', '0002_alter_permission_name_max_length', '2024-05-28 01:14:09.134749'),
(8, 'auth', '0003_alter_user_email_max_length', '2024-05-28 01:14:09.144084'),
(9, 'auth', '0004_alter_user_username_opts', '2024-05-28 01:14:09.151598'),
(10, 'auth', '0005_alter_user_last_login_null', '2024-05-28 01:14:09.187698'),
(11, 'auth', '0006_require_contenttypes_0002', '2024-05-28 01:14:09.189720'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2024-05-28 01:14:09.194699'),
(13, 'auth', '0008_alter_user_username_max_length', '2024-05-28 01:14:09.203910'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2024-05-28 01:14:09.213169'),
(15, 'auth', '0010_alter_group_name_max_length', '2024-05-28 01:14:09.223684'),
(16, 'auth', '0011_update_proxy_permissions', '2024-05-28 01:14:09.229714'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2024-05-28 01:14:09.237884'),
(18, 'core', '0001_initial', '2024-05-28 01:14:09.290993'),
(19, 'core', '0002_producto_imagen', '2024-05-28 01:14:09.296105'),
(20, 'core', '0003_contacto', '2024-05-28 01:14:09.302104'),
(21, 'core', '0004_auto_20230520_1933', '2024-05-28 01:14:09.715961'),
(22, 'core', '0005_alter_contacto_id_alter_producto_id_and_more', '2024-05-28 01:14:10.057578'),
(23, 'core', '0006_compra', '2024-05-28 01:14:10.063630'),
(24, 'core', '0007_producto_marca', '2024-05-28 01:14:10.073865'),
(25, 'core', '0008_remove_producto_marca', '2024-05-28 01:14:10.080972'),
(26, 'pedidos', '0001_initial', '2024-05-28 01:14:10.237287'),
(27, 'pedidos', '0002_pedido_estado', '2024-05-28 01:14:10.247980'),
(28, 'pedidos', '0003_lineapedido_estado', '2024-05-28 01:14:10.259542'),
(29, 'pedidos', '0004_remove_lineapedido_estado', '2024-05-28 01:14:10.269161'),
(30, 'pedidos', '0005_alter_lineapedido_id_alter_pedido_id', '2024-05-28 01:14:10.638438'),
(31, 'pedidos', '0006_entregapedido', '2024-05-28 01:14:10.715585'),
(32, 'pedidos', '0007_alter_entregapedido_options_and_more', '2024-05-28 01:14:10.729569'),
(33, 'pedidos', '0008_alter_entregapedido_table', '2024-05-28 01:14:10.741209'),
(34, 'pedidos', '0009_alter_entregapedido_table', '2024-05-28 01:14:10.752904'),
(35, 'sessions', '0001_initial', '2024-05-28 01:14:10.781145');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('q9avv8hguesulignaxyyypmb8a33iy3h', '.eJxVjDsOgzAQBe-ydWT5txgo03MG5M9uIIlsyUCFuHuCREP7ZubtEH2tBfr9eMDot3Uat4XqOCfoQcFtCz5-KJ8gvX1-FRFLXuscxKmIiy5iKIm-z8u9HUx-mf61xoDMMrRILmHLllinQK1DZZ02NlrvGuyslkohyyZJrZVB6pQJjI7h-AFtGzrQ:1sBnXt:0DMnV5wGJB25LSmOgwTAWBiOIhF-xIlY-KjWGp4xuSg', '2024-06-11 03:30:41.668241');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entregapedido`
--

CREATE TABLE `entregapedido` (
  `id` bigint(20) NOT NULL,
  `fecha_entrega` date NOT NULL,
  `observaciones` longtext NOT NULL,
  `pedido_id` bigint(20) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` bigint(20) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `created_at`, `user_id`, `estado`) VALUES
(1, '2024-05-27 21:46:14.531688', 1, 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos_lineapedido`
--

CREATE TABLE `pedidos_lineapedido` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `pedido_id` bigint(20) NOT NULL,
  `producto_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pedidos_lineapedido`
--

INSERT INTO `pedidos_lineapedido` (`id`, `cantidad`, `created_at`, `pedido_id`, `producto_id`, `user_id`) VALUES
(1, 1, '2024-05-27 21:46:14.553604', 1, 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `core_compra`
--
ALTER TABLE `core_compra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_contacto`
--
ALTER TABLE `core_contacto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_producto_tipo_id_e0e92ad1_fk` (`tipo_id`);

--
-- Indices de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `entregapedido`
--
ALTER TABLE `entregapedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_entregapedido_pedido_id_28c1ea96_fk_pedidos_id` (`pedido_id`),
  ADD KEY `pedidos_entregapedido_usuario_id_41a6338d_fk_auth_user_id` (`usuario_id`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_user_id_c7db7ff2_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `pedidos_lineapedido`
--
ALTER TABLE `pedidos_lineapedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pedidos_lineapedido_producto_id_4ae1f0c1_fk_core_producto_id` (`producto_id`),
  ADD KEY `pedidos_lineapedido_user_id_096951d1_fk_auth_user_id` (`user_id`),
  ADD KEY `pedidos_lineapedido_pedido_id_8e7e2da6_fk` (`pedido_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_compra`
--
ALTER TABLE `core_compra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_contacto`
--
ALTER TABLE `core_contacto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `core_producto`
--
ALTER TABLE `core_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `core_tipoproducto`
--
ALTER TABLE `core_tipoproducto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `entregapedido`
--
ALTER TABLE `entregapedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pedidos_lineapedido`
--
ALTER TABLE `pedidos_lineapedido`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `core_producto`
--
ALTER TABLE `core_producto`
  ADD CONSTRAINT `core_producto_tipo_id_e0e92ad1_fk` FOREIGN KEY (`tipo_id`) REFERENCES `core_tipoproducto` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `entregapedido`
--
ALTER TABLE `entregapedido`
  ADD CONSTRAINT `pedidos_entregapedido_pedido_id_28c1ea96_fk_pedidos_id` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `pedidos_entregapedido_usuario_id_41a6338d_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_user_id_c7db7ff2_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `pedidos_lineapedido`
--
ALTER TABLE `pedidos_lineapedido`
  ADD CONSTRAINT `pedidos_lineapedido_pedido_id_8e7e2da6_fk` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  ADD CONSTRAINT `pedidos_lineapedido_producto_id_4ae1f0c1_fk_core_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `core_producto` (`id`),
  ADD CONSTRAINT `pedidos_lineapedido_user_id_096951d1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
