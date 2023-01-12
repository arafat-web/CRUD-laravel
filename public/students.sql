-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 12, 2023 at 03:47 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `phone`, `email`, `about`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Arafat Hossain', '01789404345', 'arafat.122260@gmail.com', 'I am Arafat Hossain. I am a Full Stack Developer and Desktop app Developer with knowledge of PHP, Java, JavaScript and SQL. I love to work with Laravel, JSP and JavaFX Frameworks.', 'images/1677885930.png', '2023-01-11 13:03:45', '2023-01-12 07:48:43'),
(3, 'Ria Dale', '(734)3073 423 7', 'justo.praesent@hotmail.com', 'et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo', 'images/avater.png', NULL, NULL),
(4, 'Clinton Chaney', '(145)6877 489 8', 'metus.eu@aol.edu', 'quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci.', 'images/avater.png', NULL, NULL),
(5, 'Myles Porter', '(672)9271 723 4', 'quam.elementum@hotmail.com', 'vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor', 'images/avater.png', NULL, NULL),
(6, 'Dorothy Fisher', '(011)8957 715 7', 'ultrices@google.edu', 'odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor', 'images/avater.png', NULL, NULL),
(7, 'Felicia Mcknight', '(481)2633 619 3', 'montes@yahoo.ca', 'ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque', 'images/avater.png', NULL, NULL),
(8, 'Abdul Mcgowan', '(171)3622 936 2', 'urna.suscipit@yahoo.ca', 'et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce', 'images/avater.png', NULL, NULL),
(9, 'Deirdre Hickman', '(227)7751 142 1', 'est@protonmail.ca', 'vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus', 'images/avater.png', NULL, NULL),
(10, 'Damian O\'donnell', '(013)1942 254 7', 'mi.lorem@aol.com', 'facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel', 'images/avater.png', NULL, NULL),
(11, 'Shea Evans', '(934)6348 872 3', 'tincidunt.nibh@hotmail.net', 'Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas,', 'images/avater.png', NULL, NULL),
(12, 'Georgia Callahan', '(451)2544 813 0', 'sed@google.net', 'neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci', 'images/avater.png', NULL, NULL),
(13, 'Amelia Battle', '(675)4875 395 9', 'quis.urna@yahoo.org', 'odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum', 'images/avater.png', NULL, NULL),
(14, 'Joelle Cortez', '(717)8525 750 8', 'vitae.erat.vivamus@aol.net', 'lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac', 'images/avater.png', NULL, NULL),
(15, 'Rudyard Contreras', '(455)0157 458 5', 'nec.eleifend@protonmail.net', 'non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est,', 'images/avater.png', NULL, NULL),
(16, 'Gannon Davenport', '(807)2786 627 3', 'tempor.erat@aol.ca', 'Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam', 'images/avater.png', NULL, NULL),
(17, 'Cole Preston', '(744)5121 237 8', 'sit.amet.consectetuer@outlook.com', 'Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat.', 'images/avater.png', NULL, NULL),
(18, 'Martin Sanford', '(310)7666 818 4', 'tempor.erat@icloud.net', 'sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi', 'images/avater.png', NULL, NULL),
(19, 'Gabriel Mccarthy', '(423)7287 853 8', 'ultricies.dignissim@outlook.ca', 'lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla', 'images/avater.png', NULL, NULL),
(20, 'Aladdin Hutchinson', '(537)6611 277 3', 'vel@hotmail.ca', 'Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum', 'images/avater.png', NULL, NULL),
(21, 'Basil Gordon', '(169)6439 346 7', 'amet.ante.vivamus@protonmail.edu', 'fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit,', 'images/avater.png', NULL, NULL),
(22, 'Yvette Mcintyre', '(105)7035 114 6', 'sed.malesuada@google.edu', 'semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu.', 'images/avater.png', NULL, NULL),
(23, 'Preston Paul', '(757)2845 723 3', 'eget.venenatis@outlook.couk', 'diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu,', 'images/avater.png', NULL, NULL),
(24, 'Cooper Mclaughlin', '(589)3063 563 2', 'nisl.sem@yahoo.net', 'ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque', 'images/avater.png', NULL, NULL),
(25, 'Brian Lindsay', '(517)4903 278 5', 'a.odio.semper@protonmail.edu', 'consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis', 'images/avater.png', NULL, NULL),
(26, 'Joshua Savage', '(711)1386 765 2', 'sagittis.nullam@outlook.edu', 'egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus', 'images/avater.png', NULL, NULL),
(27, 'Hayfa Robinson', '(637)8106 312 3', 'eu.lacus@outlook.net', 'faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est.', 'images/avater.png', NULL, NULL),
(28, 'Wade David', '(259)6322 455 4', 'nulla@outlook.couk', 'enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus.', 'images/avater.png', NULL, NULL),
(29, 'Hoyt Rocha', '(334)2470 132 2', 'mollis.phasellus@icloud.couk', 'orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras', 'images/avater.png', NULL, NULL),
(30, 'Yeo Gallegos', '(547)6491 011 5', 'lobortis.ultrices@hotmail.net', 'id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem', 'images/avater.png', NULL, NULL),
(31, 'Aidan Potter', '(471)6408 467 8', 'tellus.eu@google.com', 'Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam', 'images/avater.png', NULL, NULL),
(32, 'Norman Williamson', '(792)2545 371 0', 'nam.consequat@outlook.net', 'eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui.', 'images/avater.png', NULL, NULL),
(33, 'Carissa Tran', '(351)7816 166 4', 'lacus.quisque@google.edu', 'a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et', 'images/avater.png', NULL, NULL),
(34, 'Yetta Avery', '(427)5360 364 7', 'mattis@outlook.com', 'convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar', 'images/avater.png', NULL, NULL),
(35, 'Alfonso Abbott', '(500)5692 824 5', 'sociis.natoque.penatibus@protonmail.couk', 'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus,', 'images/avater.png', NULL, NULL),
(36, 'Serena Bean', '(789)3764 124 2', 'donec.egestas@yahoo.couk', 'dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu.', 'images/avater.png', NULL, NULL),
(37, 'Scott Zamora', '(785)8536 680 0', 'vel.convallis@outlook.org', 'Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed', 'images/avater.png', NULL, NULL),
(38, 'Maxine Sullivan', '(651)4331 604 2', 'nisi.a@hotmail.ca', 'vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet', 'images/avater.png', NULL, NULL),
(39, 'Macy Mcneil', '(881)6473 665 1', 'ut@yahoo.net', 'mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida', 'images/avater.png', NULL, NULL),
(40, 'Kevin Lopez', '(271)7359 849 8', 'leo@icloud.couk', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis', 'images/avater.png', NULL, NULL),
(41, 'Hannah Chaney', '(650)8673 278 6', 'interdum@outlook.org', 'non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum purus, accumsan interdum libero dui', 'images/avater.png', NULL, NULL),
(42, 'Logan Wilcox', '(998)3835 367 4', 'dui.augue@outlook.couk', 'enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate', 'images/avater.png', NULL, NULL),
(43, 'Kane White', '(416)3226 357 5', 'rhoncus@protonmail.couk', 'nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu', 'images/avater.png', NULL, NULL),
(44, 'Kareem Fleming', '(686)8825 463 5', 'mi.lorem.vehicula@yahoo.com', 'feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque', 'images/avater.png', NULL, NULL),
(45, 'Samson Walker', '(313)1278 313 7', 'turpis.aliquam@hotmail.ca', 'nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a,', 'images/avater.png', NULL, NULL),
(46, 'Ferris England', '(152)3669 411 5', 'orci.ut.sagittis@yahoo.net', 'Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur', 'images/avater.png', NULL, NULL),
(47, 'Lana Parsons', '(311)2254 024 4', 'nec@aol.com', 'justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis', 'images/avater.png', NULL, NULL),
(48, 'Kiara Richmond', '(824)8683 633 9', 'lacus.etiam.bibendum@google.edu', 'nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam', 'images/avater.png', NULL, NULL),
(49, 'Keith Roth', '(705)7836 721 2', 'interdum@google.net', 'Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum', 'images/avater.png', NULL, NULL),
(50, 'Xena Stevenson', '(446)6307 245 4', 'aliquet@hotmail.net', 'felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum', 'images/avater.png', NULL, NULL),
(51, 'India Barron', '(224)1804 750 9', 'volutpat.ornare@google.org', 'consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec', 'images/avater.png', NULL, NULL),
(52, 'Lewis Henson', '(642)7572 887 2', 'nisi@icloud.net', 'ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo.', 'images/avater.png', NULL, NULL),
(53, 'Tanek Richard', '(234)3518 443 7', 'venenatis@protonmail.edu', 'vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque', 'images/avater.png', NULL, NULL),
(54, 'Tyler Hart', '(726)3447 424 3', 'suspendisse.commodo@google.com', 'risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy.', 'images/avater.png', NULL, NULL),
(55, 'Selma Mcintosh', '(361)5634 949 1', 'velit.dui@hotmail.couk', 'molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus.', 'images/avater.png', NULL, NULL),
(56, 'Ashton Murphy', '(545)1549 136 8', 'fringilla@yahoo.org', 'senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros.', 'images/avater.png', NULL, NULL),
(57, 'Jelani Roth', '(262)3453 843 0', 'orci.donec.nibh@aol.couk', 'est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus', 'images/avater.png', NULL, NULL),
(58, 'Allistair Zimmerman', '(847)0887 778 0', 'turpis.in.condimentum@icloud.couk', 'lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'images/avater.png', NULL, NULL),
(59, 'Hyacinth Long', '(880)4598 123 5', 'nunc.sed@icloud.org', 'neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo', 'images/avater.png', NULL, NULL),
(60, 'Denise Gibbs', '(760)8880 856 3', 'rutrum.justo.praesent@protonmail.org', 'neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec', 'images/avater.png', NULL, NULL),
(61, 'Xandra Medina', '(085)9574 833 8', 'risus.odio@hotmail.ca', 'odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut', 'images/avater.png', NULL, NULL),
(62, 'Hayden Shepard', '(394)4491 179 3', 'quisque@outlook.org', 'volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu', 'images/avater.png', NULL, NULL),
(63, 'Melinda Farmer', '(182)2946 763 8', 'scelerisque.dui@yahoo.org', 'mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec,', 'images/avater.png', NULL, NULL),
(64, 'Lareina Hancock', '(317)3088 122 4', 'non.enim.mauris@icloud.edu', 'ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis.', 'images/avater.png', NULL, NULL),
(65, 'Christen Petersen', '(565)5868 548 7', 'in.faucibus@aol.edu', 'eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor', 'images/avater.png', NULL, NULL),
(66, 'Boris England', '(295)8243 137 1', 'mauris.elit.dictum@protonmail.edu', 'semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu.', 'images/avater.png', NULL, NULL),
(67, 'Kirsten Francis', '(538)3234 550 6', 'metus.aliquam.erat@google.com', 'congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In', 'images/avater.png', NULL, NULL),
(68, 'Signe Byers', '(338)1343 864 1', 'cras.pellentesque@aol.ca', 'Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus', 'images/avater.png', NULL, NULL),
(69, 'Calista Santana', '(204)5382 013 4', 'sed.nulla@icloud.net', 'eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer', 'images/avater.png', NULL, NULL),
(70, 'Camden Griffith', '(475)6242 431 9', 'a.aliquet.vel@aol.ca', 'vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas', 'images/avater.png', NULL, NULL),
(71, 'Nash Ramirez', '(754)0703 756 6', 'porttitor.eros@icloud.couk', 'ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna.', 'images/avater.png', NULL, NULL),
(72, 'Alexandra Porter', '(961)5225 337 1', 'nisi.cum@yahoo.com', 'primis in faucibus orci luctus et ultrices posuere cubilia Curae Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere', 'images/avater.png', NULL, NULL),
(73, 'Cameron Ellison', '(461)3788 711 7', 'amet.risus@aol.com', 'dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae,', 'images/avater.png', NULL, NULL),
(74, 'Harding James', '(052)4671 356 6', 'sit.amet.massa@icloud.org', 'mattis ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non', 'images/avater.png', NULL, NULL),
(75, 'Cadman Calhoun', '(478)2484 182 4', 'tempor@icloud.ca', 'ac arcu. Nunc mauris. Morbi non sapien molestie orci tincidunt adipiscing. Mauris molestie pharetra nibh. Aliquam ornare, libero at auctor ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo', 'images/avater.png', NULL, NULL),
(76, 'Venus Hurley', '(838)6467 325 3', 'luctus@yahoo.org', 'sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu.', 'images/avater.png', NULL, NULL),
(77, 'Hanae Acosta', '(722)3144 673 9', 'aliquet.sem@yahoo.com', 'tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec', 'images/avater.png', NULL, NULL),
(78, 'Diana Campbell', '(385)7456 181 3', 'donec@protonmail.ca', 'ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet,', 'images/avater.png', NULL, NULL),
(79, 'Hope Kerr', '(346)5748 874 5', 'augue.porttitor.interdum@aol.couk', 'arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae', 'images/avater.png', NULL, NULL),
(80, 'Cain Gilbert', '(817)6434 526 9', 'elementum.at@outlook.ca', 'Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium et,', 'images/avater.png', NULL, NULL),
(81, 'Ferris Hopper', '(144)1863 585 4', 'velit.pellentesque.ultricies@protonmail.ca', 'mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', 'images/avater.png', NULL, NULL),
(82, 'Dolan Holloway', '(276)5780 342 4', 'quam.a@outlook.net', 'feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit', 'images/avater.png', NULL, NULL),
(83, 'Kerry Kirkland', '(121)0466 668 9', 'consectetuer.adipiscing@protonmail.ca', 'Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem', 'images/avater.png', NULL, NULL),
(84, 'Lionel Rose', '(481)4754 128 2', 'et@hotmail.org', 'Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'images/avater.png', NULL, NULL),
(85, 'Mohammad Clayton', '(388)6127 577 2', 'fermentum.risus@icloud.ca', 'mollis. Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce', 'images/avater.png', NULL, NULL),
(86, 'Cade Mendez', '(368)7807 162 7', 'ut@hotmail.net', 'malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium', 'images/avater.png', NULL, NULL),
(87, 'Angelica Durham', '(729)4649 354 3', 'consequat.purus@google.net', 'adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec', 'images/avater.png', NULL, NULL),
(88, 'Camille Becker', '(784)9855 103 5', 'sagittis.felis@protonmail.org', 'mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec,', 'images/avater.png', NULL, NULL),
(89, 'Vanna Medina', '(207)3368 741 4', 'vel.arcu.curabitur@outlook.edu', 'auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac', 'images/avater.png', NULL, NULL),
(90, 'Brady Brock', '(619)4198 582 6', 'lacus.vestibulum@yahoo.org', 'tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu', 'images/avater.png', NULL, NULL),
(91, 'Lunea Miranda', '(447)6486 620 3', 'molestie.pharetra@google.ca', 'felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque', 'images/avater.png', NULL, NULL),
(92, 'Abraham Freeman', '(231)8584 722 9', 'est.arcu@icloud.com', 'orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis', 'images/avater.png', NULL, NULL),
(93, 'Jonah Coleman', '(528)8654 120 3', 'enim.sed@yahoo.net', 'a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla', 'images/avater.png', NULL, NULL),
(94, 'Kylie Ratliff', '(473)0944 765 6', 'eleifend.egestas@icloud.ca', 'pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed', 'images/avater.png', NULL, NULL),
(95, 'Hector Horton', '(881)0428 539 7', 'egestas.sed@protonmail.org', 'velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum,', 'images/avater.png', NULL, NULL),
(96, 'Ferdinand Francis', '(282)6167 588 8', 'ridiculus.mus@outlook.ca', 'at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris', 'images/avater.png', NULL, NULL),
(97, 'Lysandra Farrell', '(179)6045 381 5', 'erat.eget.ipsum@google.edu', 'Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum', 'images/avater.png', NULL, NULL),
(98, 'Bernard Graham', '(554)2116 811 1', 'et.malesuada@icloud.net', 'In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque', 'images/avater.png', NULL, NULL),
(99, 'Uma Castillo', '(876)6331 236 1', 'et@protonmail.com', 'a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio', 'images/avater.png', NULL, NULL),
(100, 'Melodie Vaughn', '(243)5511 052 1', 'orci@yahoo.org', 'risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna.', 'images/avater.png', NULL, NULL),
(101, 'Joshua Contreras', '(801)4337 238 5', 'ante.ipsum@aol.ca', 'Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim.', 'images/avater.png', NULL, NULL),
(102, 'Yvonne Tucker', '(125)6787 464 1', 'ligula.tortor.dictum@aol.ca', 'nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae Donec tincidunt. Donec vitae erat vel pede', 'images/avater.png', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
