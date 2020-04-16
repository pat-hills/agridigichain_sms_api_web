-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 15, 2020 at 06:01 AM
-- Server version: 10.1.43-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ulabcbyg_fbsdigichain`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `fullname` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `contact` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `email`, `password`, `email_verified_at`, `contact`, `country`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Desmond Kooney', 'desmond@completefarmer.com', '$2y$10$xv1fSmpaULcc2aKNGSRGm.gJrrpZk4p0BSXvxekNrmp.t5nvpiL2e', NULL, '0201234567', '233', NULL, '2020-01-04 12:39:12', '2020-01-04 12:39:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `fullname` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '123456',
  `gender` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_status` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `educational_level` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_occupation` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minor_occupation` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dependants` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `farm_acres` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb_scan` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `index_scan` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_scan` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ring_scan` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `little_scan` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`id`, `user_id`, `fullname`, `username`, `email`, `password`, `gender`, `contact`, `location`, `age`, `marital_status`, `educational_level`, `main_occupation`, `minor_occupation`, `dependants`, `farm_acres`, `image_url`, `thumb_scan`, `index_scan`, `middle_scan`, `ring_scan`, `little_scan`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, '\"Oliver Mensah\"', '\"Oliver\"', '\"olivermensah96@gmail.com\"', '123456', '\"Male\"', '\"4158\"', '\"Accra\"', '56', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '67', '89', '0bafc736-40ad-4a8f-b079-144efdeff4daprofile.png', 'cc4291ba-b2ff-43c2-9549-2b844cf26c0dthumb.png', 'd54c0726-7936-4000-bed2-9d765d378d9cindex.png', 'fef05496-c289-4538-bafd-8a7597aee38amiddle.png', '912f1bad-4fac-4fff-a784-918841e10536ring.png', 'f4080218-d738-4c3d-a49d-287bf93f3a92profile.png', '1', '2020-01-11 01:46:43', '2020-01-11 01:46:43', NULL),
