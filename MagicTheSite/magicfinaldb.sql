-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2019 at 05:20 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magicfinaldb`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `name` varchar(25) NOT NULL,
  `card_id` int(11) NOT NULL,
  `deck_id` int(11) NOT NULL,
  `art` int(11) NOT NULL,
  `total_mana` int(11) NOT NULL,
  `power` int(11) NOT NULL,
  `toughness` int(11) NOT NULL,
  `card_type` varchar(25) NOT NULL,
  `keywords` varchar(25) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `oracle_text` varchar(1000) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='cards for test';

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`name`, `card_id`, `deck_id`, `art`, `total_mana`, `power`, `toughness`, `card_type`, `keywords`, `text`, `oracle_text`, `total`) VALUES
('Mountain', 13, 1, 13, 0, 0, 0, 'Land', 'none', 'Add one red mana', 'none', 19),
('Experimental Frenzy', 12, 1, 12, 4, -1, -1, 'e', 'none', 'You may look at the top card of your library any time.You may play the top card of your library.<br>You can’t play cards from your hand.3redmana: Destroy Experimental Frenzy.', 'Turns our coffee is the weird aunt of invention', 2),
('Wizard’s Lightning', 11, 1, 11, 3, -1, -1, 'Instant', 'none', 'This spell costs 2 less to cast if you control a Wizard. Wizard’s Lightning deals 3 damage to any target', 'The study of magic began when the first mage taught herself to throw lightning -Naban, dean of invention', 4),
('Skewer the Critics', 10, 1, 10, 3, -1, -1, 'Sorcery', 'Spectacle', 'oneredmana Skewer the Critic deals 3 damage to any target', 'Going to a Rakdos show is dangerous. Trying to leave can be fatal.', 2),
('Risk Factor', 9, 1, 9, 3, -1, -1, 'Instant', 'Jump-start', 'Target opponent may have Risk Factor deal 4 damage to them. If that player doesn’t, you draw three cards.', 'none', 2),
('Light Up the Stage', 8, 1, 8, 3, -1, -1, 'Sorcery', 'Spectacle', 'Exile the top two cards of your library. Until the end of the next turn, you may play those cards.', 'Places, everyone! -Judith', 3),
('Lightning Strike', 7, 1, 7, 2, -1, -1, 'Instant', 'none', 'Lightning Strike deals 3 damage to target creature or player.', 'The hand of Keranos can be seen in every rumbling storm cloud. Best not to stand where he points. -Rakleia of Shrine Peak', 4),
('Shock', 6, 1, 6, 1, -1, -1, 'Instant', 'none', 'Shock deals 2 damage to any target', 'The tools of invention became the weapons of revolution', 4),
('Goblin Chainwhirler', 5, 3, 5, 3, 3, 3, 'Creature', 'First Strike', 'When Goblin Chainwhirler enters the battlefield, it deals 1 damage to each opponent and each creature and planeswalker they control.', 'The trick is, once you get moving, don’t stop!', 4),
('Viashino Pyromancer', 4, 1, 4, 2, 2, 1, 'Creature', 'none', 'When Viashino Pyromancer enters the battlefield, it deals 2 damage to target player or planeswalker.', 'I trained with the Ghitu, and I respect the fire as they do.', 4),
('Runaway Steam-Kin', 3, 1, 3, 2, 1, 1, 'Creature', 'none', 'Whenever you cast a red spell, if Runaway team-Kin has fewer than three +1/+1 counters on it, put a +1/+1 counter on Runaway Steam-Kin. Remove three +1/+1 counters from Runaway Steam-Kin: Add 3redmana', 'None', 4),
('Ghitu Lavarunner', 2, 1, 2, 1, 1, 2, 'Creature', 'none', 'As long as there are two or more instant and/or sorcery cards in your graveyard, Ghitu Lavarunner gets +1/+0 and has haste.', 'Tolarians teach the theory of pyromancy. The Ghitu prefer applied research.', 4),
('Fanatical Firebrand', 1, 1, 1, 1, 1, 1, 'Creature', 'Haste', 'tap: Sacrifice Fanatical Firebrand: It deals 1 damage to target creature or player', 'The Brazen Coalition is a firecannon pointed at our enemies. Goblins like him are the spark to its powder. -Admiral Beckett Brass', 4),
('Island', 28, 2, 28, 0, -1, -1, 'Land', 'none', 'Add one blue mana', 'none', 19),
('Curious Obsession', 27, 2, 27, 1, -1, -1, 'e', 'none', 'Enchant creature Enchanted creature gets +1/+1 and has “Whenever this creature deals combat damage to a player, you may draw a card.” At the beginning of your end step, if you didn’t attack with a creature this turn, ', 'none', 4),
('Wizard’s Retort', 26, 2, 26, 3, -1, -1, 'Instant', 'none', 'This spell costs 1 less to cast if you control a Wizard. Counter target spell', '”The second mage learned to dissipate blasts of lightning. Threat and response: thus did the study of magic progress.” -Naban dean of iteration', 4),
('Negate', 25, 2, 25, 2, -1, -1, 'Instant', 'none', 'Counter target noncreature spell.', '”It is fascinating to see how the people of this plane replicate magical techniques without a natural gift. Also frustrating” -Jace Beleren', 1),
('Essence Capture', 24, 2, 24, 2, -1, -1, 'Instant', 'none', 'Counter target creature spell. Put a +1/+1 counter on up to one target creature you control.', '”It’s not enough to defeat our foes. We must learn from them, too” -Vannifar', 2),
('Chart a Course', 23, 2, 23, 2, -1, -1, 'Sorcery', 'none', 'Draw two cards. Then discard a card unless you attacked with a creature this turn.', 'While other pirates prowl for treasure, Captain Parrish plunders secrets.', 1),
('Spell Pierce', 22, 2, 22, 1, -1, -1, 'Instant', 'none', 'Counter target noncreature spell unless its controller pays 2.', '”A fool’s fire is quickly quenched” -Shaper Kumena', 2),
('Opt', 21, 2, 21, 1, -1, -1, 'Instant', 'Scry', 'Draw a card', 'The crystal pulsed with the power of Teferi’s planeswalker spark. Had Jhoira given him a blessing or a curse?', 4),
('Tempest Djinn', 20, 2, 20, 3, 0, 4, 'Creature', 'Flying', 'Tempest Djinn gets +1/+0 for each basic Island you control.', 'The first to arrive on Dominaria from their distant home, the marids are the oldest tribe of djinn and the most respected by storm and sea.', 4),
('Dive Down', 19, 2, 19, 1, -1, -1, 'Instant', 'Hexproof', 'Target creature you control gets +0/+3 and gains hexproof until end of turn.', 'Seeing the river is not the same as seeing the fish', 4),
('Merfolk Trickster', 18, 2, 18, 2, 2, 2, 'Creature', 'Flash', 'When Merfolk Trickster enters the battlefield, tap target creature an opponent controls. It lowers all abilities until end of turn', 'Saved from destruction by one planeswalker’s sacrifice, the Eliterate colony forswore the taking of life', 4),
('Siren Stormtamer', 17, 2, 17, 1, 1, 1, 'Creature', 'Flying', 'one bluemana Sacrifice Siren Stormtamer: Counter target spell or ability that targets you or a creature you control.', 'He’s the calm that hides the coming the coming storm', 4),
('Ptermander', 16, 2, 16, 1, 1, 1, 'Creature', 'Flying, Adapt', '7 bluemana: Adapt 4', 'None', 4),
('Mist-Cloaked Herald', 15, 2, 15, 1, 1, 1, 'Creature', 'none', 'Mist-Cloaked Herald can’t be blocked.', 'With matchless stealth, the River Heralds fought a running battle against the three enemy forces.', 2),
('Entrancing Melody', 14, 2, 14, 2, -1, -1, 'Sorcery', 'none', 'Gain control of target creature with converted mana cost X.', 'The stronger the will, the more bewitching the song.', 1),
('Plains', 43, 3, 43, 0, -1, -1, 'Land', 'none', 'Add one whitemana', 'none', 12),
('Hallowed Fountain', 42, 3, 42, 0, -1, -1, 'Land', 'none', 'Add one whitemana or one bluemana As Hallowed Fountain enters the battlefield, you may pay 2 life. If you don’t, it enters the battlefield tapped.', 'The ever-growing circle of a growing web of eyes', 4),
('Glacial Fortress', 41, 3, 41, 0, -1, -1, 'Land', 'none', 'Add one whitemana or one bluemana Glacial Fortress enters the battlefield tapped unless you control Plains or an Island', 'none', 4),
('Conclave Tribunal', 40, 3, 40, 4, -1, -1, 'e', 'Convoke', 'When Conclave Tribunal enters the battlefield, exile target nonland permanent an opponent controls until Conclave Tribunal leaves the battlefield', 'none', 3),
('Baffling End', 39, 3, 39, 2, -1, -1, 'none', 'e', 'When Baffling End enters the battlefield, exile target creature an opponent controls with converted mana cost 3 or less. When Baffling End leaves the battlefield, target opponent creates a 3/3 green Dinosaur creature token with trample', 'none', 4),
('History of Benalia', 38, 3, 38, 3, -1, -1, 'e', 'Saga', '1) 2) Create a 2/2 white Knight creature token with vigilance. 3) Knights you control get +2/+1 until the end of turn', 'none', 2),
('Legion’s Landing', 37, 3, 37, 1, -1, -1, 'e', 'Lifelink', 'When Legion’s Landing enters the battlefield, create a 1/1 white Vampire creature token with lifelink. When you attack with three or more creatures, transform Legion’s Landing. (Adanto, the First Fort)', '”I claim this land in the name of the queen” -Adrian Adanto of Lujio', 4),
('Unbreakable Formation', 36, 3, 36, 3, -1, -1, 'Instant', 'Addendum', 'Creatures you control gain indestructible until end of turn. Addendum - If you cast this spell during your main phase, put a +1/+1 counter on each of those creatures and they gain vigilance until end of turn.', 'none', 1),
('Venerated Loxodon', 35, 3, 35, 5, 4, 4, 'Creature', 'Convoke', 'When Venerated Loxodon enters the battlefield, put a +1/+1 counter on each creature that Convoked it.', 'none', 4),
('Tithe Taker', 34, 3, 34, 2, 2, 1, 'Creature', 'Afterlife', 'During your turn, spells your opponents cast cost 1 more to cast and abilities your opponents activate cost 1 more to activate unless they’re mana abilities. Afterlife 1', 'none', 4),
('Benalish Marshal', 33, 3, 33, 3, 3, 3, 'Creature', 'none', 'Other creatures you control get +1/+1', '”Some aspire to climb the mountain of Honor. The Banalish are born upon its peak, and from there ascend among the stars” -History of Benalia', 2),
('Adanto Vanguard', 32, 3, 32, 2, 1, 1, 'Creature', 'Indestructible', 'As long as Adanto Vanguard is attacking, it gets +2/+0. Pay 4 life: Adanto Vanguard gains indestructible until end of turn.', 'None', 4),
('Snubhorn Sentry', 31, 3, 31, 1, 0, 3, 'Creature', 'Ascend', 'Snubhorn Sentry gets +3/+0 as long as you have the city’s blessing.', 'They’re fun to train-if you like stubborn, aggressive, and fiercely territorial', 4),
('Skymarcher Aspirant', 30, 3, 30, 1, 2, 1, 'Creature', 'Ascend', 'Skymarcher Aspirant has flying as long as you have the city’s blessing.', '”I was born to glory”', 4),
('Dauntless Bodyguard', 29, 3, 29, 1, 2, 1, 'Creature', 'none', 'As Dauntless Bodyguard enters the battlefield, choose another creature you control. Sacrifice Dauntless Bodyguard: The chosen creature gains indestructible until end of turn.', 'The Benalish aristocracy is hereditary, but the loyalty of its subjects is earned', 4),
('Adanto the First Fort', 44, 3, 44, 0, -1, -1, 'Land', 'Lifelink', 'add one whitemana two whitemana: create a 1/1 white vampire creature with lifelink', 'none', 4),
('Forest', 59, 4, 59, 0, -1, -1, 'Land', 'none', 'Add one greenmana', 'none', 12),
('Swamp', 58, 4, 58, 0, -1, -1, 'Land', 'none', 'Add one blackmana', 'none', 11),
('The Eldest Reborn', 57, 4, 57, 5, -1, -1, 'e', 'Saga', '1) Each player sacrifices a creature or planeswalker. 2) Each opponent discards a card. 3) Put target creature or planeswalker card from a graveyard onto the battlefield under your control.', 'none', 3),
('Journey to Eternity', 56, 4, 56, 3, -1, -1, 'e', 'none', 'Enchant creature you control. When enchanted creature dies, return it to the battlefield under your control, then return Journey to Eternity to the battlefield transformed under your control', 'Every journey has it’s inevitable end...', 1),
('Find', 55, 4, 55, 2, -1, -1, 'Sorcery', 'none', 'Return up to two target creature cards from your graveyard to your hand. OR You may put two +1/+1 counters on a creature you control. Then all creatures get -4/-4 until end of turn.', 'none', 3),
('Molderhulk', 54, 4, 54, 9, 6, 6, 'Creature', 'Undergrowth', 'When Molderhulk enters the battlefield, return target land card from your graveyard to the battlefield.', 'none', 2),
('Izoni, Thousand-Eyed', 53, 4, 53, 6, 2, 3, 'Creature', 'Undergrowth', 'one blackmana and one greenmana: Sacrifice another creature: You gain 1 life and draw a card.', 'none', 2),
('Kraul Foragers', 52, 4, 52, 5, 4, 4, 'Creature', 'Undergrowth', 'none', 'Feed on food, you eventually rot. Feed on rot, you live forever. -Kraul Saying', 1),
('Ravenous Chupacabra', 51, 4, 51, 6, 2, 2, 'Creature', 'none', 'When Ravenous Chupacabra enters the battlefield, destroy target creature an opponent controls.', 'Opening Orazca unleashed more horrors than just the Immortal Sun', 4),
('Golgari Findbroker', 50, 4, 50, 4, 3, 4, 'Creature', 'none', 'When Golgaru Findbroker enters the battlefield, return target permanent card from your graveyard to your hand.', '”We gather the past from surface dwellers and sell it right back to them.”', 1),
('Plaguecrafter', 49, 4, 49, 3, 3, 2, 'Creature', 'none', 'When Plaguecrafter enters the battlefield, each player sacrifices a creature or planeswalker. Each player who can’t discards a card.', '”My power is generosity, in a way. I give my survivors an appreciation for their lives.”', 4),
('Midnight Reaper', 48, 4, 48, 3, 3, 2, 'Creature', 'none', 'Whenever a nontoken creature you control dies, Midnight Reaper deals 1 damage to you and you draw a card. ', 'No one welcomes his visit, yet all must grant him tribute.', 4),
('Priest of Forgotten Gods', 47, 4, 47, 2, 1, 2, 'Creature', 'none', 'Sacrifice two other creatures: Any number of target players each lose 2 life and sacrifice a creature. You add two blackmana and draw a card.', 'The Orzhov are not the only religious tradition on Ravnica, nor the oldest', 4),
('Glowspore Shaman', 46, 4, 46, 2, 3, 1, 'Creature', 'none', 'When Glowspore Shaman enters the battlefield, put the top three cards of your library into your graveyard. You may put a land card from your graveyard on top of your library.', 'From death she grows living grandeur', 4),
('Stitcher’s Supplier', 45, 4, 45, 1, 1, 1, 'Creature', 'none', 'When Stitcher’s Supplier enter the battlefield or dies, put the top three cards or your library into the graveyard.', 'No part goes to waste', 4);

-- --------------------------------------------------------

--
-- Table structure for table `decks`
--

CREATE TABLE `decks` (
  `name` varchar(25) NOT NULL,
  `deck_id` int(11) NOT NULL,
  `format` varchar(25) NOT NULL,
  `num_l` int(11) NOT NULL,
  `num_c` int(11) NOT NULL,
  `num_i` int(11) NOT NULL,
  `num_s` int(11) NOT NULL,
  `num_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decks`
--

INSERT INTO `decks` (`name`, `deck_id`, `format`, `num_l`, `num_c`, `num_i`, `num_s`, `num_p`) VALUES
('Mono-Red Aggro', 1, 'Standard', 19, 20, 14, 5, 0),
('Mono-Blue Tempo', 2, 'Standard', 19, 18, 17, 2, 0),
('Azorius Aggro', 3, 'Standard', 20, 26, 1, 0, 0),
('Golgari Reanimator', 4, 'Standard', 23, 30, 0, 3, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
