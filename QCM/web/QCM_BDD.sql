-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 09 Janvier 2015 à 12:06
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `qcmproject`
--

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `idquestion` int(11) NOT NULL,
  `question` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idquestion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `question`
--

INSERT INTO `question` (`idquestion`, `question`) VALUES
(1, 'En général vos meilleures idées jaillissent :'),
(2, 'Quand vous préparez une réunion :'),
(3, 'Quand vous discutez des projets de développement d’un collègue :'),
(4, 'Le contexte de travail qui vous convient le mieux est plutôt :'),
(5, 'Vous appréciez un chef avec lequel :'),
(6, 'Pour vous, une réunion d’équipe c’est l’occasion :'),
(7, 'En général, vous préférez un contexte relationnel où :'),
(8, 'Préféreriez-vous vous lancer dans des projets professionnels :'),
(9, 'A l’heure du déjeuner, la plupart du temps :'),
(10, 'Lorsque votre patron vous confie une tâche particulièrement difficile :'),
(11, 'Dans un compte-rendu qui vous évalue, vous préférez que l’on souligne :'),
(12, 'Vous aimez :'),
(13, 'En règle générale, vous aimez que la porte de votre bureau soit :'),
(14, 'Quand soudain une idée nouvelle vous saute aux yeux :'),
(15, 'Dans une réunion d’équipe, vous préférez :'),
(16, 'Vous aimez avoir :'),
(17, 'Vous vous habillez pour aller travailler :'),
(18, 'Quand vous devez traiter des problèmes délicats, vous choisissez,  le plus souvent :'),
(19, 'Etes-vous plus facilement convaincu par un exposé :'),
(20, 'Préférez-vous travailler avec un patron :');

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE IF NOT EXISTS `reponse` (
  `idreponse` int(11) NOT NULL,
  `reponse` varchar(150) DEFAULT NULL,
  `question_idquestion` int(11) NOT NULL,
  PRIMARY KEY (`idreponse`),
  KEY `fk_reponse_question1_idx` (`question_idquestion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `reponse`
--

INSERT INTO `reponse` (`idreponse`, `reponse`, `question_idquestion`) VALUES
(1, 'lors d’un échange, une discussion avec d’autres', 1),
(2, 'quand vous réfléchissez seul dans votre coin', 1),
(3, 'vous prévoyez minutieusement l’ordre du jour', 2),
(4, 'vous êtes ouvert et prêt à toutes les éventualités', 2),
(5, 'vous en profitez pour mettre sur la table les problèmes que vous rencontrez avec lui', 3),
(6, 'vous évitez soigneusement de lui dire des choses qui pourraient le froisser', 3),
(7, 'très structuré, avec des règles claires et explicites', 4),
(8, 'les contraintes collectives sont limitées, chacun s’organise comme il l’entend', 4),
(9, 'il est possible de discuter plusieurs fois par jour', 5),
(10, 'les échanges sont occasionnels et prévus à l’avance', 5),
(11, 'de concrétiser des idées', 6),
(12, 'de rechercher des idées', 6),
(13, 'les désaccords peuvent s’exprimer librement dans de franches discussions', 7),
(14, 'l’harmonie est valorisée au point d’éviter tout conflit', 7),
(15, 'préparés et planifiés soigneusement à l’avance', 8),
(16, 'partir à l’aventure en vous adaptant aux circonstances', 8),
(17, 'vous rejoignez un groupe de collègues', 9),
(18, 'vous êtes seul ou en tête à tête avec un proche', 9),
(19, 'vous réunissez le maximum de données avant de commencer', 10),
(20, 'vous plongez tout de suite dans l’action en comptant sur votre capacité à faire face', 10),
(21, 'vos capacités intellectuelles et relationnelles', 11),
(22, 'votre style chaleureux et convivial', 11),
(23, 'prévoir l’organisation de votre travail quotidien', 12),
(24, 'laisser place à l’improvisation en vous adaptant en fonction des urgences', 12),
(25, 'ouverte', 13),
(26, 'fermée', 13),
(27, 'vous évaluez le pour et le contre avant de vous laisser emporter par la joie', 14),
(28, 'vous êtes excité et vous voulez en parler ou la mettre en œuvre', 14),
(29, 'une discussion détaillée des faits', 15),
(30, 'une discussion sur les valeurs et les intentions sous-jacentes', 15),
(31, 'des résultats tangibles très fréquents', 16),
(32, 'des résultats à longue échéance', 16),
(33, 'de manière à ce que l’on vous remarque', 17),
(34, 'de manière neutre', 17),
(35, 'de penser et d’agir à partir d’estimations d’ordre pratique', 18),
(36, 'de théoriser et d’élargir le débat', 18),
(37, 'net, logique, ciblé', 19),
(38, 'sincère et émouvant', 19),
(39, 'qui propose un mode de fonctionnement et des méthodes de travail', 20),
(40, 'qui vous laisse vous organiser comme vous l’entendez', 20);

-- --------------------------------------------------------

--
-- Structure de la table `stat`
--

CREATE TABLE IF NOT EXISTS `stat` (
  `idstat` int(11) NOT NULL,
  `stat` varchar(4) DEFAULT NULL,
  `valeur` int(11) DEFAULT NULL,
  PRIMARY KEY (`idstat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `fk_reponse_question1` FOREIGN KEY (`question_idquestion`) REFERENCES `question` (`idquestion`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