(2, 1, '\"Peter Noah\"', '\"Noah11\"', '\"kev1@completefarmer.com\"', '123456', '\"Male\"', '\"0544369681\"', '\"Adenra\"', '45', '\"Divorced\"', '\"Post-secondary\"', '\"Government/public sector employee\"', '\"Farming\"', '55', '56', '2e4add47-2236-4b0a-b811-57908b65c9a0profile.png', '3f367ea1-d1fe-436b-a963-e7721fd0887athumb.png', '3de8eb9c-bfe9-49fb-b07d-472e29bd7172index.png', '1ad47bf3-c064-4389-b547-77db6c6bf5a7middle.png', 'fc57207e-2f03-46d2-a79d-e73e4f9dd2bfring.png', 'ee5daec3-fa6e-4f9f-98a3-286241043258profile.png', '1', '2020-01-14 13:36:44', '2020-01-14 13:36:44', NULL),
(3, 1, '\"kelvin\"', '\"silent \"', '\"kbkwame@gmail.com\"', '123456', '\"Male\"', '\"0549850092\"', '\"East Legon\"', '23', '\"Single\"', '\"Post-secondary\"', '\"Farming\"', '\"Farming\"', '5', '25', 'f16a5fe7-b132-4c8b-9ff3-0614e4bc55afprofile.png', '39a0d13b-4a54-4899-b51c-9c5350d5d91ethumb.png', '834a8557-201d-4209-b9d9-b7f8a3b35c9eindex.png', 'd55b9803-6094-46d6-872d-778beda2a1bbmiddle.png', '3c75a1db-ab94-410c-b090-4d0c913652c8ring.png', '203d440e-ee77-4e20-be1c-1f7a1eac3cf7profile.png', '1', '2020-01-15 01:12:36', '2020-01-15 01:12:36', NULL),
(4, 1, '\"Akwasi Boatsng\"', '\"Akwasi\"', '\"kwadiboateng@gmail.com\"', '123456', '\"Male\"', '\"0245463201\"', '\"Nkoranza\"', '70', '\"Married\"', '\"Primary\"', '\"Farming\"', '\"Farming\"', '17', '8', '126da243-b609-4dc4-b153-16c85b04daa4profile.png', '23461dd7-3468-468c-ba71-926d9c1b78cathumb.png', '1b54f274-5bcd-4095-a7cb-70aade4e2c4bindex.png', '0d103bc6-c22e-4f5b-bffb-ca805a2acb8bmiddle.png', '40e411fe-c125-4735-b16e-0245e1052b69ring.png', '11d7de27-db78-45fe-aba0-418ea5d3fa85profile.png', '1', '2020-01-15 01:12:37', '2020-01-15 01:12:37', NULL),
(5, 1, '\"Akwasi Ampofo\"', '\"Akwasi2\"', '\"info@fbsinnova.com\"', '123456', '\"Male\"', '\"0247872237\"', '\"Nkoranza\"', '66', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"Farming\"', '9', '8', '79ba51f6-9aae-4d31-9efe-2a0db31986c4profile.png', '35b6f1d2-8126-4fcf-953d-53a1e3b1a94dthumb.png', 'c6b85811-f77d-42a7-80e1-8b017c3355afindex.png', 'a3a364e3-f035-4e69-a0ec-6fe137899e52middle.png', '6afa0bd7-d615-4061-8dcd-0b1875fdc064ring.png', 'f50ac6a7-dbd0-44bc-84b6-d595b2dcb332profile.png', '1', '2020-01-15 01:12:37', '2020-01-15 01:12:37', NULL),
(6, 1, '\"Kwame Agyei\"', '\"Kwame \"', '\"kwameagyei1@gmail.com\"', '123456', '\"Male\"', '\"0000000000\"', '\"Nkoranza\"', '67', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '16', '10', '044bace6-736d-43ed-9944-b1cf7ecb81aeprofile.png', '4b6142de-3aa3-47b0-983f-7a4514945399thumb.png', '4352930d-5bd5-4945-9dde-0db2ec7ccde0index.png', 'f8ea7f8a-ff77-41bf-8a51-ea2b36523733middle.png', '83b6a956-371d-4303-81c7-ce8b44028575ring.png', '383acdf7-9bf6-455d-9b8e-eed690b3fbe7profile.png', '1', '2020-01-15 01:12:38', '2020-01-15 01:12:38', NULL),
(7, 1, '\"Kwadwo Gyasi\"', '\"Kwadwo\"', '\"kwadwogyasi@gmail.com\"', '123456', '\"Male\"', '\"0554006406\"', '\"Nkoranza\"', '29', '\"Married\"', '\"Primary\"', '\"electric welder\"', '\"Farming\"', '5', '6', 'c70c360e-0740-49e3-b4c9-79dc8f0c8a2aprofile.png', '8256105a-a6fb-4dc9-a3e7-6baab11be8ccthumb.png', '1e1f3ede-2985-4715-8edd-897683589b54index.png', '145282e1-31a2-4ccf-bd3a-b7e33761ce6bmiddle.png', '443077ee-c98a-4df5-b464-9107cc97895dring.png', '38c1895c-be71-478d-81b4-d3cd29acc6d6profile.png', '1', '2020-01-15 01:12:40', '2020-01-15 01:12:40', NULL),
(8, 1, '\"Kwadwo Fa\"', '\"kwadwo1\"', '\"kwadwo12fa@gmail.com\"', '123456', '\"Male\"', '\"0261156185\"', '\"Nkoranza\"', '74', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '7', '10', '799706e6-4d81-47b1-92cd-7f917309f258profile.png', 'a888412d-d138-4c0d-b0c5-fbebc6104c5fthumb.png', 'a2766816-d357-4f83-bb6f-4c7dc255201dindex.png', '850c917f-12f5-4164-b01c-d279f268dfa9middle.png', '3840a0b9-9919-4251-ae32-0c87865a59a3ring.png', '13f7b319-972d-4f4f-bb66-d098b2dc4c27profile.png', '1', '2020-01-15 01:12:42', '2020-01-15 01:12:42', NULL),
(9, 1, '\"Yaw Mensah\"', '\"Yaw\"', '\"yawmensah33@gmail.com\"', '123456', '\"Male\"', '\"0542510596\"', '\"Nkoranza\"', '37', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"Farming\"', '4', '6', '0880e27c-4c4c-4684-a203-1eafdc07bc13profile.png', '9acfff74-a1e6-4b85-a4b2-e54f58ace9ddthumb.png', '1bb52955-ede6-459a-a154-515f0c8d6e11index.png', '16975275-6253-4edf-a912-9c19d13e16e3middle.png', 'd788f251-cc81-41b2-acbf-36de5ee7fbb9ring.png', '3f47c6bb-ee52-4677-b166-3c4c76a106f2profile.png', '1', '2020-01-15 01:12:42', '2020-01-15 01:12:42', NULL),
(10, 1, '\"Nana Kwame Poku\"', '\"nanakwame\"', '\"nanakwamep@gmail.com\"', '123456', '\"Male\"', '\"0541684198\"', '\"Nkoranza\"', '40', '\"Married\"', '\"Primary\"', '\"Farming\"', '\"Farming\"', '6', '8', 'c4a7925c-2b30-41dd-b801-e391866a2f3bprofile.png', '75f34cba-bada-4ce4-9b83-b1eb5764895dthumb.png', '88d51e5a-85a5-4594-b0af-b09e42ee65dcindex.png', '70ce144f-d848-4205-939b-dc60b187b918middle.png', 'c68d9820-d134-4ead-9d9d-abe6efac4970ring.png', '98fdd984-bf1c-4459-90d3-7542f2e50de6profile.png', '1', '2020-01-15 01:12:43', '2020-01-15 01:12:43', NULL),
(11, 1, '\"Yaw Biama\"', '\"yawbiama\"', '\"yawbiama@gmail.com\"', '123456', '\"Male\"', '\"0000010001\"', '\"Nkoranza\"', '75', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '15', '5', 'f6b6af21-3d29-4a39-8fcc-c1b089b6c0ccprofile.png', 'e7ed5c86-ca79-48cd-82f7-65757da16cc1thumb.png', '1897face-49cb-430a-9d42-b03759bad070index.png', '28cf9a42-3b07-49fe-8033-8bbf6edc0177middle.png', '9977ab78-df91-49cb-aabe-14188918fccfring.png', '18b32055-04e3-46c3-8e8b-29beaf85d4aeprofile.png', '1', '2020-01-15 01:12:43', '2020-01-15 01:12:43', NULL),
(12, 1, '\"Opoku Ankomako\"', '\"opokuankom\"', '\"opokuankomako1@gmail.com\"', '123456', '\"Male\"', '\"0555669948\"', '\"Nkoranza\"', '60', '\"Married\"', '\"Primary\"', '\"Farming\"', '\"Private businessman/woman\"', '6', '30', '6aadfd9e-8818-486d-8f70-515e98fa342cprofile.png', '5457340c-54ce-4511-ac69-821c5e6024a1thumb.png', '9b9a78a0-5acf-4c4d-90fc-0ca2693b49b2index.png', 'f86e285e-1f74-4592-9b2e-6afa5da46410middle.png', '38eff36e-f347-44c9-984b-3cd57c801c32ring.png', '76cec1f3-cdf8-4cfe-8042-9b37d750abc8profile.png', '1', '2020-01-15 01:12:44', '2020-01-15 01:12:44', NULL),
(13, 1, '\"Opoku Kwadwo Amissah\"', '\"kwadwoamis\"', '\"kwadwoamissah1@gmail.com\"', '123456', '\"Male\"', '\"0244260959\"', '\"Nkoranza\"', '49', '\"Married\"', '\"Tertiary\"', '\"Farming\"', '\"maritime industry\"', '9', '20', 'b21bd19f-5758-4540-a57f-1eb8ec463937profile.png', '1c735f1b-495d-4e79-a7f6-959589014eaethumb.png', '80f1dc20-f50e-492c-bafd-276664b0e300index.png', 'b4f7188d-902e-475e-a477-2b3ca0ac1c9bmiddle.png', 'a031d395-31e8-4127-a5a5-02a6855fa10fring.png', '7b79abb1-e84d-47b5-8a8e-22ad01ec6713profile.png', '1', '2020-01-15 01:12:46', '2020-01-15 01:12:46', NULL),
(14, 1, '\"Adwoa Ahiman\"', '\"adwoa\"', '\"adwoaahiman21@gmail.com\"', '123456', '\"Female\"', '\"0559654873\"', '\"Nkoranza\"', '44', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '8', '10', '4d113de7-f37e-48a9-bcb7-3100b88c642aprofile.png', '2a76a858-b4dd-4e9d-b29b-5aa691b7322athumb.png', 'b2d662e2-0847-40f2-8fd7-dd75c89a4abbindex.png', '97b18467-c9f4-4250-8bc5-462edc369864middle.png', 'e44ff0f8-84da-4558-9813-3cea70e9870ering.png', 'a3fc8005-b02c-4d78-bf17-d2810c0f46bfprofile.png', '1', '2020-01-15 01:12:47', '2020-01-15 01:12:47', NULL),
(15, 1, '\"Achiaa Mary\"', '\"Achiaa\"', '\"achiaamary@gmail.com\"', '123456', '\"Female\"', '\"0243707522\"', '\"Nkoranza\"', '55', '\"Married\"', '\"Primary\"', '\"Farming\"', '\"Trading\"', '6', '11', 'd57a1c7a-bad0-4de1-9e68-519095b22978profile.png', '192baab2-5a5e-45c3-9db4-b09f254558b5thumb.png', '53baeb34-10d1-4a60-a561-591483b0d364index.png', '91ff7379-1165-46c9-9284-7287dfe7b161middle.png', 'f3bbfa6b-5155-4bce-9eed-d6a2fa38db8cring.png', '5974a3ce-474b-4164-9e00-27c7009bb8eeprofile.png', '1', '2020-01-15 01:12:47', '2020-01-15 01:12:47', NULL),
(16, 1, '\"Adwoa Birago\"', '\"adwoa 3\"', '\"adwoa3birago@gmail.com\"', '123456', '\"Female\"', '\"0241784440\"', '\"Nkoranza\"', '65', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Trading\"', '15', '8', '7f9e3cd3-3802-4646-afb8-8de41c8c09ffprofile.png', '71d8a6bf-5f7a-4bbd-add0-292cfee6ff39thumb.png', 'aad5cad6-b004-4b3f-8d8b-82ad41540468index.png', 'ade015b5-6350-49ec-9ff1-7329627040cdmiddle.png', '88c5ab59-3a07-4022-b533-36621ca7e163ring.png', '4ca3bbe2-38ba-4396-81e2-fb71b37f62f2profile.png', '1', '2020-01-15 01:12:47', '2020-01-15 01:12:47', NULL),
(17, 1, '\"Ama Nyantakyiwaa\"', '\"ama \"', '\"nyantakyiwaaama@gmail.com\"', '123456', '\"Female\"', '\"0012345678\"', '\"Nkoranza\"', '70', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '15', '6', 'c0277f58-d7ba-44c9-9e1d-3729819c7211profile.png', '6474fa69-6258-4193-8f85-49ffa65d3b62thumb.png', 'fdbc137d-a3ca-4976-b076-2e428710a877index.png', '6a794d5b-b9d0-4686-949a-41463d8024a3middle.png', '0a442eaf-9288-4103-90ff-94d26876ba00ring.png', '1362516d-a731-4506-988c-2894ba227e97profile.png', '1', '2020-01-15 01:12:51', '2020-01-15 01:12:51', NULL),
(18, 1, '\"Ama Asuamah\"', '\"asuamah\"', '\"amaasuamah@gmail.com\"', '123456', '\"Female\"', '\"0544011666\"', '\"Nkoranza\"', '48', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '6', '7', 'b9162da6-7265-4826-88ee-bbf2f8d16d8cprofile.png', '33221f5b-03b5-49c8-9df4-58acdef9207athumb.png', '0fa8439a-35a8-4dc7-8304-b45af2fc7dd8index.png', 'd39f431d-f0fd-4460-84fe-aacadc3d0363middle.png', 'ce2ff8fa-fefd-4fe0-87fa-af5455e0334bring.png', 'a242ed73-ca80-4460-8f22-5ce0eb82c69bprofile.png', '1', '2020-01-15 01:12:56', '2020-01-15 01:12:56', NULL),
(19, 1, '\"Joyce Pokuaa\"', '\"joyce\"', '\"joyce3pokua@gmail.com\"', '123456', '\"Female\"', '\"0248375157\"', '\"Nkoranza\"', '50', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '5', '8', 'f5c18513-7c00-4510-b204-1a5e0cbd0c1fprofile.png', '01d0a756-7bd7-4af0-93a5-7a3767e4b9d1thumb.png', '516fd48c-dfaa-492d-8604-a862cf5b0e95index.png', 'fea9e23a-3b31-40e5-b826-aa63ef7a9c5emiddle.png', '08a73209-b9fa-429b-926c-690ef0733058ring.png', '13b185f9-27fc-4ed4-a539-5d58ba93a075profile.png', '1', '2020-01-15 01:12:57', '2020-01-15 01:12:57', NULL),
(20, 1, '\"Gyimah Adu Abena Comfprt\"', '\"comfort\"', '\"abenacomfort1@gmail.com\"', '123456', '\"Female\"', '\"0123546789\"', '\"Nkoranza\"', '38', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"forestry\"', '3', '4', 'db57feaa-da49-40a4-9cf2-1ae9ea01cc7cprofile.png', 'eaf4f2a3-5fed-49db-b267-8d8600399fb5thumb.png', '4adaca49-8427-4262-9508-e41502242138index.png', '0f081b1c-ef98-4082-b343-9a3b7004b5f4middle.png', '19e0c04f-9ab5-4a06-b695-5af2ba4cffb9ring.png', '48a86dac-53b6-42f2-9238-9081e43a3090profile.png', '1', '2020-01-15 01:12:58', '2020-01-15 01:12:58', NULL),
(21, 1, '\"Efie Sah\"', '\"efie\"', '\"efiesah@gmail.com\"', '123456', '\"Female\"', '\"0543646538\"', '\"Nkoranza\"', '34', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"Farming\"', '3', '4', '3a1ea3d5-1f6c-4a75-89ad-0e292a683b57profile.png', '924ba7c6-0d81-481f-b828-ebeb47ed3679thumb.png', '52e198e7-baa7-48a6-8c38-783df667dc5eindex.png', '23dc2b83-6064-42d0-a5ad-6b6f31675c21middle.png', 'e592bfce-cba3-4411-8670-89ab30fb70fdring.png', '6e5bd8f6-bf5a-4e31-b5fd-98ea21805336profile.png', '1', '2020-01-15 01:12:59', '2020-01-15 01:12:59', NULL),
(22, 1, '\"Evans Tuffuor\"', '\"evanst\"', '\"evant2@gmail.com\"', '123456', '\"Male\"', '\"0247216274\"', '\"Nkoranza\"', '29', '\"Single\"', '\"Secondary/SSS\"', '\"Farming\"', '\"wood cutter\"', '3', '1', '18719bc5-292d-442d-b63e-0368e2de826bprofile.png', '13652d5c-9aa7-48c4-a19d-5cad8800a361thumb.png', '94f77180-9933-4aa2-b0c9-0498e4843300index.png', '1dc3019c-2e06-46c1-ad33-63331b8ea581middle.png', '4976503e-d544-45f3-bc99-b521dafb6f66ring.png', '9a83157b-b097-4e2d-ae8d-7d207dd5ec90profile.png', '1', '2020-01-15 01:13:01', '2020-01-15 01:13:01', NULL),
(23, 1, '\"Georgina Takyiwaa\"', '\"georgina\"', '\"georginat1@gmail.com\"', '123456', '\"Female\"', '\"0240766474\"', '\"Nkoranza\"', '30', '\"Single\"', '\"JSS/Middle\"', '\"Farming\"', '\"forestry\"', '4', '5', 'f013be70-368d-47ed-af14-decb09f837a0profile.png', 'd2100e65-6797-460c-82ea-a1fccb209e8fthumb.png', '2418660e-3e9d-4527-965d-39422d34bdedindex.png', '424b2f52-ae45-4d6a-9b1f-a358027a05b2middle.png', '14b2d738-175d-466b-a2cf-229a163ccff7ring.png', 'e6598eb8-d272-4df1-ba6b-2682d5fd0ccdprofile.png', '1', '2020-01-15 01:13:04', '2020-01-15 01:13:04', NULL),
(24, 1, '\"Bafowaa Gifty\"', '\"gifty\"', '\"bgifty@gmail.com\"', '123456', '\"Female\"', '\"0240504264\"', '\"Nkoranza\"', '35', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"Farming\"', '3', '4', 'c2e3b147-0a3d-478c-b9b7-457e1b38e7c0profile.png', '3be57ac4-67c4-46ca-81b2-9dc4a031d2a5thumb.png', 'c4123b19-0c11-445b-a2a0-eeefb7a800edindex.png', '7f144a5a-d649-4d67-baf5-4cc317303e6fmiddle.png', 'cd7adeb9-d8e6-4abe-8be7-18384c29f246ring.png', 'ea284be4-eae8-40b7-a361-fe01a2fd97e8profile.png', '1', '2020-01-15 01:13:04', '2020-01-15 01:13:04', NULL),
(25, 1, '\"Akosuah Sia\"', '\"akosua 3\"', '\"akosuasia@gmail.com\"', '123456', '\"Female\"', '\"0123654987\"', '\"Nkoranza\"', '83', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '6', '10', '4d5af0cb-f064-4594-a21c-18aaca546305profile.png', '8473a453-d19c-4af2-bfe1-193a2280d557thumb.png', '82c4408c-534d-481d-b5e0-f0e7d4e2eb42index.png', 'dd91e71d-0e04-4d95-ad7d-2b4d50a7b3aemiddle.png', 'ef7f13c6-e27b-4f51-9215-ecb65a4753f6ring.png', '6a4028e5-c1e4-498b-b322-69dc51386c26profile.png', '1', '2020-01-15 01:13:05', '2020-01-15 01:13:05', NULL),
(26, 1, '\"Kofi Kodom\"', '\"kofi\"', '\"kofik@gmail.com\"', '123456', '\"Male\"', '\"0547523587\"', '\"Nkoranza\"', '41', '\"Married\"', '\"Primary\"', '\"Farming\"', '\"motor driver\"', '8', '15', 'f7347725-53ff-44c6-8524-2da59f673646profile.png', 'c331ef29-2134-4b49-83c8-03c63a7e2cdfthumb.png', 'b9bd131a-a297-4f6b-aac3-2c950740d007index.png', 'd76a0830-3521-4a18-9a1e-166acbf4c39amiddle.png', 'bf9ad2c9-a800-41bf-a071-bee9f9c0150bring.png', '21858e82-b283-43de-8a99-3489dd928936profile.png', '1', '2020-01-15 01:13:06', '2020-01-15 01:13:06', NULL),
(27, 1, '\"Abena Kyerewa\"', '\"abena4\"', '\"abena4kyerewa@gmail.com\"', '123456', '\"Female\"', '\"0241041527\"', '\"Nkoranza\"', '63', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"Farming\"', '6', '5', '9d3c49cc-de92-4bef-9162-9590c9f818eaprofile.png', '78031a68-a65c-4132-ba22-228333ea9bd4thumb.png', '27108de9-9579-4abf-9dd9-cf2d38e6bd7eindex.png', 'd1015436-309f-4006-b681-93fef8de6a16middle.png', 'd35bc229-94f1-4d6a-a307-85cf363d56b5ring.png', '35390f7a-cf04-41d5-ae71-3946254d0f49profile.png', '1', '2020-01-15 01:13:06', '2020-01-15 01:13:06', NULL),
(28, 1, '\"Emmanuel Ansah\"', '\"emmanuel\"', '\"emmanuelansah@gmail.com\"', '123456', '\"Male\"', '\"0246962208\"', '\"Nkoranza\"', '60', '\"Married\"', '\"Primary\"', '\"Farming\"', '\"Farming\"', '10', '9', 'fc6c66f6-bdeb-4324-ad33-c14e4608e9dbprofile.png', 'ae71309f-d7b2-4a45-a306-b9d30955c7f4thumb.png', '4e825331-a762-4385-8b86-922f2087ec36index.png', '26989184-f426-4bae-a3f5-2c2b7345a794middle.png', '15906275-0419-4d31-9a30-11a6b26d70fering.png', '1e8db6fa-09ff-4814-aba1-aeadaab4c2ebprofile.png', '1', '2020-01-15 01:13:09', '2020-01-15 01:13:09', NULL),
(29, 1, '\"Akosuah Nyarko\"', '\"akosuah4\"', '\"akosuahnyarko@gmail.com\"', '123456', '\"Female\"', '\"0321654987\"', '\"Nkoranza\"', '70', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '29', '4', '1c76c0e2-d8d0-430a-88b5-45fb1adf0d12profile.png', '0c166656-1321-49ad-bf95-7676092f7aa5thumb.png', '06b20c72-8544-44db-83d2-ab519e6bccb7index.png', '29208e20-e412-41cd-aeb0-05d44ad890e5middle.png', '418e754f-858a-41a7-9549-1ed423d6ccf5ring.png', '2e901017-e9eb-460c-a852-ade5020a5439profile.png', '1', '2020-01-15 01:13:09', '2020-01-15 01:13:09', NULL),
(30, 1, '\"Kwaku Opoku Nyarko\"', '\"kwaku \"', '\"kwakunyarko3@gmail.com\"', '123456', '\"Male\"', '\"0208444525\"', '\"Nkoranza\"', '70', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"Farming\"', '7', '9', '2f2368dd-0163-4063-bff4-5d663637bb3dprofile.png', '1b447b01-8cd2-4f54-bbd5-47e29a63cd2ethumb.png', '5f3e99aa-fca3-4b71-a939-f706e4c15602index.png', '1ea42d76-55c4-4ca8-b0ea-5a590a10bd0bmiddle.png', 'cd14cb73-c07e-423a-bdb4-66ba9f3b7d85ring.png', '2a169b71-fef1-4ec6-bdd7-d31c64940a07profile.png', '1', '2020-01-15 01:13:09', '2020-01-15 01:13:09', NULL),
(31, 1, '\"Atta Poku\"', '\"atta\"', '\"attapoku@gmail.com\"', '123456', '\"Male\"', '\"0204570263\"', '\"Nkoranza\"', '43', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"Farming\"', '5', '10', '82471a8a-9de2-47cd-a22b-799c3497a4eeprofile.png', '75e25616-f22c-4964-80ba-f9cac26ef87athumb.png', 'b592f5a8-7b80-42a8-9b77-778439c02280index.png', 'a3d644ef-1a79-477a-bc5d-49090c54279bmiddle.png', 'fd8d4139-b873-4b50-b7d4-8555a30141b6ring.png', '5a652ff7-0d7a-4c01-afb8-69b817c6ba04profile.png', '1', '2020-01-15 01:13:10', '2020-01-15 01:13:10', NULL),
(32, 1, '\"Pokua Mercy\"', '\"pokua1\"', '\"pokuamercy@gmail.com\"', '123456', '\"Female\"', '\"0249855502\"', '\"Nkoranza\"', '60', '\"Single\"', '\"JSS/Middle\"', '\"Farming\"', '\"Farming\"', '6', '4', '2c747685-c9f8-4315-8795-5b964d663b9eprofile.png', '4082a9ac-6c76-4aa7-90e4-df0a6395df11thumb.png', 'e2642126-592a-44bc-818f-eddbedf68fd9index.png', 'd40398c7-0f14-496e-ad69-e905d0e7cf56middle.png', '2b7554d6-626c-465c-9746-b223cbc4819ering.png', 'daf2a342-95d5-4042-82f7-0c59e180ad70profile.png', '1', '2020-01-15 01:13:10', '2020-01-15 01:13:10', NULL),
(33, 1, '\"Yaa Boahemaa\"', '\"yaa3\"', '\"yaa3boahemaa@gmail.com\"', '123456', '\"Female\"', '\"0547313087\"', '\"Nkoranza\"', '47', '\"Married\"', '\"Primary\"', '\"Farming\"', '\"Trading\"', '25', '5', '43771d76-a5fd-434a-86c8-57c6fd6cb34cprofile.png', 'aba912b9-c173-431b-aa49-0144f1ceae81thumb.png', 'aea7a56b-183b-4a11-baf4-66fb00a9ff08index.png', '179484c1-132e-40f4-815a-8eb121715d84middle.png', '58e1c889-2987-4172-ac10-630ca705e7e2ring.png', 'c4a0297d-54c6-412b-8d17-64a27e038438profile.png', '1', '2020-01-15 01:13:36', '2020-01-15 01:13:36', NULL),
(34, 1, '\"Kwaku Owusu\"', '\"kwaku7\"', '\"kwaku7@gmail.com\"', '123456', '\"Male\"', '\"0542479802\"', '\"Nkoranza\"', '55', '\"Married\"', '\"Primary\"', '\"Farming\"', '\"Farming\"', '7', '26', 'c46ee1f1-2340-48e9-8621-a5891120df4cprofile.png', '7b260266-cf6c-437f-9444-9e6d12341357thumb.png', '8483334e-3058-48e6-930e-1b44c927a72cindex.png', '776b4a54-ac25-4362-b5fe-a339a13b71d9middle.png', '13ed609c-8136-453a-9e41-5daa579e242bring.png', 'f27e355f-de61-4ecc-89da-0a7299d6f9b7profile.png', '1', '2020-01-15 01:13:37', '2020-01-15 01:13:37', NULL),
(35, 1, '\"Kwabena Ankomako\"', '\"kwabena5\"', '\"kwabena5ankomako@gmail\"', '123456', '\"Male\"', '\"0246915266\"', '\"Nkoranza\"', '45', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"distiller\"', '12', '7', 'e30d2c43-ef84-4905-a72e-1c6779597ce9profile.png', '7460126d-6d68-4b59-8c36-99ea66e2105dthumb.png', '39427642-6a71-493b-9077-595d6859cfa6index.png', 'ef077334-e2b7-456d-8906-267315457a27middle.png', '3e67ea52-3238-4c4b-a10d-5609d092600fring.png', '1d818779-101f-498f-aa97-934f2e2e865eprofile.png', '1', '2020-01-15 01:13:38', '2020-01-15 01:13:38', NULL),
(36, 1, '\"Kwabena Tetteh\"', '\"kwabena7\"', '\"kwabena7tetteh@gmail.com\"', '123456', '\"Male\"', '\"0246599611\"', '\"Nkoranza\"', '80', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"distiller\"', '8', '8', '547ab192-0a25-416d-8714-489bd3b68496profile.png', '3af8b8de-c399-49f4-9b52-e8069e4174adthumb.png', '10ddfb9f-e483-44b7-9d6e-ecf1d924dd2findex.png', '7a0d8407-2f3e-4854-9481-278ed85c8f61middle.png', '929f2195-9a01-44c6-a166-f92c776a4d36ring.png', '7ceea206-dff0-45f5-b5fa-9a9bda2e8d76profile.png', '1', '2020-01-15 01:13:39', '2020-01-15 01:13:39', NULL),
(37, 1, '\"Adwoa Buruwaa\"', '\"adwoa7\"', '\"adwoa7buruwaa@gmail.com\"', '123456', '\"Female\"', '\"0540540117\"', '\"Nkoranza\"', '70', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '12', '7', '12d2867a-714d-4c02-9140-d2875c9feaa3profile.png', '8cf39787-a689-41a7-81dc-cac649d00448thumb.png', 'af29ac28-2ce6-4eca-81cd-1b6bd3fc771eindex.png', 'c14f3ce6-2bca-43ba-9feb-4c8cba37e3f5middle.png', 'b4085df7-0493-49d5-b0be-5eb75d43b527ring.png', 'cc4887ea-4509-4a34-90e5-d509a56a6c8bprofile.png', '1', '2020-01-15 01:13:39', '2020-01-15 01:13:39', NULL),
(38, 1, '\"Owusu Lucky\"', '\"lucky\"', '\"luckyowusu@gmail.com\"', '123456', '\"Male\"', '\"0543989446\"', '\"Nkoranza\"', '25', '\"Married\"', '\"Secondary/SSS\"', '\"Farming\"', '\"security at Dr. Amoako\"', '0', '3', 'c42f3e0d-b5b1-414c-9cc9-05fc2e9ac55eprofile.png', '6e9a5373-0991-40b6-a42d-126067c1232cthumb.png', '381a8524-34f7-478e-914f-cc57944c442aindex.png', '3fdff280-0adb-47b5-8846-1b8499ca232dmiddle.png', '5dae0d14-20a8-4658-bf80-addea7b4dc45ring.png', '09971b87-d1d8-4fdd-bd65-9deabe47ea44profile.png', '1', '2020-01-15 01:13:40', '2020-01-15 01:13:40', NULL),
(39, 1, '\"Afrane Efua\"', '\"efua\"', '\"efuaafrabe@gmail.com\"', '123456', '\"Female\"', '\"0507429272\"', '\"Nkoranza\"', '59', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"Trading\"', '4', '2', '0f5519d7-e4d4-4de0-8431-fa3c24c7e53eprofile.png', '56cf4bac-6a5e-49f8-9e4f-9534b577b65fthumb.png', 'f4352810-0ff0-454d-8da4-77315f1175f0index.png', '5208e6f0-8659-47fd-91ef-fb2e2068a691middle.png', '751a963a-3e2c-4c91-84e7-12e5586ea902ring.png', '0276a9be-412d-4bba-9e60-21519c61b3cbprofile.png', '1', '2020-01-15 01:13:42', '2020-01-15 01:13:42', NULL),
(40, 1, '\"Ankomako Yaw Emmanuel\"', '\"Emmanuel2\"', '\"emma2yaw@gmail.com\"', '123456', '\"Male\"', '\"0241851809\"', '\"Nkoranza\"', '50', '\"Married\"', '\"Secondary/SSS\"', '\"Farming\"', '\"painter\"', '5', '7', 'e18f3b97-8125-4177-9c5f-bd072a1a7de7profile.png', '2d26ee5e-3dc3-4200-80dd-d48b72d5bc38thumb.png', 'fc175fa5-2b18-4a43-bbec-1e1e9c8f95d1index.png', 'eb60632b-4385-4a57-9807-2f65cd634432middle.png', '7672e497-dd5e-4d16-b522-91d9dc776483ring.png', '92b8fdb3-0452-4b93-83cb-738c8b8b0d6bprofile.png', '1', '2020-01-15 01:13:42', '2020-01-15 01:13:42', NULL),
(41, 1, '\"Kwasi Kodom\"', '\"kwasi7\"', '\"kwasi7kodom@gmail.com\"', '123456', '\"Male\"', '\"0205822179\"', '\"Nkoranza\"', '40', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Trading\"', '5', '4', '1484d597-e3e3-431f-86d6-0e43435cd427profile.png', 'd5d4409f-52b2-4e98-b75c-570f285bed5bthumb.png', 'ba5fd463-597d-48a1-af56-682ee0147f15index.png', '0b88674c-a34b-479b-935f-7f3c7a8a0dd3middle.png', '89c6277c-f966-4853-aaa6-4963672fe614ring.png', 'ab69236f-c48f-465d-8660-2079c254991fprofile.png', '1', '2020-01-15 01:13:42', '2020-01-15 01:13:42', NULL),
(42, 1, '\"Kofi Appiah\"', '\"kofi8\"', '\"kofi8appiah@gmail.com\"', '123456', '\"Male\"', '\"0247856561\"', '\"Nkoranza\"', '35', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"wood measurer\"', '4', '7', '72c66143-f5f1-4d64-afbe-fab31d465b11profile.png', '37136fe0-8e15-454b-8be9-1bb58b10be18thumb.png', '59ceb33a-767d-4f0e-a56c-0200989d3bd3index.png', '14e9f6b5-504d-4501-b4f2-18658487b601middle.png', 'fed16e31-9c34-4f7f-a60e-c69e3e4ecd3bring.png', '8077d83e-5cc2-491b-a071-80c02276fecaprofile.png', '1', '2020-01-15 01:13:43', '2020-01-15 01:13:43', NULL),
(43, 1, '\"Tandoh Diewuo Anthony\"', '\"anthony\"', '\"anthonytandoh@gmail.com\"', '123456', '\"Male\"', '\"0206404924\"', '\"Nkoranza\"', '79', '\"Married\"', '\"Primary\"', '\"Farming\"', '\"Farming\"', '9', '4', '4df3a7f3-02b3-49d8-aba0-ec81e20fc4fbprofile.png', '7d15e0a2-8864-4207-852b-3341a43031f9thumb.png', '04cb0d40-0e7b-4856-a06c-97d112500bb9index.png', 'c377eac4-56ae-40f8-bd30-101db13eaa58middle.png', '3661ec1c-67b3-4d92-9b6b-668450f3a00cring.png', '4a23a0d1-ddd1-4ff8-93be-a2871623db54profile.png', '1', '2020-01-15 01:13:44', '2020-01-15 01:13:44', NULL),
(44, 1, '\"Abena Nima\"', '\"abena9\"', '\"abena8nima@gmail.com\"', '123456', '\"Female\"', '\"0852741963\"', '\"Nkoranza\"', '61', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"cutting of maize \"', '13', '4', '4fc121b0-6550-4ed2-80cf-53e75a4518aaprofile.png', '154c9ed0-3deb-441f-b783-0838578a4ae2thumb.png', '8b15a89e-44b4-4c5e-a281-33455e988e83index.png', 'ea92e21c-a01f-452a-8d80-d4a2b197bcdcmiddle.png', '5a40a295-e7ef-42e4-a7e1-0464540579ecring.png', 'a683e403-1298-4c40-a0f9-c8b797dd3866profile.png', '1', '2020-01-15 01:13:46', '2020-01-15 01:13:46', NULL),
(45, 1, '\"Kyeremeh Prince\"', '\"prince2\"', '\"prince2kyeremeh@gmail.com\"', '123456', '\"Male\"', '\"0207922069\"', '\"Nkoranza\"', '35', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Trading\"', '6', '10', '00afeea3-7466-4795-bc53-d867f60ed9f3profile.png', 'f230da5a-85eb-49d6-aa9a-3e0800aa2155thumb.png', '9244660a-4c4a-47c6-ac0b-6995be7594d9index.png', '4c0f03d9-734e-4f42-8845-f9a27f4030c3middle.png', '703f11c9-bb02-4e10-93a3-e33112415a4cring.png', '3941098c-c62e-45e3-86ae-a8cc63c8d087profile.png', '1', '2020-01-15 01:13:46', '2020-01-15 01:13:46', NULL),
(46, 1, '\"Yaa Pokuah\"', '\"yaa1\"', '\"yaa1pokuah@gmail.com\"', '123456', '\"Female\"', '\"0240070494\"', '\"Nkoranza\"', '38', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '4', '10', 'a14f7104-fd3e-482e-896c-586dea403b12profile.png', '389e90ae-7eb9-46ee-8e74-0997bcc9415dthumb.png', 'acc11b6d-ad85-4ede-b92a-f9fbf1e864d7index.png', '6ef8386b-4fd1-4ae7-b64a-73fc7e846090middle.png', '83cbe47e-4a18-4b04-a2cd-eee5339f4625ring.png', '92d1689c-f793-47b9-b641-10eb1aacaa22profile.png', '1', '2020-01-15 01:13:46', '2020-01-15 01:13:46', NULL),
(47, 1, '\"Agyei Lawrence\"', '\"lawrence\"', '\"lawrence@gmail.com\"', '123456', '\"Male\"', '\"0554577343\"', '\"Nkoranza\"', '40', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"mobile money agent\"', '4', '12', 'ba5a8b8a-2bf1-44fe-89c5-ccb3decbe082profile.png', 'fc2db9f8-e602-4e9e-a721-264996adfa9ethumb.png', '144318df-e6c8-4cac-8bd5-e606f85bab90index.png', 'f3d843c8-9fb3-46fa-8c5f-d09a57fbd60bmiddle.png', 'be1b8fb4-e4f9-4e15-84da-8633ac1c0596ring.png', 'f308ca8d-36b1-4a4f-af5b-0c8cd970b3f5profile.png', '1', '2020-01-15 01:13:47', '2020-01-15 01:13:47', NULL),
(48, 1, '\"Akwasi Nyarko Opoku\"', '\"Akwasi8\"', '\"akwasi8nyarko@gmail.com\"', '123456', '\"Male\"', '\"0243216566\"', '\"Nkoranza\"', '65', '\"Married\"', '\"Tertiary\"', '\"Farming\"', '\"retired teacher\"', '15', '10', '886d7721-85bb-4f89-85f9-2509810ef641profile.png', '01d477ab-b749-48b4-a464-8d17cd9178a4thumb.png', '5b5f60a0-c425-42c8-bcf6-02266047b9fdindex.png', 'caf888f7-1b15-4578-b652-64ae7fd54a72middle.png', '2c40dcf5-8a13-4e27-a2cd-9b0fd8972311ring.png', 'e5c6861b-f03f-4507-a9c0-720f81219306profile.png', '1', '2020-01-15 01:13:48', '2020-01-15 01:13:48', NULL),
(49, 1, '\"Kwaku Nyarko\"', '\"kwaku9\"', '\"kwaku9nyarko@gmail.com\"', '123456', '\"Male\"', '\"0208574243\"', '\"Nkoranza\"', '56', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"Farming\"', '7', '19', '2053f471-2275-4f02-9473-80c78047aa95profile.png', '6961320d-a61a-46bc-8c62-a92045b105c7thumb.png', 'e372530c-6cca-4657-97ac-5b7c738d82a6index.png', '8e3a120d-9f00-4c5a-b16e-4b99dc1562fcmiddle.png', '77b9f0f7-8f90-4699-af26-a789bba20b8cring.png', 'bd81d927-50b3-468c-b1ac-52866060ed4aprofile.png', '1', '2020-01-15 01:13:50', '2020-01-15 01:13:50', NULL),
(50, 1, '\"Yaw Sekyere \"', '\"yaw8\"', '\"yaw8sekyere@gmail.com\"', '123456', '\"Male\"', '\"0556933578\"', '\"Nkoranza\"', '50', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '5', '8', '4077eeaa-b2b6-4e6f-a75e-e519d57038d7profile.png', '6188313f-4fad-46c2-b4c7-b81a2bfae910thumb.png', '59436434-3df8-4471-a80e-52860fd2d730index.png', '1b4fa820-8f66-4430-b9c9-8b3c4a1483ecmiddle.png', 'e39b15f9-e015-438b-955a-535bb5eac75fring.png', '4cb2e5f3-c7c7-415c-8633-a2ea9ac79555profile.png', '1', '2020-01-15 01:13:50', '2020-01-15 01:13:50', NULL),
(51, 1, '\"Opoku Charles\"', '\"Charles\"', '\"charlesopoku@gmail.com\"', '123456', '\"Male\"', '\"0548271097\"', '\"Nkoranza\"', '50', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"maison\"', '13', '17', '58520d2a-3dbe-4285-9e72-b5df27d9d49dprofile.png', 'cddf8056-5fca-4ea3-a079-747bd09a6dd0thumb.png', 'dc01c517-3a43-430f-be35-bc21518b5614index.png', 'd1077ca1-f231-4105-9cc6-e8b2ba2b3ba0middle.png', 'c1fccdf3-78ea-4da3-9158-802b7463d2a9ring.png', 'a5fa792f-9753-463a-888b-af3046aa9012profile.png', '1', '2020-01-15 01:13:50', '2020-01-15 01:13:50', NULL),
(52, 1, '\"Kwaku Wusu\"', '\"kwaku1\"', '\"kwaku1@gmail.com\"', '123456', '\"Male\"', '\"0243248197\"', '\"Nkoranza\"', '50', '\"Married\"', '\"Primary\"', '\"Farming\"', '\"Farming\"', '5', '16', '47348112-b9e3-4963-8b1d-d0444b15ff4dprofile.png', '3a8ebae4-dab9-4ad0-a0c7-477627aa6df4thumb.png', '67b45632-286c-4445-968f-ad9f7d91f830index.png', '877b6ad3-efd9-4e2c-ae5a-3948ad0bf1e1middle.png', '07438b09-c162-4352-aa78-89304ab4c129ring.png', '5f2e3fb7-61e3-480d-85c7-88f7f3c2103dprofile.png', '1', '2020-01-15 01:13:52', '2020-01-15 01:13:52', NULL),
(53, 1, '\"Adwoa Agyeiwaa\"', '\"adwoa12\"', '\"adwoa12agyeiwaa@gmail.com\"', '123456', '\"Female\"', '\"0245473929\"', '\"Nkoranza\"', '31', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"Trading\"', '5', '7', 'fc67491c-83f2-4dc9-bf84-c44e7e85eaa3profile.png', 'c64781ea-da3c-4214-a246-fdf56b4f4559thumb.png', 'f4a82d83-d94e-473e-b6aa-a9116f89b5e6index.png', 'c1979e93-ab7e-4d77-8b2e-a29d02b82d20middle.png', 'b4d56467-96d1-478c-b45f-f138c5a0e017ring.png', '92804f8a-e6dc-4de9-9bd8-54d292129036profile.png', '1', '2020-01-15 01:13:53', '2020-01-15 01:13:53', NULL),
(54, 1, '\"Wiafe Francis\"', '\"francis2\"', '\"francis2wiafr@gmail.com\"', '123456', '\"Male\"', '\"0247828917\"', '\"Nkoranza\"', '36', '\"Married\"', '\"Primary\"', '\"Farming\"', '\"carpenter\"', '5', '8', 'b6c0a330-d0b8-4fdd-9c2e-6f31e77648acprofile.png', 'f3879e02-2921-4338-a8d5-843e64be85f3thumb.png', 'b4dc8697-e9b1-42ec-8ff9-17d4bf9916daindex.png', 'b497f575-6a5d-40ae-a7e7-0d6b96d63782middle.png', '0efa2823-0f32-4cb7-ad2d-507fcdc56053ring.png', '8b8fc2ea-5bd9-4d64-9265-587dfb37e2c7profile.png', '1', '2020-01-15 01:13:55', '2020-01-15 01:13:55', NULL),
(55, 1, '\"Effah Daniel\"', '\"daniel\"', '\"daniel1effah@gmail.com\"', '123456', '\"Male\"', '\"0240513250\"', '\"Nkoranza\"', '42', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"driver\"', '6', '15', '292aeae0-cf0c-4eeb-9e55-0aabaa81b030profile.png', 'cfd0793c-49fe-460d-b33b-fb4e12840a77thumb.png', '9c3ea4de-0649-4ca4-982f-9943209da019index.png', '9cf4e87f-e370-42aa-b81c-62991029921bmiddle.png', '36f888ab-5f90-424d-bd3c-49d6c551b1bbring.png', 'ecbe1c1d-a939-4137-9bd2-36a0a37dadf7profile.png', '1', '2020-01-15 01:14:02', '2020-01-15 01:14:02', NULL),
(56, 1, '\"Daniel Appiah Kubi\"', '\"daniel3\"', '\"daniel3kubi@gmail.com\"', '123456', '\"Male\"', '\"0207724816\"', '\"Nkoranza\"', '47', '\"Married\"', '\"Primary\"', '\"Farming\"', '\"driver\"', '7', '8', '880a7925-3f52-4319-abc8-e466220e8763profile.png', '58c9485a-a975-40be-979c-e563369016f3thumb.png', 'e257dbbc-74c4-444f-8035-f88a38918571index.png', '945be58e-cadc-43fb-b750-d994e02fd146middle.png', '5098c019-2263-4f2f-bf0f-ebb6bb6a8ae6ring.png', '92626f0d-79ac-406c-9f05-166a4ac76277profile.png', '1', '2020-01-15 01:14:02', '2020-01-15 01:14:02', NULL),
(57, 1, '\"Kwadwo Kremo\"', '\"kwadwo6\"', '\"kwadwo6kremo@gmail.com\"', '123456', '\"Male\"', '\"0243535081\"', '\"Nkoranza\"', '74', '\"Married\"', '\"No Education\"', '\"Farming\"', '\"Farming\"', '6', '11', 'c00af79b-857b-4a11-90cb-390098a05676profile.png', '0f620235-4d06-4e45-817f-6a40b86b6878thumb.png', '4253fb4d-febd-4dbb-89f8-dd18e8582ed4index.png', '229246c8-9e24-4b6a-9438-b89fb65f0760middle.png', '02ee36a4-5b91-4a78-92b5-186b74bb276fring.png', 'a25ea04d-c0b2-4e88-9084-49fbc4d179c9profile.png', '1', '2020-01-15 01:14:04', '2020-01-15 01:14:04', NULL),
(58, 1, '\"Attah Evans\"', '\"evans5\"', '\"evans5attah@gmail.com\"', '123456', '\"Male\"', '\"0241355067\"', '\"Nkoranza\"', '40', '\"Married\"', '\"JSS/Middle\"', '\"Farming\"', '\"Farming\"', '7', '23', '4efe88ff-c073-424a-b6aa-01a96717c953profile.png', '4fdd736a-e316-4d8a-b5d3-c3180d016248thumb.png', 'f85b630a-faa7-4bd5-9582-08c9f5c7b4d1index.png', '9110bfb7-b591-460a-ace8-6477ea082e24middle.png', 'b4dc33a6-5cfa-48b5-ba71-6dcb61f6043fring.png', 'f169ae1c-085d-4976-bf35-95ea97aa463aprofile.png', '1', '2020-01-15 01:14:05', '2020-01-15 01:14:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fbos`
--

CREATE TABLE `fbos` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browselogo` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fbos`
--

INSERT INTO `fbos` (`id`, `admin_id`, `name`, `state`, `location`, `contact`, `email`, `browselogo`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Complete Farmer', 'Accra', 'East Legon', '0201234567', 'desmond@completefarmer.com', NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(2, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(3, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(4, '2016_06_01_000004_create_oauth_clients_table', 1),
(5, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_28_023613_create_admin_table', 1),
(8, '2019_12_28_025310_create_fbos_table', 1),
(9, '2019_12_28_025311_create_users_table', 1),
(10, '2019_12_28_025446_create_farmers_table', 1),
(11, '2019_12_28_025710_create_money_in_table', 1),
(12, '2019_12_28_025733_create_money_out_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `money_in`
--

CREATE TABLE `money_in` (
  `id` int(10) UNSIGNED NOT NULL,
  `farmerId` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `itemName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unitPrice` double DEFAULT NULL,
  `totalPrice` double DEFAULT NULL,
  `dateAdded` datetime DEFAULT NULL,
  `description` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crop` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money_in_month` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money_in_year` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `money_out`
--

CREATE TABLE `money_out` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `farmer_id` int(10) UNSIGNED NOT NULL,
  `itemName` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unitPrice` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalPrice` int(10) UNSIGNED DEFAULT NULL,
  `dateAdded` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crop` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money_out_month` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `money_year_year` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('7acc88d3e678a9e65f20bb7e94e02c98d3a3609d6bed2dd02d9ffaef77dfb2345db7f7b1175caffd', 1, 1, 'authToken', '[]', 0, '2020-01-11 01:46:36', '2020-01-11 01:46:36', '2021-01-10 20:46:36'),
('d13e6341111b6312cdc3163dfeae2bc775f94dcfdd06c1ab7ee41550501729c7ca61fd31285bea6a', 1, 1, 'authToken', '[]', 0, '2020-01-11 01:50:40', '2020-01-11 01:50:40', '2021-01-10 20:50:40'),
('eaa4b4b6bd55a8437b7223ac8f3bacf5aeeea0dac400f41d2357df2e9a372267ac3e89110a491ad9', 1, 1, 'authToken', '[]', 0, '2020-01-14 14:29:06', '2020-01-14 14:29:06', '2021-01-14 09:29:06'),
('4b9c0629f0a3ba0cc875c7a6019848195f23e991a06b40e948925cbfbe54304cbede88645f5e099a', 1, 1, 'authToken', '[]', 0, '2020-01-14 14:36:43', '2020-01-14 14:36:43', '2021-01-14 09:36:43'),
('c379243d9290ea6faeffc5c39d0c15f5f36883774a1c84c3c844b36443bf962533d8561b7f812594', 1, 1, 'authToken', '[]', 0, '2020-01-14 14:36:44', '2020-01-14 14:36:44', '2021-01-14 09:36:44'),
('a32a80a3964de4f497b93685334272232bec1b588e257f07e2938d4530044af12e7ea5a6d7638192', 1, 1, 'authToken', '[]', 0, '2020-01-14 14:38:53', '2020-01-14 14:38:53', '2021-01-14 09:38:53'),
('b196fcf5d2d67af8dad2f0a0999e73d15e68f04050585df98d05e19d451e679aac1b43e1ea83e022', 1, 1, 'authToken', '[]', 0, '2020-01-14 14:39:06', '2020-01-14 14:39:06', '2021-01-14 09:39:06'),
('d44569953fa285f94632b1ac94451f3b52f88b9f77762d6aa09436bd8d4014f04e5a8b12dc28341e', 1, 1, 'authToken', '[]', 0, '2020-01-14 22:03:30', '2020-01-14 22:03:30', '2021-01-14 17:03:30'),
('1490cf1e0ab1d5f699597dff9017a4caf3a719350b70c43cbe6c0a99d7449c7a0d6697d0ff02669a', 1, 1, 'authToken', '[]', 0, '2020-01-15 01:12:21', '2020-01-15 01:12:21', '2021-01-14 20:12:21');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'wPxXi4YxbsWZp4jvDScXgCTCByLAnw29BNHcbBUP', 'http://localhost', 1, 0, 0, '2020-01-11 01:32:29', '2020-01-11 01:32:29'),
(2, NULL, 'Laravel Password Grant Client', 'kfCSa639VjgP9IA4F09Z0R8eUiokD25h8EcMmNcF', 'http://localhost', 0, 1, 0, '2020-01-11 01:32:29', '2020-01-11 01:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-01-11 01:32:29', '2020-01-11 01:32:29');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `fbo_id` int(10) UNSIGNED DEFAULT NULL,
  `fullname` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `contact` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(128) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin_id`, `fbo_id`, `fullname`, `email`, `password`, `email_verified_at`, `contact`, `image_url`, `role`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 1, 'Kevin K', 'kev1@completefarmer.com', '$2y$10$xv1fSmpaULcc2aKNGSRGm.gJrrpZk4p0BSXvxekNrmp.t5nvpiL2e', NULL, '0201234567', NULL, NULL, '1', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_email_unique` (`email`),
  ADD UNIQUE KEY `admin_contact_unique` (`contact`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `farmers_username_unique` (`username`),
  ADD UNIQUE KEY `farmers_email_unique` (`email`),
  ADD UNIQUE KEY `farmers_contact_unique` (`contact`),
  ADD KEY `farmers_user_id_foreign` (`user_id`);

--
-- Indexes for table `fbos`
--
ALTER TABLE `fbos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fbos_contact_unique` (`contact`),
  ADD UNIQUE KEY `fbos_email_unique` (`email`),
  ADD KEY `fbos_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_in`
--
ALTER TABLE `money_in`
  ADD PRIMARY KEY (`id`),
  ADD KEY `money_in_user_id_foreign` (`user_id`),
  ADD KEY `money_in_totalprice_index` (`totalPrice`);

--
-- Indexes for table `money_out`
--
ALTER TABLE `money_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `money_out_user_id_foreign` (`user_id`),
  ADD KEY `money_out_totalprice_index` (`totalPrice`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_contact_unique` (`contact`),
  ADD KEY `users_admin_id_foreign` (`admin_id`),
  ADD KEY `users_fbo_id_foreign` (`fbo_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `farmers`
--
ALTER TABLE `farmers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `fbos`
--
ALTER TABLE `fbos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `money_in`
--
ALTER TABLE `money_in`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `money_out`
--
ALTER TABLE `money_out`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
