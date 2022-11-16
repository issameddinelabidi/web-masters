-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 19 sep. 2022 à 21:33
-- Version du serveur :  5.7.24
-- Version de PHP :  7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `symshop`
--

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`) VALUES
(4, 'Tools', 'tools'),
(5, 'Music, Movies & Industrial', 'music-movies-and-industrial'),
(6, 'Games & Clothing', 'games-and-clothing'),
(7, 'New Cat 2', 'new-cat-2'),
(8, 'New Cat', 'new-cat');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20220804143956', '2022-08-04 15:11:53', 512),
('DoctrineMigrations\\Version20220804151619', '2022-08-04 15:17:19', 243),
('DoctrineMigrations\\Version20220809154339', '2022-08-09 15:54:50', 212);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `main_picture` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D34A04AD12469DE2` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=709 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `slug`, `category_id`, `main_picture`, `short_description`) VALUES
(654, 'Heavy Duty Copper Bottle', 7129, 'heavy-duty-copper-bottle', 4, 'https://lorempixel.com/400/400/1/?87219', 'Omnis enim accusantium praesentium reiciendis impedit consequuntur. Consequatur ea earum quasi ea commodi est. Repellendus voluptas nulla reiciendis molestiae.'),
(655, 'Fantastic Paper Bag', 12969, 'fantastic-paper-bag', 4, 'https://lorempixel.com/400/400/1/?64563', 'Aut similique atque deserunt perferendis. Omnis deleniti rem amet qui nihil ut fugit. Dolorum qui deserunt aut dolores aut.'),
(656, 'Enormous Bronze Hat', 7609, 'enormous-bronze-hat', 4, 'https://lorempixel.com/400/400/1/?82212', 'Et fuga iusto velit dignissimos. Voluptate velit aut incidunt pariatur qui inventore. Doloribus itaque sed illo aut et facilis molestias.'),
(657, 'Intelligent Copper Car', 14559, 'intelligent-copper-car', 4, 'https://lorempixel.com/400/400/1/?13856', 'Molestiae iusto illum at omnis aut quia maiores. Iusto quia ex quia doloremque. Velit blanditiis quisquam deleniti nisi ad. Tempore blanditiis aut recusandae.'),
(658, 'Lightweight Rubber Bottle', 16729, 'lightweight-rubber-bottle', 4, 'https://lorempixel.com/400/400/1/?85508', 'Ducimus qui eius repellendus provident est. Quod voluptatem rerum ut. Provident excepturi quia molestiae hic voluptas sunt debitis. Magnam iusto veritatis voluptates veniam ut accusamus.'),
(659, 'Incredible Aluminum Plate', 8919, 'incredible-aluminum-plate', 4, 'https://lorempixel.com/400/400/1/?28644', 'Eius qui quaerat rerum ullam. Hic quia atque reprehenderit ut perspiciatis temporibus. Rem asperiores atque omnis neque aut omnis illum.'),
(660, 'Gorgeous Cotton Hat', 14229, 'gorgeous-cotton-hat', 4, 'https://lorempixel.com/400/400/1/?40681', 'Iusto ut asperiores vitae distinctio necessitatibus. Provident atque sint voluptatem. Est quaerat earum iste sunt.'),
(661, 'Rustic Plastic Bench', 13619, 'rustic-plastic-bench', 4, 'https://lorempixel.com/400/400/1/?84503', 'Sit ea voluptatum incidunt dolor officia dolorem. A et optio cum harum earum. Placeat voluptatem est sit nesciunt necessitatibus illo.'),
(662, 'Sleek Aluminum Clock', 18129, 'sleek-aluminum-clock', 4, 'https://lorempixel.com/400/400/1/?18862', 'Eaque beatae voluptatibus quia sequi. Est iusto atque voluptatem dolorem voluptatem excepturi. Consectetur debitis porro facere alias sint. Omnis quia consequuntur quia et rerum nemo officiis aut.'),
(663, 'Practical Silk Shirt', 5149, 'practical-silk-shirt', 4, 'https://lorempixel.com/400/400/1/?58061', 'Nesciunt qui sint qui aut quaerat consectetur. Ut hic et ipsa officia. Soluta excepturi et tempora. Voluptas distinctio soluta qui omnis similique repellendus rerum illo.'),
(664, 'Gorgeous Steel Plate', 9889, 'gorgeous-steel-plate', 4, 'https://lorempixel.com/400/400/1/?56233', 'Temporibus nulla provident consequuntur qui a. Aut velit libero tempore nisi. Ducimus est esse voluptatem repudiandae.'),
(665, 'Rustic Cotton Coat', 18889, 'rustic-cotton-coat', 4, 'https://lorempixel.com/400/400/1/?51103', 'Qui voluptates dolorum dolorum sint. Corrupti odit quas minima consequatur cumque voluptatem explicabo eos. Ducimus laborum dolores inventore vitae quia vitae. Fugiat et perferendis et dolor quasi.'),
(666, 'Small Linen Knife', 12659, 'small-linen-knife', 4, 'https://lorempixel.com/400/400/1/?25780', 'Magnam quas veniam accusamus id. Nobis officiis aut distinctio quidem officia consequuntur. Mollitia est quis sunt blanditiis alias impedit.'),
(667, 'Practical Copper Coat', 15509, 'practical-copper-coat', 4, 'https://lorempixel.com/400/400/1/?83839', 'Dolor tenetur veritatis illo sit consequatur et. Molestiae quia illo ad. Eum qui dolorum numquam dolores.'),
(668, 'Awesome Iron Bottle', 17659, 'awesome-iron-bottle', 4, 'https://lorempixel.com/400/400/1/?53673', 'Delectus commodi molestiae et ut minima accusamus. Iusto assumenda quos vel earum eaque corporis. Nemo dolores est commodi aperiam hic repudiandae nulla.'),
(669, 'Gorgeous Silk Bench', 8659, 'gorgeous-silk-bench', 5, 'https://lorempixel.com/400/400/1/?36230', 'Voluptate qui incidunt consequatur excepturi. Eaque sapiente voluptatem architecto consequuntur qui. Debitis voluptas quidem aut. Quis iste qui consequatur ratione atque.'),
(670, 'Intelligent Cotton Shoes', 8849, 'intelligent-cotton-shoes', 5, 'https://lorempixel.com/400/400/1/?47336', 'Est esse corrupti soluta ut et voluptas et adipisci. Blanditiis totam repellendus perspiciatis maiores.'),
(671, 'Gorgeous Linen Shirt', 19889, 'gorgeous-linen-shirt', 5, 'https://lorempixel.com/400/400/1/?89916', 'Ea eum ut sunt id cum qui qui deleniti. Et officia et occaecati et quia aut. Dolores enim est suscipit inventore quis. Et quam aut autem ut velit laudantium.'),
(672, 'Aerodynamic Paper Bottle', 5419, 'aerodynamic-paper-bottle', 5, 'https://lorempixel.com/400/400/1/?44289', 'Quia ut saepe voluptates. Facere earum qui cumque quia possimus. Natus voluptatem ratione tenetur nisi temporibus et quos.'),
(673, 'Synergistic Copper Plate', 5849, 'synergistic-copper-plate', 5, 'https://lorempixel.com/400/400/1/?57777', 'Deleniti voluptatum explicabo magnam. Corrupti quia nesciunt deleniti tempore dolorum nulla expedita. Voluptatem omnis provident asperiores perspiciatis.'),
(674, 'Durable Steel Chair', 11139, 'durable-steel-chair', 5, 'https://lorempixel.com/400/400/1/?18964', 'Nisi possimus est repellat id reprehenderit esse qui. Accusantium mollitia accusantium est nam sunt consequatur in. Laboriosam qui molestiae odit sit. Esse officia quia adipisci saepe voluptas laudantium ipsa.'),
(675, 'Intelligent Copper Hat', 18879, 'intelligent-copper-hat', 5, 'https://lorempixel.com/400/400/1/?57027', 'Libero quae qui iure consequatur blanditiis velit in. Labore ut ea labore aspernatur necessitatibus beatae. Magnam dolorem non in quia occaecati. Nesciunt dolore ipsam repellat eos.'),
(676, 'Heavy Duty Linen Hat', 17509, 'heavy-duty-linen-hat', 5, 'https://lorempixel.com/400/400/1/?53633', 'Numquam mollitia sit sint hic officia quos qui. Laboriosam nulla asperiores velit. Minus consequuntur ratione qui quibusdam voluptas deleniti. Iure molestias voluptas culpa quam.'),
(677, 'Heavy Duty Steel Knife', 14839, 'heavy-duty-steel-knife', 5, 'https://lorempixel.com/400/400/1/?51663', 'Est libero quod molestiae atque temporibus officiis animi. Numquam rerum sit delectus est recusandae consequuntur. Quam veniam magnam voluptatem.'),
(678, 'Enormous Cotton Hat', 13209, 'enormous-cotton-hat', 5, 'https://lorempixel.com/400/400/1/?42837', 'Nihil commodi sed enim iure. Cupiditate maxime consequuntur a sit dolor provident. Tenetur eum officia aut aliquam itaque voluptatem nesciunt. Ipsam tempora impedit id ut qui sequi eius. Fugit repudiandae dolor ad ducimus et.'),
(679, 'Rustic Paper Bench', 15709, 'rustic-paper-bench', 5, 'https://lorempixel.com/400/400/1/?43474', 'Ullam voluptas omnis quis nihil qui. Explicabo delectus corrupti ex nulla. Magnam non facere sunt odit quo omnis.'),
(680, 'Ergonomic Paper Wallet', 12829, 'ergonomic-paper-wallet', 5, 'https://lorempixel.com/400/400/1/?86948', 'Et aut et labore qui. Ut voluptas nesciunt sit facilis minima eligendi ratione. Doloribus est quia illo voluptatibus. Architecto fugit et voluptatem ea minus.'),
(681, 'Gorgeous Linen Shoes', 13989, 'gorgeous-linen-shoes', 5, 'https://lorempixel.com/400/400/1/?95456', 'Voluptas optio autem eligendi aperiam soluta beatae dolor. Fugit sit inventore numquam perspiciatis rerum quae. Rerum recusandae consectetur commodi mollitia.'),
(682, 'Incredible Silk Knife', 5399, 'incredible-silk-knife', 5, 'https://lorempixel.com/400/400/1/?83400', 'Fugiat ut nostrum voluptatem nulla eos est. Est dicta illum rerum. Earum fuga blanditiis dignissimos nisi aut nam ut.'),
(683, 'Awesome Silk Hat', 19009, 'awesome-silk-hat', 5, 'https://lorempixel.com/400/400/1/?19722', 'Voluptates aliquid repellendus impedit consequuntur vel ut soluta occaecati. Qui aut aut assumenda ut ab aut delectus. Itaque error eligendi enim et commodi earum.'),
(684, 'Aerodynamic Leather Shirt', 17299, 'aerodynamic-leather-shirt', 6, 'https://lorempixel.com/400/400/1/?79305', 'Nulla mollitia quisquam laudantium totam. Praesentium doloribus cupiditate ut voluptas eos. Sint atque sint minima odit et quo.'),
(685, 'Aerodynamic Copper Shirt', 14089, 'aerodynamic-copper-shirt', 6, 'https://lorempixel.com/400/400/1/?22686', 'Dignissimos molestiae corrupti suscipit mollitia dolorem provident dolorem laudantium. Laudantium accusamus inventore aliquid provident. Reprehenderit aperiam voluptatum nihil. Laborum esse aut dolor earum omnis sit repellat.'),
(686, 'Ergonomic Cotton Watch', 18599, 'ergonomic-cotton-watch', 6, 'https://lorempixel.com/400/400/1/?45717', 'Sint molestiae dolorem et rerum laudantium est sit. Occaecati mollitia doloremque ipsa cum. Nulla beatae consequatur corporis quasi. Cumque non asperiores maxime assumenda.'),
(687, 'Ergonomic Granite Wallet', 18179, 'ergonomic-granite-wallet', 6, 'https://lorempixel.com/400/400/1/?92341', 'Nesciunt dolorem dolores totam. Officia impedit omnis architecto vero unde maiores. Illum unde laborum itaque quibusdam. Ducimus deleniti dolor commodi exercitationem consequuntur ullam.'),
(688, 'Aerodynamic Aluminum Clock', 15849, 'aerodynamic-aluminum-clock', 6, 'https://lorempixel.com/400/400/1/?62177', 'Tempore et numquam culpa consequatur quos enim. Id assumenda consequuntur cupiditate vitae veritatis ut.'),
(689, 'Lightweight Marble Lamp', 6569, 'lightweight-marble-lamp', 6, 'https://lorempixel.com/400/400/1/?56780', 'Quis est est maiores voluptatum similique unde. Qui ut aliquam totam alias. Dolores eaque molestiae qui culpa non qui est. Laudantium qui in libero non ea.'),
(690, 'Practical Aluminum Knife', 4799, 'practical-aluminum-knife', 6, 'https://lorempixel.com/400/400/1/?43012', 'Debitis quis ducimus dicta adipisci. Ipsum quam debitis harum aliquid dolor. Id impedit qui ex fugiat.'),
(691, 'Gorgeous Aluminum Knife', 17439, 'gorgeous-aluminum-knife', 6, 'https://lorempixel.com/400/400/1/?74009', 'Perspiciatis placeat optio dolor perspiciatis illum atque sed. Unde eum cupiditate vel possimus illum.'),
(692, 'Heavy Duty Wooden Keyboard', 6279, 'heavy-duty-wooden-keyboard', 6, 'https://lorempixel.com/400/400/1/?15579', 'Reiciendis autem laudantium eaque excepturi. Aut vero sit sit pariatur magni. Itaque incidunt facere sint.'),
(693, 'Practical Wooden Lamp', 16999, 'practical-wooden-lamp', 6, 'https://lorempixel.com/400/400/1/?44320', 'Rerum id facilis explicabo impedit voluptas velit quasi. Asperiores non omnis et saepe laborum non. Numquam quibusdam rerum ullam modi illo quaerat. Ducimus similique quae itaque ducimus molestias minus sint enim.'),
(694, 'Durable Aluminum Clock', 8269, 'durable-aluminum-clock', 6, 'https://lorempixel.com/400/400/1/?72806', 'Et fuga unde optio velit ab magnam perferendis. Consectetur aut voluptatem et est numquam qui libero aspernatur. Consequatur omnis id minus. Aliquid in sed ut alias odit velit aspernatur dolore.'),
(695, 'Mediocre Copper Keyboard', 18089, 'mediocre-copper-keyboard', 6, 'https://lorempixel.com/400/400/1/?70586', 'Deserunt nostrum saepe doloremque qui illo dolore. Quae quidem quis dolor veritatis.'),
(696, 'Mediocre Wool Table', 7849, 'mediocre-wool-table', 6, 'https://lorempixel.com/400/400/1/?71258', 'Consequuntur quasi cupiditate rem quia id sint. Ullam autem qui repellendus eos natus ea ea. Doloribus repellendus sed et tenetur autem. Qui libero totam explicabo dolorem molestiae exercitationem. Ut consectetur non nostrum ea nemo pariatur nulla.'),
(697, 'Enormous Plastic Table', 12689, 'enormous-plastic-table', 6, 'https://lorempixel.com/400/400/1/?64762', 'Totam rerum fugit numquam omnis est harum. Aut sint et numquam est voluptatum accusantium. Quis voluptates laudantium accusantium laborum omnis et aut. Occaecati optio sed quam at ut.'),
(698, 'Awesome Iron Computer', 10109, 'awesome-iron-computer', 6, 'https://lorempixel.com/400/400/1/?90712', 'Aut voluptas itaque accusantium quidem possimus. Quaerat autem provident enim eius quis fuga. Voluptatem et distinctio vero quia inventore aperiam. Sit repudiandae ipsum aut incidunt.'),
(699, 'Incredible Bronze Watch', 19349, 'incredible-bronze-watch', 6, 'https://lorempixel.com/400/400/1/?62658', 'Earum non et nesciunt consequuntur animi. Necessitatibus unde ullam quo soluta illum. Maiores totam nam optio sit ut consequuntur eius. Iure necessitatibus corporis aut neque quis accusamus sit quam. Error totam earum blanditiis accusamus est officia.'),
(700, 'New Product', 212, 'new-product', 5, 'https://www.lascom.com/wp-content/uploads/2021/03/Bland_Cosmetic_Product_Packaging_Unit_500x400.jpg', 'dsqdsq'),
(701, 'New Product', 212, 'new-product', 5, 'https://www.lascom.com/wp-content/uploads/2021/03/Bland_Cosmetic_Product_Packaging_Unit_500x400.jpg', 'dsqdsq'),
(702, 'New Product 2', 600, 'new-product-2', 5, 'https://www.dynamique-mag.com/wp-content/uploads/fc53428f6a0679677951976231eca4f9.jpg', 'test test'),
(703, 'New product 33333', 3000, 'new-product-3', 4, 'https://www.redacteur.com/blog/wp-content/uploads/2020/09/redacteur-blog-img-une-e-commerce-produit-teasing-marketing.jpg', 'test test description'),
(704, 'New Product 4', 5000, 'new-product-4', 6, 'https://www.redacteur.com/blog/wp-content/uploads/2017/08/inspiration-fiches-produit.jpg', 'testd jdjdj'),
(705, 'product post', 4000, 'product-post', NULL, 'https://www.redacteur.com/blog/wp-content/uploads/2017/08/inspiration-fiches-produit.jpg', 'test shortDescription post'),
(706, 'product post', 4000, 'product-post', NULL, 'https://www.redacteur.com/blog/wp-content/uploads/2017/08/inspiration-fiches-produit.jpg', 'test shortDescription post'),
(707, 'product post', 4000, 'product-post', NULL, 'https://www.redacteur.com/blog/wp-content/uploads/2017/08/inspiration-fiches-produit.jpg', 'test shortDescription post'),
(708, 'product post', 4000, 'product-post', NULL, 'https://www.redacteur.com/blog/wp-content/uploads/2017/08/inspiration-fiches-produit.jpg', 'test shortDescription post');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
