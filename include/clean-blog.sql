-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2025 at 01:43 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clean-blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'dolores', 'Vel voluptatem nam illo accusantium laboriosam. Animi sunt temporibus repellat hic. Dolorem cupiditate sint optio impedit sit veritatis labore veritatis. Harum porro sapiente repellat veniam perferendis sunt.'),
(2, 'libero', 'Autem error porro numquam necessitatibus. Modi modi et voluptatem asperiores. Molestiae consequuntur reiciendis sed omnis. Ut eveniet ratione eos ad. Voluptas eum illum est delectus cumque amet.'),
(3, 'nesciunt', 'Nostrum atque amet ad facere rerum laudantium ex. Rerum ad dolorum molestiae voluptas ut corporis. Deleniti nobis non dignissimos. Et sit quas temporibus laborum. Est dolorem et dolorem assumenda quaerat ullam.'),
(4, 'facere', 'Ut culpa voluptas similique alias maxime. Non et ab omnis saepe. Harum eveniet accusantium eum quibusdam. Distinctio tempora nostrum recusandae doloremque consequatur adipisci atque. Aut consequatur excepturi consequuntur repellat qui voluptatibus.'),
(5, 'rerum', 'Culpa nemo nobis quae repellendus aut. Adipisci dolorum ea modi quidem quis ducimus. Reiciendis sint libero doloremque exercitationem quae.'),
(6, 'amet', 'Autem expedita iste nostrum deserunt sint asperiores corrupti. Rerum animi dolores maiores. Ut ut aspernatur atque nulla et sint.'),
(7, 'et', 'Nam atque quaerat corporis. Rem illo corrupti nulla labore. Sit aperiam sed et incidunt sapiente non. Eos mollitia ut aperiam officia fugiat placeat repellat.'),
(8, 'ipsa', 'Eos est sit quod. Occaecati atque non suscipit et. Voluptatum alias error aut dolor recusandae est unde.'),
(9, 'consequuntur', 'Occaecati ut nobis aut dolorem iusto. Ut impedit ullam neque. Et saepe nesciunt iusto maxime. Velit quisquam voluptatem repellendus ex.'),
(10, 'eveniet', 'Odit qui aliquam quasi sequi quia nihil officia. Quae facere a illo odit. Adipisci et nobis odio vitae illo. Neque laborum a et aut.'),
(11, 'fugiat', 'Reiciendis est sunt molestias iure. Ex est quod provident veniam cum sunt. Ad accusamus id maiores quia perferendis sit.'),
(12, 'cumque', 'Omnis ut et minus impedit quasi ducimus neque id. Neque itaque temporibus ratione fugiat ipsa. Atque autem dolorem aliquam dolorem. Corporis animi dolor maxime tempore.'),
(13, 'quidem', 'Aut asperiores officiis nihil optio sequi et non. Nulla est eum incidunt facere.'),
(14, 'ut', 'Non praesentium iste quod et rem totam. Eum voluptatem quae fuga aut sit non. Sed aperiam voluptatibus deserunt ratione consequatur minima. Quia voluptatum et rerum dolores et omnis.'),
(15, 'laboriosam', 'Eum perspiciatis natus dolore ipsam sed. Rerum et qui odio quis quos et. Excepturi ut nesciunt quasi sed esse soluta accusantium ut.'),
(16, 'voluptas', 'Quisquam commodi beatae omnis aliquid illo. Quidem voluptates quis ad deleniti. Facilis dolore numquam corrupti consequatur incidunt harum ducimus.'),
(17, 'ducimus', 'Et cumque est dolor sint id laboriosam id. Qui delectus dolor id suscipit consequatur. Corporis facilis natus ut. Pariatur eveniet eaque ut.'),
(18, 'aut', 'Rem provident ea ipsam a ab rerum. Consequatur tempora ducimus vitae ullam libero at consequuntur. Consequatur voluptate dolore dolorem et quia. Consequatur perferendis ut vel qui dolorem rerum expedita.'),
(19, 'dicta', 'Ex laborum error voluptatem dolore. Impedit voluptatem distinctio eaque pariatur expedita sint. Quos sed autem cupiditate voluptates vitae. Asperiores aut odio enim. Repudiandae et harum sapiente reiciendis laudantium corporis aliquam.'),
(20, 'neque', 'Quibusdam quibusdam dolorem voluptatum. Illum maiores reprehenderit recusandae. Animi debitis illum atque adipisci voluptas aliquid nemo possimus.'),
(21, 'veritatis', 'Harum error velit nihil suscipit fugiat cum quibusdam sit. Voluptatem tempore impedit non aliquid et beatae similique amet. Quam aspernatur eligendi omnis ut mollitia cumque.'),
(22, 'aliquid', 'Sed eos enim voluptas voluptatibus. Amet qui expedita natus dicta sunt fugit modi. Quae et a ab earum velit.');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `content`, `created_at`) VALUES
(1, 1, 1, 'Quod voluptatibus id exercitationem est exercitationem. Fugit praesentium similique quisquam sed eum unde. Cupiditate est eos aut est quasi.', '1998-05-20 13:05:13'),
(2, 2, 2, 'Cumque nihil aut repellat harum. Molestiae exercitationem id molestiae quia delectus amet in. Aut corrupti inventore modi est quis.', '2006-06-06 14:02:42'),
(3, 3, 3, 'Tenetur recusandae labore provident est velit debitis. Accusamus aut itaque asperiores provident ex. Nam rerum esse iure vel.', '2003-11-22 22:00:08'),
(4, 4, 4, 'Illum voluptatum quibusdam dolores perferendis earum. Velit rerum laborum quis. Maxime maxime enim id. Ex nihil quia aut dolores ipsam similique sed.', '2011-03-20 09:47:30'),
(5, 5, 5, 'Ipsam reiciendis voluptates tempora soluta voluptates nihil qui. Architecto voluptatem quo eaque.', '2021-12-20 05:35:10'),
(6, 6, 6, 'Adipisci facere animi minus totam molestias. Maxime aut harum facilis vel non perferendis qui.', '2004-07-04 00:22:09'),
(7, 7, 7, 'Neque voluptatum quis impedit fuga quia sapiente. Fugit et dolorem soluta consequatur ea corrupti temporibus.', '1971-01-29 01:08:52'),
(8, 8, 8, 'Nostrum cumque nam est inventore in culpa quos. Consectetur dolor eveniet officiis quia quam.', '2020-10-28 16:20:12'),
(9, 9, 9, 'Laboriosam aut possimus quia qui. Odio ut est fugit ut. Expedita quaerat et quia officia cupiditate nam est reiciendis. Quibusdam recusandae velit repudiandae perspiciatis.', '1993-12-18 03:03:34'),
(10, 10, 10, 'Nam eveniet omnis odio officiis eos repudiandae porro. Sit similique porro totam et repellendus ut quia. Quis eveniet perferendis hic impedit ea qui. Sint minima ex blanditiis non.', '2021-05-05 05:49:54'),
(11, 11, 11, 'Ut sit quis dolorem voluptatem sit debitis. Temporibus eveniet provident in at saepe aspernatur. Voluptatum impedit in voluptas nam est est.', '2010-02-21 11:31:49'),
(12, 12, 12, 'Molestiae modi dolorem aut magni. Id ad rerum necessitatibus. Id eaque placeat alias ut dolorem. Ipsam quia eius nemo nulla omnis.', '1995-10-08 15:26:29'),
(13, 13, 13, 'Autem adipisci culpa molestiae dolore accusamus. Soluta eum cum facere aliquam aut ad numquam.\nQuod vitae repellat enim non laboriosam reprehenderit dicta. Exercitationem neque sint aut enim.', '2002-05-05 03:59:16'),
(14, 14, 14, 'Ut tempora aut quia unde quia laudantium quidem. Sunt harum in id. Recusandae in veniam harum. Cupiditate numquam recusandae temporibus molestias et cumque delectus repellendus.', '1977-02-05 00:20:39'),
(15, 15, 15, 'Doloribus fuga rerum velit. Soluta nesciunt velit sunt molestiae. Velit sint et vel et et eum.', '2005-09-07 11:38:41'),
(16, 16, 16, 'Accusamus nisi est modi quasi. Consequatur labore dignissimos est similique. Est ut est ea sapiente sequi.', '1992-08-24 21:05:47'),
(17, 17, 17, 'Sint excepturi ad est qui. Exercitationem eum rerum qui sunt facere. Sint facere vero eligendi reiciendis facere et. Perferendis earum quis aperiam voluptatem eum. Voluptatem neque sunt dicta est.', '2024-01-17 03:46:50'),
(18, 18, 18, 'Iste dicta rerum in architecto. Voluptatem corrupti voluptatem sit sit. Dolor dolores sit quia repellat. Aut aut et non voluptatibus iusto.', '2006-08-15 22:20:59'),
(19, 19, 19, 'Quia voluptatem mollitia quasi ut minus quia eum dolorem. Eos quasi sequi natus aliquam veritatis et consectetur. Iste natus animi voluptate est.', '1999-01-26 14:02:41'),
(20, 20, 20, 'Libero nesciunt maxime maiores est omnis est repellendus officiis. Velit aperiam asperiores vitae impedit.', '2017-09-15 18:20:54'),
(21, 21, 21, 'Quia fuga voluptatem enim et delectus est. Perspiciatis sed repellendus qui maxime. Sequi quod voluptas numquam eos. Temporibus molestias numquam dignissimos autem commodi.', '2005-04-13 16:30:45'),
(22, 22, 22, 'Vel sapiente voluptatum ea inventore. Ut error sed quae et reiciendis esse. Ipsa a assumenda officiis nisi. Tempora error voluptate aut illum optio magnam optio. Numquam sint dolores est id.', '1994-07-25 04:47:42'),
(23, 23, 1, 'Dolores et assumenda aperiam. Voluptas aspernatur beatae exercitationem in excepturi nobis sit. Sunt inventore aut nemo voluptas.', '1991-11-04 21:36:51'),
(24, 24, 2, 'Earum nam ut dicta eum. Minima voluptatem impedit incidunt aut vel voluptas.', '1996-08-15 18:10:51'),
(25, 25, 3, 'Accusamus repudiandae itaque laborum accusamus nam. Rem qui ab exercitationem odio voluptatibus. Quis qui et occaecati sed. Magnam ab dolor iure omnis iure voluptas in.', '2006-10-25 22:07:09'),
(26, 26, 4, 'Ad nam eligendi aut sint atque repudiandae est corporis. Ipsam deleniti repellat aliquam laudantium qui ut. Iusto et voluptatem a consequatur ab. Aliquam cupiditate doloremque et consequatur a non.', '2019-01-26 00:38:30'),
(27, 27, 5, 'Quia sed adipisci ut officia assumenda distinctio vitae. Molestias praesentium illum temporibus et vitae non. Suscipit et ut magni aut. Exercitationem incidunt eos quis.', '2008-01-28 09:16:56'),
(28, 28, 6, 'Dolores qui at sit dolorem. Non adipisci fugit error non molestias perspiciatis sint. Saepe fugit suscipit ad quos. Pariatur qui ut debitis iusto.', '2014-08-03 09:49:51'),
(29, 29, 7, 'Alias et asperiores labore ut. Similique architecto ducimus voluptatibus libero quo et. Autem et nostrum non.', '1974-09-16 04:16:33'),
(30, 30, 8, 'Id aut voluptas ut maxime sit numquam distinctio. Sed dolores sunt voluptatem. Est recusandae repudiandae ea accusamus iure. Dolores totam eaque aliquam nesciunt tempora velit itaque sunt.', '1976-06-15 19:11:16'),
(31, 31, 9, 'Illum rerum voluptatem sit aspernatur dolores nisi hic. In aliquam aut sit nam. Ut magni et repellendus enim possimus laboriosam.', '2004-08-07 10:40:44'),
(32, 32, 10, 'Quia fuga eaque magni ea alias et sit. Rerum accusantium qui necessitatibus tempora consequuntur. Porro ut deserunt eius aliquid qui est eius. Dolorem ea id vel veritatis esse ut.', '1998-09-25 09:35:57'),
(33, 33, 11, 'Fugiat ipsa consectetur totam facere eum quod animi. Et ratione suscipit ratione est. Velit sit ut similique in iure hic odit velit.', '1973-03-17 17:21:08'),
(34, 34, 12, 'Atque ut similique quia aut. Aut quia voluptas neque dolores. Omnis aut quia totam sunt ut. Optio in eum earum quis saepe eum saepe harum.', '1980-12-03 05:59:27'),
(35, 35, 13, 'Similique placeat natus velit perferendis earum. Est voluptatem et quo exercitationem quia vel. Porro aliquid minus modi temporibus accusantium. Ut beatae ut eos nihil.', '1979-01-15 03:08:15'),
(36, 36, 14, 'Sint adipisci quasi soluta voluptatem nesciunt libero explicabo. Excepturi voluptatum minima totam modi. Non provident labore quae vero.', '1980-12-24 23:19:15'),
(37, 37, 15, 'Accusamus veritatis reprehenderit quasi alias vitae. Molestias in eum vitae sint error saepe doloremque. Est eligendi inventore eligendi voluptas et vel in.', '1976-09-12 17:48:45'),
(38, 38, 16, 'Est sit voluptates sit aliquid saepe. Laudantium et enim laboriosam. Fugit corrupti dolorem velit corrupti. Sit iste sint debitis mollitia exercitationem at ducimus.', '2014-02-08 17:48:39'),
(39, 39, 17, 'Itaque tempore nostrum eum consectetur quaerat aut culpa. Accusantium dolores est nihil adipisci. Amet ut omnis sequi ea. Dolorem aut nam rerum ut similique.', '2024-11-01 09:05:46'),
(40, 40, 18, 'Harum deleniti provident ea unde voluptas eum dolor. Magni tempore veniam rerum quisquam dolores ut. Similique officia quod velit. Quae consequatur dolorem sapiente.', '1989-06-08 06:44:49'),
(41, 41, 19, 'Perferendis dolores esse et dolorem eos vitae eveniet. Quidem architecto ut et aspernatur mollitia nobis officiis.', '1991-11-23 06:13:44'),
(42, 42, 20, 'Quas voluptatem autem animi aut dolorem sit et. Id et id est. Cum eaque in iusto voluptatem voluptatem incidunt laboriosam.', '1982-01-28 02:28:28'),
(43, 43, 21, 'Et neque consectetur praesentium at sed earum. Ea est qui voluptatem laboriosam omnis et dicta. Sit est quia laborum corrupti quibusdam et. Voluptate quasi aut veniam accusantium autem sint.', '1990-07-05 06:29:35'),
(44, 44, 22, 'Delectus rerum dolorum hic. Consequatur accusamus dolores est facilis iste dolores nemo. Expedita quis quasi nihil nostrum aut quisquam quas eum.', '2012-11-11 15:36:37'),
(45, 45, 1, 'Vero est aliquam beatae eos et deserunt et. Cumque molestiae distinctio sunt. Ipsa molestias sint ut nisi. Adipisci labore ab doloremque vitae exercitationem.', '1970-11-30 09:02:34'),
(46, 46, 2, 'Sint quos molestiae sit voluptatem velit et ad expedita. Mollitia quia ut natus totam mollitia at. Quae sunt inventore quasi facilis unde est. Deserunt quia alias quia veniam porro.', '1995-01-25 06:53:57'),
(47, 47, 3, 'Ea vitae autem sit non est labore tenetur. Quasi eaque qui sunt corporis numquam. Enim voluptate quibusdam eum. Veritatis sint ut odio porro.', '2024-09-26 11:24:37'),
(48, 48, 4, 'Molestias neque sint in praesentium exercitationem. Sint eveniet qui ut neque. Quas qui sed qui ipsam odit nemo.', '2009-10-03 10:06:02'),
(49, 49, 5, 'Quisquam quia mollitia aliquam excepturi vel officia. Necessitatibus asperiores quia et voluptatem est veniam. Quis explicabo enim perspiciatis laborum error.', '1972-10-10 14:11:52'),
(50, 50, 6, 'Rerum et odit vel quas sunt quas nostrum. Amet voluptas illo aut voluptas possimus ullam. Iusto suscipit quam vel provident molestiae. Suscipit eum et itaque corporis ipsum.', '2009-11-02 16:59:38'),
(51, 1, 7, 'Voluptatem velit aperiam quae atque quibusdam deserunt eveniet. Qui sit magni sunt numquam aspernatur. Molestiae laboriosam eum sint aliquam sed. Non necessitatibus ipsum est temporibus odit alias.', '1995-05-17 01:59:20'),
(52, 2, 8, 'Alias cupiditate iusto similique cumque aut. Quibusdam veniam dicta similique eveniet. Laboriosam accusantium et accusamus et.', '1982-09-11 11:21:06'),
(53, 3, 9, 'Nulla consequatur esse et velit. Ad est ut at eos. Ipsum alias sequi deleniti et veniam qui. Molestiae totam cum aut.', '1972-07-03 06:54:57'),
(54, 4, 10, 'Minima repudiandae dolores aspernatur qui voluptatibus cum. Saepe aut molestiae maiores nemo. Molestiae omnis est libero pariatur voluptatem ipsa.', '1981-09-22 18:42:18'),
(55, 5, 11, 'Dignissimos eos architecto suscipit eveniet doloremque reiciendis amet. Et veniam maxime aliquam. Aliquid et sit id ut nemo.', '2022-12-04 05:16:08'),
(56, 6, 12, 'Voluptas voluptas illo ipsum autem. Soluta quos aspernatur quia nulla non quo. Facilis quia soluta sit aliquam illo sit. Ipsam ipsam sunt perspiciatis incidunt nulla sint tenetur.', '2022-11-11 09:23:46'),
(57, 7, 13, 'Nobis et doloribus ut porro labore eligendi. Est deleniti quidem quia consequatur perspiciatis suscipit similique. Et libero vitae fuga facilis. Sit ut saepe qui fuga.', '1985-04-02 09:04:53'),
(58, 8, 14, 'Doloremque est commodi optio qui. Eligendi odio doloribus rerum enim aliquid soluta.', '1981-12-28 00:25:16'),
(59, 9, 15, 'Fuga laudantium ut eaque est neque. Eius facilis hic deserunt consequatur ad nesciunt. Voluptatibus unde id dolores optio impedit at.', '1981-02-22 05:53:37'),
(60, 10, 16, 'Quod dolor eveniet aut. Est tenetur deserunt dolorem eum sint molestiae debitis. Et accusamus non temporibus. Nihil deleniti aut et iste.', '1986-07-17 12:04:21'),
(61, 11, 17, 'Eligendi consequatur aut aut enim accusamus esse maiores nulla. Officiis fuga amet et animi nam. Dolor veniam iusto qui est optio maxime.', '1977-02-08 20:16:13'),
(62, 12, 18, 'Vel harum non earum aliquam est ducimus. Aut facilis illum praesentium harum enim nam dolores quas. Sit veritatis velit explicabo est iure.', '1993-05-30 13:17:26'),
(63, 13, 19, 'Totam laudantium laborum sed qui. Maxime ab vel harum labore quaerat fuga.', '2023-12-07 13:03:32'),
(64, 14, 20, 'Quas totam sunt corrupti ut cupiditate natus minus. Aut voluptates temporibus qui aut inventore et accusamus. Quia harum laudantium doloribus aliquid culpa dolorem iusto.', '1976-09-20 13:11:39'),
(65, 15, 21, 'Earum quasi explicabo voluptatem est itaque praesentium sed. Cumque aut sapiente quam qui. Velit dolorem sapiente odio illo nemo maxime laborum cum.', '2022-08-13 10:24:41'),
(66, 16, 22, 'A sit molestiae quae. Voluptate adipisci harum quisquam aut.\nVoluptatem in impedit repudiandae quia reiciendis. Iure doloremque maxime ut molestias. Fuga ut qui magni voluptatem repudiandae tenetur.', '1971-11-04 17:36:47'),
(67, 17, 1, 'Ea blanditiis aut quo id eius sit est adipisci. Culpa quia dolores necessitatibus saepe commodi aut. Sunt qui culpa nobis hic eos. Quaerat perferendis inventore sit qui.', '2010-03-14 18:36:48'),
(68, 18, 2, 'Corrupti tempora labore ipsam consequatur assumenda tenetur qui. Exercitationem et possimus quia provident. Voluptatem qui culpa iure repudiandae nulla sed voluptatem.', '2012-08-31 12:45:31'),
(69, 19, 3, 'Exercitationem exercitationem sed molestiae aspernatur repellendus eos. Eum vel molestiae enim voluptatibus laboriosam ut labore. Quidem illum quia cumque aliquid.', '1970-12-13 13:36:22'),
(70, 20, 4, 'Accusantium ullam tempore recusandae aperiam quaerat. Quis quae cumque enim. Et est laboriosam fugit facilis. Maiores voluptatem commodi error voluptatibus earum et deserunt corporis.', '2005-05-11 10:41:19'),
(71, 21, 5, 'Iste quis accusamus vel et repellendus ipsam nisi. Quisquam et voluptas quis labore non repellendus aut. Incidunt est qui ab quis et velit autem. Ipsum sed doloremque illum maiores et et voluptates.', '1995-10-31 16:35:25'),
(72, 22, 6, 'Vitae quia sed explicabo illo eos. Inventore labore aut error quo. Dolore et temporibus esse temporibus neque. Rerum ratione sit et libero non eos aut.', '1976-04-17 14:45:11'),
(73, 23, 7, 'Enim sapiente et voluptatem sed. Perferendis recusandae aut earum et porro est et. Qui debitis corrupti id suscipit adipisci nobis assumenda qui. Ducimus placeat qui rem optio.', '2021-07-04 10:30:53'),
(74, 24, 8, 'Impedit dolorem et a dolor possimus. Quis autem id delectus enim. Autem illum qui quis deleniti deserunt. Voluptatem sed nobis et laudantium voluptatibus.', '1996-05-07 21:24:15'),
(75, 25, 9, 'Minima eos ut repellat provident vero quia. Qui assumenda qui minus non. Eligendi qui modi maxime minima doloremque laborum enim.', '1988-11-17 07:46:57'),
(76, 26, 10, 'Dolores voluptas dolore autem quam corporis. Itaque optio perferendis tempora accusantium. Fuga culpa consequatur quo doloremque consequatur quam.', '1987-05-18 01:41:30'),
(77, 27, 11, 'Quo quia quia molestiae nostrum rerum facere. Consequuntur deleniti voluptates tenetur et.', '2000-09-10 21:32:08'),
(78, 28, 12, 'Est accusamus reiciendis et eos nostrum odio. Facere at consectetur tempora rem quia adipisci ducimus. Voluptatem est sed omnis excepturi sed.', '1996-12-26 16:16:26'),
(79, 29, 13, 'Et perspiciatis non pariatur vel excepturi. Omnis minima iste in porro et deleniti et. Quod tenetur consectetur porro eveniet. Voluptatum distinctio quaerat quod ut.', '2010-05-15 10:12:13'),
(80, 30, 14, 'Quis laborum esse cumque accusamus. Quibusdam vero asperiores nobis rerum. Assumenda sapiente quo odit est exercitationem.', '2001-05-30 09:38:59'),
(81, 31, 15, 'Temporibus eius esse aut a dolorem quo. Consequatur laborum aut minus rerum. Nemo in earum cum.', '1977-09-20 05:58:27'),
(82, 32, 16, 'Sed quae omnis qui officia voluptatibus voluptate qui. Labore commodi velit voluptates itaque. Quia explicabo soluta qui in similique voluptates nemo sed. Tempore corporis non corporis soluta.', '1990-08-05 21:58:20'),
(83, 33, 17, 'Eaque tenetur voluptatem aut ea beatae ut. Aut eos earum enim esse non hic dolor. Iste cupiditate voluptatum nihil enim commodi.', '2014-04-29 21:20:31'),
(84, 34, 18, 'Possimus consequatur nesciunt rerum eius dolore. Ipsam aut et incidunt. Eum alias consequatur officia laborum architecto voluptatibus.', '2005-11-22 20:09:42'),
(85, 35, 19, 'Dolore recusandae vitae velit praesentium rerum maxime. Vel modi dolorem et a tempora. Sit aut et dolorem optio aperiam. In aliquam non non quam.', '1993-06-04 04:29:48'),
(86, 36, 20, 'Porro maiores omnis eaque a. Temporibus voluptatem praesentium quasi dolores eveniet quo. Dolor aut quis molestiae vitae aspernatur. Aut nostrum omnis aut officia rem reprehenderit atque sit.', '1996-12-02 09:16:15'),
(87, 37, 21, 'Quasi exercitationem est unde quidem vel. Similique minima ut enim molestiae. Cupiditate dignissimos nemo saepe nisi ab.', '1998-05-24 21:00:14'),
(88, 38, 22, 'Eius sed totam iste voluptatem veritatis blanditiis excepturi. Eveniet assumenda est voluptas ipsa. Nisi facilis aperiam aut unde quisquam.', '1977-06-01 10:30:53'),
(89, 39, 1, 'Sint neque dolor inventore tempore explicabo officia. Consequatur illo similique qui excepturi aliquid. Error esse et sit repellendus sed et.', '1992-01-16 12:17:16'),
(90, 40, 2, 'Consequatur et omnis nemo fugit ut odio. Inventore quos et ipsum ducimus voluptate ut temporibus. Voluptas nisi deserunt libero non dolores iure. Enim tempore quia et omnis tempora omnis perferendis.', '2013-01-03 17:28:32'),
(91, 41, 3, 'Id quaerat aliquam aspernatur nesciunt voluptatem. Ad quos ullam ea esse velit. Voluptatem dolor nam quaerat nemo. Eos quo quos sapiente tempora non cum id.', '1988-02-27 03:42:24'),
(92, 42, 4, 'Quis et consequatur minima dicta. Vel fuga eos et fugit. Modi velit quasi dolorum quisquam impedit non deserunt. Delectus autem sit natus cumque dolor.', '2015-04-18 22:06:48'),
(93, 43, 5, 'Ipsum cum hic et quia est quo molestiae. Aut blanditiis dolores ut harum harum vel sit. Dignissimos a aut et consequatur et. Voluptatem maxime molestiae autem perferendis.', '1990-10-21 21:55:36'),
(94, 44, 6, 'A possimus voluptatem laudantium unde. Et iusto maxime aut aperiam. Non dolor aut ipsum consequuntur veritatis minus. Dolores dolor et numquam velit.', '1993-05-21 02:05:33'),
(95, 45, 7, 'Autem provident recusandae aut eum animi ut. Ut eveniet voluptatem sed vitae nam. Magni est autem voluptas.', '1977-01-22 20:41:28'),
(96, 46, 8, 'Explicabo a similique ratione cupiditate deserunt. Ut quia fuga nihil praesentium ad corporis ad. Quidem excepturi optio quo iusto est fuga est aut.', '1994-09-03 10:54:38'),
(97, 47, 9, 'Optio voluptas et nulla eum ducimus. Atque sed ullam recusandae ad est et libero fuga. Non rerum quaerat soluta cumque tempora fugiat vero.', '2009-10-03 09:33:01'),
(98, 48, 10, 'Voluptas repudiandae saepe corrupti consequatur perspiciatis suscipit. Qui magni odit illo officia quia ut totam iste.', '1996-07-10 22:11:32'),
(99, 49, 11, 'Ea dolor voluptate recusandae nostrum eligendi quia. Et velit non vitae asperiores ut deserunt enim. In quis a libero aut cupiditate repellat placeat.', '2011-02-22 03:22:52'),
(100, 50, 12, 'Velit eos voluptatum excepturi enim. Voluptatem ipsam quam voluptas libero. Illum dolor nostrum dolorum harum distinctio.', '2003-08-08 12:12:12');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'Numquam consequatur harum dolor atque eligendi doloremque quae.', 'Repudiandae maiores suscipit aut expedita in esse. Suscipit quidem et earum veniam corporis. Qui rerum nulla non nostrum officia mollitia et.', '2005-09-29 18:27:26', '1989-11-24 02:57:07'),
(2, 2, 'Id aliquid esse eligendi repellendus earum.', 'Tempore ducimus soluta quibusdam voluptatem incidunt voluptatem. Dolorum amet consequuntur quam ex qui. Optio et harum provident quia ut eaque.', '1972-08-09 07:54:58', '2017-10-17 02:03:59'),
(3, 3, 'Veritatis cum non nulla cupiditate quis.', 'Possimus repellendus aut temporibus nobis. Minus laboriosam molestias voluptates quis error eaque et. In cumque eum esse ut ipsam. Repellat architecto adipisci sit voluptates omnis ut vel.', '2009-12-23 03:22:38', '2018-05-20 06:30:46'),
(4, 4, 'Quas pariatur consequatur earum qui molestiae accusamus repellendus.', 'Iste quia ipsa odit vero tempore. Saepe illum laboriosam distinctio est dicta illo ea. Sit laudantium illum reiciendis excepturi rerum. Labore voluptas recusandae voluptatem maiores.', '2013-05-13 15:59:24', '2018-08-09 21:34:39'),
(5, 5, 'Adipisci aut consequatur est reprehenderit.', 'Adipisci nostrum totam at ab aut error. Laborum et delectus non. Quis sapiente at voluptatem atque aliquam et. Sapiente ea et voluptas.', '1994-05-17 17:04:46', '1989-09-23 20:05:52'),
(6, 6, 'Exercitationem autem similique temporibus impedit dolorem.', 'Qui aliquam nulla tenetur enim non provident. Ea labore in ut libero distinctio. Quisquam quasi illum sit blanditiis. Cupiditate nulla ut ut.', '2024-10-24 17:50:15', '1976-04-29 14:07:27'),
(7, 7, 'Qui sit et et quaerat.', 'Vitae eius tempora magni autem ex. Voluptatem est ullam omnis est nemo quibusdam.', '2005-03-01 02:08:42', '1972-12-04 02:32:06'),
(8, 8, 'Vitae hic repellat nulla et sint quo.', 'Et dolor distinctio velit officia necessitatibus sint. Consequatur hic molestias aut cumque similique. Numquam exercitationem quae blanditiis. Et eum et omnis qui sit sapiente.', '1992-12-09 00:38:20', '1970-02-22 23:24:53'),
(9, 9, 'Nihil magni consectetur assumenda deleniti dolorum.', 'Velit dolor sunt est fugiat. Voluptatem tenetur dignissimos quos consequatur. Recusandae perspiciatis quibusdam dolores deserunt vero.', '2012-04-12 14:25:43', '2022-06-08 04:52:24'),
(10, 10, 'Ab quas fugiat placeat quasi praesentium.', 'Omnis eveniet quisquam quasi et et iure quo. Nemo quo sunt architecto sint quaerat sunt porro doloribus. Facere numquam atque veniam voluptas. Praesentium sequi accusamus nam et ut.', '2003-04-16 06:27:05', '2021-12-11 17:42:39'),
(11, 11, 'Ullam inventore et repudiandae neque qui vel.', 'Quia consequatur vitae quod totam. Magni non impedit nihil quaerat qui porro provident. Est ipsa voluptatem harum adipisci nihil accusamus. Aliquid molestiae quam et.', '2012-09-18 22:40:43', '1990-09-17 21:22:28'),
(12, 12, 'Quidem quia quaerat molestiae facere eum nemo.', 'Occaecati consequatur praesentium in omnis. Quis est ipsa aut voluptate nisi aut iusto corrupti. Odio hic alias ratione fugiat asperiores. Enim molestiae perspiciatis corrupti accusamus.', '1974-06-20 08:18:06', '1985-02-15 05:12:05'),
(13, 13, 'Dolorum est iure tempore animi ut.', 'Ducimus animi ipsa animi eos dolores sed. Sit aut ad fugit quos aliquam autem quo. Tenetur illum molestias assumenda et aut.', '2003-12-20 16:58:39', '1984-07-30 11:28:38'),
(14, 14, 'Et earum omnis expedita voluptatem quibusdam est.', 'Aut officia et et et ratione nisi. Ea placeat soluta ut ea officia et repellendus sit. Minima officiis quod explicabo iste ut accusantium. Ullam eos perspiciatis labore incidunt.', '2010-05-10 04:23:49', '2001-05-12 17:16:55'),
(15, 15, 'Voluptatem nulla cupiditate est est.', 'Occaecati quidem doloremque a. Iusto aliquid pariatur ut similique natus nulla voluptas.\nRecusandae fuga quibusdam nobis est. Et saepe vel sed natus tempora assumenda modi.', '1981-06-01 21:26:36', '1982-09-19 04:36:41'),
(16, 16, 'Et inventore excepturi et labore.', 'Nisi vitae culpa quis dicta eum. Omnis nobis sapiente veniam et odio.', '1979-11-12 18:16:55', '1981-07-05 08:39:17'),
(17, 17, 'Consequatur qui dolorum voluptas reprehenderit.', 'Aut id dolorem vel ut magnam qui vel vel. Iste odio mollitia reiciendis mollitia consequatur. Repellendus distinctio eos cum necessitatibus. Omnis dolore provident nihil magni.', '2024-07-27 17:39:32', '1992-09-14 06:44:04'),
(18, 18, 'Sed vero illo et quia dolor.', 'Nam nesciunt perspiciatis magnam sed magni dolores aliquid ut. Ut et officia incidunt nostrum sed cumque natus.', '1976-05-07 18:15:19', '2019-07-31 00:51:14'),
(19, 19, 'Ducimus commodi est et atque.', 'Quas in ut id nobis culpa aperiam. Fuga qui facilis perspiciatis nisi mollitia sint enim. Quae quas dignissimos aut et facilis id sit ut.', '1976-02-16 13:00:30', '2014-04-01 22:13:23'),
(20, 20, 'Et corporis sed veniam ad.', 'Aspernatur quia accusamus eaque voluptatum corrupti. Iste nihil similique quo eius dolor fuga omnis. Assumenda dolorum nemo non culpa non sed quam occaecati. Odio ea consequuntur at facilis.', '2004-03-22 14:27:03', '2015-09-30 11:11:48'),
(21, 21, 'Alias voluptas illum saepe earum.', 'Sunt magnam numquam non fugiat earum et ducimus. Et hic earum voluptatem pariatur quos voluptatem. Atque aperiam odit provident architecto. Velit dicta est et est rerum quis.', '1994-05-10 08:56:17', '1978-07-02 21:15:47'),
(22, 22, 'At ducimus laudantium quas possimus.', 'Blanditiis aliquid aspernatur et facilis. Molestiae qui non rerum alias maxime. Qui nulla eveniet qui.', '2018-07-16 00:47:52', '1990-09-14 02:29:13'),
(23, 1, 'Autem aspernatur reprehenderit inventore fugiat.', 'Molestiae facere quo eligendi nobis id ex. Corrupti eligendi quis quaerat quas cupiditate. Numquam qui veniam ut voluptas non cupiditate. Fugiat necessitatibus repellat incidunt sint odio odit.', '2012-12-23 15:50:10', '1992-01-02 02:15:41'),
(24, 2, 'Voluptates eius eos blanditiis quod velit molestiae vero.', 'Voluptas sit necessitatibus eius aut eos modi. Perferendis voluptas odit cum cumque. Nam qui et quis quia.', '1979-05-22 02:06:46', '2011-04-08 06:05:04'),
(25, 3, 'Dolorem quia perferendis quae neque id qui illum.', 'Nobis facere natus et aliquid. Debitis non sed eum quidem tempore. Est dolores voluptas autem aut quis. Nesciunt et voluptatem expedita dignissimos.', '1999-02-09 03:48:42', '2021-03-13 07:55:17'),
(26, 4, 'Ut aperiam ut rem.', 'Quae aliquid consectetur perferendis. Iste possimus eligendi magni sint ex. Suscipit autem enim sint quam molestiae et nisi accusamus.', '1999-09-15 06:48:26', '1990-06-22 10:51:48'),
(27, 5, 'Praesentium nihil cum cumque quo.', 'Eum nesciunt quia quo autem dicta soluta. Ut maxime assumenda sunt aperiam laboriosam. Culpa eum sed iure sint et.', '2020-10-25 22:17:29', '2003-05-01 11:09:43'),
(28, 6, 'Mollitia culpa accusamus sed ad aperiam.', 'Assumenda aliquam corporis voluptatem velit. Qui nobis non temporibus minima qui nam dolor quam. Officia sapiente nostrum et facere voluptates nihil odio.', '1989-07-12 11:59:24', '1983-11-05 15:06:45'),
(29, 7, 'Aliquam repellendus commodi et est ut placeat aut voluptatem.', 'Ea quo autem atque delectus rem qui. Culpa veritatis et est hic veritatis. Voluptatibus sapiente ea est ipsum animi iure. Nemo necessitatibus alias et facilis quis.', '1997-06-26 23:33:32', '1971-12-19 07:30:45'),
(30, 8, 'Laborum hic asperiores laudantium corporis sunt voluptate voluptatum non.', 'Blanditiis reiciendis atque molestias ut quas consequatur similique. Quia tempore aut est voluptas labore vel sint. Quidem id at hic voluptate in quia in.', '2001-06-30 01:59:15', '1991-12-28 12:55:22'),
(31, 9, 'Est inventore sit cumque.', 'Voluptas molestiae aspernatur exercitationem delectus rerum. Exercitationem tenetur ut sint ut voluptatem quia ut consequatur. Ut recusandae et atque vel itaque.', '2000-05-30 05:33:21', '1987-05-01 17:36:10'),
(32, 10, 'Dolores autem exercitationem impedit veritatis.', 'Numquam totam rerum sint quae. Necessitatibus dolor rerum et. Quia aut asperiores nulla quo.', '2012-06-25 00:31:28', '1970-02-14 03:54:53'),
(33, 11, 'Deleniti officia adipisci vel sequi necessitatibus omnis veritatis corporis.', 'Nostrum dicta aliquid ut inventore ea nulla autem est. Animi unde nulla alias suscipit rerum sed quaerat.', '1993-11-05 12:49:39', '2011-03-02 02:49:06'),
(34, 12, 'Ut voluptatem doloremque dolorem dolorum natus voluptatem officia.', 'Voluptatem voluptatum cum unde. Modi voluptas consequuntur nisi mollitia qui laboriosam eligendi. Fuga aut quis harum architecto.', '2000-05-05 05:29:38', '2008-11-24 17:57:46'),
(35, 13, 'Quia voluptatibus et saepe eum ipsa ipsam.', 'Ullam recusandae dolores tempora. Qui autem harum delectus odit voluptatem illo doloribus. Alias doloribus hic voluptatem quisquam iusto.', '2007-12-24 08:07:36', '1993-01-30 16:53:27'),
(36, 14, 'Quaerat quis est quos aut beatae fuga.', 'Nobis praesentium quia quam. Perspiciatis odit aut sed tenetur rerum rem.', '1996-07-30 11:56:18', '1980-07-17 01:53:35'),
(37, 15, 'Voluptatem aspernatur iste molestias est doloribus ut velit.', 'Vero consequatur neque veniam omnis quam. Quia eos necessitatibus quos aut sit incidunt.\nNihil molestiae dolorem voluptas. Aut id voluptatem in aut. Qui distinctio quidem nemo molestiae rem.', '2013-10-13 20:57:20', '2022-03-27 06:12:04'),
(38, 16, 'Est perferendis eius voluptatum aut vitae aut.', 'Molestiae sapiente quibusdam id omnis quis et. Et animi facilis aspernatur enim ullam pariatur. Sunt doloremque quae repellat quas nobis.', '2009-09-04 16:04:17', '1989-08-10 09:24:42'),
(39, 17, 'In quibusdam quas eos beatae quisquam.', 'Nam iure commodi eveniet est architecto pariatur. Reprehenderit expedita perspiciatis rem facere. Magnam consequatur fugit veritatis harum maxime quaerat et.', '2016-01-30 06:19:39', '1978-04-28 06:26:47'),
(40, 18, 'Molestiae deleniti voluptatem aliquid repudiandae accusantium dolorem ea.', 'Dolorem quo repudiandae neque voluptas facere. Eveniet repudiandae vel accusamus aspernatur perferendis.', '2017-02-03 22:43:32', '1983-05-22 18:56:29'),
(41, 19, 'Pariatur fugiat aut velit laborum in cum magni.', 'Nam quibusdam sapiente voluptatum qui est. Et saepe cumque non. Culpa amet voluptatum pariatur quia. Voluptas dignissimos vero atque omnis doloremque.', '2009-08-10 08:41:16', '2009-02-21 22:12:28'),
(42, 20, 'Expedita est illum cumque ducimus incidunt provident distinctio et.', 'Sed mollitia culpa sed dolorem numquam sed qui. Vel quia eum odio. Quisquam maxime autem eum occaecati similique in inventore.', '2023-03-11 23:22:09', '1974-04-20 04:33:21'),
(43, 21, 'Debitis vero dolorem perspiciatis quis iure excepturi nobis qui.', 'Ea autem ut consequatur. Consequatur ad omnis consequuntur et. Enim at et nihil tenetur.', '1999-05-24 19:56:11', '1997-04-30 03:41:58'),
(44, 22, 'Nisi dolore nihil dolor ipsa adipisci et.', 'At atque et assumenda assumenda blanditiis fuga. Qui fuga atque et consequatur enim. Natus officiis ut at vel magnam alias.', '1990-04-12 21:45:58', '1970-04-22 05:29:03'),
(45, 1, 'Consequatur quia itaque qui explicabo.', 'Omnis quia non enim error voluptates. Provident non nam numquam sed accusamus minus non. Dignissimos voluptas dolores mollitia qui velit numquam. Aut voluptate non laudantium distinctio ratione.', '2009-04-13 09:03:14', '1985-05-18 13:42:15'),
(46, 2, 'Doloremque consequuntur eaque et consectetur.', 'Quo voluptatem labore consequatur enim. Dignissimos quia et quia alias suscipit accusantium sit. Consequatur reiciendis velit quo fugit quo esse vero. Numquam non ratione corporis ut non.', '2001-06-29 15:20:33', '2004-10-18 22:49:45'),
(47, 3, 'Saepe culpa quia exercitationem maiores voluptates sit totam ea.', 'Dolores autem iure exercitationem ut doloribus consequatur velit. Voluptate dolorem repellat et. Inventore dolorum ut quos dolore molestias mollitia omnis. At sit neque eos voluptates saepe.', '2010-10-25 00:57:36', '1980-09-13 07:41:05'),
(48, 4, 'Architecto non quo et occaecati esse atque dolores.', 'Earum provident est enim quis et. Quasi vero eum veritatis qui. Aut repellendus ut sit dolorem ipsam. Eum cum eos rerum consequatur.', '1994-12-31 04:29:58', '2018-02-23 11:23:53'),
(49, 5, 'Fugit molestiae ut fuga commodi omnis facere est.', 'Cum nemo soluta aliquam. Corporis quae dolorem quas dicta exercitationem. Id sunt placeat eum nam non quia et. Nostrum quo porro quibusdam molestiae unde non quo.', '2002-10-31 03:14:21', '2024-04-02 21:11:44'),
(50, 6, 'Dolor corporis nulla id ut.', 'Consequuntur deleniti labore at blanditiis sed. Ex et sunt accusantium corrupti et. Voluptatem a eos vero. Vel autem accusamus quod minus dolorem quisquam.', '1976-08-10 06:20:49', '2022-09-05 17:13:26');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`post_id`, `category_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 1),
(24, 2),
(25, 3),
(26, 4),
(27, 5),
(28, 6),
(29, 7),
(30, 8),
(31, 9),
(32, 10),
(33, 11),
(34, 12),
(35, 13),
(36, 14),
(37, 15),
(38, 16),
(39, 17),
(40, 18),
(41, 19),
(42, 20),
(43, 21),
(44, 22),
(45, 1),
(46, 2),
(47, 3),
(48, 4),
(49, 5),
(50, 6);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `first_name`, `last_name`, `created_at`) VALUES
(1, 'btowne', 'bf0cb5b968c737cd73277aa3e2b47d4b9140cc99', 'lyla.west@example.com', 'Lloyd', 'Swaniawski', '1977-10-17 03:59:08'),
(2, 'murphy.tavares', '29ed6e814d4ed0dd93dd39da2ed68732c2549460', 'hlindgren@example.com', 'Claude', 'Abbott', '1996-10-07 20:31:14'),
(3, 'craig72', '75592462467121db2810de69894525b3ccb8eaf0', 'alexzander.schamberger@example.net', 'Lupe', 'Barton', '2000-06-26 23:46:35'),
(4, 'wokuneva', 'afa620c79e0210f9df3798936985fe030a162e56', 'morar.chadd@example.com', 'Caesar', 'Lesch', '2016-01-10 00:00:12'),
(5, 'erika68', 'c88aa26cc3143b9df565732ffd0f5aaa919deb74', 'tbartell@example.net', 'Ernesto', 'O\'Hara', '1978-12-17 01:44:35'),
(6, 'hilll.soledad', 'd9ea8dcab3c0c968438075c09db4c10c19b79f6b', 'gutmann.laverna@example.net', 'Krista', 'Sporer', '1990-10-22 08:03:49'),
(7, 'zmacejkovic', '174815e29fbd4fff9c6a262f40bf9f6a58c0729a', 'flavie13@example.net', 'Faye', 'Maggio', '1998-02-10 01:36:10'),
(8, 'ezra.bartoletti', '97ff1c551d460f014cd640bef05eb56dc26faa85', 'nkub@example.org', 'Sigurd', 'Champlin', '2019-01-26 12:37:17'),
(9, 'rfadel', 'f049942c5af164b2f41587ffb5cbf11a99ba19ac', 'uo\'keefe@example.net', 'Morgan', 'Gerhold', '2024-04-11 01:24:26'),
(10, 'toberbrunner', 'eacda873421ab854fd5fcc564c091e64c38699ea', 'brown.nikolas@example.com', 'Aracely', 'Padberg', '2010-11-24 06:32:12'),
(11, 'lrolfson', '6e221d36a163d8e7a6f58ce2ec2360641ac2d493', 'williamson.kyle@example.net', 'Jaylin', 'Konopelski', '2005-08-21 19:38:02'),
(12, 'vella.mcglynn', '5b8722f7a813dffe1736eef0b76f969872caf558', 'leland57@example.com', 'Nils', 'Kessler', '1980-06-07 03:45:23'),
(13, 'wgoodwin', '2315a4ff73943ee484f3a5c22957f8360f8d3ff9', 'jalon.gibson@example.net', 'Broderick', 'Stehr', '2020-01-08 18:47:25'),
(14, 'lucinda.bednar', 'd2f67e13d6fe35dbd8e6581f7f5daebfc11de4d6', 'swift.bill@example.com', 'Kurt', 'Stracke', '1976-03-16 04:48:27'),
(15, 'eda46', '42dc1e80cdc9e85d9c742254bfb17cf15db71d72', 'murphy.robyn@example.com', 'Vicky', 'Barton', '2015-11-01 05:37:06'),
(16, 'christop68', '947328af0cd65faa464d0baa4a942896a0aeaccf', 'tillman.emmitt@example.org', 'Cielo', 'Stanton', '1983-08-03 14:33:44'),
(17, 'garfield93', '0ce50dcca91e942c1456e818582d3ad127e4fcae', 'breana41@example.net', 'Reginald', 'Pouros', '1983-10-24 18:20:41'),
(18, 'pmurphy', '9a564c989ab041c17f099c41dd5b4fe472b96376', 'ari75@example.net', 'Laury', 'Luettgen', '1993-02-05 22:35:56'),
(19, 'tyrese12', '2a87469235438f5ea07021d77db8794c887392a4', 'dkirlin@example.net', 'Tyrique', 'McKenzie', '2008-02-23 17:12:14'),
(20, 'rwilliamson', 'dbbd05fc6c44d421322c7c5138267a59d382ca56', 'hcorkery@example.com', 'Jazlyn', 'Boehm', '1990-05-18 18:03:27'),
(21, 'oupton', '565a5a59ba7218ba17e059ef64a238b261ba28b3', 'mkuhn@example.com', 'Carson', 'Nikolaus', '1996-02-21 07:32:37'),
(22, 'breanne98', 'e16999f14e828006137131574dae991db9d662e6', 'crippin@example.net', 'Myrtis', 'Sanford', '2020-03-16 04:33:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD CONSTRAINT `post_categories_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `post_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
