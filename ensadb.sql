-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 13 juin 2018 à 00:45
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ensadb`
--

-- --------------------------------------------------------

--
-- Structure de la table `autrequestions`
--

CREATE TABLE `autrequestions` (
  `id` int(10) NOT NULL,
  `replique` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `autrequestions`
--

INSERT INTO `autrequestions` (`id`, `replique`) VALUES
(1, 'Who are you?'),
(2, 'Have you accomplished as much as you’d hoped to? If not, is there anything you want to change to improve?'),
(3, 'If you want to accept yourself, what will help you do that?'),
(4, 'What’s the most important negative thing people would agree is true about you? '),
(5, 'Imagine that everyone who knows you well is in a room. You aren’t there and they know you’ll never find out what they said. What’s the most important positive thing they’d agree was true about you?'),
(6, 'What\'s an unusual even weird value you hold?'),
(7, 'If you didn\'t care what anyone thought, what’s your most deeply held aspiration?'),
(8, 'What would give your life more meaning?'),
(9, 'How was your childhood?'),
(10, 'Were you happy as a child? '),
(11, 'Tell me about the better day of your life'),
(12, 'And now tell me about the worst period of your life'),
(13, 'When you see a child, would you say that you want one or?'),
(14, 'Would you say that you had a happy childhood?'),
(15, 'What is beauty for you?'),
(16, 'When you see yourself what do you see?'),
(17, 'If I tell you: You are beautiful. What do you answer?'),
(18, 'If I tell you: You are the worst person on earth. What do you answer?'),
(19, 'If someone you know tells you: I\'m going to have a child. How would you feel about it?'),
(20, 'If someone you know tells you: I hate you, you are not worthy of knowing me. How would you feel about it?'),
(21, 'What is retirement for you?'),
(22, 'If you could go somewhere right now, where would you go?'),
(23, 'What super powers would you hope to have?');

-- --------------------------------------------------------

--
-- Structure de la table `debutphase2`
--

CREATE TABLE `debutphase2` (
  `idq` int(10) NOT NULL,
  `questiondebutphase2` varchar(500) NOT NULL,
  `reponseAsense` varchar(3) NOT NULL,
  `maladieAssocie` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `debutphase2`
--

INSERT INTO `debutphase2` (`idq`, `questiondebutphase2`, `reponseAsense`, `maladieAssocie`) VALUES
(1, 'Are you scared of being not good enough?', 'Yes', 'Panic attack'),
(2, 'Are feeling confortable right now?', 'No', 'Agoraphobia'),
(3, 'Are you afraid of being weak?', 'Yes', 'Panic disorder'),
(4, 'Are you afraid of some specific objects? Situations?', 'Yes', 'Specific phobias'),
(5, 'Do you feel like being lower than the others?', 'Yes', 'Social phobia'),
(6, 'Do you feel obliged to order books/papers or anything else in a particular manner?', 'Yes', 'Obsessive compulsive disorder'),
(7, 'Do you have vivid nightmares?', 'Yes', 'Post traumatic stress disorder'),
(8, 'Do you have difficulties to concentrate?', 'Yes', 'Generalized anxiety');

-- --------------------------------------------------------

--
-- Structure de la table `maladie`
--

CREATE TABLE `maladie` (
  `idm` int(10) NOT NULL,
  `nommaladie` varchar(255) NOT NULL,
  `scoreacc` int(10) NOT NULL,
  `scoreref` int(10) NOT NULL,
  `descMaladie` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `maladie`
--

INSERT INTO `maladie` (`idm`, `nommaladie`, `scoreacc`, `scoreref`, `descMaladie`) VALUES
(1, 'Panic attack', 80, -80, 'It\'s a sudden period of intense fear that may include palpitations, sweating, shaking, shortness of breath, numbness, or a feeling that something bad is going to happen. Typically they last for about 30 minutes but the duration can vary from seconds to hours. There may be a fear of losing control or chest pain. Panic attacks themselves are not dangerous physically.'),
(2, 'Agoraphobia', 70, -70, 'It is an anxiety disorder characterized by symptoms of anxiety in situations where the person perceives the environment to be unsafe with no easy way to get away. These situations can include open spaces, public transit, shopping malls, or simply being outside their home. Being in these situations may result in a panic attack. The symptoms occur nearly every time the situation is encountered and last for more than six months. Those affected will go to great lengths to avoid these situations. In severe cases people may become completely unable to leave their homes due to the phobia.'),
(3, 'Panic disorder', 60, -60, 'It is an anxiety disorder characterized by reoccurring unexpected panic attacks which are sudden periods of intense fear that may include palpitations, sweating, shaking, shortness of breath, numbness, or a feeling that something really bad is going to happen. There may be ongoing worries about having further attacks and avoidance of places where attacks have occurred in the past.'),
(4, 'Specific phobias', 40, -40, 'It is any kind of anxiety disorder that amounts to an unreasonable or irrational fear related to exposure to specific objects or situations. As a result, the affected person tends to avoid contact with the objects or situations and, in severe cases, any mention or depiction of them. The fear can, in fact, be disabling to their daily lives.'),
(5, 'Social phobia', 100, -100, 'It is an anxiety disorder characterized by a significant amount of fear in one or more social situations, causing considerable distress and impaired ability to function in at least some parts of daily life. These fears can be triggered by perceived or actual scrutiny from others.'),
(6, 'Obsessive compulsive disorder', 50, -50, 'It is a mental disorder where people feel the need to check things repeatedly, perform certain routines repeatedly (called \"rituals\"), or have certain thoughts repeatedly (called \"obsessions\"). People are unable to control either the thoughts or the activities for more than a short period of time. Common activities include hand washing, counting of things, and checking to see if a door is locked. Some may have difficulty throwing things out. These activities occur to such a degree that the person\'s daily life is negatively affected. This often takes up more than an hour a day. Most adults realize that the behaviors do not make sense.'),
(7, 'Post traumatic stress disorder', 30, -30, 'It is a mental disorder that can develop after a person is exposed to a traumatic event, such as sexual assault, warfare, traffic collisions, or other threats on a person\'s life. Symptoms may include disturbing thoughts, feelings, or dreams related to the events, mental or physical distress to trauma-related cues, attempts to avoid trauma-related cues, alterations in how a person thinks and feels, and an increase in the fight-or-flight response. These symptoms last for more than a month after the event.'),
(8, 'Generalized anxiety', 60, -60, 'It is an anxiety disorder characterized by excessive, uncontrollable and often irrational worry, that is, apprehensive expectation about events or activities. This excessive worry often interferes with daily functioning, as individuals with General Anxiety typically anticipate disaster, and are overly concerned about everyday matters such as health issues, money, death, family problems, friendship problems, interpersonal relationship problems, or work difficulties.');

-- --------------------------------------------------------

--
-- Structure de la table `phase1`
--

CREATE TABLE `phase1` (
  `id` int(10) NOT NULL,
  `questionPhase1` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `phase1`
--

INSERT INTO `phase1` (`id`, `questionPhase1`) VALUES
(1, 'Would you say that you feel stuck?'),
(2, 'How do you precisely feel?'),
(3, 'Was it you decision to come or?'),
(4, 'If you could wave a magic wand, what positive changes would you make happen in your life?'),
(5, 'What would it take to make you feel more content, happier and more satisfied?'),
(6, 'What’s the question you’re most afraid to be asked?'),
(7, 'Do you think there is someone you should spend more time with?'),
(8, 'Do you want to work for some cause? If so, what cause?'),
(9, 'What is the problem from your viewpoint?'),
(10, 'Do you consider yourself to have a low, average or high interpersonal IQ?'),
(11, 'Is there anything you want to do now to help make better things happen?'),
(12, 'How do you see yourself?'),
(13, 'Describe your surrounding.'),
(14, 'Do you want to accept your personality as-is or do you want to change something, for example, become more or less social, more or less friendly, more or less aggressive? Something else?'),
(15, 'What do you want to do in the future?');

-- --------------------------------------------------------

--
-- Structure de la table `phase2avecmaladie`
--

CREATE TABLE `phase2avecmaladie` (
  `idq` int(10) NOT NULL,
  `idm` int(10) NOT NULL,
  `question` varchar(500) NOT NULL,
  `reponseAsense` varchar(3) NOT NULL DEFAULT 'Yes',
  `maladieAssociee` varchar(500) NOT NULL,
  `coef` int(10) NOT NULL DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `phase2avecmaladie`
--

INSERT INTO `phase2avecmaladie` (`idq`, `idm`, `question`, `reponseAsense`, `maladieAssociee`, `coef`) VALUES
(1, 1, 'Do you feel that your perception of the world is close to the others?', 'No', 'Panic attack', 10),
(1, 2, 'Do you feel that your perception of the world is close to the others?', 'No', 'Agoraphobia', 10),
(2, 1, 'Are you scared of becomming mad or crazy or to lose yourself?', 'Yes', 'Panic attack', 10),
(2, 2, 'Are you scared of becomming mad or crazy or to lose yourself?', 'Yes', 'Agoraphobia', 10),
(2, 3, 'Are you scared of becomming mad or crazy or to lose yourself?', 'Yes', 'Panic disorder', 10),
(2, 4, 'Are you scared of becomming mad or crazy or to lose yourself?', 'Yes', 'Specific phobias', 10),
(3, 1, 'Are you scared of having a panic attack?', 'Yes', 'Panic attack', 10),
(4, 1, 'Do you avoid being in a disappointing situation, like asking for help?', 'Yes', 'Panic attack', 10),
(4, 2, 'Do you avoid being in a disappointing situation, like asking for help?', 'Yes', 'Agoraphobia', 10),
(5, 1, 'Do you often feel like you are shaking?', 'Yes', 'Panic attack', 10),
(5, 2, 'Do you often feel like you are shaking?', 'Yes', 'Agoraphobia', 10),
(5, 8, 'Do you often feel like you are shaking?', 'Yes', 'Generalized anxiety', 10),
(6, 1, 'Is your heart ok?', 'No', 'Panic attack', 10),
(6, 2, 'Is your heart ok?', 'No', 'Agoraphobia', 10),
(7, 1, 'Do you have difficulties to breath?', 'Yes', 'Panic attack', 10),
(7, 2, 'Do you have difficulties to breath?', 'Yes', 'Agoraphobia', 10),
(8, 1, 'Are you sweating a lot?', 'Yes', 'Panic attack', 10),
(8, 2, 'Are you sweating a lot?', 'Yes', 'Agoraphobia', 10),
(9, 1, 'Do you experience vertigo sometime?', 'Yes', 'Panic attack', 10),
(9, 2, 'Do you experience vertigo sometime?', 'Yes', 'Agoraphobia', 10),
(10, 1, 'Do you feel like throwing up, like something is stuck in you stomach?', 'Yes', 'Panic attack', 10),
(10, 2, 'Do you feel like throwing up, like something is stuck in you stomach?', 'Yes', 'Agoraphobia', 10),
(11, 3, 'Do you think what you feel is due to you lack of strenght?', 'Yes', 'Panic disorder', 10),
(12, 3, 'Do you think you are anxious?', 'Yes', 'Panic disorder', 10),
(13, 3, 'Are you feeling like something good is going to happen in the near futur?', 'No', 'Panic disorder', 10),
(14, 3, 'Are you ashamed of yourself?', 'Yes', 'Panic disorder', 10),
(15, 3, 'If I tell you that everything is going to be ok, do you trust me?', 'No', 'Panic disorder', 10),
(16, 3, 'Did you ever thought of quiting you today\'s life because of how you feel?', 'Yes', 'Panic disorder', 10),
(17, 4, 'Are you scared of fainting after being in contact with that thing?', 'Yes', 'Specific phobias', 10),
(18, 4, 'Did you change your lifestyle after discovering you feelings toward that thing?', 'Yes', 'Specific phobias', 20),
(19, 4, 'Do you feel completely terrorised after being in contact with that thing?', 'Yes', 'Specific phobias', 20),
(20, 5, 'Do you avoid talking in a group?', 'Yes', 'Social phobia', 10),
(21, 5, 'Are you afraid that I or the others are going to judge you?', 'Yes', 'Social phobia', 10),
(22, 5, 'When someone critisize you, do you get very mad?', 'Yes', 'Social phobia', 10),
(23, 5, 'Do you feel generally confused?', 'Yes', 'Social phobia', 10),
(24, 5, 'Do you like yourself when you talk in public?', 'No', 'Social phobia', 10),
(25, 5, 'While talking in a group do you feel changes in your body? like sweating, shaking ....', 'Yes', 'Social phobia', 30),
(26, 5, 'Would you say that you have more than 7 friends?', 'No', 'Social phobia', 30),
(27, 6, 'Do you have obsessive thoughts? Like toughts that persist in your brain and you can\'t get rid of them.', 'Yes', 'Obsessive compulsive disorder', 20),
(28, 6, 'Do you check and recheck things?', 'Yes', 'Obsessive compulsive disorder', 20),
(29, 6, 'Do you feel like you need to do things even if they are not that logic?', 'Yes', 'Obsessive compulsive disorder', 20),
(30, 7, 'Do you feel like you relive over and over stressful events?', 'Yes', 'Post traumatic stress disorder', 20),
(31, 7, 'Are you ashamed of yourself?', 'Yes', 'Post traumatic stress disorder', 10),
(32, 7, 'Do you feel like you are not the same person as before?', 'Yes', 'Post traumatic stress disorder', 20),
(33, 7, 'Do you feel constantly threatened?', 'Yes', 'Post traumatic stress disorder', 10),
(34, 7, 'Do you sleep well?', 'No', 'Post traumatic stress disorder', 20),
(34, 8, 'Do you sleep well?', 'No', 'Generalized anxiety', 20),
(35, 7, 'Did you change your behavior toward your friends, family?', 'Yes', 'Post traumatic stress disorder', 20),
(36, 8, 'Do you constantly feel like you are depressed?', 'Yes', 'Generalized anxiety', 10);

-- --------------------------------------------------------

--
-- Structure de la table `repliquebienvenue`
--

CREATE TABLE `repliquebienvenue` (
  `id` int(10) NOT NULL,
  `replique` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `repliquebienvenue`
--

INSERT INTO `repliquebienvenue` (`id`, `replique`) VALUES
(1, 'Before we go to the heart of the therapy I should tell you some things. First you may think that I\'m just a robot but I\'m programmed to make you discover yourself. Second, before answering a question think hard, and make the answer as long as it should be. And finally, I\'m here for you. Here we go, try to describe where you live.'),
(2, 'I need to make you understand things before we begin. I\'m a robot, yes, but I was programmed to ask the right questions and help you discover yourself, I won\'t ask the same question twice so before answering think hard, I\'m here for you, to understand you. Time to start, try to descrive where you live precisely.'),
(3, 'This therapy is about you understanding yourself, you may think I\'m just a robot but I was specifically done to do that, when I ask you something, don\'t worry about the lenght of your answer, be as precise as you can. Try to describe where you live.'),
(4, 'My job today is to help you know how you feel and for that I\'ll ask you direct questions, while answering try to be as precise as possible, It\'s through talking that we, you and I, can understand you, may the answer be as long as it is. Try to describe your home, not only the objects but also the people there.'),
(5, 'I\'ll make things clear before we start, I was programmed to make you understand who you are by asking the right question, some will be obvious some not, but try to answer as precisely as you can. Describe where you live.'),
(6, 'I\'ll make things clear before we start. I can\'t replace a real therapist, but I was programmed to do the same job as well as I can, to help you understand how you feel by asking question. There is nothing wrong about it, be as precise as possible. First, try to describe where you live.'),
(7, 'Before we go to the heart of the therapy, I\'ll make things clear. I\'m here for you, to help you. Like I sais before I\'ll ask you question some, some will lead you to choose, but the others are for you to open up so try to be as precise as you can. We begin, try to describe where you live.'),
(8, 'You are sure saying that I\'m just a robot, I can\'t understand you, but I was specifically programmed to make you understand yourself, that\'s what this therapy is about, so when I\'ll ask you something try to be as precise as you can. First, try to describe where you live.'),
(9, 'Before we really begin, I said before that I\'ll ask you several question, before answering try to think hard, and of course be sincere, that\'s how we, you and I, can understand you. Here we go, try to describe where you live.'),
(10, 'This therapy is for me and you to understand you, to make things clear, so when I\'ll ask you a question, sometimes it\'ll be obvious but just answer, the truth of how you feel resides in the evidence, first, try to describe where you live.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `autrequestions`
--
ALTER TABLE `autrequestions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `debutphase2`
--
ALTER TABLE `debutphase2`
  ADD PRIMARY KEY (`idq`);

--
-- Index pour la table `maladie`
--
ALTER TABLE `maladie`
  ADD PRIMARY KEY (`idm`);

--
-- Index pour la table `phase1`
--
ALTER TABLE `phase1`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `phase2avecmaladie`
--
ALTER TABLE `phase2avecmaladie`
  ADD PRIMARY KEY (`idq`,`idm`);

--
-- Index pour la table `repliquebienvenue`
--
ALTER TABLE `repliquebienvenue`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `autrequestions`
--
ALTER TABLE `autrequestions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `debutphase2`
--
ALTER TABLE `debutphase2`
  MODIFY `idq` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `maladie`
--
ALTER TABLE `maladie`
  MODIFY `idm` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `phase1`
--
ALTER TABLE `phase1`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `repliquebienvenue`
--
ALTER TABLE `repliquebienvenue`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
