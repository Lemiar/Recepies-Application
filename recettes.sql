-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 10 déc. 2022 à 22:53
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `recettes`
--

-- --------------------------------------------------------

--
-- Structure de la table `recette`
--

CREATE TABLE `recette` (
  `titre` varchar(50) NOT NULL,
  `etapes` longtext NOT NULL,
  `rating` varchar(11) NOT NULL,
  `durree` varchar(10) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `id` int(11) NOT NULL,
  `images` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recette`
--

INSERT INTO `recette` (`titre`, `etapes`, `rating`, `durree`, `categorie`, `id`, `images`) VALUES
('Osso bucco de dinde', 'Les ingédients :\r\nOsso bucco de dinde	1 kg\r\nOignons jaunes	3\r\nFarine	2 cuillères à soupe\r\nBranches de céleri	2\r\nCarottes	4\r\nTomates pelées	1 boîte\r\nPersil ciselé	1 c à s\r\nHuile	1 cuillère à soupe\r\nBouillon de volaille	2 verres\r\nVin blanc sec	1 verre\r\nBouquet garni	1\r\nSel, poivre\r\n\r\nPréparation:\r\nFarinez les morceaux de dinde. Chauffez l\'huile dans une cocotte, dorez les morceaux de dinde de chaque côté, salez, poivrez. Réservez la viande.\r\nÉpluchez les légumes et coupez-les en dés. Mettez-les avec le bouquet garni dans la cocotte, sauf les tomates et l\'ail. Remuez, couvrez la cocotte à feu moyen pour faire suer les légumes pendant quelques minutes.\r\nCoupez les tomates pelées en morceaux et réservez le jus. Ajoutez l\'ail écrasé aux tomates, versez le tout dans la cocotte avec les autres légumes.\r\nDéposez les morceaux de viande sur les légumes. Arrosez avec le vin blanc et le bouillon chaud. Couvrez et laissez mijoter à feu doux pendant 1h30. Une fois la cuisson terminée, goûtez pour rectifier l\'assaisonnement si besoin.', '4', '20min', 'plat principal', 1, 'http://192.168.43.137/Recettes/images/dinde.JPG'),
('Galette des rois à la clémentine', 'ingrédients:\r\nPâte feuilletée	2 rouleaux\r\nClémentines	8\r\nSucre	120 g\r\nPoudre d\'amande	100 g\r\nBeurre ramolli	100 g\r\nOeufs	2\r\nJaune d\'oeuf	1\r\n\r\nPréparation :\r\nDans un saladier, fouettez le beurre ramolli avec 100 g sucre. Ajoutez les oeufs entiers un à un, mélangez et incorporez la poudre d\'amande.\r\nDans une casserole, faites chauffer une clémentine découpée en rondelles (avec la peau) dans 30 cl d\'eau avec les 20 g de sucre restant. Laissez cuire le sirop à feu moyen pendant 10 à 15 minutes.\r\nPelez les clémentines restantes et coupez-les en rondelles.\r\nDéroulez la pâte feuilletée sur la plaque de cuisson avec le papier sulfurisé. Répartissez la moitié de la crème d\'amande en laissant 2 cm sur les bords. Insérez la fève, disposez les rondelles de clémentines, et recouvrez avec le reste de crème. Humidifiez le tour de la pâte, recouvrez avec l\'autre pâte. Soudez les bords en pressant avec les doigts et avec la pointe d\'un couteau. Striez la galette pour la décorer avec la pointe du couteau. Badigeonnez avec le jaune d\'oeuf battu avec 1 cuillère à soupe d\'eau. Réservez au frais pendant 30 minutes.\r\nPréchauffez le four à 220°C. Enfournez et baissez le four à 180°C pour 30 à 35 minutes. A la sortie du four, glacez la galette avec le sirop à la clémentine au pinceau. Laissez tiédir la galette des rois à la clémentine avant de la partager.', '3.4', '30min', 'Dessert/Cake', 2, 'http://192.168.43.137/Recettes/images/galette.JPG'),
('Gratin de pâtes au chorizo et mozzarella', 'Ingrédients :\r\nLait	50cl\r\nPâtes	400g\r\nMozzarella	1 boule\r\nChorizo	120g\r\nConcentré de tomates	1/2 boîte\r\nEmmental râpé	60g\r\nBeurre	40g\r\nFarine	40g\r\nSel, poivre\r\n\r\nPréparation:\r\nPréchauffez le four à 180°C. Faites cuire les pâtes dans une casserole d\'eau bouillante salée selon les indications du paquet.\r\nDans une casserole, faites chauffer le lait. Pelez et découpez le chorizo en dés. Coupez la mozzarella en morceaux. Faites fondre le beurre.\r\n Dans un saladier, mélangez le beurre fondu avec la farine. Versez le lait, mélangez et assaisonnez.\r\nAjoutez les pâtes, le concentré de tomates, le chorizo et la mozzarella dans le saladier. Mélangez bien, versez la préparation dans un plat à gratin et parsemez d\'emmental râpé. Enfournez le gratin de pâtes pour 30 minutes et dégustez chaud.', '4', '20min', 'plat principal', 3, 'http://192.168.43.137/Recettes/images/gratin.JPG'),
('Tarte au chocolat', 'Ingrédients:\r\nPâte sablée	1 rouleau\r\nChocolat noir	350 g\r\nCrème fraîche liquide	40 cl\r\nOeufs 2\r\n\r\nPréparation:\r\nPréchauffez votre four à 200°C.\r\nFaites précuire la pâte sablée recouverte de billes de cuisson 10 minutes.\r\nFaites fondre le chocolat au bain-marie. Une fois le chocolat fondu, ajoutez la crème et mélangez.\r\nRetirez la casserole du feu et ajoutez les œufs. Versez la crème au chocolat sur la pâte et enfournez la tarte 30 minutes environ à 180°C.\r\nLaissez refroidir la tarte au chocolat avant de la servir, éventuellement décorée d\'éclats de noisettes et de quelques fruits frais.\r\n', '4.6', '10 min', 'Dessert/Cake', 4, 'http://192.168.43.137/Recettes/images/tarte.JPG'),
('Crêpes aux carambars', 'ingrédient:\r\nCrêpes	12\r\nCarambars	320 g\r\n\r\nPréparation\r\nDans une poêle beurrée, versez une louche de pâte à crêpes (suivez notre recette de la pâte à crêpes) et faites-la cuire 1 minute sur chaque face. Répétez l\'opération jusqu\'à épuisement de la pâte.\r\nFaites fondre les carambars dans une casserole au bain-marie jusqu\'à obtenir un caramel bien lisse.\r\nEtalez le caramel obtenu sur les crêpes et dégustez les crêpes aux carambars aussitôt.', '4.6', '10 min', 'Dessert/crepes', 5, 'http://192.168.43.137/Recettes/images/crepes.JFIF'),
('Courgettes au chorizo', 'Ingrédients :\r\nCourgettes  2\r\nChorizo	1/2\r\nSel, poivre\r\n\r\nPréparation:\r\nRetirez la peau du chorizo et découpez-le en rondelles. Épluchez et émincez les courgettes.\r\nFaites revenir les morceaux de courgettes dans une poêle avec un peu d\'eau. Ajoutez les rondelles de chorizo. Faites revenir à feu doux jusqu\'à ce que les courgettes soient cuites.\r\nSalez, Poivrez. Servez les courgettes au chorizo bien chaudes.', '3.9', '5 min', 'plat principal', 6, 'http://192.168.43.137/Recettes/images/courgette.JPG'),
('Salade de légumes grillés', 'ingrédients:\r\nCourgette	1\r\nTomates	3\r\nAubergine	1\r\nPoivron rouge	1\r\nPoivron vert	1\r\nOignon	1\r\nAil	3 gousses\r\nHuile d\'olive	\r\nSel\r\nPréparation:\r\nCoupez les courgettes et les aubergines en rondelles, badigeonnez-les d\'huile d\'olive, salez-les et passez-les sous le grill chaud du four jusqu\'à que les légumes soient légèrement dorés (il est meilleur de le faire au barbecue quand cela est possible).\r\nÉmincez les gousses d\'ail. Mettez ensuite les poivrons, les tomates, l\'oignon et l\'ail sous le grill du four jusqu\'à que la peau des poivrons soit noire.\r\nLaissez refroidir le tout dans un sachet plastique type sac de congélation. Débarrassez ensuite les légumes de leur peau.\r\nCoupez la tomate en dés, l\'oignon en lamelles, et les poivrons en lanières. Écrasez l\'ail et mélangez tous les légumes.\r\nArrosez d\'un filet d\'huile d\'olive, de sel et de l\'herbe de votre choix (persil, herbes de Provence...). Placez la salade de légumes grillés au frais une heure avant de la servir.', '3.8', '15min', 'plat principal', 7, 'http://192.168.43.137/Recettes/images/grille.JFIF'),
('Quiche ricotta épinards', 'Ingrédients :\r\nPâte brisée	1\r\nRicotta	200 g\r\nPousses d\'épinard	100 g\r\nParmesan râpé	45 g\r\nLait	20 cl\r\nOeufs	3\r\nSel, poivre\r\nPréparation:\r\nDisposez la pâte brisée dans un plat à tarte, piquez-la avec une fourchette et placez-la 30 minutes au réfrigérateur.\r\nFaites fondre les 3/4 des épinards dans 1 cuillère à soupe d\'huile d\'olive pendant 2/3 minutes, salez, poivrez.\r\nPréchauffez le four à 200°C. Battez légèrement les œufs, ajoutez la ricotta, le lait, le parmesan râpé et les épinards, salez et poivrez.\r\nVersez le mélange sur le fond de tarte et ajoutez le reste des épinards, enfournez pour 40 minutes environ.', '4', '20min', 'plat principal', 8, 'http://192.168.43.137/Recettes/images/kiche.JFIF'),
('Paella au poulet et au chorizo', 'Ingrédients:\r\n\r\nRiz	400 g\r\nChorizo	250 g\r\nPetits pois	200 g\r\nTomates	5\r\nCuisses de poulet	4\r\nPoivrons rouge	2\r\nCubes de bouillon de volaille	2\r\nOignons	2\r\nAil	2 gousses\r\nHuile d\'olive	\r\nPersil	\r\nSel, poivre\r\n\r\nPréparation:\r\nFaites dissoudre deux cubes de bouillon de volaille dans un litre d\'eau bouillante.\r\nLavez et coupez les poivrons en lamelles. Ebouillantez, pelez et découpez la chair des tomates en morceaux. Epluchez et hachez l\'ail et les oignons.\r\nDans une poêle chaude avec de l\'huile d\'olive, faites revenir le poulet pendant 10 minutes. Salez et poivrez puis retirez du feu. Faites ensuite cuire quelques instants le chorizo coupé en rondelles.\r\nFaites revenir les oignons et l\'ail dans la poêle puis versez le riz. Remuez pendant 5 minutes, ajoutez les poivrons et les tomates puis remuez de nouveau. \r\nPlacez le poulet dans le riz, arrosez avec le bouillon et laissez cuire pendant 15 minutes à feu doux. Ajoutez ensuite le chorizo et les petits pois, salez et poivrez puis laissez cuire encore 10 minutes.\r\nCouvrez la poêle et laissez reposer 10 minutes. Parsemez la paella au poulet et au chorizo de persil et servez aussitôt.', '3.9', '30min', 'plat principal', 9, 'http://192.168.43.137/Recettes/images/paila.JFIF'),
('Mojoto fraises', 'ingrédients :\r\nJus de fraises	10 cl\r\nEau gazeuse	5 cl\r\nCitron vert	1\r\nSirop de sucre de canne	4 cl\r\nGlace pilée	1/2 verre\r\nMenthe	10 feuilles\r\nFraise	1\r\nPréparation:\r\nLavez le citron vert et coupez-le quartier. Mettez le au fond d\'un grand verre et ajoutez la menthe fraîche.\r\nÉcrasez le tout avec un pilon.\r\nAjoutez le sirop de canne, le rhum, l\'eau pétillante et la glace pilée. Mélangez un peu.\r\nCoupez la fraise en morceaux. Ajoutez le jus de fraises et la fraise.\r\nServez aussitôt votre mojito fraise.', '4', '10min', 'Boisson/Mojitos', 10, 'http://192.168.43.137/Recettes/images/Mojitofraise.JPG'),
('Smoothie fraise rhubarbe', 'Ingrédients:\r\nFraises	300 g\r\nRhubarbe	200 g\r\nGlaçons	2\r\nSucre vanillé	1 sachet\r\nPréparation:\r\nÉpluchez et coupez la rhubarbe en tronçons. Saupoudrez-la de sucre vanillé et laissez reposer une heure. Placez la rhubarbe et son jus dans une casserole et faire cuire 10 minutes. Laissez refroidir.\r\nÉqueutez les fraises et placez-les avec la rhubarbe et les glaçons dans un blender. Mixez le tout jusqu\'à obtention d\'un mélange homogène. Servez le smoothie fraise rhubarbe aussitôt.', '4.5', '10min', 'Boisson/smoothies', 11, 'http://192.168.43.137/Recettes/images/smoothfraise.JPG'),
('Café latte classique', 'Ingrédients:\r\nExpresso	1\r\nLait entier	25 cl\r\n\r\nPréparation:\r\nFaites mousser le lait dans un pot en inox. Préparez un expresso.\r\nVersez le lait dans un verre. Déposez la mousse de lait à l\'aide d\'une cuillère par-dessus. Versez délicatement l\'expresso au centre. Dégustez le café latte classique bien chaud.', '4.8', '4min', 'Boissons Chaudes', 12, 'http://192.168.43.137/Recettes/images/cafe.JPG'),
('Smoothie pomme-kiwi', 'Ingrédients:\r\nPomme	1\r\nKiwis	3\r\nLait de coco	40 cl\r\n\r\nPréparation:\r\nLavez et découpez la pomme.\r\nPelez les kiwis et coupez-les en rondelles.\r\nPlacez tous les fruits dans un mixeur, recouvrez de lait de coco et mixez. Servez le smoothie pomme-kiwi aussitôt.', '3.5', '10min', 'Boisson/smoothies', 13, 'http://192.168.43.137/Recettes/images/smoothkiwi.JPG'),
('smoothie kiwi avocat et menthe', 'ingrédients :\r\nKiwis	2\r\nAvocat	1\r\nEau	1 verre\r\nMiel	1 cuillère à soupe\r\nJus de citron	1 cuillère à café\r\nMenthe	1 à 5 feuilles\r\n\r\nPréparation :\r\nÉpluchez les kiwis. Pelez l\'avocat et enlevez le noyau.\r\nPlacez tous les fruits dans un mixeur, et ajoutez ensuite les feuilles de menthe, le miel, le jus de citron, et l\'eau. \r\nMixez et servez le smoothie kiwi avocat et menthe aussitôt. \r\n\r\n', '4', '5min', 'Boisson/smoothies', 14, 'http://192.168.43.137/Recettes/images/kiwi.JPG'),
('Cocktail de Noël', 'Ingrédients\r\nPinot blanc ou noir	2 bouteilles 75 cl\r\nLiqueur de fleur d\'oranger	5 cl\r\nSucre roux	200 g\r\nOrange	1/2\r\nCitron	1/2\r\nCannelle	2 bâtons\r\nBaies de genièvre	2\r\nThym	1 branche\r\nMiel de sapin	1 cuillère à soupe\r\nPréparation:\r\nCoupez le demi-citron en petits quartiers et pressez la demi-orange.\r\nDans une casserole, versez 30 cl d\'eau, ajoutez les épices, le sucre, les quartiers de citron, le jus de l\'orange pressée. Portez le tout à ébullition et réduisez ensuite le feu.\r\nAjoutez le miel, la fleur d\'oranger, et mélangez. Versez le pinot puis faites frémir quelques instants.\r\nServez bien chaud et ajoutez pour la décoration des petits bâtons de cannelle si vous le souhaitez, avec les quartiers de citron. Dégustez.', '4', '20min', 'Boisson/Mojitos', 15, 'http://192.168.43.137/Recettes/images/noel.JPG'),
('Boisson sauge-citron', 'Ingrédients\r\nOranges	2\r\nCitron	1\r\nSauge	6 feuilles\r\nGlaçons	4\r\nPréparation :\r\nPelez les oranges et le citron et passez-les à la centrifugeuse pour en extraire les jus.\r\nLavez les feuilles de sauge.\r\nDans un verre, versez le jus sur les glaçons et ajoutez les feuilles de sauge.', '5', '10min', 'Boisson/Mojitos', 16, 'http://192.168.43.137/Recettes/images/citron.JPG'),
('Chocolat chaud de Noël à la guimauve', 'Ingrédients\r\nChocolat noir	40 g\r\nLait	75 cl\r\nSucre vanillé	1 sachet\r\nCannelle	1 pincée\r\nCacao en poudre	3 cuillères à soupe\r\nChamallows	12\r\nMikados	8\r\nCoulis de chocolat	Un petit tube\r\nBonbon au choix de couleur orange	1\r\nPréparation:\r\nFaites bouillir le lait avec le sucre vanillé et la cannelle dans une casserole. Ajoutez le chocolat noir et le cacao quand le lait bout. Mélangez au fouet puis laissez re-bouillir. \r\nSur les chamallows, dessinez les yeux, la bouche et les boutons des bonshommes de neige avec le tube de coulis de chocolat, ou à défaut, avec du chocolat fondu et un cure-dent. Placez le bonbon orange au milieu des chamallows têtes pour symboliser le nez. Coupez chaque Mikado en 2. Plantez les demis Mikado dans les chamallows afin de créer les bras et les jambes des bonshommes de neige.\r\nServez le chocolat dans des mugs. Disposez les chamallows sur le chocolat de façon à recréer les bonshommes de neige. Dégustez les chocolats chauds de Noël aussitôt. ', '5', '10min', 'Boissons Chaudes', 17, 'http://192.168.43.137/Recettes/images/chocolat.JPG'),
('Café dalgona', 'Ingrédients\r\nTasse de lait	2\r\nCafé soluble	5 cuillères à soupe\r\nSucre	5 cuillères à soupe\r\nEau	5 cuillères à soupe\r\n\r\nPréparation:\r\nÀ l\'aide d\'un fouet électrique, émulsionnez le café, le sucre et l\'eau préalablement bouillie. Une fois le mélange devenu épais et onctueux, réservez.\r\nChauffez le lait, agrémentez-le à souhait puis versez-le dans deux verres transparents, remplissez-les au 3/4.\r\nAjoutez le café fouetté par dessus. Décorez selon vos envies. Dégustez.', '5', '5min', 'Boissons Chaudes', 18, 'http://192.168.43.137/Recettes/images/dalgona.JPG'),
('Crêpes suzette', 'Ingrédients\r\n\r\nCrêpes 	6\r\nBeurre 	150g\r\nSucre glace 	150g\r\nLiqueur d\'orange 	1dl + 3 cuillères à soupe\r\nZeste d\'orange 	1\r\nSucre 	1 cuillère à soupe\r\npréparation:\r\n\r\n   Dans un saladier, travaillez le beurre puis incorporez le sucre glace, les 3 cuillères à soupe de liqueur d\'orange et mélangez bien. Ajouter le zeste finement râpé.\r\n    Faire cuire les crêpes (voir notre recette de pâte à crêpes) et garnissez-les d\'une couche de crème à l\'orange. Pliez chaque crêpe en 4, disposez-les en éventail dans un plat et saupoudrez-les de sucre.\r\n    Dans une petite casserole, faite tiédir la liqueur. A table, versez la liqueur sur les crêpes, enflammez et arrosez à la cuillère, jusqu\'à ce que tout l\'alcool ait brulé. Servez les crêpes suzette aussitôt.\r\n', '5', '10min', 'Dessert/crepes', 19, 'http://192.168.43.137/Recettes/images/suzette.JPG'),
('Gâteau de crêpes', 'Ingrédients:\r\nFarine 	250 g\r\nLait 	70 cl\r\nOeufs 	6\r\nSucre 	280 g\r\nSucre glace 	2 cuillères à soupe\r\nBeurre 	130 g\r\nHuile 	2 cuillères à soupe\r\nCitrons bio 	3\r\nsel 	1 pincée\r\n\r\n\r\nPréparation :\r\n\r\n    Faites fondre 30 g de beurre à feu doux. Tamisez la farine.\r\n    Mélangez la farine, 3 œufs, 30 g de sucre en poudre, le beurre fondu et une pincée de sel. Incorporez peu à peu le lait à l\'aide d\'un fouet pour obtenir une pâte à crêpes homogène. Laissez reposer la pâte à crêpes au moins 1h.\r\n    Faites chauffer un peu d\'huile dans une poêle pour cuire des crêpes assez épaisses.\r\n    Pressez et filtrez le jus de 2 citrons. Mettez le jus dans une casserole avec 250 g de sucre et 100 g de beurre. Faites cuire doucement 3 minutes en remuant régulièrement.\r\n    Brossez le dernier citron et prélevez son zeste. Battez les 3 œufs restants. Ajoutez le zeste de citron et les œufs battus, mélangez et prolongez la cuisson à feu doux jusqu\'à ce que la crème épaississe.\r\n    Laissez la crème refroidir.\r\n    Dressez le gâteau de crêpes dans un plat en alternant une crêpe et de la crème au citron. Saupoudrez de sucre glace avant de servir. \r\n\r\n', '4.5', '60min', 'Dessert/crepes', 20, 'http://192.168.43.137/Recettes/images/gateau.JPG'),
('Crêpes aux graines de courges', 'ingrédients:\r\nLait 	300 ml\r\nFarine 	100 g\r\nGraines de courges (moulues ou entières) 	40 g\r\nBeurre 	40 g\r\nOeufs 	3\r\nSirop d\'érable 	8 cuillères à soupe\r\nHuile 	2 cuillères à soupe\r\nSel 	1 pincée\r\nGraines de courges entières\r\n\r\npréparation:\r\nDans un récipient, délayez la farine et le sel, avec le lait et laissez reposer 20 minutes.\r\nIncorporez les œufs et les graines de courge moulues.\r\nFaites chauffer un peu d\'huile avec du beurre dans une poêle et faites cuire la première face des crêpes. Faites des crêpes fines de préférence.\r\nJuste avant de les retourner pour faire cuire la seconde face, parsemez de quelques graines de courge.\r\nUne fois cuite, déposez dans une assiette les crêpes, nappez-les de sirop d\'érable, et saupoudrez de cannelle avant de les enrouler. Dégustez les crêpes aux graines de courge ', '4.9', '10min', 'Dessert/crepes', 21, 'http://192.168.43.137/Recettes/images/courge.JPG'),
('', '\r\n\r\nIngrédients\r\n\r\nFilet de boeuf 	400 g\r\nFarine 	125 g\r\nLait de coco 	25 cl\r\nBeurre fondu 	20 g\r\nSauce soja 	4 cuillères à soupe\r\nJus de citron vert 	2 cuillères à soupe\r\nGraines de sésame 	1 cuillère à soupe\r\nMiel 	2 cuillères à café\r\nGingembre en poudre 	1 cuillère à café\r\nOeufs 	2\r\nAil 	2 gousses\r\nCoeur de laitue 	1\r\nPiment rouge 	1 petit\r\nConcombre 	1/3\r\nBasilic 	10 feuilles\r\nMenthe 	5 feuilles\r\nCoriandre 	5 branches\r\nSel 	1 pincée\r\nPréparation:\r\n\r\n    Préparez la pâte à crêpes. Dans un premier récipient, versez la farine et le sel, mélangez et faites un puits. Dans un second, fouettez le lait de coco, les œufs et le beurre fondu puis incorporez le liquide à la farine. Mélangez jusqu\'à obtention d\'une pâte homogène et laissez reposer 30 minutes.\r\n    Dans une poêle anti-adhésive, faites cuire 8 crêpes et réservez.\r\n    Préparez la marinade. Pelez et hachez les gousses d\'ail. Déposez-les dans un plat creux avec le jus de citron vert et la sauce soja. Émincez finement la viande et placez-la dans le plat pour la faire mariner 15 minutes au réfrigérateur. Une fois le temps écoulé, égouttez la viande et faites cuire 2 à 3 minutes sur un gril chaud (ou une poêle). Laissez refroidir.\r\n    Coupez en deux le piment rouge, retirez les pépins puis émincez-le très finement. Incorporez-le à la marinade en ajoutant le miel, les graines de sésame et le gingembre puis mélangez. Ajoutez ensuite les lamelles de viande pour bien enrober les morceaux.\r\n    Pelez le concombre, ôtez les pépins et taillez des petits bâtonnets. Coupez finement la salade et toutes les fines herbes puis mélangez-les.\r\n    Répartissez chaque préparation sur les crêpes, égouttez légèrement la viande avant de la déposer, puis une fois la garniture étalée, roulez la crêpe comme un rouleau de printemps. Dégustez immédiatement les crêpes thaïes.\r\n', '4.8', '48min', 'Dessert/crepes', 22, 'http://192.168.43.137/Recettes/images/thais.JPG');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'mary@gmail.com', 123456),
(2, 'maryy@gmail.com', 81),
(3, 'mariam@gmail.com', 202),
(4, 'mariam1@gmail.com', 81);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `recette`
--
ALTER TABLE `recette`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `recette`
--
ALTER TABLE `recette`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
