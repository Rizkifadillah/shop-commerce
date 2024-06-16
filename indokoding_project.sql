-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2024 at 04:09 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `indokoding_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_resets_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2024_06_13_034212_create_shop_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_addresses`
--

CREATE TABLE `shop_addresses` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `postcode` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_attributes`
--

CREATE TABLE `shop_attributes` (
  `id` char(36) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `attribute_type` varchar(255) NOT NULL,
  `validation_rules` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_attribute_options`
--

CREATE TABLE `shop_attribute_options` (
  `id` char(36) NOT NULL,
  `attribute_id` char(36) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_carts`
--

CREATE TABLE `shop_carts` (
  `id` char(36) NOT NULL,
  `user_id` char(36) DEFAULT NULL,
  `expired_at` datetime NOT NULL,
  `base_total_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_cart_items`
--

CREATE TABLE `shop_cart_items` (
  `id` char(36) NOT NULL,
  `cart_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `parent_id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
('9c468ede-0470-41c0-a576-ac2aff25e9e4', NULL, 'consequatur-qui', 'Consequatur qui.', '2024-06-13 01:49:46', '2024-06-13 01:49:46'),
('9c468ee0-7026-436d-9b6b-8623722c546a', NULL, 'iusto-libero', 'Iusto libero.', '2024-06-13 01:49:47', '2024-06-13 01:49:47'),
('9c468ee0-8dee-47bf-94d3-de1283089267', NULL, 'commodi-soluta', 'Commodi soluta.', '2024-06-13 01:49:47', '2024-06-13 01:49:47'),
('9c468ee0-b1d1-4dad-9c23-d8939fdbe706', NULL, 'perspiciatis-maxime', 'Perspiciatis maxime.', '2024-06-13 01:49:47', '2024-06-13 01:49:47'),
('9c468ee0-c556-4e5f-97a1-e8d5f649110a', NULL, 'quidem-magni', 'Quidem magni.', '2024-06-13 01:49:47', '2024-06-13 01:49:47');

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories_products`
--

CREATE TABLE `shop_categories_products` (
  `product_id` char(36) NOT NULL,
  `category_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_orders`
--

CREATE TABLE `shop_orders` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `approved_by` char(36) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `cancelled_by` char(36) DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `cancellation_note` text DEFAULT NULL,
  `order_date` datetime NOT NULL,
  `payment_due` datetime NOT NULL,
  `base_total_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `shipping_cost` decimal(16,2) NOT NULL DEFAULT 0.00,
  `grand_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `customer_note` text DEFAULT NULL,
  `customer_first_name` varchar(255) NOT NULL,
  `customer_last_name` varchar(255) NOT NULL,
  `customer_address1` varchar(255) DEFAULT NULL,
  `customer_address2` varchar(255) DEFAULT NULL,
  `customer_phone` varchar(255) DEFAULT NULL,
  `customer_email` varchar(255) DEFAULT NULL,
  `customer_city` varchar(255) DEFAULT NULL,
  `customer_province` varchar(255) DEFAULT NULL,
  `customer_postcode` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_items`
--

CREATE TABLE `shop_order_items` (
  `id` char(36) NOT NULL,
  `order_id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `qty` int(11) NOT NULL,
  `base_price` decimal(16,2) NOT NULL DEFAULT 0.00,
  `base_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `tax_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `discount_percent` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sub_total` decimal(16,2) NOT NULL DEFAULT 0.00,
  `sku` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`attributes`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_payments`
--

CREATE TABLE `shop_payments` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `order_id` char(36) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `approved_by` char(36) DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  `note` text DEFAULT NULL,
  `rejected_by` char(36) DEFAULT NULL,
  `rejected_at` datetime DEFAULT NULL,
  `rejection_note` text DEFAULT NULL,
  `amount` decimal(16,2) NOT NULL DEFAULT 0.00,
  `payloads` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`payloads`)),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_products`
--

CREATE TABLE `shop_products` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `sale_price` decimal(15,2) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `stock_status` varchar(255) NOT NULL DEFAULT 'IN_STOCK',
  `manage_stock` tinyint(1) NOT NULL DEFAULT 0,
  `publish_date` datetime DEFAULT NULL,
  `excerpt` text DEFAULT NULL,
  `body` text DEFAULT NULL,
  `metas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metas`)),
  `featured_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_products_tags`
--

CREATE TABLE `shop_products_tags` (
  `product_id` char(36) NOT NULL,
  `tag_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_attributes`
--

CREATE TABLE `shop_product_attributes` (
  `id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `attribute_id` char(36) NOT NULL,
  `string_value` varchar(255) DEFAULT NULL,
  `text_value` text DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` decimal(8,2) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_product_inventories`
--

