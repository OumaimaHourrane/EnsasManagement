-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Mer 02 Septembre 2015 à 09:39
-- Version du serveur: 5.5.8
-- Version de PHP: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `m_final`
--

-- --------------------------------------------------------

--
-- Structure de la table `condidats`
--

CREATE TABLE IF NOT EXISTS `condidats` (
  `id_condidat` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `lieu_naissance` varchar(255) DEFAULT NULL,
  `nationalite` varchar(255) DEFAULT NULL,
  `fonction` varchar(255) DEFAULT NULL,
  `situation_famille` varchar(255) DEFAULT NULL,
  `adresse_personnelle` varchar(255) DEFAULT NULL,
  `tel_fixe` varchar(255) DEFAULT NULL,
  `tel_gsm` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `motivations` varchar(1000) DEFAULT NULL,
  `etat_dossier` int(11) DEFAULT '0',
  `etat_selection` int(11) DEFAULT '0',
  `decision_jury` varchar(255) DEFAULT 'non admis',
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `numero_inscription` varchar(255) DEFAULT NULL,
  `cin` varchar(255) DEFAULT NULL,
  `source_info` varchar(255) DEFAULT 'internet',
  `confirmation` varchar(255) NOT NULL DEFAULT 'pending',
  `cle_confirmation` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_condidat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Contenu de la table `condidats`
--

INSERT INTO `condidats` (`id_condidat`, `nom`, `prenom`, `date_naissance`, `lieu_naissance`, `nationalite`, `fonction`, `situation_famille`, `adresse_personnelle`, `tel_fixe`, `tel_gsm`, `fax`, `email`, `motivations`, `etat_dossier`, `etat_selection`, `decision_jury`, `login`, `password`, `numero_inscription`, `cin`, `source_info`, `confirmation`, `cle_confirmation`) VALUES
(6, 'RAMZI', 'Mohamed', '0000-00-00', 'Casablanca', 'Marocaine', 'Formateur', 'marié', 'Lot LAMIA Imm 1094 n° 2 Route Dar Si Aissa SAFI', '', '00212699454670', '', 'mramziofppt@hotmail.com', '                        Bien que je sois très attiré par le domaine des technologies de l’information et son univers et     projetant de faire une reconversion de métier vers le développement informatique. Et pour donner le meilleur à mes futurs stagiaires, j’ai décidé d’approfondir mes connaissances dans le domaine et  essayer au mieux de cerner les atouts nécessaires  pour mener à bien n’importe quel projet   informatique  demandé. Pour ça, j’ai commencé par préparer un diplôme de technicien spécialisé en développement informatique le quel j’ai fait de grands efforts pour maitriser les fondements du métier     et je projette continuer dans la même voie pour connaitre au mieux ce domaine fascinant.                    ', 1, 1, 'admis', '', '', NULL, 'TA58733', 'ami', 'active', '8WUHzZM5G63Igw68'),
(7, 'Ajili', 'Mohamed', '0000-00-00', 'safi', 'Marocain', 'Technicien specialise en Diveloppement informatique', 'Celebataire', '                            27 elimam, okba bnou nafai   safi                        ', '', '00000610877676', '', 'M.ajili@programmer.net', 'j''ai besoin de cette formation affin de développer mes compétences en domaine informatique surtout les technologies web.                    ', NULL, NULL, NULL, 'Majili', '1987100198710', NULL, 'H698521', 'internet', 'active', 'OEuEInsvjnxMPrf9'),
(8, 'ghoujdani', 'reda', '1986-04-19', 'casablanca', 'marocaine', 'secrétaire  comptable', 'célèbataire', '                            zohour bloc 45 n°171 safi                        ', '05-24-65-12-02', '06-62-20-34-70', '', 'blackout08@live.fr', '                        voila j’aimerais avoir l’accès a cette formation                    ', NULL, NULL, NULL, 'ghoujdani', 'reda2014', NULL, 'h690173', 'internet', 'active', 'VdH4NRkbyeYgGtE7'),
(9, 'DEBBAGH', 'Abdelkebir', '0000-00-00', 'Ighoud Youssoufia - Safi', 'Marocain', 'Assisatnt commercial', 'Célibataire', '                            43 BLOC 03 LOTIS OUADIA JRAIFATE SAFI                        ', '', '0657049053', '', 'Abdelkebir.debbagh@gmail.com', '                        - Connaissance en informatique: Word, excel, power point      \n- Le milieu de travail me permet de prendre en considération la gestion des moyens industriels selon mon ambition d’être polyvalent.\n- Aussi, j''ai acquis un certain nombre de connaissance concernant la gestion de stock dans milieu industriel.                    ', NULL, NULL, NULL, 'abdelkebirdebbagh', 'abidoabido', NULL, 'H575531', 'internet', 'active', '1hVJ24TTRNJbyRBH'),
(10, 'RABHI', 'MOHAMED', '1992-05-05', 'nador', 'MAROCAIN', 'agent', 'Célibataire', '                            BP 488 Bureau Principal safi                        ', '', '06-00-53-57-37', '', 'rabhi.mohamed92@gmail.com', '                        je veux vraiment  enrichisse    mon carrière professionnelle  ..merci d''avoir accepter ma candidature                    ', NULL, NULL, NULL, 'rabhi92', 'rabhi1992', NULL, 'S692685', 'internet', 'pending', 'cYBiuID9W18imWHQ'),
(37, 'belkas', 'ayoub', '0000-00-00', 'safi', 'marocain', 'aucun', 'célibataire', '             N5 bloc 4 QU saida 1 safi                                       ', '', '0614290101', '', 'ayoub.belkas@gmail.com', '                                     Apres avoir abstenue mon diplôme de technicien spécialisé en réseau informatique et de essaie  de m intègre dans de lieux professionnelle j ais remarque que mais compétence  ne seront pas assez de plus j ai été toujours fascinait par le domaine de développement informatique surtout web\nDans ceci représente pour mois une grande opportunité de m’avoir une nouvelle compétence \n       ', NULL, NULL, NULL, '', '', NULL, 'H513198', 'affiche', 'active', 'VhbS55UjltxtC1AB'),
(38, 'SABRI', 'Zineb', '1994-11-04', 'EL JADIDA', 'Marocaine', 'Etudiante', 'celibataire', '                            N 39 Zone 7 HAY EL MANAR EL JADIDA                        ', '', '0615965495', '', 'zinebsabri94@gmail.com', '                        fortement désirée                    ', NULL, NULL, NULL, 'Zinebsabri', 'thesandalofg', NULL, 'M5554949', 'internet', 'pending', 'TZIdMU1hrpZ5gdXC'),
(40, 'atiq', 'essaadia', '1995-09-25', 'wlad slman safi', 'MAROCAINE', 'sans', 'CELEBATERE', '                            06 rue molay tayb elwazzani sidi mbarkk safi                        ', '', '0631777898', '', 'imilya01@hotmail.com', '                        j''aime continue  mes études chez vous                    ', NULL, NULL, NULL, 'essaadia', 'so3ad1995', NULL, 'HH168654', 'internet', 'active', 'Q5YhEnUOhHlf77Pz'),
(41, 'elbouchari', 'ibtissam', '1996-03-18', 'safi', 'MAROCAINE', 'sans', 'CELEBATERE', '                            86,rue jamaa qu el course ,safi                        ', '', '0631777898', '', 'ibtissam_55@hotmail.fr', '                        soit dans le chemin correcte                    ', NULL, NULL, NULL, 'elbouchari', 'ibtissam', NULL, 'HH250510', 'internet', 'active', 'PSi1Ypdmh1SEu5NS'),
(42, 'SalahEddine', 'Bassma', '1993-05-16', 'Rabat', 'Marocaine', 'Etudiante', 'célibataire', '                            02 LOT CHARIFA 2 SAADA 3 El Jadida                        ', '', '0649495381', '', 'bsalaheddine20@gmail.com', '                        dynamique,sérieuse,curieuse                    ', NULL, NULL, NULL, 'Bassma', 'incorrect1962', NULL, 'M537074', 'internet', 'active', '1iJwUpc09KRqkscK'),
(43, 'Bentouila', 'Hajar', '1993-12-09', 'El Hoceima', 'Marocaine', 'étudiante', 'célibataire', '                            Hay Salam, El Jadida                        ', '', '0671193055', '', 'bentouila.hjr@gmail.com', '                        A voir la possibilité d’accéder à une formation au sein de votre établissement, me permettrait de poursuivre mes études dans la spécialité que j’ai choisie d’une part, de décrocher un diplôme de fin d’études alimenté par une mise en pratique par des stages, dans des projets afin d’intégrer la vie professionnelle autant que Responsable informatique en réseaux et sécurité d’autre part.                    ', NULL, NULL, NULL, '', '', NULL, 'WA202517', 'internet', 'active', 'xWwtwH661AzfPmYT'),
(44, 'Sabil', 'Nada', '1994-08-15', 'Marrakech', 'Marocaine', 'Etudiante', 'Célibataire', '                            Massira 2, B, N470\nMarrakech                        ', '', '06-18-13-14-20', '', 'nadasabil15@gmail.com', 'Actuellement titulaire d’un DUT en Informatique, je souhaite intégrer votre établissement afin de profiter de l’enseignement que vous dispensez en licence professionnelle en Administration des Réseaux et Sécurité des Systèmes.\nJe suis fortement intéressée par la sécurité informatique et je sais que cette licence professionnelle, en adéquation parfaite avec mes ambitions, pourrait me permettre d’accéder plus facilement au type de poste que je convoite pour ma future carrière professionnelle.\nPouvoir suivre les cours d’une licence professionnelle telle que celle que vous proposez serait pour moi une chance et me permettrait de compléter l’enseignement théorique que j’ai reçu jusqu’à présent en bénéficiant d’expériences plus concrètes. Bien entendu, je témoigne déjà de quelques expériences sur le terrain, notamment par le biais des stages volontaires. En espérant que vous donnerez suite à ma candidature, je me tiens à votre disposition pour tout renseignement complémentaire.              ', NULL, NULL, NULL, 'Nada_sabil', 'Protection12', NULL, 'EE580164', 'internet', 'active', 'e0QbVXJrKpSP9bg2'),
(45, 'himeur', 'mahdi', '1984-11-09', 'safi', 'marocain', 'fonctionaire', 'celebataire', '                            46 bis rue 15 quartier saada safi                        ', '', '0613708328', '', 'mehdi---1984@hotmail.fr', '                        en travail                    ', NULL, NULL, NULL, 'safiman07', 'mehdi1984', NULL, 'h 338477', 'internet', 'pending', 'FVvYbIpotz8Js272'),
(46, 'aitlamine', 'hamidallah', '1992-10-15', 'TAROUDANT', 'Marocaine', 'Technicien Spécialisé', 'Célibataire', '                            Dr  REGADA, FREIJA, 83200, TAROUDANT.                        ', '0638646272', '0615995163', '', 'Hamid_1772@hotmail.fr', '                        Bonsoir,\n    AIT LAMINE Hamid Allah, Âgé de 22 ans. titulaire d''un Diplôme de Technicien Spécialisé en l''Electromécanique des Systèmes Automatisées (Bac + 2), à l''Institut Spécialisé de Technologie Appliquée TAROUDANT, en 2011-2013.  Et j''ai mon baccalauréat en Science Physique et Chimique, en 2010-2011,  mention Assez Bien.  Mon numéro de la carte national est: JC494005. et maintenant je travail à la ville de LARACHE. et j''ai un an de l''expérience de travail à mon domaine, au cours de ça je continuer mes études de la filière Scienses physique, à la Faculté polydisciplinaire de LARACHE.\n     Et je vous demander pour accepter mon dossier, pour fair la licence professionnelle, l''année scolaire 2014_2015. à votre Ecole.\n      J''ai un fort désir d''étudier, et continuer, a fin d''être un ingénieur.\n  Votre m''acceptation est mon avenir.\n                Et merci, Mes salutations.                    ', NULL, NULL, NULL, 'hamidallah', '1129025580', NULL, 'JC494005', 'internet', 'pending', 'hJh8VVO5nlxTRz0D'),
(49, 'NDAO', 'IBRAHIMA', '1991-01-01', 'BAMBEY -SENEGAL', 'SENEGALAIS', 'Etudiant', 'Célibataire', '                            Salé-Rabat Cité Addoha imm 16 appartement 25                        ', '', '0680036832', '', 'iboudino91@gmail.com', '                        Vu aujourd''hui l''avancement des technologies de pointe ,l''être humain a besoin toujours de concevoir des boites pour garder ses informations raison pour la quelle il est important de se pencher   sur un tel domaine . \nEt se qui justifie la raison de mon choix                    ', NULL, NULL, NULL, '', '', NULL, 'AB3126J', 'internet', 'active', 'N6YjyHq1hQr0Qu0a'),
(50, 'AMAZZAL', 'Abdallah', '0000-00-00', 'AGADIR', 'marocaine', 'étudiant', 'célibataire', 'Hay Igroumai Rue 2409 N 18 Dcheira Inzegane                                                     ', '', '0662120735', '', 'abdalah.amazzal@gmail.com', '          je suis Abdallah Amazzal , étudiant de faculté des science Agadir . J'' aime bien de s''inscrire à vous master qui intitule '' Administration des Réseaux et Sécurité des Systèmes '' et merci                                  ', NULL, NULL, NULL, 'Amazzal', '0662120735', NULL, 'JB425915', 'internet', 'active', 'y79dpEE19hDJBSxK'),
(51, 'Raji', 'Hind', '1992-09-05', 'Marrakech', 'Marocain', 'Etudiante', 'Célibataire', '               71, Lot Bent Tachfine Azli Marrakech -40150-                                     ', '', '0624852845', '', 'hindraji@hotmail.fr', '                Madame,Monsieur\n Mon choix s’est rapidement porté sur votre honorable université car c''est un pôle majeur d''enseignement et de recherche,offrant une diversité et une complémentarité de ses enseignements et une multiplicité de ses méthodes et pratiques pédagogiques. ainsi l''Ensa''s est également citoyenne par sa contribution au rayonnement et au développement scientifique, social et culturel de son environnement. De ce fait, je suis très motivée et je souhaite donc acquérir la meilleure formation possible.                            ', NULL, NULL, NULL, 'Hind', 'sabah_123', NULL, 'EE468250', 'internet', 'active', 'SHwYTr5qHnOJDlch'),
(52, 'chibli', 'salma', '1994-05-31', 'Beni Mellal', 'MAROCAINE', 'étudiante', 'célibataire', '     quartier IBN sina BLOC 11 n° : 29 beni mellal                        ', '', '0642528718', '', 'chiblisalma1@gmail.com', '                        je suis motivé par cette formation puisque, j''ai un diplome en filière Genie electrique, à EST Fes ou j''ai eu une formation polivalente \nmerci                    ', NULL, NULL, NULL, 'CHIBLI', 'jamilaramli', NULL, 'I1210153823', 'internet', 'active', 'AEf5h12oRgYbzQSY'),
(53, 'belkas', 'ayoub', '1990-10-24', 'safi', 'marocain', 'none', 'celibatair', '                            N5 bloc 4 QU SAIDA 1 \nsafi                        ', '', '0614290101', '', 'ayoub.belkas@gmail.com', '                        J ais été toujours fasciné par le développement informatique et je pense que ca sera une grand capacité à retenir                    ', NULL, NULL, NULL, 'ayoubbelkas', 'Ayoub007', NULL, 'H513198', 'internet', 'active', 'kEbX0PFHlzxl6xpP'),
(54, 'LAYACHI', 'WALID', '1993-01-15', 'TAZA', 'MAROCAINE', 'ETUDIANT', 'CELIBATAIRE', '                            HAY ADARISSA BLOC N17                        ', '', '06-26-33-41-12', '', 'walidlayachi@gmail.com', '                        Je suis doué en informatique                    ', NULL, NULL, NULL, 'WALIDLAYACHI', '159951w', NULL, 'Z491505', 'internet', 'active', 'n4FgNzbyA5qodVFc'),
(55, 'ELACHABI', 'ANASS', '1992-03-06', 'Kenitra', 'Marocain', 'Etudiant', 'Célibataire', 'Résid yasmine, imm 02, app 02, hay essalam, salé ', '', '0662389530', '', 'Anassacha@gmail.com', '                        Ma formation à côté de mon expérience professionnelle m''ont permis d’acquérir les connaissances de bases nécessaires et m''ont ouvert les yeux sur de nouvelles perspectives dans le domaine informatique notamment en développement informatique. \n\nPar ailleurs, j''envisage d''y approfondir mes connaissances pendant les années à venir.\n\nUne formation à l''école normale supérieure de Tétouan me semble très enrichissante sur les plans scientifiques et culturels, sachant que l''université Abdelmalek Essaâdi est réputée pour sa qualité d''enseignement et de sa recherche scientifique avec des professeurs de renommée mondiale. Je souhaite en effet poursuivre mes études dans votre école dans le but de construire une carrière professionnelle de haut niveau.                    ', NULL, NULL, NULL, 'Anassachab', 'ensaachabi', NULL, 'AE33387', 'internet', 'active', 'qYK4U5zKXq1kKTQV'),
(56, 'BOUBAROUD', 'Asmaa', '0000-00-00', 'Safi', 'Marocaine', 'Etudiante', 'Celibataire', '                            5,rue boumediane quartier jerifate.Safi                        ', '', '06-99-67-88-74', '', 'asmaa.boubaroud@gmail.com', '                        motive par les metiers du web                    ', NULL, NULL, NULL, 'elite05', 'huawei29081981', NULL, 'HH100106', 'internet', 'active', 'm4WehSZA9kcNDazt'),
(57, 'sabri', 'ilyas', '1994-04-15', 'youssoufia', 'MAROCAINE', 'sans', 'célibataire', '                            QU ESSAADA RUE MOHAMED MONSSIF N 21 YOUSSOUFIA                        ', '', '0677173114', '', 'sabriilyas1@gmail.com', '                        Madame, Monsieur,\n\nActuellement en seconde année de DUT filière multimédia et conception web mon goût prononcé pour le monde informatique et les langues vivantes m''ont poussée à postuler au département informatique .\nEn effet, j''ai toujours souhaité travailler dans l''informatique, et surtout dans l''architecture des systèmes d''informations . Je me suis déjà initiée à la création de site Web et à la programmation. De plus, l’école normale supérieur  m''ont apporté un bagage scientifique solide et une méthode de travail qui m''aideront à progresser dans le cycle ingénieur. \nDans l''attente de votre réponse, je vous prie de recevoir, Madame, Monsieur, mes sincères salutations.\n\nilyas sabri                    ', NULL, NULL, NULL, '', '', NULL, 'HA187803', 'internet', 'active', '0uVsQ4vhXm8ZopLg'),
(58, 'EDDIOUANI', 'Mourad', '0000-00-00', 'RABAT', 'Marociane', 'Analyste Programmeur', 'célibataire', '08 bloc 12 Qu Ourida 02  safi', '', '0661064023', '', 'cym1@hotmail.fr', 'je suis curieux de savoir c''est quoi ! "cloud computing   "                 ', NULL, NULL, NULL, 'meddiouani', 'm123456', NULL, 'A799750', 'ENSAS', 'pending', 'ydQKW3vRRGaDj5eu'),
(60, 'ITEKKANE', 'SAIDA', '1993-09-06', 'safi', 'Marocaine', 'etudiante', 'Celibataire', '                            05, lotis najoubi quartier sidi ouassel, safi                        ', '', '06-66-56-88-18', '', 'itekkane@gmail.com', '                        Conscient de la chance qui pourrait m''être faite en intégrant cette licence professionnelle, c’est avec la plus grande motivation que j’envisage cette année au sein de votre établissement.                    ', NULL, NULL, NULL, 'saida', '0634271812', NULL, 'hh156180', 'internet', 'active', 'I8w9PA1fku76VhC4'),
(61, 'CHENITFA', 'FATIMAEZZAHRA', '1995-03-20', 'safi', 'Marocaine', 'etudiante', 'Celibataire', '40, lotis zitouna route elmatar jnane illane, safi                                          ', '05-24-46-27-64', '06-61-24-07-98', '', 'chenitfa@gmail.com', '      Après avoir intégré la vie active, j’ai pris conscience de l’importance de cette licence professionnelle que je n''ai pas encore obtenu. J’ai donc décidé de rejoindre votre école national afin de combler cette lacune et aboutir à une évolution de ma carrière professionnelle               ', NULL, NULL, NULL, 'fatimaezzahra', '0604289219', NULL, 'HH58069', 'internet', 'active', 'h6LU3TnX0jMe6K8K'),
(62, 'AHNOUCH', 'HAFSA', '0000-00-00', 'SAFI', 'MAROCAINE', 'etudiante', 'célébataire', '                            13 RUE BANAFSAJ QU SIDI ABDELKRIM                        ', '', '0617442266', '', 'hafsa.ahnouch@gmail.com', '                        J''ai l''honneur de solliciter mon inscription en licence dans votre prestigieuse université avec, en perspective, des orientations en réseaux et systèmes informatiques. Suivant mon parcours scolaire, mes apprentissages et mon évolution personnelle.                    ', NULL, NULL, NULL, 'hafsaahnouch', '11193', NULL, 'HH2550', 'internet', 'active', 'Dn4mu9wRHZ58pARk'),
(63, 'ELAIREJ', 'MUSTAPFA', '1989-05-09', 'GUELMIM', 'MAROCAIN', 'etudiant', 'célibataire', '                            hay ibno rochd rue aboubaker essadin N 17                        ', '', '0662321796', '', 'soff_stof@hotmail.fr', '                        Au cours de mes formations, j''ai effectué plusieurs stages, et des certifications , qui m''ont permet de développer mon sens des contacts, de l''organisation, des responsabilités et une expérience professionnelle,  je possède une très bonne connaissance de l''outil informatique qui est au cœur de votre formation.                    ', NULL, NULL, NULL, 'elairejmustapha', 'aze123456', NULL, 'JA139054', 'internet', 'active', 'M3BDfdmZOfqcOocb'),
(64, 'aziz', 'elmehdi', '1988-01-05', 'Agadir', 'marocaine', 'Informaticien', 'marié', '                            10 rue hanine oued elbacha safi                        ', '', '0657123862', '', 'elmehdi.aziz@gmail.com', 'je souhaite continuer à approfondir mes connaissances et bénéficier des débouchés qualitatifs proposés par la licence professionnelle Administration des réseaux.\nEn effet, après avoir intégré la vie active, j’ai pris conscience de l’importance de ce diplôme que je n''ai pas encore obtenu. J’ai donc décidé de rejoindre les bancs universitaires afin de combler cette lacune et aboutir à une évolution de ma carrière professionnelle.                    ', NULL, NULL, NULL, 'aziz-servicedesk', '0657123862', NULL, 'H632221', 'internet', 'active', 'OFyu3PMCAcsAR76I'),
(65, 'BRGMANE', 'Ghizlane', '1994-03-26', 'safi', 'marocaine', 'étudiante', 'célibataire', ' 13 Rue faina Quartier safa Azibe  derai Safi                                                  ', '', '0649630963', '', 'ghizlane.brgmane@gmail.com', '      La formation de l''administration des réseaux et sécurité des systémes  c''est l''un des facteurs   qui ma poussé pour choisir votre école .                                    ', NULL, NULL, NULL, 'Ghizlane', 'Ghizlane', NULL, 'HH106511', 'internet', 'active', '1VGVmQq2tzZuvhnV'),
(67, 'Ennakach', 'Ahmed', '0000-00-00', 'Dr hddada sbiaat youssoufia', 'marocain', 'Forgeran', 'Travail', '                            dr hddada sbiaat youssofia                        ', '', '0634350624', '', 'ahmed1_ennakach@outlook.fr', '                                            Mécanique', NULL, NULL, NULL, 'Ahmed1996', 'Chrayme11021996', NULL, 'Ha 196937', 'internet', 'active', 'r16oqrkIdgh2EZds'),
(68, 'MOURID', 'Mohammed-Amine', '1986-05-02', 'Safi', 'Marocain', 'Etudiant', 'Celibataire', '31 Rue C Lotis Salam Quartier Bouab Safi                                                    ', '0524611190', '0600678219', '', 'mmmourid@gmail.com', 'Convaincu que le Cloud favorise le développement de nouvelles opportunités de \ncroissance                  ', NULL, NULL, NULL, '', '', NULL, 'H447108', 'internet', 'active', 'ae2IWHCQMbfXHFU7'),
(69, 'BELBAIDA', 'Asmaa', '1989-12-04', 'Safi', 'Marocaine', 'employee', 'Célibataire', '                            5 rue sale qu. trab sini safi                        ', '', '06-75-19-40-68', '', 'as.belbaida@gmail.com', '                        me permet d''élargir mes connaissances dans le domaine industriel et répondre aux exigences de cette évolution industrielle qui connaît notre ville                    ', NULL, NULL, NULL, 'asmaa', 'lequatredecembre1989', NULL, 'H 492964', 'internet', 'active', 'DXhtW04hp0a0OKmj'),
(70, 'MOHAMED', 'OUMEZZI', '1995-03-12', 'HAY AKAJOUAA IMOUZZER MARMOUCHA AIT EL MANE', 'MAROCAINE', 'SANS', 'CELIBATAIRE', '                            131 HAYA AKAJOUA IMOUZZER MARMOUCHA BOULEMANE                        ', '', '0676743815', '', 'YRWAW-80@HOTMAIL.COM', '                                     J''ai un grand intérêt dans le domaine de l''informatique et je veux devenir un expert       ', NULL, NULL, NULL, 'MARMOUCHA', 'aghilass100', NULL, 'CN17117', 'internet', 'pending', 'gZaNvm1sfcYElvhB'),
(72, 'Daghouj', 'Youssef', '0000-00-00', 'Taza', 'Marocain', 'étudiant', 'Célibataire', 'Groupr Afaq Nr 58 Kénitra', '', '06-48-90-07-16', '', 'youssefdaghouj@outlook.com', '                                             Je suis attiré par tout ce qui est sécurité et surtout celle des systèmes d''information.', NULL, NULL, NULL, 'youssof', '1Mannanah', NULL, 'G544622', 'internet', 'pending', '6T0cQu4SnnWMhpBl'),
(73, 'JAFA', 'Youness', '1991-01-21', 'Casablanca', 'marocaine', 'étudiant', 'celibataire', 'Ben Msike Sidi Othman, Casablanca                                        ', '05-22-59-75-06', '06-72-16-88-77', '', 'jafa.youness@gmail.com', 'une bonne opportunité vers le professionnalisme                                               ', NULL, NULL, NULL, 'j-youness', '072191', NULL, 'BH362375', 'internet', 'active', 'jNuG3JmtHcL5uT39'),
(74, 'Sbiti', 'Achraf', '1994-11-16', 'Laayoune', 'Marocaine', 'Etudiant', 'Célebataire', '                            Quartier Prince Heretier 10 N° 23 Laayoune                        ', '', '0615462674', '', 'achraf_roro@hotmail.fr', '                                            Merci', NULL, NULL, NULL, 'Achraf', 'winner', NULL, 'SH167005', 'internet', 'pending', 'CgVT4fs0aDo5Flkw'),
(75, 'Laferah', 'Sara', '1991-10-29', 'Safi', 'marocaine', 'etudiente', 'celibataire', '  N 9 Rue 20 AOUT\nQUARTIER L’HOPITAL\nSAFI\n                                       ', '0524627963', '0669271400', '', 'saralafetah@gmail.com', '                     Monsieur,\n\nJ’ai l’honneur de vous soumettre ma candidature pour intégrer au  Master d''Ingénierie des Systèmes Distribués et Cloud Computing.\n\nJe suis titulaire d’un Diplôme technicien spécialisé en développement informatique, et je suis Licenciée en«Ingénierie et Conception des Systèmes d’Information ». je souhaite continuer à approfondir mes connaissances et bénéficier des débouchés qualitatifs proposés par votre honorable université .\n\nDans l’attente  d''une réponse bienveillante, je vous prie d’agréer, Monsieur, l''expression de mes sentiments distingués.                       ', NULL, NULL, NULL, '', '', NULL, 'H495557', 'internet', 'active', 'f8qj7sGOWLHpGHf7'),
(76, 'abousaid', 'elhoucine', '1990-05-20', 'youssoufia', 'marocain', 'etudiant', 'celibataire', '          al amal 02 rue 02 n 27 youssoufia                                          ', '', '0655930939', '', 'eabousaid@gmail.com', 'Rigoureux, volontaire et doté d''une grande technicité, je suis convaincu que mes attentes coïncideront avec vos besoins.                                             ', NULL, NULL, NULL, 'ABOUSAID', '065664083', NULL, 'HA171016', 'internet', 'pending', 's8XTowGja8lg5Nkn'),
(77, 'KHACHANI', 'ACHRAF', '1994-01-04', 'JNANATE FES', 'MAROCAINE', 'Etudiant', 'Célibataire', '                            AV ORAN 24 RUE BOULBOUL ZOHOUR 1                        ', '', '0629855150', '', 'INFO.3MBP@GMAIL.COM', '                        J''ai un diplôme en électroniques, et je suis aussi un geek en tous ce qui concerne le web et l''informatique, et je suis sure que j''aurai avoir des très bonnes notes. ainsi que j''ai une pensée créative, que je peux l''évoluer pour crée des projets prochainement.                    ', NULL, NULL, NULL, 'ROUGH_H', '0246810', NULL, 'CD621202', 'internet', 'active', 'JFx9zEze8PWEhAbe'),
(79, 'HABTI', 'Elmehdi', '1991-06-03', 'El Jadida', 'marocain', 'étudiant', 'célibataire', '                            Cité El Menzeh immeuble H Appartement 9 , Saada 1.                        ', '', '06-64-46-71-53', '', 'elmehdi.habti@gmail.com', '                        Je souhaite intégrer l''ingénierie et Conception des systèmes d''information car je suis depuis toujours passionné par l''informatique , j’ai souvent cherché à apprendre et comprendre ces principes, ainsi cela représente pour moi une opportunité importante afin de développer mes connaissances dans plusieurs domaines technologiques.  \nC''est pourquoi mon passage pas cet établissement me semble donc en continuité avec les efforts que j''ai déjà consacré pour maîtriser les premiers éléments de ce cursus.                    ', NULL, NULL, NULL, '', '', NULL, 'M515004', 'internet', 'active', 'x3Zu4dZx0X0bvTUI'),
(80, 'RHOULAM ', 'GHIZLANE', '1993-07-20', 'CASABLANCA', 'Marocaine', 'Etudiant', 'Célibataire', '        BD LA GIRONDE N155 RÉSIDENCE LAROZARIA \nÉTAGE 2  N4                                            ', '05-22-82-04-47', '06-15-17-24-06', '', 'ghizlane.rhoulam@gmail.com', 'Votre établissement m’a plu parce que j’ai consulté votre site internet et on peut y découvrir des formations  de qualité ! \n\n', NULL, NULL, NULL, 'ghizlane', 'ghizlane1', NULL, 'BL121075', 'internet', 'active', 'PEV3DRSJlUVGs1dY'),
(81, 'mounhij', 'saousane', '1991-01-26', 'safi', 'marocaine', 'superviseur', 'célibataire', '                            villa11 lot lamiaa,safi                        ', '', '0628139611', '', 'saousane.mounhij@gmail.com', '                        je souhaite intégré le master Ingénierie des systèmes distribués et Cloud Computing afin d’approfondir mes connaissances dans ce domaine récent et surtout que ce dernier et très demandé dans le marché du travail                    ', NULL, NULL, NULL, 'saousanemounhij', 'sisim', NULL, 'h642776', 'internet', 'active', 'rQK7Wlq2W58bQlWx'),
(82, 'sabri', 'zineb', '1994-11-04', 'el jadida', 'marocaine', 'étudiante', 'célibataire', '                            N 39 ZONE 7 HAY EL MANAR EL JADIDA                        ', '', '0615965495', '', 'zinebsabri94@gmail.com', 'Je suis jeune âgé de 20 ans titulaire d''un diplôme universitaire de technologie en Génie informatique', NULL, NULL, NULL, 'zineb', 'thesandalof', NULL, 'M554949', 'internet', 'active', 'MrgIZ7rNgc22pted'),
(83, 'chahine', 'imane', '1992-02-08', 'safi', 'marocaine', 'etudiante', 'celibataire', '                            n° 26 RUE 48 LOTS OUMNIA BOUAB SAFI                        ', '', '0627720604', '', 'imane-chahine@hotmail.fr', 'Madame, Monsieur, \nEn étudiant votre documentation, j''ai été séduite par votre licence professionnelle qui semble en continuité avec mes attentes. En effet, votre formation proposant des périodes théoriques et pratiques me permettrait d''acquérir de l''expérience tout en développant mes connaissances et ainsi réussir mon insertion dans le domaine professionnel . \nJe me tiens à votre disposition pour vous convaincre de vive voix de mes capacités et de ma motivation. \nDans l''attente de vous lire, je vous prie de croire, Madame, Monsieur, en l''expression de mes respectueuses salutations.\n', NULL, NULL, NULL, 'imanechahine', 'amounainami', NULL, 'HH100606', 'internet', 'active', 'VOO2zuu1yIvlkwhC'),
(84, 'CHAMMAKH', 'Abdelhakim', '1991-12-04', 'KHOURIBGA', 'MAROCAIN', 'Bac+2', 'Célibataire', '                            Quartier EL WIFAQ BLOC NR E 702 LAAYOUNE                        ', '', '0602002952', '', 'abdelhakim.chammakh@gmail.com', '        Je me tiens à votre disposition pour me présenter de vive voix et de manière plus concrète au cours de l''entretien d''admission que vous serez susceptible de m''accorder, et espérant que ma candidature sache retenir votre attention, je me tiens à votre entière disposition.                                    ', NULL, NULL, NULL, 'ABDELHAKIM', 'azertyuiop', NULL, 'SH156124', 'internet', 'pending', 'alNJtwWrtav9b0j3'),
(85, 'HAOUASSE', 'MOUNIR', '1994-12-15', 'LAAYOUNE', 'MAROCAIN', 'ETUDIANT', 'CELIBATAIRE', '                            Quartier El Fath,Avenue El Akkad N7                        ', '', '0699036934', '', 'mounir.haouasse@gmail.com', '                        j''ai un diplome de bts au domaine de developpement des systèmes d''informations.                    ', NULL, NULL, NULL, '123mounir_haouasse', '123789456', NULL, 'SH168274', 'affiche', 'active', 'MK2GcNFYvHqq4uiX'),
(86, 'laghmari', 'yassine', '1991-09-20', 'Safi', 'marocaine', 'Technicien informatique à HP CDG', 'célibataire', '                            B.P 1026 AZIB DERAI SAFI                        ', '', '0652870521', '', 'yasssine.laghmari@gmail.com', '                        Je souhaite faire cette licence pour améliorer mes compétences dans le domaine du réseau informatique et pour développer ma carrière professionnel pour obtenir un poste plus intéressant dans ma fonction .                    ', NULL, NULL, NULL, 'laghmari-1991', '0652870521', NULL, 'H494103', 'internet', 'pending', '32nu2anewzndO1O1'),
(87, 'WOUJHAIN', 'Kawtar', '0000-00-00', 'Rabat', 'Marocaine', 'étudiante', 'célibataire', '                                                    APP12 IMM12 Rés Yassamine Hay Salam Salé Maroc 11030', '0537860721', '0674532988', '', 'kawtarwoujhain@gmail.com', 'Durant  ma formation universitaire en sein de la faculté des sciences , j''ai acquis de nombreuses compétences scientifique en programmation C et C++, ainsi des connaissances  de base en système d''exploitation UNIX, et en structures des données , architectures des ordinateurs et programmation en assembleur.\nTrès motivée  de suivre cette formation professionnelle en sein de votre établissement. \nJe reste à votre disposition pour vous exposer mon parcours, mes motivations, lors d''un prochain entretien à votre convenance.\n', NULL, NULL, NULL, 'kawtarwoujhain', 'workspirit', NULL, 'AE79265', 'internet', 'active', 'hEOFb4eUOlCZqQ6u'),
(88, 'MADANI', 'Mohamed', '1990-02-02', 'Erfoud', 'Marocain', 'etudiant', 'cilébataire', '                            Rue 06 NR 11 AV MOHAMED 5\nJORF\nERFOUD                        ', '', '0616812144', '', 'madanijorf90@gmail.com', '                        _______                    ', NULL, NULL, NULL, 'MADANI', 'azemed12345678', NULL, 'UC132704', 'internet', 'active', 'wjBj5h47sCTBgBEz'),
(89, 'CHABINI', 'Meryem', '1992-07-25', 'SAFI', 'Marocaine', 'Etudiante', 'Célibataire', '                            N 5 Bloc 30 Quartier Saida I Safi                        ', '', '0604965559', '', 'mmchabini@gmail.com', '                         j''ai choisi ce master car j''ai eu ma licence en domaine Informatique et je veux continué ma formation du master aussi dans ce domaine et aussi ce master à des objectifs bien intéressants                    ', NULL, NULL, NULL, 'Meryem', '123456789mimi', NULL, 'HH100318', 'internet', 'active', 'Tbycdmn91WCuTMf4'),
(92, 'Lakhdar', 'Mustapha', '1968-01-12', 'Safi', 'Marocaine', 'Employe maroc telecom', 'Marie +3', '                            ville nouvelle safi                        ', '', '0661323900', '', 'mu.lakhdar@gmail.com', '                        Ayant suivi  le cycle des inspecteurs  technique a INPT Rabat  et Alec une experience de 18 annees chez Maroc telecom dans le domaine technique  me souhaite mettre a jour et doubler mes competences professionnelles par  cette  licence  Administration des Reseaux et Securite des systemes.                    ', NULL, NULL, NULL, 'Adnan', '12513211', NULL, 'H169612', 'internet', 'pending', 'uUh7k5G7HgK6CdmJ'),
(93, 'ALLAOUI', 'ABDELGHANI', '1989-07-09', 'OUARZAZATE', 'maroccain', 'ÉTUDIANT', 'CELIBATAIRE', '                            245, CIT AL KHEIR-YAC AL MANSOUR RABAT                        ', '', '06-56-05-43-50', '', 'abdelghani01allaoui@gmail.com', '                        L''AMOUR POUR LA SCIENCE ET L''INTÉRET  POUR  DES NOUVELLES INFORMATIONS SONT MES POINTS FORT PÔUR  ETRE UN ETUDIANT DANS VOTRE ETABLISSEMENT                    ', NULL, NULL, NULL, 'ALLAOUI', 'presidentobama', NULL, 'P279249', 'internet', 'active', 'iL2EmR4e2GmWO50l'),
(94, 'KOUHLANI', 'Ahmed', '1993-04-05', 'Safi', 'MARROCAIN', 'étudiant', 'célibataire', '                            17 RUE SAKOURA QU JNANE ILLANE SAFI                        ', '', '0669221872', '', 'a.kouhlani20@gmail.com', 'J''aimerai continuer mes études dans cette formation continue             ', NULL, NULL, NULL, '', '', NULL, 'HH51415', 'internet', 'active', 'ylD3WpYgN8hhizSB'),
(95, 'bou-oukour', 'hasnaa', '1993-06-23', 'safi', 'marocaine', 'etudiante', 'CÉLIBATAIRE ', '         08, RUE 56, QU ANAS, SAFI, MAROC                                           ', '0524612070', '0601564278', '', 'hasnaa.boukour@hotmail.fr', '       mon domaine                                     ', NULL, NULL, NULL, 'hasnaab', '123456789', NULL, 'HH52955', 'internet', 'pending', 'sLJDvm3QpU9w5mwE'),
(96, 'JALOUAJA', 'Asmaa', '2014-10-20', 'SAFI', 'Marocaine', 'étudiante', 'Célibataire', 'N° 19 RUE HAJ MED WAHIDI QUARTIER L’HÔPITAL SAFI', '0524621105', '0656930402', '', 'asmaa.jalouaja@hotmail.fr', ' Monsieur,\nActuellement   , je poursuis mes études  à l’Ecole National des Sciences Appliqué ‘ENSA’ Safi : licence professionnelle INGÉNIERIE ET CONCEPTION DES SYSTÈMES D''INFORMATION, je me permets de vous adresser mon dossier de candidature pour le master "Ingénierie des Systèmes distribués et Cloud Computing" que l’université de  cadi ayyad propose sous votre responsabilité.\nSouhaitant que la sincérité des raisons qui motivent mon choix de m’inscrire à votre université vous touche.je vous prie de croire, monsieur, en l’expression de ma considération.\n', NULL, NULL, NULL, 'Asmaa_JALOUAJA', 'alhamdolilah123', NULL, 'HH50202', 'Le formateur ', 'active', 'ZQu1T5UlETBaXFnH'),
(97, 'elhachimi', 'salwa', '0000-00-00', 'fkih ben salah', 'marrocaine', 'etudiante', 'celibataire', '                            N°11RUE 11 hay saada fkih ben salah                        ', '', '06-72-75-30-30', '', 'salwaelhachimi94@gmail.com', '                        ETRE INGENIEUR                    ', NULL, NULL, NULL, 'SALWA_ELHACHIMI', 'salwa123', NULL, 'IB213496', 'internet', 'active', 'XCm9RT3KDNdY6iZy'),
(98, 'BENCHAGRA', 'JAMAL', '1987-07-07', 'SAFI', 'MAROCAINE', 'Chef d equipe', 'Mari', '                                                                                                                                                         SAFI 2                                        ', '', '0635482627', '', 'jamal.benchagra1@gmail.com', '                                 La rNputation de la formation et le programme tudi me sont une motivation pour intgrer cette licence professionnelle           ', NULL, NULL, NULL, 'jamel123', '123456789', NULL, 'H571455', 'internet', 'active', 'sIIPjzkTk3JZjKdQ'),
(99, 'attaf', 'marwa', '1994-01-03', 'laayoun', 'marocaine', 'sans', 'célibataire', '    safi 2 num 220 bled el jed                                                ', '0524623905', '0645770528', '', 'marwa-attaf@outlook.fr', '\nla réputation  de votre école et la passion pour ces matières  me poussent aujourd''hui à postuler pour votre option "Ingénierie et Conception des Systèmes d''information" dont le programme et les objectifs répondent le plus précisément à mes attentes.\n              ', NULL, NULL, NULL, 'marwa', 'attafmarwa', NULL, 'HH105177', 'internet', 'active', 'bVzN8GUs9DkcjF7A'),
(100, 'filal', 'soumia', '0000-00-00', 'safi', 'marocaine', 'etudiante', 'célébataire', '                            25 rue ghafsay saniya zine el abidin Safi                        ', '', '0674659448', '', 'soumiafilal@gmail.com', '                        j’ai choisi cette formation, car elle est basée sur le même principe réseaux informatique et pour acquérir une culture informatique très large grâce à la diversité des cours qui sont proposés....                    ', NULL, NULL, NULL, 'soumiafilal', 'soumiafilal', NULL, 'HH160562', 'internet', 'active', 'NW3BYrnX7kF7kvru'),
(101, 'ELOUARDI', 'Issam', '1981-10-22', 'Safi .', 'marocain', 'Laborantin', 'Célibataire', '7 Rue Cadi El Abbadi Qu Biada \nSAFI .                       ', '', '0670226536', '', 'issam.elouardi@gmail.com', '                        Je rêve d''être tellement compétent dans mon domaine, que tout le monde vienne me demander conseil.        \nAvoir un poste de responsabilité qui me permettre d''évoluer dans mon travail.                    ', NULL, NULL, NULL, 'issam', 'houda2014', NULL, 'h427192', 'internet', 'active', 'xcgqJaTPSh2FFzkK'),
(102, 'BISNAS', 'Mustapha', '1988-08-10', 'Safi', 'marocain', 'travail ', 'Célibataire', '    24 rue moussa ben nouciar hay ouade bacha safi                                                ', '', '0652631179', '', 'mustapha_kennane@hotmail.fr', '                                            Je veux développer mes compétences et approfondir dans le filière gestion industrielle ', NULL, NULL, NULL, 'kennane', 'TAMALOUKTEcv', NULL, 'h636254', 'internet', 'active', 'te1ZO2fFfaKx8pDi'),
(103, 'BENABID', 'SANAA', '1989-05-28', 'SAFI', 'MAROCAINE', 'SANS ', 'célibataire ', '               N°23 RUE 24 QUARTIER ANAS  SAFI                                     ', '0524612761', '0674138550', '', 'sanaa.benabid@gmail.com', '                         Continuée mes etudes pour  des nouvelles perspectives                   ', NULL, NULL, NULL, 'benabid', 'benabid', NULL, 'H490731', 'internet', 'pending', 'pcpKkYspREoMfvBC');

-- --------------------------------------------------------

--
-- Structure de la table `diplomes`
--

CREATE TABLE IF NOT EXISTS `diplomes` (
  `id_diplome` int(11) NOT NULL AUTO_INCREMENT,
  `bac` varchar(20) NOT NULL,
  `annee_obtention` date NOT NULL,
  `etablissement` varchar(255) NOT NULL,
  `id_condidat` int(11) NOT NULL,
  `nom_diplome` varchar(255) NOT NULL,
  PRIMARY KEY (`id_diplome`),
  KEY `id_condidat` (`id_condidat`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=102 ;

--
-- Contenu de la table `diplomes`
--

INSERT INTO `diplomes` (`id_diplome`, `bac`, `annee_obtention`, `etablissement`, `id_condidat`, `nom_diplome`) VALUES
(3, '', '2010-06-12', 'NTIC Safi', 22, 'DEUG'),
(4, '', '2009-06-12', 'Lycée Hassan 2', 22, 'ISTA'),
(5, '', '0002-02-22', 'Fac', 22, 'Bac Sciences EX'),
(6, '', '2009-12-11', 'NTIC Safi', 23, 'salam'),
(7, '', '2008-11-11', 'Lycée Hassan 2', 23, 'Bac'),
(8, '', '2010-11-11', 'Fac', 23, 'salam'),
(20, '', '0000-00-00', 'Ecole Polytechnique de Safi', 6, 'TS en Développement Informatique'),
(21, '', '0000-00-00', 'ISTA-IE (casablanca)', 6, 'TS en Maintenance Mécanique, Electrique et Electronique Automobile'),
(22, '', '2007-07-01', 'centre d’instruction de  la marine royale marocaine ', 8, 'certificat militaire de marine'),
(23, '', '2008-07-01', 'centre d’instruction de la marine royale marocaine ', 8, 'certificat militaire de spécialité commissariat naval (sec/compt)'),
(24, '', '2009-07-01', 'centre d’instruction de la marine royale marocaine ', 8, 'le brevet élémentaire de spécialité  '),
(25, '', '2010-06-21', 'HASSANE 2', 10, 'BAC SCIENCE PHYSIQUE '),
(26, '', '2012-08-07', 'ISTA 2', 10, 'Technicien spécialisé en électromécanique des systèmes automatisé'),
(33, '', '0000-00-00', 'lycee acharif al idrissi safi', 37, 'bac'),
(34, '', '0000-00-00', 'NTIC SAFI', 37, 'technicien spécialisé'),
(35, '', '2014-06-30', 'IGA', 42, 'licence informatique'),
(36, '', '0000-00-00', 'Institut supérieur de génie appliqué', 43, 'licence informatique'),
(37, '', '0000-00-00', 'Lysée ARRAZI', 46, 'Baccalauréat'),
(38, '', '0000-00-00', 'Institut Spécialisé de Technologie Appliquée TAROUDANT.', 46, 'Technicien Spécialisé'),
(39, '', '0000-00-00', 'Faculté polydisciplinaire de LARACHE.', 46, 'Premiére année: DEUG'),
(40, '', '0000-00-00', 'IBN ZOHR', 50, 'Diplome d''etudes universitaires générales ( Licence )'),
(41, '', '2010-06-20', 'Lycée Ibn Toumert', 51, 'Baccalauréat science mathematique A'),
(42, '', '2014-01-07', 'Faculte des sciences et techniques gueliz Marrakech', 51, 'DEUST - MIPC'),
(43, '', '2014-06-28', 'Faculte des sciences et techniques gueliz Marrakech', 51, 'Licence Systèmes informatiques répartis '),
(44, '', '2014-06-27', 'EST FES ', 52, 'DUT'),
(45, '', '2014-06-27', 'ECOLE SUPERIEURE DE TECHNOLOGIE OUJDA', 54, 'DUT'),
(46, '', '2010-06-21', 'Lycée Ibn Al Khatib - Salé', 55, 'Baccalauréat'),
(47, '', '2013-06-23', 'ENS - Tétouan', 55, 'DUT'),
(48, '', '2014-06-23', 'ENS - Tétouan', 55, 'Licence professionnelle'),
(49, '', '0000-00-00', 'Hassan2', 56, 'Baccalaureat option:sciences physiques'),
(50, '', '0000-00-00', 'Institut Louis 16', 56, 'Technicien specialise en developpement informatique'),
(51, '', '2014-06-26', '', 57, 'multimédia et conception web'),
(52, '', '0000-00-00', 'ISTA TIC', 58, 'DTS  '),
(53, '', '0000-00-00', 'ENSAS', 58, 'Licence Professionnelle'),
(56, '', '2012-06-30', 'El idrissi', 61, 'Attestation de baccalauréat option science et technologie electrique'),
(57, '', '0000-00-00', 'centre BTS et CPGE', 62, 'BTS SRI'),
(58, '', '2009-08-01', 'NTIC de safi', 64, 'Technicien spécialisé en techniques de réseau informatique'),
(59, '', '2010-06-01', 'NTIC de casablanca', 64, 'CCNA'),
(60, '', '0000-00-00', 'alkhawarizmi ', 65, 'Brevet Technicien Superieur'),
(62, '', '2014-09-01', 'Ecole Marocaine des Sciences de l''ingénieur - Marrakech', 68, 'Diplôme d''Ingénieur'),
(63, '', '2011-07-01', 'Institut Spécialisé de technologie appliquée NTIC de Safi', 68, 'Technicien Spécialisé'),
(64, '', '2007-09-01', 'Ecole Irakienne de Rabat', 68, 'Baccalauréat Scientifique'),
(65, '', '0000-00-00', 'Lycée Mohamed 5 Kénitra', 72, 'Baccalauréat'),
(66, '', '0000-00-00', 'Université Ibn-Tofail Kénitra', 72, 'DEUG'),
(67, '', '0000-00-00', 'Université Ibn-Tofail Kénitra', 72, 'Licence'),
(68, '', '2014-08-05', 'OFPPT', 73, 'TSTRI'),
(69, '', '2011-07-04', 'Lycée HASSAN 2 ', 73, 'BAC-PC'),
(70, '', '0000-00-00', 'Hassane2', 74, 'Baccalauriat'),
(71, '', '0000-00-00', 'Lissane Eddine ebn lkhatib', 74, 'BTS'),
(72, '', '2011-07-03', 'HASSAN II', 75, 'Baccalauréat série Sciences physiques. '),
(73, '', '2013-07-22', 'Institut Spécialisé des Nouvelles Technologies d’Information et de Communication (ISTA-NTIC) à SAFI.', 75, 'Technicien Spécialisé en Développement Informatique'),
(74, '', '2014-09-02', 'l’école Nationale des Sciences Appliquée  « ENSA »', 75, 'Licence Professionnelle  «Ingénierie et Conception des Systèmes d’Information »'),
(75, '', '2014-07-01', 'EST SALE', 76, 'DUT'),
(77, '', '2013-07-02', 'Faculté des sciences Casa Ain Chock', 80, 'DEUG'),
(78, '', '2014-06-28', 'Faculté des sciences Casa Ain Chock', 80, 'LICENCE'),
(79, '', '2012-07-25', '', 82, 'baccalauréat science math A'),
(80, '', '2014-07-15', '', 82, 'DUT'),
(81, '', '2014-07-11', ' l’institut spécialisé des nouvelles technologies d’information et de communication', 83, 'Technicien Spécialisé En Réseaux Informatique '),
(82, '', '2012-06-01', 'ALKHAWARIZMI', 86, 'BTS'),
(83, '', '0000-00-00', 'Lycée Ibn El Khattib ', 87, 'Baccalauréat Sc Physique et Chimie'),
(84, '', '0000-00-00', 'Faculté Des Sciences Rbat - FSR', 87, 'DEUG Sciences Physiques'),
(85, '', '0000-00-00', 'AHMED CHAWKI SALE', 93, 'BAC'),
(86, '', '0000-00-00', 'FACULTÉ DES SCIENXES RABAT-AGDAL', 93, 'DEUG'),
(87, '', '0000-00-00', 'FACULTE DES SCIENCES RABAT-AGDAL', 93, 'LICENCE'),
(88, '', '2014-07-17', 'ALKHAWARIZMI Safi', 94, 'BTS Systéme et Reseaux Informatique'),
(89, '', '2012-07-15', 'LYCEE ACHARIF AL IDRISSI', 95, 'baccalauréat'),
(90, '', '0000-00-00', 'Istitut Speacialise de technologie Appliquee NTIC SAFI', 95, 'Techniciens spécialises en réseaux informatiques'),
(91, '', '2013-09-01', 'ESTA TIC', 96, 'Technicien Spécialisé en Développement Informatique'),
(92, '', '0000-00-00', 'ECOLE SUPERIEURE DE TECHNOLOGIE', 97, 'DUT'),
(93, '', '2010-07-15', 'EST SAFI', 98, 'DUT en maintenance industrielle'),
(94, '', '2014-07-25', 'ista ntic safi', 99, 'développement informatique'),
(95, '', '2007-06-29', 'Université Cadi Ayyad Faculté Poly-Disciplinaire Safi .', 101, 'Licence en sciences des mathématiques et informatiques.'),
(96, '', '2007-01-24', 'Université Cadi Ayyad Faculté Poly-Disciplinaire Safi.', 101, 'DEUG en sciences des mathématiques et informatiques.'),
(97, '', '2003-06-23', 'Lycée Ibn Khaldoune .', 101, 'Baccalauréat en Sciences Expérimentales .'),
(98, '', '2009-07-01', 'I.S.T.A.2 de safi', 102, 'TS en Électromécanique des Systèmes Automatises '),
(99, '', '2007-06-22', 'ibne khaldoune de safi', 102, 'bac'),
(100, '', '2009-07-25', 'ISTA NTIC', 103, 'DEVELOPPEMENT  INFORMATIQUE'),
(101, '', '2011-07-25', 'FST SETTAT ', 103, 'METHODE  INFORMATIQUE APPLIQUEE A LA GESTION DES ENTREPRISES ');

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

CREATE TABLE IF NOT EXISTS `experiences` (
  `id_experience` int(255) NOT NULL AUTO_INCREMENT,
  `fonction` varchar(255) NOT NULL,
  `duree` varchar(255) NOT NULL,
  `responsabilite` varchar(255) NOT NULL,
  `id_condidat` int(255) NOT NULL,
  `organisme` varchar(255) NOT NULL,
  PRIMARY KEY (`id_experience`),
  KEY `Index_1` (`id_condidat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Contenu de la table `experiences`
--


-- --------------------------------------------------------

--
-- Structure de la table `formations`
--

CREATE TABLE IF NOT EXISTS `formations` (
  `formation_id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(100) NOT NULL,
  `categorie` varchar(10) NOT NULL,
  `description` text NOT NULL,
  `objectifs` text NOT NULL,
  `debauche` text NOT NULL,
  `prog_descrip` text NOT NULL,
  `module1` varchar(100) NOT NULL,
  `module1_mat` text NOT NULL,
  `module2` varchar(100) NOT NULL,
  `module2_mat` text NOT NULL,
  `module3` varchar(100) NOT NULL,
  `module3_mat` text NOT NULL,
  `module4` varchar(100) NOT NULL,
  `module4_mat` text NOT NULL,
  `module5` varchar(100) NOT NULL,
  `module5_mat` text NOT NULL,
  `module6` varchar(100) NOT NULL,
  `module6_mat` text NOT NULL,
  `module7` varchar(100) NOT NULL,
  `module7_mat` text NOT NULL,
  `module8` varchar(100) NOT NULL,
  `module8_mat` text NOT NULL,
  `frais_dossier` int(11) NOT NULL,
  `cout_formation` int(11) NOT NULL,
  `debut` varchar(50) NOT NULL,
  `fin` varchar(50) NOT NULL,
  `duree` int(11) NOT NULL,
  `selection` varchar(100) NOT NULL,
  `evaluation` varchar(500) NOT NULL,
  `diplome` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `commentaire` varchar(200) NOT NULL,
  `admission` text NOT NULL,
  PRIMARY KEY (`formation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `formations`
--

INSERT INTO `formations` (`formation_id`, `titre`, `categorie`, `description`, `objectifs`, `debauche`, `prog_descrip`, `module1`, `module1_mat`, `module2`, `module2_mat`, `module3`, `module3_mat`, `module4`, `module4_mat`, `module5`, `module5_mat`, `module6`, `module6_mat`, `module7`, `module7_mat`, `module8`, `module8_mat`, `frais_dossier`, `cout_formation`, `debut`, `fin`, `duree`, `selection`, `evaluation`, `diplome`, `image`, `commentaire`, `admission`) VALUES
(4, 'Ingénierie et Conception des Systèmes d’information', 'lpu', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style="text-align: justify;"><span style="color: #333399;">Avec le d&eacute;veloppement fulgurant de l&rsquo;informatique et de l&rsquo;internet dans les entreprises, cette formation continue dans ce secteur est devenue essentielle &agrave; la r&eacute;ussite &eacute;conomique des organisations.</span></p>\r\n<address style="text-align: center;"><span style="font-family: verdana, geneva;"><strong><span style="color: #333399;">Responsable de la formation</span></strong></span></address><address style="text-align: center;"><span style="color: #333399; font-family: verdana, geneva;">Pr. Walid BOUARIFI</span></address><address style="text-align: center;"><span style="color: #333399; font-family: verdana, geneva;">GSM: 0662138933</span></address>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style="text-align: justify;">Les m&eacute;tiers de l&rsquo;informatique et des nouvelles technologies sont en constante &eacute;volution, la multiplication des solutions orient&eacute;es Syst&egrave;mes d&rsquo;Information a entra&icirc;n&eacute; de nouveaux besoins en profils sachant programmer ce genre d&rsquo;outils. Plus g&eacute;n&eacute;ralement, les nouveaux langages informatiques exigent une remise &agrave; jour constante des connaissances mais aussi des pratiques, La formation continue est donc primordiale pour d&eacute;velopper les comp&eacute;tences. L&rsquo;objectif de cette licence professionnelle est:</p>\r\n<ul>\r\n<li style="text-align: justify;">Former des Professionnels &agrave; la ma&icirc;trise des processus d&rsquo;analyse, de conception et de la r&eacute;alisation des syst&egrave;mes d&rsquo;information des entreprises ou des administrations.</li>\r\n<li style="text-align: justify;">Apprendre &agrave; d&eacute;velopper de nouveaux produits (logiciels, r&eacute;seaux, progiciels) pour permettre un d&eacute;veloppement de la comp&eacute;titivit&eacute; des entreprises.</li>\r\n<li style="text-align: justify;">Acquisition des comp&eacute;tences techniques couvrant l&rsquo;ensemble du domaine de la conception, du d&eacute;veloppement et de la s&eacute;curit&eacute; d''applications web et des outils de programmation qui &eacute;voluent r&eacute;guli&egrave;rement.</li>\r\n</ul>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<ul>\r\n<li style="text-align: justify;">Responsable informatique.</li>\r\n<li style="text-align: justify;">Administrateur de site web.</li>\r\n<li style="text-align: justify;">D&eacute;veloppeurs de site web.</li>\r\n<li style="text-align: justify;">Assistant ing&eacute;nieur en s&eacute;curit&eacute; informatique.</li>\r\n<li style="text-align: justify;">D&eacute;veloppeur autour des Pro logiciels.</li>\r\n</ul>\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style="text-align: justify;">Cette licence professionnelle recouvre les principaux besoins en syst&egrave;me d&rsquo;information et se concentre notamment autour de l&rsquo;apprentissage des langages et des outils de programmation qui &eacute;voluent r&eacute;guli&egrave;rement.</p>\r\n</body>\r\n</html>', 'Développement des Technologies Web pour la diffusion de l’information ', '<pre>- Outils Web1 (HTML5 , CSS3 Javascript,…).\r\n- Technologie Web Dynamique (PHP/MySQL).\r\n- Le CMS Wordpress et le framework Bootstrap.\r\n- Introduction au Frameworks</pre>', 'Conception des Systèmes d’information et bases de données', '<pre>- Conception des bases de données.\r\n- Diagramme de classe UML.\r\n- Bases de données relationnelles.</pre>', 'Sécurité des systèmesd’information', '<pre>- Cryptographie.\r\n- Sécurité des systèmes d’information.</pre>', 'Conception Orientée Objet et IHM ', '<pre>- Base de l’algorithmique.\r\n- Conception Orienté Objet avec UML.\r\n- Programmation Graphique SWING.\r\n- Programmation Web en JAVA.</pre>', 'Communication et Management ', '<pre>- Anglais.\r\n- Communication et efficacité personnelle.\r\n- Introduction au management de projet.</pre>', 'Technologie .NET pour le Web', '<pre>- Le langage  C#.\r\n- IHM avec C#.\r\n- Bases de données avec ADO.NET.\r\n- Programmation ASP.NET.</pre>', 'Projet de Fin d’Etudes', '<pre>- Génie logiciel.\r\n- Conduite de projet informatique.\r\n- Administration réseau avancée sous Linux;\r\n- Programmation pour plateformes mobiles.</pre>', 'Stage en entreprise', '<pre>- Stage d‘entreprise.</pre>', 300, 20000, 'Octobre 2014', 'Octobre 2015', 12, 'Étude de dossier + Entretien', 'Travaux individuels et/ou collectifs, examens, soutenance orale d’un mémoire portant sur un stage professionnel.', 'Licence Professionnelle d’Université.', 'assets/img/SlideForm/slider4.jpg', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n\r\n</body>\r\n</html>', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<ul>\r\n<li style="text-align: justify;">Dipl&ocirc;m&eacute;s de niveau BAC+2 dans une sp&eacute;cialit&eacute; informatique ou &eacute;quivalente;</li>\r\n<li style="text-align: justify;">Les admissibles au CNC des CPGE pour les fili&egrave;res MP et PSI;</li>\r\n<li style="text-align: justify;">Titulaires d&rsquo;un niveau Bac+1, justifiant d&rsquo;au moins de 2 ans d&rsquo;exp&eacute;rience professionnelle dans le domaine informatique.</li>\r\n</ul>\r\n</body>\r\n</html>'),
(5, 'Ingénierie des Systèmes Distribués et Cloud Computing', 'mu', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p style="text-align: justify;"><strong>Qu&rsquo;en est-il des autres salari&eacute;s</strong>, pas forc&eacute;ment experts ? Pour eux aussi, il est devenu indispensable de ma&icirc;triser un certain nombre de logiciels informatiques dans l&rsquo;exercice courant de leurs fonctions.&nbsp;</p>\n<address style="text-align: center;"><strong>Responsable de la formation</strong></address><address style="text-align: center;">Pr. Mustapha HEDABOU</address><address style="text-align: center;">E-Mail:mhedabou@gmail.com</address><address style="text-align: center;">GSM:0661289603</address><address style="text-align: justify; padding-left: 150px;">&nbsp;</address>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p style="text-align: justify;">Le master "<span style="color: #333399;"><strong>Ing&eacute;nierie des Syst&egrave;mes distribu&eacute;s et Cloud Computing</strong></span>" propose une formation qui couvre tous les aspects li&eacute;s &agrave; la conception, la r&eacute;alisation, la s&eacute;curisation, le test et l&rsquo;int&eacute;gration du Cloud Computing. Le futur laur&eacute;at poss&eacute;dera une culture approfondie sur tous les &eacute;l&eacute;ments concernant le &ldquo;Cloud Computing&rdquo;, il sera donc en mesure de:</p>\n<ul style="text-align: justify;">\n<li>Conna&icirc;tre les enjeux du Cloud pour l&rsquo;entreprise,</li>\n<li>Ma&icirc;triser les outils techniques n&eacute;cessaires pour le d&eacute;veloppement du cloud,</li>\n<li>D&eacute;finir une strat&eacute;gie de d&eacute;ploiement Cloud,</li>\n<li>Conseiller l&rsquo;entreprise sur les probl&egrave;mes de s&eacute;curit&eacute;s du Cloud.</li>\n</ul>\n<p style="text-align: justify;">Ce Master a pour objectif de former des sp&eacute;cialistes, imm&eacute;diatement op&eacute;rationnels, dans les m&eacute;tiers de l&rsquo;informatique distribu&eacute;es et du Cloud Computing, domaine assez complexe qui conna&icirc;t une p&eacute;nurie d&rsquo;intervenants qualifi&eacute;s.</p>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p style="text-align: justify;">Les laur&eacute;ats du master " Ing&eacute;nierie des syst&egrave;mes distribu&eacute;s et Cloud Computing " pourront exercer des emplois et m&eacute;tiers de responsable dans les domaines suivants :</p>\n<ul>\n<li style="text-align: justify;">Architecture du cloud computing.</li>\n<li style="text-align: justify;">D&eacute;veloppement et Administration des SI.</li>\n<li style="text-align: justify;">Consulting.</li>\n<li style="text-align: justify;">Audit et s&eacute;curit&eacute; des SI.</li>\n<li style="text-align: justify;">Ing&eacute;nierie des Date center.</li>\n<li style="text-align: justify;">Formation.</li>\n</ul>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', 'JEE et Services Web ', '<pre>- SOAP, WSDL, UDDI,RMI\n- Socket, CORBA</pre>', 'Frameworks et Systèmes de Gestion de Contenu (CMS) pour le développement Web', '<pre>- PHP 5\n- WordPress\n- Zend, CakePHP et Symphony, CodeIgniter</pre>', 'Cloud Computing et virtualisation', '<pre></pre>', 'Système d''information décisionnel ', '<pre>- Datawarehouse\n- Dataminning\n- Business Intelligence</pre>', 'Audit et sécurité du Cloud Computing ', '<pre></pre>', 'Management et Gouvernance des Systèmes d’Information ', '<pre>- ITIL\n- COBIT\n- Gestion de Projets Informatiques</pre>', 'ERP et tendances informatiques', '<pre>- E-business\n- Intelligence Artificielle</pre>', 'Ingénierie des Applications Mobiles', '<pre>- Programmation mobile\n- Framework : Phonegape, Worklight ...</pre>', 500, 40000, 'Octobre 2014', 'Décembre 2015', 14, 'Étude de dossier + Entretien', 'Travaux individuels et/ou collectifs, examens, soutenance orale d’un mémoire portant sur un stage professionnel.', 'Master d’Université', 'assets/img/SlideForm/slider5.jpg', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<ul>\n<li style="text-align: justify;">Candidats titulaires d''un dipl&ocirc;me de niveau Bac+4 ou plus (Universit&eacute;s, &eacute;coles d''ing&eacute;nieurs,..);</li>\n<li style="text-align: justify;">Candidats titulaires d&rsquo;un Bac +3 justifiant d&rsquo;au moins deux ann&eacute;es d&rsquo;exp&eacute;rience.</li>\n</ul>\n</body>\n</html>'),
(6, 'Administration des Réseaux et Sécurité des Systèmes', 'lpu', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p style="text-align: justify;">L&rsquo;objectif de cette licence d&rsquo;une ann&eacute;e &agrave; finalit&eacute; professionnelle, est de former des &eacute;tudiants titulaires d''un bac+2&nbsp; &agrave; la maitrise de la conception , de la mise&nbsp; en place, de la configuration&nbsp; et de la maintenance des r&eacute;seaux d''entreprises en r&eacute;ponse &agrave; des sp&eacute;cifications fonctionnelles provenant des demandes des utilisateurs. A l&rsquo;issu de la formation, les &eacute;tudiants seront aussi en mesure d&rsquo;administrer des r&eacute;seaux et mettre en &oelig;uvre des solutions s&eacute;curit&eacute; (incluant les r&eacute;seaux sans fil).</p>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<ul>\n<li style="text-align: justify;">Former des sp&eacute;cialistes capables de participer &agrave; la conception, la mise en place, l''administration, la s&eacute;curit&eacute; et la maintenance d''une &nbsp;infrastructure r&eacute;seau pour l&rsquo;utilisation des syst&egrave;mes &nbsp;Linux et Windows Server&nbsp;;</li>\n<li style="text-align: justify;">Utilisation des &eacute;quipements r&eacute;seaux cisco et autres pour &nbsp;mettre en place les diff&eacute;rentes architectures r&eacute;seaux&nbsp;;</li>\n<li style="text-align: justify;">Former des personnes "de terrain" capables d&rsquo;int&eacute;grer imm&eacute;diatement le monde de l&rsquo;entreprise, et pouvant s&rsquo;adapter rapidement &agrave; l&rsquo;&eacute;volution des technologies des domaines concern&eacute;s.</li>\n<li style="text-align: justify;">Faciliter l&rsquo;insertion dans le monde professionnelle par l&rsquo;organisation des s&eacute;minaires dispens&eacute;s par des industriels&nbsp; et de stages au sein d&rsquo;entreprise&nbsp;;</li>\n<li style="text-align: justify;">Int&eacute;grer un Master en relation avec les syst&egrave;mes d&rsquo;information ou les r&eacute;seaux d&rsquo;entreprise en d&eacute;veloppant leurs comp&eacute;tences dans les domaines du d&eacute;veloppement Web, bases de donn&eacute;es et s&eacute;curit&eacute; des r&eacute;seaux informatiques.</li>\n</ul>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p style="text-align: justify;">Compte tenu des comp&eacute;tences acquises, en particulier son bagage p&eacute;dagogique et pratique important acquis durant sa formation en recouvrant les principaux besoins en r&eacute;seaux et &nbsp;syst&egrave;me d''information de l''entreprise, les &eacute;tudiants pourront potentiellement trouver des d&eacute;bouch&eacute;s professionnels dans les secteurs suivants&nbsp;:</p>\n<ul style="text-align: justify;">\n<li>Administrateur Syst&egrave;mes et R&eacute;seaux</li>\n<li>responsable micro-informatique</li>\n<li>gestionnaire de syst&egrave;me informatique et r&eacute;seau</li>\n<li>cadre technico-commercial</li>\n<li>charg&eacute; d''affaires</li>\n<li>Assistant chef de projet&nbsp;;</li>\n<li>Formateur en r&eacute;seaux informatiques ;</li>\n<li>Promoteur en informatique.</li>\n</ul>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', 'Conception et planification des réseaux', '<pre>- Réseaux et protocoles\n- Protocoles et concept de routage\n- Commutation de réseaux local et sans fil\n</pre>', 'Programmation  système et réseaux en Java ', '<pre>- Programmation orientée objet en Java\n - Programmation systèmes et  réseaux\n</pre>', 'Développement  web et bases de données', '<pre>- Bases de données\n- Technologie Web Dynamique (PHP/MySQL)\n</pre>', 'Communication, coaching et gestion d’entreprise', '<pre>- Anglais\n- Techniques d''Expression et Communications\n - Gestion d’entreprise\n</pre>', 'Sécurité des réseaux et des bases de données ', '<pre>- Cryptographie\n- Sécurité des Bases de données\n- Sécurité des réseaux \n</pre>', 'Administration des réseaux sous Linux et Windows ', '<pre>- Administration sous Linux\n- Administration sous Windows\n</pre>', 'Configuration des réseaux avancés et des réseaux sans fils', '<pre>- Réseaux et technologies WAN\n- Réseaux sans fil\n- IPV6\n</pre>', 'Stage en entreprise', '<pre>PFE en Entreprise</pre>', 300, 20000, 'Octobre 2014', 'Octobre 2015', 12, 'Étude de dossier + Entretien', 'Travaux individuels et/ou collectifs, examens...', 'Licence Professionnelle d’Université', 'assets/img/SlideForm/slider6.jpg', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<ul>\n<li style="text-align: justify;">&nbsp;Titulaire d&rsquo;un DEUG Scientifique ou d&rsquo;un dipl&ocirc;me &eacute;quivalent&nbsp;;</li>\n<li style="text-align: justify;">&nbsp;Les admissibles au CNC des CPGE pour les fili&egrave;res MP, PSI et PCI&nbsp;;</li>\n<li style="text-align: justify;">&nbsp;Bac +2 Publique ou Priv&eacute; (ISTA, BTS, DUT, ...)&nbsp;;</li>\n<li style="text-align: justify;">&nbsp;Titulaires d&rsquo;un niveau Bac + 1, justifiant d&rsquo;au moins de 2 ans d&rsquo;exp&eacute;rience professionnelle&nbsp;;</li>\n</ul>\n</body>\n</html>'),
(7, 'Systèmes d’information et Gestion industrielle', 'lpu', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p style="text-align: justify;"><span class="A3">Cette licence professionnelle a pour objectif de proposer aux dipl&ocirc;m&eacute;s une formation&nbsp; pluridisciplinaire en d&eacute;veloppant nombreux comp&eacute;tences intellectuels et techniques en informatique et en g&eacute;nie industrielle, afin de r&eacute;pondre aux exigences industrielles qui &eacute;voluent sensiblement devant le ph&eacute;nom&egrave;ne de la mondialisation.&nbsp;</span>Pour plus d''information contacter : &nbsp;</p>\n<address style="text-align: center;"><strong><span style="color: #333399;">Responsable de la formation</span></strong></address><address style="text-align: center;"><span style="color: #333399;">Pr. Walid BOUARIFI</span></address><address style="text-align: center;"><span style="color: #333399;">Email &nbsp;:w.bouarifi@uca.ma&nbsp;</span></address><address style="text-align: center;"><span style="color: #333399;">GSM: 0662138933</span></address>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<ul>\n<li style="text-align: justify;">Ma&icirc;trise des comp&eacute;tences techniques transversales n&eacute;cessaires pour la conduite de projets industriels&nbsp;;</li>\n<li style="text-align: justify;">G&eacute;rer les contraintes manag&eacute;riales et relationnelles que rencontre le responsable d&rsquo;un outil de production.</li>\n<li style="text-align: justify;">Capacit&eacute; &agrave;&nbsp;manager un projet&nbsp;"maintenance / s&eacute;curit&eacute; / environnement / qualit&eacute;" en totale autonomie&nbsp;;</li>\n<li style="text-align: justify;">D&eacute;velopper des solutions informatiques pour avoir une vision globale des projets&nbsp;;</li>\n<li style="text-align: justify;">Int&eacute;grer un Master en relation avec les syst&egrave;mes d&rsquo;information ou la gestion industrielle.</li>\n</ul>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<ul>\n<li style="text-align: justify;">Responsable informatique de PME</li>\n<li style="text-align: justify;">Responsable de production</li>\n<li style="text-align: justify;">Conduite de projet industriel</li>\n<li style="text-align: justify;">Gestion et exploitation des syst&egrave;mes d''informations</li>\n<li style="text-align: justify;">Responsable d''&eacute;quipe</li>\n<li style="text-align: justify;">Assistant ing&eacute;nieur dans tous les secteurs relevant de la fili&egrave;re g&eacute;nie industrielle</li>\n<li style="text-align: justify;">Cadre dans la distribution commerciale</li>\n<li style="text-align: justify;">Contr&ocirc;le de gestion, approvisionnement, achat, gestion de stocks,&hellip;</li>\n<li style="text-align: justify;">Poursuite des enseignements en Master Informatique ou de gestion industrielle.</li>\n</ul>\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', 'Systèmes d’information et Administration des Bases de données', '<pre>- Système d’information\n- Initiation aux bases de données</pre>', 'Installations Electriques et Contrôle-commande des Procédés Industriels', '<pre>- Installations Electriques Industrielles\n- Commande des Machines\n- Automatismes Industriels\n- Régulation industrielle</pre>', 'Culture scientifique et technologique ', '<pre>- Bases de l’algorithmique et Programmation C++\n-  Conduite de projet informatique et Industriel\n- Dessin Industriel</pre>', 'Gestion de la production et de la qualité', '<pre>- Gestion de production\n- Gestion de la qualité\n- Lean manufacturing</pre>', 'Programmation Orientée Objet et développement pour le Web', '<pre>- Programmation  orientée objet Java, \n-  HTML, Javascript, CSS\n- Technologie Web Dynamique (PHP/MySQL)\n- Programmation mobile\n</pre>', 'Gestion de Maintenance et sécurité industrielle', '<pre>- Gestion de la maintenance\n- Sécurité Industrielle et ergonomie, </pre>', 'Communication, Coaching et Gestion d’entreprise', '<pre>- Techniques d’Expression et Communication\n- Anglais technique\n- Gestion d''entreprise\n</pre>', 'Stage en entreprise', '<pre>- Stage en entreprise</pre>', 300, 20000, 'Octobre 2014', 'Octobre 2015', 12, 'Étude de dossier + Entretien', 'Travaux individuels et/ou collectifs, examens...', 'Licence Professionnelle d’Université', 'assets/img/SlideForm/slider7.jpg', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n\n</body>\n</html>', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<ul>\n<li style="text-align: justify;">Titulaire d&rsquo;un DEUG informatique, Scientifique ou d&rsquo;un dipl&ocirc;me &eacute;quivalent</li>\n<li style="text-align: justify;">Les admissibles au CNC des CPGE pour les fili&egrave;res MP et PSI</li>\n<li style="text-align: justify;">Bac +2 Publique ou Priv&eacute;e (ISTA, BTS, DUT, ...)</li>\n<li style="text-align: justify;">Titulaires d&rsquo;un niveau Bac + 1, justifiant d&rsquo;au moins de 2 ans d&rsquo;exp&eacute;rience professionnelle dans le domaine informatique ou de la G&eacute;nie Industrielle.</li>\n</ul>\n</body>\n</html>');

-- --------------------------------------------------------

--
-- Structure de la table `inscrits_formations`
--

CREATE TABLE IF NOT EXISTS `inscrits_formations` (
  `id_inscrit_formation` int(11) NOT NULL AUTO_INCREMENT,
  `id_condidat` int(255) NOT NULL,
  `formation_id` int(255) NOT NULL,
  UNIQUE KEY `unique_id_inscrit_formation` (`id_inscrit_formation`),
  KEY `index_id_inscrit_formation` (`id_inscrit_formation`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=104 ;

--
-- Contenu de la table `inscrits_formations`
--

INSERT INTO `inscrits_formations` (`id_inscrit_formation`, `id_condidat`, `formation_id`) VALUES
(6, 6, 4),
(7, 7, 4),
(8, 8, 5),
(9, 9, 4),
(10, 10, 7),
(37, 37, 4),
(38, 38, 4),
(40, 40, 4),
(41, 41, 4),
(42, 42, 4),
(43, 43, 6),
(44, 44, 4),
(45, 45, 4),
(46, 46, 4),
(49, 49, 4),
(50, 50, 6),
(51, 51, 4),
(52, 52, 7),
(53, 53, 4),
(54, 54, 4),
(55, 55, 4),
(56, 56, 4),
(57, 57, 4),
(58, 58, 5),
(60, 60, 4),
(61, 61, 4),
(62, 62, 4),
(63, 63, 4),
(64, 64, 4),
(65, 65, 6),
(67, 67, 4),
(68, 68, 5),
(69, 69, 4),
(70, 70, 4),
(72, 72, 4),
(73, 73, 6),
(74, 74, 4),
(75, 75, 5),
(76, 76, 7),
(77, 77, 4),
(79, 79, 4),
(80, 80, 4),
(81, 81, 4),
(82, 82, 4),
(83, 83, 4),
(84, 84, 4),
(85, 85, 4),
(86, 86, 4),
(87, 87, 6),
(88, 88, 4),
(89, 89, 5),
(92, 92, 4),
(93, 93, 6),
(94, 94, 6),
(95, 95, 6),
(96, 96, 4),
(97, 97, 6),
(98, 98, 7),
(99, 99, 4),
(100, 100, 4),
(101, 101, 4),
(102, 102, 7),
(103, 103, 5);

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id_message` int(255) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `sujet` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id_message`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=103 ;

--
-- Contenu de la table `messages`
--

INSERT INTO `messages` (`id_message`, `date`, `sujet`, `message`, `nom`, `email`) VALUES
(1, '2014-05-23', '0', '0', '0', 'zbd@mmm.com'),
(2, '2014-05-23', '0', '0', '0', 'zbd@mmm.com'),
(3, '2014-06-01', '0', '0', '0', 'abdou@abl.com'),
(4, '2014-06-01', '0', '0', '0', 'abdou@abl.com'),
(5, '2014-06-01', '0', '0', '0', 'abdou@abl.com'),
(6, '2014-06-01', '0', '0', '0', 'abdou@abl.com'),
(7, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(8, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(9, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(10, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(11, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(12, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(13, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(14, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(15, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(16, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(17, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(18, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(19, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(20, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(21, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(22, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(23, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(24, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(25, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(26, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(27, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(28, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(29, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(30, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(31, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(32, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(33, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(34, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(35, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(36, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(37, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(38, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(39, '2014-06-02', '0', '0', '0', 'walid.bouarifi@gmail.com'),
(40, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(41, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(42, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(43, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(44, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(45, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(46, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(47, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(48, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(49, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(50, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(51, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(52, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(53, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(54, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(55, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(56, '2014-06-02', '0', '0', '0', 'abel.ainou@gmail.com'),
(57, '2014-06-02', 'un sujet', 'Un mess', 'nom', 'abel.ainou@gmail.com'),
(58, '2014-06-02', 'un sujet', 'Un mess', 'nom', 'abel.ainou@gmail.com'),
(59, '2014-06-02', 'un sujet', 'Un mess', 'nom', 'abel.ainou@gmail.com'),
(60, '2014-06-02', 'un sujet', 'Un mess', 'nom', 'abel.ainou@gmail.com'),
(61, '2014-06-02', 'un sujet', 'Un mess', 'nom', 'abel.ainou@gmail.com'),
(62, '2014-06-02', 'Je teste ', 'c''est un petit test de contact sur fcensas.com', 'Abdelghani AINOUSS', 'abel.ainou@gmail.com'),
(63, '2014-06-02', 'salut', 'salam', 'bouarifi', 'w.bouarifi@uca.ma'),
(64, '2014-06-02', 'Je teste ', 'c''est un petit test de contact sur fcensas.com', 'Abdelghani AINOUSS', 'abel.ainou@gmail.com'),
(65, '2014-06-02', 'Je teste ', 'c''est un petit test de contact sur fcensas.com', 'Abdelghani AINOUSS', 'abel.ainou@gmail.com'),
(66, '2014-06-03', 'Demande d''information', 'Est ce que les inscriptions sont ouvertes?', 'BOUARIFI', 'walid.bouarifi@gmail.com'),
(67, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(68, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(69, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(70, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(71, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(72, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(73, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(74, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(75, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(76, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(77, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(78, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(79, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(80, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(81, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(82, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(83, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(84, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(85, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(86, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(87, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(88, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(89, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(90, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(91, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(92, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(93, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(94, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(95, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(96, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(97, '2014-06-05', 'demande de renseignement ', 'salut c''est moi reda ghoujdani jeune marocain âgé  de 28 ans titulaire d''un bac science x mention assez bien plus diplôme secrétaire comptable délivré par le centre d''instruction de la marine royale marocaine plus 2 ans d’expérience  dans le domaine  de l', 'ghoujdani', 'blackout08@live.fr'),
(98, '2014-06-09', 'demande d''information', ' s''il vous plais concernant les pièces à fournir pour postuler au master vous demander une attestation d’expérience professionnelle.\net lors que j''ai contacter l''organisme employeur qui est l’État major générale de la marine royale m''on répondu qu''ils ne ', 'ghoujdani', 'blackout08@live.fr'),
(99, '2014-06-09', 'demande d''information', ' s''il vous plais concernant les pièces à fournir pour postuler au master vous demander une attestation d’expérience professionnelle.\net lors que j''ai contacter l''organisme employeur qui est l’État major générale de la marine royale m''on répondu qu''ils ne ', 'ghoujdani', 'blackout08@live.fr'),
(100, '2014-06-09', 'demande d''information', ' s''il vous plais concernant les pièces à fournir pour postuler au master vous demander une attestation d’expérience professionnelle.\net lors que j''ai contacter l''organisme employeur qui est l’État major générale de la marine royale m''on répondu qu''ils ne ', 'ghoujdani', 'blackout08@live.fr'),
(101, '2014-06-26', 'fin d''inscription', 'bonjour monsieur madame\nje veux savoir la date de fin inscription a la formation continue\nmerci', 'ayoub belkas', 'ayoub.belkas@gmail.com'),
(102, '2014-06-28', 'salan', 'test', 'walid bouarifi', 'w.bouarifi@uca.ma');

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `auteur` varchar(30) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `contenu` text NOT NULL,
  `date_ajout` date NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `news`
--

INSERT INTO `news` (`id`, `auteur`, `titre`, `contenu`, `date_ajout`, `image`) VALUES
(18, 'ENSA Safi', 'L''ENSA Safi remporte le grand prix d''innovation dans les technologies de l''information 2014', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p style="text-align: justify;">L''ENSA Safi &agrave; l''image de ces &eacute;tudiants du d&eacute;partement G&eacute;nie Informatique, R&eacute;seaux et T&eacute;lecommunications est class&eacute;e premi&egrave;re dans le concours d''innovation dans les technologies de l''information 2014 organis&eacute; &agrave; l''ENSA de tanger et devance les 13 grandes &eacute;coles d''ing&eacute;nieurs en comp&eacute;tition : INSEA, ENSIAS, EHTP, ENIM ...<br />Le projet vainqueur est l''application d''ing&eacute;nierie "Tanweer" qui vise les &eacute;tudiants atteints d''une d&eacute;ficience visuelle, leurs facilitant ainsi l''acc&egrave;s &agrave; un contenu p&eacute;dagogique complet et &agrave; un enseignement efficace, l''application est&nbsp;con&ccedil;ue de telle fa&ccedil;on qu''elle soit en faveur du d&eacute;velo<span class="text_exposed_show">ppement des connaissances de ces &eacute;l&egrave;ves, et de leur capacit&eacute; &agrave; communiquer.</span></p>\n<p style="text-align: justify;"><span class="text_exposed_show">Bravo! tout en souhaitant d''autres succ&egrave;s pour notre ECOLE.</span></p>\n</body>\n</html>', '2014-06-02', 'assets/img/10350992_10202782548099654_3906439152886550488_n1.jpg'),
(19, '', 'Dates à retenir!', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p style="text-align: center;"><span style="color: #ff0000;"><strong>Dates importantes &agrave; retenir pour toutes les formations</strong></span></p>\n<p style="text-align: justify;"><br /><strong>D&eacute;but des pr&eacute;-inscriptions :</strong> 01-06-2014<br /><strong>Dernier d&eacute;lais des d&eacute;p&ocirc;ts de dossier :</strong> Vendredi 19-09-2014<br /><strong>D&eacute;but des entretiens :</strong> Lundi 22-09-2014<br /><strong>Affichage des r&eacute;sultats :</strong> Lundi 29-09-2014<br /><strong>D&eacute;but des cours :</strong> Samedi 11-10-2014</p>\n</body>\n</html>', '2014-06-03', 'assets/img/cont_logo_epy.jpg'),
(8, 'Omar', 'MoroccoJUG & Java 8 local tour a Safi', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<ul class="dividedList">\r\n<li id="event-desc" class="hover-to-edit-noposchange event-desc J_noBorderBottom">\r\n<div id="event-description-wrap" class="line redactor-description">\r\n<p style="text-align: justify;">Java 8 a &eacute;t&eacute; lib&eacute;r&eacute; le 18 Mars.&nbsp;Il contient des changements majeurs dans la plate-forme (introduction des expressions lambda, nouvelle API pour les streams, le moteur&nbsp;Javascript Nashorn, nouvelle API pour la gestions du temps et des dates, des annotations sur les types Java, profilage ...).&nbsp;</p>\r\n<p style="text-align: justify;">En &eacute;tant&nbsp;acteur majeur et important sur la vulgarisation des nouvelles technologies autour de Java au Maroc et &agrave; l&rsquo;international, le MoroccoJUG organise une tourn&eacute; sur Java 8 dans diff&eacute;rentes villes du Maroc&nbsp;afin d''en faire profiter un grand nombre de participants qui ne pourront pas se d&eacute;placer &agrave; Casablanca pour assister &agrave; nos r&eacute;unions mensuelles.</p>\r\n<p style="text-align: justify;">Durant cette tourn&eacute;e ,&nbsp;Badr&nbsp;El&nbsp;houari&nbsp;- Senior technologiste chez Safran Morpho, leader de&nbsp;MoroccoJUG&nbsp;et membre du&nbsp;comit&eacute; ex&eacute;cutif de la&nbsp;JCP&nbsp;(Java Community Process)&nbsp;-&nbsp;couvrira tous les changements importants de la standard &eacute;dition de Java et vous montrera aussi comment Java continue d''&eacute;voluer &agrave; travers le&nbsp;JCP&nbsp;/&nbsp;OpenJDK</p>\r\n<p style="text-align: justify;">Inscrivez-vous&nbsp;sur notre arr&ecirc;t &agrave; Safi pour profiter de la derni&egrave;re et la&nbsp;meilleure version de la plate-forme Java&nbsp;et aussi pour d&eacute;couvrir les activit&eacute;s et les initiatives "Open Source" de MoroccoJUG.</p>\r\n<p style="text-align: justify;">Voir le lien ci-apr&egrave;s pour s''inscrire et suivre l''&eacute;venement:</p>\r\n<p style="text-align: justify;"><a href="http://www.meetup.com/MoroccoJUG/events/182608612/">S''inscrire</a></p>\r\n</div>\r\n</li>\r\n</ul>\r\n</body>\r\n</html>', '2014-05-21', 'assets/img/MJ.png'),
(9, 'Omar', 'Formation continue : Pré-inscriptions ouvertes pour l''année 2014-2015', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style="text-align: justify;"><span class="userContent"><span style="font-size: 10pt;">Les inscriptions sont ouvertes pour l''ann&eacute;e universitaire 2014-2015, pour toutes informations veuillez contacter :</span><br />Services des relations ext&eacute;rieures<br />ENSA Safi, route Sidi Bouzid. BP 63. 46000 Safi<br />T&eacute;l: 0524669155/0524669929<br />E-Mail : <a href="mailto:ensasafi@gmail.com">ensasafi@gmail.com</a></span></p>\r\n<p style="text-align: justify;"><span class="userContent">Pr. Walid BOUARIFI<br />T&eacute;l:&nbsp;0662138933<br />E-Mail :&nbsp;w.bouarifi@uca.ma</span></p>\r\n</body>\r\n</html>', '2014-05-21', 'assets/img/10264299_703878776342876_3227945056415289742_n.jpg'),
(12, 'Omar', 'L’événement Startup Weekend à l''ENSA Safi', '<!DOCTYPE html>\r\n<html>\r\n<head>\r\n</head>\r\n<body>\r\n<p style="text-align: justify;">les 30 et 31 Mai &amp; 1er Juin, toute la communaut&eacute; Startup Weekend marocaine se donnera rendez-vous &agrave; l''ENSA de Safi pour un &eacute;v&eacute;nement qui r&eacute;unira entrepreneurs, &eacute;tudiants, porteurs d&rsquo;id&eacute;es, coachs et investisseurs sous un seul slogan: &ldquo;NO TALK, ALL ACTION&rdquo;. Import&eacute;e de la Silicon Valley par l''association Startup Maroc (ex AMPII) depuis 3 ans, la comp&eacute;tition Startup Weekend consiste en effet en une initiation &agrave; l''entrepreneuriat par une mise en situation o&ugrave;, en temps r&eacute;el et lors d''un marathon de 54 heures, des projets et des &eacute;quipes se forment pour cr&eacute;er de v&eacute;ritables startups.</p>\r\n<p style="text-align: justify;">A&nbsp;Startup Weekend Safi, des jeunes et des moins jeunes, passionn&eacute;s et passionnants, s&rsquo;int&eacute;ressant &agrave; l&rsquo;innovation et &agrave; la cr&eacute;ations de Startups, mais aussi des porteurs de projets, des professionnels et de potentiels investisseurs se r&eacute;uniront, le temps d&rsquo;un Weekend. Leur objectif commun&nbsp;? Travailler comme des fous, networker, sortir de l&rsquo;ordinaire et passer un des meilleurs weekends de leurs vies.</p>\r\n<p style="text-align: justify;">Aussi, ils devront utiliser au mieux les&nbsp;54 heures&nbsp;(et oui, c&rsquo;est plus de 50 heures de travail et de FUN) que Startup Maroc, l''organisateur de la comp&eacute;tition, leur a r&eacute;serv&eacute; pour pr&eacute;senter et d&eacute;fendre leurs id&eacute;es, former et g&eacute;rer leurs &eacute;quipes, affiner leur Business Model et go&ucirc;ter au challenge de la cr&eacute;ation de startup.</p>\r\n<p style="text-align: justify;">Startup Weekend Safi suivra le d&eacute;roulement type des Startup Weekend de par le monde&nbsp;:</p>\r\n<p style="text-align: justify;">Vendredi Soir:&nbsp;Juste apr&egrave;s l&rsquo;ouverture de l&rsquo;&eacute;v&eacute;nement, commence le PITCH FIRE, o&ugrave; les porteurs de projets doivent convaincre l&rsquo;auditoire en exposant leur id&eacute;e en moins de 60 secondes, puis, Les startups les plus convaincantes constituent ensuite les &eacute;quipes qui les accompagneront dans cette aventure.</p>\r\n<p style="text-align: justify;">Samedi et Dimanche:&nbsp;Aucune place pour la paresse, les dreams teams constitu&eacute;es vendredi travaillent d&rsquo;arrache-pied pour concr&eacute;tiser leur business model. Parall&egrave;lement, pour les conseiller, les guider, une &eacute;quipe de coachs passionn&eacute;s d''innovation, experts en communication, marketing, finance, web les aide &agrave; se poser les bonnes questions.</p>\r\n<p style="text-align: justify;">Dimanche soir:&nbsp;Pr&eacute;sentation devant un jury !! Et oui, le travail de tout un Weekend serait incomplet et le challenge d&eacute;nu&eacute; de sens si les &eacute;quipes n&rsquo;essayaient pas de remporter la premi&egrave;re place ou l''un des prix, de gagner en notori&eacute;t&eacute; et d''&eacute;pater leur audience, qui, souvent compte des investisseurs potentiels...</p>\r\n<p style="text-align: justify;">&nbsp;</p>\r\n<p style="text-align: justify;">Pourquoi venir &agrave; Startup Weekend Safi ?&nbsp;</p>\r\n<p style="text-align: justify;">Et bien, Pour la simple raison que vous avez tout &agrave; y pagner:</p>\r\n<p style="text-align: justify;">Startup Weekend, c&rsquo;est Apprendre, d&eacute;couvrir, rencontrer des personnes aussi inspir&eacute;es qu&rsquo;inspirantes, partager des id&eacute;es &hellip;<br />C&rsquo;est aussi des repas offerts par&nbsp;<a href="http://www.startupmaroc.org/">Startup Morocco</a>&nbsp;&agrave; partager en &eacute;quipe, de la bonne ambiance, du caf&eacute; &agrave; volont&eacute; et bien d&rsquo;autres choses qu&rsquo;on ne pourra jamais d&eacute;crire avec de simples mots.</p>\r\n<p style="text-align: justify;">Et &ccedil;a continue apr&egrave;s le Weekend:&nbsp;&nbsp;</p>\r\n<p style="text-align: justify;">30% des projets pr&eacute;sent&eacute;s lors d&rsquo;un Startup Weekend continuent apr&egrave;s le Weekend, et plus de 75% des participants restent en contact.</p>\r\n<p style="text-align: justify;">Qui peut participer?</p>\r\n<p style="text-align: justify;">Startup Weekend Safi est ouvert &agrave; tous ! Que ce soit des &eacute;tudiants ou des professionnels, des commerciaux, des porteurs de projet avec une id&eacute;e de Startup qui veulent se lancer dans l&rsquo;aventure, des comptables, des juristes, des cr&eacute;atifs, des chefs de projet, des experts en marketing ou en communication... Bref tout ceux qui ont envie de partager leur exp&eacute;rience et de passer un weekend incroyable!</p>\r\n</body>\r\n</html>', '2014-05-21', 'assets/img/10314665_252672358268346_24736491721343269_n.jpg'),
(13, 'Omar', 'Nouvelle Licence professionnelle accréditée à l''ENSA Safi', '<!DOCTYPE html>\n<html>\n<head>\n</head>\n<body>\n<p style="text-align: justify;">Dans le but de proposer des formations dipl&ocirc;mantes dans les diff&eacute;rents domaines pour accompagner le d&eacute;veloppement de la r&eacute;gion Abda-Doukkala et en particulier la ville de Safi, l''ENSA safi lance dans le cadre de la formation continue la licence professionnelle d''universit&eacute; <strong>Administration des R&eacute;seaux et S&eacute;curit&eacute; des Syst&egrave;mes</strong>. L&rsquo;objectif de cette licence d&rsquo;une ann&eacute;e &agrave; finalit&eacute; professionnelle, est de former des professionnels&nbsp;&agrave; la maitrise de la conception , de la mise&nbsp; en place, de la configuration et de la maintenance des r&eacute;seaux d''entreprises en r&eacute;ponse &agrave; des sp&eacute;cifications fonctionnelles provenant des demandes des utilisateurs. A l&rsquo;issu de la formation, les &eacute;tudiants seront aussi en mesure d&rsquo;administrer des r&eacute;seaux et mettre en &oelig;uvre des solutions s&eacute;curit&eacute; (incluant les r&eacute;seaux sans fil).</p>\n<p style="text-align: justify;">Autre l&rsquo;objectif de pr&eacute;parer les &eacute;tudiants &agrave; bien int&eacute;grer le monde professionnel, cette formation leur permet&nbsp; d&rsquo;int&eacute;grer un Master en relation avec les r&eacute;seaux et les syst&egrave;mes d&rsquo;information en d&eacute;veloppant leurs comp&eacute;tences dans les domaines des r&eacute;seaux informatiques, du &nbsp;d&eacute;veloppement Web, des bases de donn&eacute;es et de la &nbsp;s&eacute;curit&eacute; des r&eacute;seaux.</p>\n</body>\n</html>', '2014-05-21', 'assets/img/slider6.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `login`, `pwd`) VALUES
(1, 'walidbouarifi', 'walidwalid');
