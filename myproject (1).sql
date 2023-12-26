-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 26, 2023 at 07:38 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_25_120355_create_students_table', 1),
(6, '2023_12_26_082123_remove_new_column_from_students_table', 2),
(7, '2023_12_26_082928_add_columns_to_students_table', 3),
(8, '2023_12_26_122141_rename_column_in_students_table', 4),
(9, '2023_12_26_124710_rename_column_in_students_table', 5),
(10, '2023_12_26_140513_add_image_to_students_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selectclass` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accepted_terms` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stdimage` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `lastname`, `email`, `address`, `phone`, `gender`, `selectclass`, `accepted_terms`, `created_at`, `updated_at`, `stdimage`) VALUES
(1, 'iftekharff', 'parvez', 'iftekharparvez174@gmail.com', 'dhaka', '01745870568', 'male', 'class10', 0, '2023-12-26 06:13:56', '2023-12-26 08:40:16', NULL),
(2, 'jinius', 'man', 'jiniusman794@gmail.com', 'khulna', '4875488', 'male', 'class1', 0, '2023-12-26 06:16:38', '2023-12-26 08:40:55', NULL),
(3, 'Ahsan', 'man', 'rahim@gmail.com', 'chapai', '4875488', 'female', NULL, 0, '2023-12-26 06:17:00', '2023-12-26 06:17:00', NULL),
(6, 'changed', 'tytryry', 'cstudent617@gmail.com', 'erteretr', '35353', 'male', 'class5', 1, '2023-12-26 07:07:08', '2023-12-26 07:34:54', NULL),
(9, 'Abdul', 'Kader', 'abdulkader@gmail.com', 'Rangpur', '0148568574', 'male', 'class7', 1, '2023-12-26 07:16:58', '2023-12-26 07:35:09', NULL),
(10, 'Amader', 'DAta', 'amader@gamil.com', 'nachole', '0178475864', 'female', 'class9', 1, '2023-12-26 08:12:23', '2023-12-26 08:12:23', 0xffd8ffe000104a46494600010100000100010000ffdb0084000a0708151415181516151818181a1c181a181a181a1c1c1a1a191918191a1a1818181c212e251c1e2b211a182638262b2f313535351a243b403b343f2e343531010c0c0c100f101c12121f342b21213434343434313434343434343434343434343434343434343434343434343434343434343434343434343134343434343434ffc000110800fb00c903012200021101031101ffc4001b00000105010100000000000000000000000001020304050607ffc4003d100001030203060307020503040300000001000211032104123105415161718191a1b106132232c1d1f04252146282e1f12392a2071572b2163354ffc400190101010101010100000000000000000000000102030405ffc4002111010101010002030002030000000000000001110203211231415161042291ffda000c03010002110311003f00f4e6687aa614f668530ac364421081af567ecab54567874411534e48d4e40884a8840884a910084a88402110950210884a840880950804210804212a0449095081acd0a614fa7a14c2811084206d4d1581bba282a68a76eee8818d4f4c6a7a0108420442542010842012a44a804210804210804210804210804894a440ca7bd34a5a5bd2140884210254d14edd02af53453b74081ad4f4c6a7a0548950811084201084a804212a044254204425420122542010842044210821a67548861d530940f426664e0e409534533340a1a9a29a9e810237529e98dd4ae5f6e7b7986c397319356a36c436cc07421cf2351c003a2126bac42f23c4fb7989a8eb3c5304d9ac03ff00675cf507b29b05ed6e20dfdf1239c3b7c5841b2c5eb1b9c5af5542e2b01edac40aac3977bc3620f3e3d82ebf098b655607b1c1cd3bc7a2bcf52a75c5e7ed3a1085a64254812a01084881508420108420451baa8dd78dfb92621f16e2aabebcc0d37f0416e9d5cdba3d1492388f14398d6b206ffb2ad9bf2e9869b49daa4253689b941514e089481050389b29e97ca140b2fdabda270f81ab5018706e569060e679ca20ee3741c7fb7beda105f87c3be1b76d47b7f51362c61dc35970d7416d7cd0e22d1e4aabea4fe7d0289c49d149efedbbebe97195c9d227b9f4ddcd68e1b171003bb360cefea7b2cac2601eef9585de9f6f55a94f63e207e88077013e31f64b795e79e9d4ecbc5871caf636dc1e26384c193c89f05b180daf530bf1b1a0b0905ec3af5047ca7c4725cd6cac2d561f91c09b1891e7b974f87c1bcb5d2d37044c49ee7cbbae1d7525d8f44e6d995e8580c632b31b51865ae12388e20f306cac2e2fd8b7be93df41e446a071d2e3c9768bb71d7ca6bcbdf3f1eb02548956d8221288e213806f1081a98e781bfd4fa29811c42591fb95c4d577541c4772a338a60f99ed0393bd6d65724710891c479261acfa9b470cd177b39e6783e44aac7da0c3b747d38e4f680b5ea5460d484acc4531bda986b16aedea704b0079fdb4c17bbfe2aa7fdf5fff00e4a9fed3f75d39ad48ef67784fc8ce0df00986b1a8ea7a2726d1d7b29161b20414e01042a81729ff00539e06cd7cfefa607339a7e9e4bac85c1ffd56a6ea987a54d847ceea841d4e56e568037fccef252d927b6b996df4f1e68b2eabd9cd841cccef1249b03c1656cbd9c5ef0d8b5895dfe1e8fbb6c6ee4b8f7dfe47a3c7c7ed3b0d866b6c001d16be198382c818874fff005b80e363e4aee1b14782e4ef8e829b5b1a0eeb570d4dae6e821737fc49025696cbda0d9899e80da6c2782dec62cb9e9628e1982bd8090d693e240fce4b65636c539ea57a8740f34dbd18d0d31fd59d6caede399cbc9e5bbd041422574734213828c2918d95a0a12c2510a714c44995719a821229c06ca47b987417dd1f960983031ee21e781d7cd303c13dbea16fbb054dd77324f53f4296a6058e6b9a18d0608698020c58c8beb0839fcdebf55baa8376455e2cff0071d60f2e30b5bf873c42a8cba42e9d09b48dd48b8ba80961222554285c9fb74c0c632b65cc5a1e37ef2c136e00bbc5754d2aaed4c17bda5004b9aeccd1c7711e07c82c77379b1d3c5d7c7a96bcd7636106615200ced9b69398830b6712c765f8409dd2a76ece7526dd8e6365d19811724b8d8dc5ca9590bcbef7dbdd33f1cab30b8c75766677fa648cc58e00344893792eb4da0498e6ba1d9d49e40cedf8a0cc41d09136b5c41eeb48615912a2c057f8c3bf4eee8ba5ea64963139bb72b3bda1c454a3943293df9a7339adcd9408b96ef266d240b1be80ed7b3742b8702f6fc2e0d21d0224b438b4c6844c11cb53bb5768d2654735c2d201046a08b1fa2bb4039949d04bc869206b240b085a927d39deac9b7fe13675014e986ef25ce3ff0093c971f329efa81bfaafc20fd551a78d2402e689dfb906a074ccf8fd82ebbfc3cd9ef6a4a98c654b31d25b39a3713ba7b28c94ca2c6b443440e124faab14592790f3e49369f49b0b87de7b0faa9aa3fe20d161a1fce29f9e07055e93a3338aeb267a73ddf69c7c6eb1f8479f1fce48c5628b4e51b85fa24c3406dbcd56c60998b9223bdd6d9233146001abae790ff365730fbcf61d9576d10d12751eb1002970d541b0ec78ee516ad39e00929f41f2a1cc0d9494d544ee75d24a89e2f295064d1d42953c5308f76b8e3a69852293dda77bb082153b2c12650a9e32b482d6e906fc553ed47da2c733235b2082f02781d0478ac422153f681ee341c77b21fd9ae0e3e853301b45af6893dfe85797c9eeebdbe1f5ce2de3368b29365ee0d06d24c0ee777759d85da580cd2ead4c3a350e8b4e9981eb65aaea6d78823a26e1b645306ed6f188d7b68a739fae9ab94b1b48e56d27b5ed00105aecc20dc5e5757b1492dcc573786c1073f331a328b1cb1bb700baca0e68602cbb62dce576f1716ddaf379fb99915f6cd00e6e768b8f9a378e27a7dd6334ae8e656257a391f9776ee8745d3be7f5e7e2fe23a5bd69611902550636f0b46893a110af10ee93146ca2cb70de53f4fba91d77289ef8a979f95a078bbfb2e8cacb88688ddc1358dfd4531a33ba776e1c79a5c4548b01e1cb72aca3aefd0713e9753d160009035d55063a5e7800078ff85a42c1031c6ea6a4e54eabc83a2b148a0b24a48446852a22b212255c9d02108415b10f24c6edeab9645f5e9f9aa7b1d2494af69f99baf0dcee5c8f35a90fa6463b658735e20104381074208b83ca171b8dd90fc39cec05ccdedd4b798e23cc79af4d696b9bc88e963e8a36e15b02402b3d78a74e9cf96f2f39c1e3dc47c24f4d7c968e0f095f10fca5e58cfd59605b8b88f26eff004ebaaec0a04e60dc8e37259027a8208eeace1f08c6086881bcef3ce572e7c177ddf4ebd7f91cfc7d4f697018465360630435adca07000442918d0d6c0d274dc9cc7d884da87e13d27c17aa4792dd4ac72a5b57e12c7f51f51f55670c494cdacd69a4e04ded979b86807a742567b9b179b9d2a607e37686dc55f7954f658864c6a4f80b0fce6ad3cacf3322f5efa1486f3bd56aec2e7981686df9cba7e8a7ab5328fcd548c6651cf7f55b674d648689d556c5d4201562a3a166e3ea1ca55885d9ff002976b249e662df75a8c7922e1666ca6c31bfd5e6e2b51c6c85577eaa6a415779ba9a89331bbfc2558bac1628849453d114a5128141ff00cbe27ec8f70efe5f13f65c75bc2ca6bb429dee1ffcbe27ec92a517006c0f4927d10c67d3d54e1a54458a4a54c8d1cef5f22b7cad46e765781b9d2475fd5f43dca9daf90aaed6aed633397365a67500c11949e8264f45160f161e0c680eab5b353e37357bde424cea369948e72a98b54be550e2f1018c7bc8243412635e825494412cb6e595b6eac50ab3ba9bcf8349fa297e8936929ed973be46e5e6eb9f0161e68c555240249264093ccc7d56260aac9b0957368548601a667b1a3fa9ed6fd5796f56fdbd93c7ccfa8e9706218d1c949374ca6eb05212bd51e3aa98874bda39ff0075a2c7d963e22a7fa8d1f97b7d569507a4fb4bf45ad483ae3b2c9da8c85be1656da680d9e6b4866007c0d57aa9f8551c0fc8dfcde55a7bedf9cd0566124dd683151a1772b8f7902df7ddc166aad51d54b954141d604d8c056a504284a4a25736c8951285071bed4d1cb5c385b3b41916bb7e13e41be2b3e9127524f524faae9bdacc366a4d78d5aebffe2eb1f3cab9dc3b82f3f733a7b7c57e5c4fe93b5a0b72916e099b19c18c14eff07c249df0627beaa418726e1d1ca27ea1557d02ca85ef6e76b888b9804340f9771b4adf8afb4f2cde5d032b04e6aab431408b321596b4bb5b05eb78afa494f18d6589593ed3d56ba9c36e1ffe9ba3735c0e63e00f785a6ec3b22ed07aac5c56c135aab4b229b5a1c5dac39c6c06516317beee6a75b970e3e3f29aab84a81a200553da4c49c8d00c12f6475ce08f456df837d230f691789d5a7a1fa6ab3b10cf795d8dd5ac9a8efe8f97fe45be057924bb8f7f5666c7702a40b6e51e1b145ce226428b14e190df769c54b81c3e465f5373d78765eb7cfaa1b6df93e31a8d3acadac35c0237dd731ed0d7d0713e43f02d8f67f1cd7d16deed863b882d11e907ba9fa67a6eb0d950daec9678792bd4cc8951e369e6611c2e3b7e15a654b0cd8680a5c49f85368b6022a8969e87d1511e09a4dd68342a943e10029dce205b5b73deb3556698ba7e75161c9893af8744e4119c50e0527f1438155252ae4dacff0017c965e37da3631d91ad2f7cc06b4efe04c6bd254b88639e3231d964c39c356b7f516ff36e1c26772761b67d2a5f230378bb5711cdc6fdb44f8dbf4d4bccfb63ed6da95c82d8680e690e0d6cebccce9c7d16152ad072c82444c2ee5d4dae044725cbed2f652ab9f9e8d46875fe17cb5847024071f01f659ebc7bf4e9e2f2ce7d5250c4abcca808bac3ad42bd2bd5a4e60fdc21ccb6fccd2728eb09d47180de6c355cacbcbd5febdcf4e829bdad8e077c2b8e63a60091b88d3c4e8b0e9e3039b95d60e0638c71e5123a59743b2c1f76dce41e16d46eb2f478fc9f2f4f1f9bc7f1f6465207570ec7fb2716902d11be34ee3775561b4c6a4923840803c27cd34d3ca65a7b71e9f65d5c1039e1c0830445c1bdb9f11f9add663363319ef5cd24fbcc82352c683100ef12e719e93a4ad8ab866b8661f09e5a786eec9d469e513bd4b26b53ab27a62d205e46e6b4df9b848b74579c49b3449e0afb029e9b9566d73753d9bf78fcf51e40880d60bffb8dbc96a60767d2a008a6ccb3a924924f124ad1ab5f2c02a27629a752dee542da63eac27b2a250586e9b55ad8e2796aaa21aac83cb7289cfb1fce47e8a60d244148fa5222504194bb4fecaf5364002546c01a2d60a4a0fcdba37f63a1515313013337f2952b99dc267bb1c10576e1c6f250e633f0aa6ea8557a95a170b5d6458154349eb03a6e4e15a48037ac8c4e29c340088f3dc99b3b1e4d5008d43877179f28eeb73a4bcb74d4035291b8a6136789ea135e03fe683d2c866118df89ad977f35e3c56f58c4f9a74705cc7b57b319933b1a18f05a5d90087b41198380d6dbf51cf45d330f18edc1257635ed2d735a41d64023cd3a92cc5e3abcdd8e370d867577530df9438e7b48c906418d248685d9383841310a2c361d94db958d0d1330045cea4f353d60d7b0b1e241106091e045c7659e399cc6fcbe4bddfe853abb92d4cb626d7ed2782653734086811c90f20d885bd72c4ada81c343f9bd199459e3928ce246e32a6ae27713c52507bb7f9eb3db728c3894f00a0b7570ed7fc5c5739b55803831ce800cf374fcbf55b6cab977aafb4291203c31a5e204badf0cf1ebea5546653c2d810c71be9307a98dcb570c0e51a03bc70efbd52a555e6c406ab0cf8418bde3fb95704cc7ba4877f8e5cd4b9914aa66171f9c50fa4625b73c27d11034a75301b66802555655274699e7f552b5a4197193c0705157d81499954156da25f7e54194f6154ab31cb64b144ea32b95e5d674e76b34f18593892f1763c8234b6f06479aec1f8105557eca0567e35b9dc42cda2c2dce5e1a2066137077b78fdd50ff00e63870f0c22ab64c67c92d1c27292e03b7585262760171b185958bf651e4821ee0419197a47a1856de8939fd75785da0daa33537b1ed98394dc1e0ee07910a57625e3f44f785c151f66ab52717b2ad563c904b9902622ce110e1c8d97534b68b837e367c43f6e87b1d3a2d73d7f2cf5ccfc5da98f78d2913fd43ec9a31d55d6f707bba07890aab36c33f696f5063b15729e298efd40f70b5b2b18928878339002759793e40479a98b1e7f586f46fdcaab5b1ad6eae03b893d1516fb40d35194d8c792f7b1a5d003466201324fa4dd3644cad47601ced6a13d9494b03977e6ed0a593261d3cb423a1d0f921d4de7f538765a98974ad274cb09d978ca998d3c67ac28f1b896536e679813037c9e0382d225a41bc12d57020f82c8ffb8830e65ef71ada09f1d3c56c53a8d70b890a698a15040e29d8104824f12adbf0e0ddbe07e8ab52639aebd81d7fb2ba62d5260dea70c1cc7450c029f9c80254123a983d78ebe2a07d0775e8a563c273cf9a8296860d93b30565cdcc08de349557dc1e3e4a29d284202ca925214e84a185030350589e5852069e0823f7610680e014b91dc128a6ee0820fe19bc028df8063b5634f5015f144ef29c2884192ed9148fe867805054d88cd5a23a7d16f8604f81c1321b5905af1ab4129733ff0061f15ad9470090b470082851a8f1f309eb7f3533aa30ead83e9d15a9426d4c6739acd4907b04340fd242b756903ba7b2ae70adfdb1d2de8aeaa26123521217a73f033fb8742531db39dfbdde45343d95c01ae8a46d40ede474551f8111064f54c631ccd248e053e46469b29f0778a9ad17b159631437c84f76285817004e924027a27ca25e6b43df340bf9283f8a671f24da75008cce6c6e04856659c95d30641c100353c269595109d09a10102c24252a6941204884200209489500104a409a7540e841080950352a0a440a9252a44084944a1c8408e00a85f4bba98a0a0a4ec34ead4fa782636f944f4560a145d0c681a47609f2988447ffd9),
(13, 'iftekhar', 'man', 'jman794@gmail.com', 'khulna', '45454545', 'male', 'class8', 1, '2023-12-26 08:55:19', '2023-12-26 08:55:19', NULL),
(14, 'added', 'token', 'eeweww174@gmail.com', 'rajshahi', '54455433333', 'female', 'class9', 1, '2023-12-26 09:14:56', '2023-12-26 09:15:21', NULL),
(15, 'newssss', 'olsaaa', 'nnnnn@gmail.com', 'kansat', '333424242', 'male', 'class8', 1, '2023-12-26 12:38:58', '2023-12-26 12:38:58', NULL),
(16, 'jinius', 'gdgdd', 'ddfdan794@gmail.com', 'khulna', '3355545', 'male', 'class5', 1, '2023-12-26 13:01:25', '2023-12-26 13:01:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'iftekhar', 'iftekharparvez174@gmail.com', NULL, '$2y$10$4vuNFhMtQMjKbuzTZFGzpelKA7TmoDk8pPuCkmiJKXeVdWcVDnlly', NULL, '2023-12-26 11:02:17', '2023-12-26 11:02:17');

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
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `students_email_unique` (`email`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