CREATE TABLE `shop_product_inventories` (
  `id` char(36) NOT NULL,
  `product_id` char(36) NOT NULL,
  `product_attribute_id` char(36) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `low_stock_threshold` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_tags`
--

CREATE TABLE `shop_tags` (
  `id` char(36) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
('9c4615f7-d6a0-4aa7-b5a3-18f586d9a1c3', 'ponds', 'ponds@gmail.com', NULL, '$2y$10$lq2A34/IfO8KXAXued1rj.rak82bAyQdkfImsyrTSpjwP8pb4E1KG', NULL, '2024-06-12 20:11:42', '2024-06-12 20:11:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `shop_addresses`
--
ALTER TABLE `shop_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_addresses_user_id_index` (`user_id`);

--
-- Indexes for table `shop_attributes`
--
ALTER TABLE `shop_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shop_attribute_options`
--
ALTER TABLE `shop_attribute_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_attribute_options_attribute_id_index` (`attribute_id`);

--
-- Indexes for table `shop_carts`
--
ALTER TABLE `shop_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_carts_user_id_index` (`user_id`),
  ADD KEY `shop_carts_expired_at_index` (`expired_at`);

--
-- Indexes for table `shop_cart_items`
--
ALTER TABLE `shop_cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `shop_cart_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_categories_slug_parent_id_unique` (`slug`,`parent_id`),
  ADD KEY `shop_categories_created_at_index` (`created_at`),
  ADD KEY `shop_categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `shop_categories_products`
--
ALTER TABLE `shop_categories_products`
  ADD UNIQUE KEY `shop_categories_products_product_id_category_id_unique` (`product_id`,`category_id`),
  ADD KEY `shop_categories_products_category_id_foreign` (`category_id`);

--
-- Indexes for table `shop_orders`
--
ALTER TABLE `shop_orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_orders_code_unique` (`code`),
  ADD KEY `shop_orders_approved_by_foreign` (`approved_by`),
  ADD KEY `shop_orders_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `shop_orders_code_index` (`code`),
  ADD KEY `shop_orders_code_order_date_index` (`code`,`order_date`),
  ADD KEY `shop_orders_user_id_index` (`user_id`);

--
-- Indexes for table `shop_order_items`
--
ALTER TABLE `shop_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_order_items_order_id_foreign` (`order_id`),
  ADD KEY `shop_order_items_product_id_foreign` (`product_id`),
  ADD KEY `shop_order_items_sku_index` (`sku`);

--
-- Indexes for table `shop_payments`
--
ALTER TABLE `shop_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_payments_payment_type_index` (`payment_type`),
  ADD KEY `shop_payments_user_id_index` (`user_id`),
  ADD KEY `shop_payments_order_id_index` (`order_id`);

--
-- Indexes for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_products_sku_parent_id_unique` (`sku`,`parent_id`),
  ADD KEY `shop_products_user_id_index` (`user_id`),
  ADD KEY `shop_products_parent_id_index` (`parent_id`),
  ADD KEY `shop_products_publish_date_index` (`publish_date`);

--
-- Indexes for table `shop_products_tags`
--
ALTER TABLE `shop_products_tags`
  ADD UNIQUE KEY `shop_products_tags_product_id_tag_id_unique` (`product_id`,`tag_id`),
  ADD KEY `shop_products_tags_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `shop_product_attributes`
--
ALTER TABLE `shop_product_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_product_attributes_product_id_foreign` (`product_id`),
  ADD KEY `shop_product_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `shop_product_inventories`
--
ALTER TABLE `shop_product_inventories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_product_inventories_product_id_foreign` (`product_id`),
  ADD KEY `shop_product_inventories_product_attribute_id_foreign` (`product_attribute_id`);

--
-- Indexes for table `shop_tags`
--
ALTER TABLE `shop_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `shop_tags_slug_unique` (`slug`),
  ADD KEY `shop_tags_created_at_index` (`created_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `shop_addresses`
--
ALTER TABLE `shop_addresses`
  ADD CONSTRAINT `shop_addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shop_attribute_options`
--
ALTER TABLE `shop_attribute_options`
  ADD CONSTRAINT `shop_attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `shop_attributes` (`id`);

--
-- Constraints for table `shop_carts`
--
ALTER TABLE `shop_carts`
  ADD CONSTRAINT `shop_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shop_cart_items`
--
ALTER TABLE `shop_cart_items`
  ADD CONSTRAINT `shop_cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `shop_carts` (`id`),
  ADD CONSTRAINT `shop_cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`);

--
-- Constraints for table `shop_categories_products`
--
ALTER TABLE `shop_categories_products`
  ADD CONSTRAINT `shop_categories_products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `shop_categories` (`id`),
  ADD CONSTRAINT `shop_categories_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`);

--
-- Constraints for table `shop_orders`
--
ALTER TABLE `shop_orders`
  ADD CONSTRAINT `shop_orders_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shop_orders_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `shop_orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shop_order_items`
--
ALTER TABLE `shop_order_items`
  ADD CONSTRAINT `shop_order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `shop_orders` (`id`),
  ADD CONSTRAINT `shop_order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`);

--
-- Constraints for table `shop_payments`
--
ALTER TABLE `shop_payments`
  ADD CONSTRAINT `shop_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `shop_orders` (`id`),
  ADD CONSTRAINT `shop_payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shop_products`
--
ALTER TABLE `shop_products`
  ADD CONSTRAINT `shop_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `shop_products_tags`
--
ALTER TABLE `shop_products_tags`
  ADD CONSTRAINT `shop_products_tags_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`),
  ADD CONSTRAINT `shop_products_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `shop_tags` (`id`);

--
-- Constraints for table `shop_product_attributes`
--
ALTER TABLE `shop_product_attributes`
  ADD CONSTRAINT `shop_product_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `shop_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_product_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shop_product_inventories`
--
ALTER TABLE `shop_product_inventories`
  ADD CONSTRAINT `shop_product_inventories_product_attribute_id_foreign` FOREIGN KEY (`product_attribute_id`) REFERENCES `shop_product_attributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `shop_product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `shop_products` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
