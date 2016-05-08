-- phpMyAdmin SQL Dump
-- version 4.4.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 08, 2016 at 11:26 AM
-- Server version: 5.5.42-log
-- PHP Version: 5.4.41

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gamux`
--

-- --------------------------------------------------------

--
-- Table structure for table `meta`
--

CREATE TABLE IF NOT EXISTS `meta` (
  `id` smallint(6) unsigned NOT NULL,
  `name_en` text,
  `name_cn` text,
  `steam_id` int(11) NOT NULL DEFAULT '0',
  `if_zh` int(1) NOT NULL DEFAULT '0',
  `cat` text,
  `namespace` text,
  `size` text,
  `modify_time` text,
  `create_time` text,
  `ark_name` text,
  `if_exit` int(1) DEFAULT NULL,
  `website` text
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `meta`
--

INSERT INTO `meta` (`id`, `name_en`, `name_cn`, `steam_id`, `if_zh`, `cat`, `namespace`, `size`, `modify_time`, `create_time`, `ark_name`, `if_exit`, `website`) VALUES
(1, 'Baldur''s Gate II: Enhanced Edition', '博德之门2：加强版', 257350, 0, NULL, 'baldurgate2', '3.8G', '2016-03-12 18:37:45', '2016-03-12 18:37:45', 'BaldursGate2EnhancedEdition_gog_gamux.org_a1.tar.xz', 1, 'https://www.baldursgateii.com/'),
(2, 'AaaaaAAaaaAAAaaAAAAaAAAAA!!! for the Awesome', '坠楼惊魂', 15560, 0, NULL, 'aaaaa-awesome', '162M', '2016-02-01 22:29:51', '2016-02-01 22:29:51', 'Aaaaa-Awesome_1.0_gamux.org_a1.tar.xz', 1, 'http://www.dejobaan.com/awesome/'),
(3, 'The Banner Saga', '旗帜的传说', 237990, 0, NULL, 'thebannersaga', '2.2G', '2016-03-29 23:44:19', '2016-03-29 23:44:19', 'TheBannerSaga_2.18.08_gamux.org_a1.tar.xz', 1, 'http://thebannersaga.com/'),
(4, 'PonyIsland', '小马岛', 405640, 0, NULL, 'ponyisland', '155M', '2016-03-21 22:03:15', '2016-03-21 22:03:15', 'PonyIsland_1.17_gamux.org_a1.tar.xz', 1, 'http://ponyisland.net/'),
(5, 'Cave Story+', '洞窟物语', 200900, 1, NULL, 'cavestoryplus', '158M', '2016-03-12 23:22:52', '2016-03-12 23:22:52', 'CaveStoryPlus_multilang_gamux.org_a1.tar.xz', 1, 'http://www.nicalis.com/'),
(6, 'FreeCiv', 'FreeCiv', 1, 1, NULL, 'freeciv', '28M', '2016-01-20 21:31:52', '2016-01-20 21:31:52', 'freeciv_2.5.1-gtk2_gamux.org.tar.xz', 1, 'www.freeciv.org/'),
(7, 'Punch Club', '拳击俱乐部', 394310, 0, NULL, 'punchclub', '55M', '2016-01-24 01:09:29', '2016-01-24 01:09:29', 'PunchClub_alpha0.41_gamux.org.tar.xz', 1, 'http://store.steampowered.com/app/394310/'),
(8, 'Simutrans', '模拟交通', 1, 1, NULL, 'simutrans', '216M', '2016-01-28 18:46:06', '2016-01-28 18:46:06', 'Simutrans_120.1.1_gamux.org_a1.tar.xz', 1, 'www.simutrans.com/'),
(9, 'Bastion', '堡垒', 107100, 1, NULL, 'bastion', '1017M', '2016-02-21 20:35:14', '2016-02-21 20:35:14', 'Bastion_hib_gamux.org_a1.tar.xz', 1, 'http://www.buildthebastion.com/'),
(10, 'Papo & Yo', '贫民区历险记', 227080, 1, NULL, 'papoyo', '1.4G', '2016-02-05 00:45:03', '2016-02-05 00:45:03', 'PapoYo_crack_gamux.org_a1.tar.xz', 1, 'http://www.weareminority.com/papo-yo/'),
(11, 'Braid', '时空幻境', 26800, 1, NULL, 'braid', '108M', '2016-02-21 19:07:16', '2016-02-21 19:07:16', 'Braid_hib_gamux.org_a1.tar.xz', 1, 'http://braid-game.com/'),
(12, 'OpenTTD', '运输大亨', 1, 1, NULL, 'openttd', '73M', '2016-01-12 22:30:27', '2016-01-12 22:30:27', 'openttd_1.5.3_gamux.org.tar.xz', 1, 'http://www.openttd.org/'),
(13, 'OpenMW', '上古卷轴III：晨风', 1, 0, NULL, 'openmw', '203M', '2016-01-27 20:46:11', '2016-01-27 20:46:11', 'OpenMW_0.38.0_gamux.org_a1.tar.xz', 1, 'http://openmw.org/en/'),
(14, 'Unvanquished', 'Unvanquished', 1, 0, NULL, 'unvanquished', '673M', '2016-01-27 17:55:42', '2016-01-27 17:55:42', 'unvanquished_0.47.0_gamux.org_a1.tar.xz', 1, 'http://www.unvanquished.net/'),
(15, 'Sunless Sea', '无光之海', 304650, 1, NULL, 'sunlesssea', '242M', '2016-03-21 17:04:26', '2016-03-21 17:04:26', 'SunlessSea_1.0.4.2130_gamux.org_a2.tar.xz', 1, 'http://www.failbettergames.com/sunless/'),
(16, 'Reveal The Deep', '揭秘深处', 411560, 0, NULL, 'reveal_the_deep', '96M', '2016-02-10 09:00:02', '2016-02-10 09:00:02', 'RevealTheDeep_crack_gamux.org_a1.tar.xz', 1, 'http://www.lazymondaygames.com/'),
(17, 'Shovel Knight', '铲子骑士', 250760, 0, NULL, 'shovelknight', '112M', '2016-02-19 21:57:57', '2016-02-19 21:57:57', 'ShovelKnight_1.3_gamux.org_a1.tar.xz', 1, 'http://shovelknight.com/'),
(18, 'Cities in Motion 2', '都市运输2', 73010, 0, NULL, 'citiesinmotion', '427M', '2016-03-22 14:10:24', '2016-03-22 14:10:24', 'CitiesinMotion2_1.6.3_gamux.org_a1.tar.xz', 1, 'http://www.citiesinmotion.com/'),
(19, 'Pioneer', 'Pioneer', 0, 1, NULL, 'pioneer', '219M', '2016-01-29 15:46:01', '2016-01-29 15:46:01', 'Pioneer-20160126-gamux.org_a1.tar.xz', 1, 'http://pioneerspacesim.net/'),
(20, 'Reassembly', '重组', 329130, 1, NULL, 'reassembly', '89M', '2016-03-25 15:23:32', '2016-03-25 15:23:32', 'Reassembly_20160122_gamux.org_a2.tar.xz', 1, 'http://www.anisopteragames.com/'),
(21, 'MegaGlest', 'MegaGlest', 1, 1, NULL, 'megaglest', '392M', '2016-01-29 20:39:41', '2016-01-29 20:39:41', 'MegaGlest_3.12.0_gamux.org_a1.tar.xz', 1, 'https://megaglest.org/'),
(22, 'Icewind Dale: Enhanced Edition', '冰风谷：增强版', 321800, 1, NULL, 'icewinddale', '2.4G', '2016-04-03 12:12:44', '2016-04-03 12:12:44', 'IcewindDaleEnhancedEdition_1.3.2058_gamux.org_a1.tar.xz', 1, 'http://icewinddale.com/'),
(23, 'Abyss: The Wraiths Of Eden ', '深渊：伊甸园幽灵', 284710, 1, NULL, 'abyss-twoe', '802M', '2016-02-03 23:13:53', '2016-02-03 23:13:53', 'AbyssTheWraithsOfEden_steamcrack_gamux.org_a1.tar.xz', 1, 'http://www.artifexmundi.com/page/abyss/'),
(24, 'opsu!', 'opsu!', 1, 1, NULL, 'opsu', '57M', '2016-02-10 10:15:43', '2016-02-10 10:15:43', 'opsu_0.12.1_gamux.org_a1.tar.xz', 1, 'https://github.com/itdelatrisu/opsu/'),
(25, 'Stendhal', 'Stendhal', 2, 0, NULL, 'stendhal', '65M', '2016-01-28 14:31:32', '2016-01-28 14:31:32', 'stendhal_1.19_gamux.org_a1.tar.xz', 1, 'https://stendhalgame.org/'),
(26, 'Amnesia: The Dark Descent', '失忆症:黑暗后裔', 57300, 1, NULL, 'amnesia', '1.1G', '2016-02-20 15:45:53', '2016-02-20 15:45:53', 'AmnesiaTheDarkDescent_1.2.1_gamux.org_a1.tar.xz', 1, 'http://www.amnesiagame.com/'),
(27, 'Cogs', '奇想齿轮', 26500, 0, NULL, 'cogs', '106M', '2016-03-15 20:39:51', '2016-03-15 20:39:51', 'cogs_build4_gamux.org_a1.tar.xz', 1, 'http://www.cogsgame.com/'),
(28, 'BIT.TRIP RUNNER', '节奏奔跑者', 63710, 0, NULL, 'bittriprunner', '21M', '2016-02-23 22:30:23', '2016-02-23 22:30:23', 'Bit.Trip.Runner_hib_gamux.org_a1.tar.xz', 1, 'http://totallychoice.com/games/bittrip-runner'),
(29, 'Besiege', '围攻', 346010, 0, NULL, 'besiege', '143M', '2016-03-12 19:38:41', '2016-03-12 19:38:41', 'Besiege_0_08_gamux.org_a1.tar.xz', 1, 'http://www.besiege.spiderlinggames.co.uk/index.html'),
(30, 'Unknown Horizons', 'Unknown Horizons', 1, 1, NULL, 'unkownhorizons', '146M', '2016-01-27 20:32:05', '2016-01-27 20:32:05', 'unknown-horizons_2014.1_gamux.org_a1.tar.xz', 1, 'http://www.unknown-horizons.org/'),
(31, 'Cities: Skylines', '城市：天际线', 255710, 1, NULL, 'citiesskylines', '2.0G', '2016-03-21 22:16:24', '2016-03-21 22:16:24', 'CitiesSkylines_1.3.0f5_gamux.org_a1.tar.xz', 1, 'http://www.citiesskylines.com/'),
(32, 'Torchlight II', '火炬之光2', 200710, 1, NULL, 'torchlight2', '1.4G', '2016-03-25 00:34:56', '2016-03-25 00:34:56', 'TorchlightII_1.25.5.4_gamux.org_a1.tar.xz', 1, 'http://www.torchlight2game.com/'),
(33, 'Flare', 'Flare', 1, 1, NULL, 'flare', '223M', '2016-01-21 23:07:09', '2016-01-21 23:07:09', 'flare_0.19_gamux.org.tar.xz', 1, 'http://flarerpg.org/'),
(34, 'Baldur’s Gage:Enhanced Edition', '博德之门:增强版', 228280, 1, NULL, 'baldurgate1', '3.9G', '2016-04-20 11:31:55', '2016-02-21 22:47:40', 'BaldursGateEnhancedEdition_2.0.62.2_gamux.org_a2.tar.xz', 1, 'https://www.baldursgate.com/'),
(35, 'American Truck Simulator', '美国卡车模拟', 270880, 1, NULL, 'americantrucksimulator', '1.1G', '2016-02-14 01:27:11', '2016-02-14 01:27:11', 'AmericanTruckSimulator_crack_gamux.org_a1.tar.xz', 1, 'http://www.americantrucksimulator.com/'),
(36, 'Worms Reloaded', '百战天虫：重装上阵', 22600, 0, NULL, 'wormsreloaded', '719M', '2016-02-21 21:49:36', '2016-02-21 21:49:36', 'WormsReloaded_crack_gamux.org_a1.tar.xz', 1, '脸谱上的team17主页'),
(37, 'Zero Ballistics', '零弹道：坦克大战', 1, 0, NULL, 'zeroballistics', '115M', '2016-01-27 16:21:38', '2016-01-27 16:21:38', 'zeroballistics_2.0_gamux.org_a1.tar.xz', 1, 'http://www.zeroballistics.com/'),
(38, 'Caster', 'Caster', 29800, 0, NULL, 'caster', '88M', '2016-03-12 20:27:55', '2016-03-12 20:27:55', 'caster_1.3.1_gamux.org_a1.tar.xz', 1, 'http://www.casterthegame.com/'),
(39, 'Arx Fatalis', '地城英雄志', 1, 1, NULL, 'arxfatalis', '337M', '2016-02-20 23:42:34', '2016-02-20 23:42:34', 'ArxFatalis_1.18_gamux.org_a1.tar.xz', 1, 'http://arx-libertatis.org/'),
(40, 'Stepmania', 'Stepmania', 1, 1, NULL, 'stepmania', '57M', '2016-01-28 14:30:24', '2016-01-28 14:30:24', 'stepmania_5.0-git_gamux.org_a1.tar.xz', 1, 'http://www.stepmania.com/'),
(41, 'Torchlight', '火炬之光', 41500, 1, NULL, 'torchlight', '428M', '2016-03-26 02:40:05', '2016-03-26 02:40:05', 'Torchlight_1.15_gamux.org_a1.tar.xz', 1, 'http://www.torchlightgame.com/'),
(42, 'Factorio', '异星工厂', 427520, 1, NULL, 'factorio', '200M', '2016-03-15 21:23:03', '2016-03-15 21:23:03', 'Factorio_0.12.20_gamux.org_a1.tar.xz', 1, 'http://www.factorio.com/'),
(43, 'PokerTH', 'PokerTH', 1, 0, NULL, 'poketth', '77M', '2016-01-29 16:04:53', '2016-01-29 16:04:53', 'PokerTH_1.1.1_gamux.org_a1.tar.xz', 1, 'http://www.pokerth.net/'),
(44, 'Battle for Wesnoth', '韦诺之战', 1, 1, NULL, 'wesnoth', '361M', '2016-01-25 04:55:40', '2016-01-25 04:55:40', 'wesnoth_1.12.5_gamux.org.tar.xz', 1, 'http://www.wesnoth.org/'),
(45, 'To The Moon', '去月球', 206440, 1, NULL, 'tothemoon', '82M', '2016-02-01 21:37:38', '2016-02-01 21:37:38', 'ToTheMoon_offical_gamux.org_a1.tar.xz', 1, 'http://freebirdgames.com/to_the_moon/'),
(46, 'BIT.TRIP Presents... Runner2: Future Legend of Rhythm Alien', '节奏奔跑者2:未来外太空传奇', 218060, 0, NULL, 'bittriprunner2', '175M', '2016-02-25 21:15:21', '2016-02-25 21:15:21', 'BIT.TRIPPresents...Runner2:FutureLegendofRhythmAlien_hib_gamux.org_a1.tar.xz', 1, 'http://gaijingames.com/dev/games/bittrip-presents-runner2-future-legend-rhythm-alien'),
(47, 'Blinding Dark', '失明的黑暗', 303870, 0, NULL, 'bindingdark', '484M', '2016-02-25 22:23:21', '2016-02-25 22:23:21', 'BlindingDark_crack_gamux.org_a1.tar.xz', 1, 'http://store.steampowered.com/app/303870/'),
(48, 'SuperTux', 'SuperTux', 1, 1, NULL, 'supertux', '131M', '2016-01-16 22:05:02', '2016-01-16 22:05:02', 'supertux_0.4.0_gamux.org.tar.xz', 1, 'http://supertux.github.io/index.html'),
(49, 'A Bird Story', '鸟的故事', 327410, 1, NULL, 'abirdstory', '149M', '2016-02-01 22:49:54', '2016-02-01 22:49:54', 'ABirdStory_gog_gamux.org.a1.tar.xz', 1, 'http://freebirdgames.com/games/a-bird-story/'),
(50, 'Teeworlds', 'Teeworlds', 380840, 1, NULL, 'teeworlds', '8.0M', '2016-01-28 04:38:50', '2016-01-28 04:38:50', 'teeworlds_0.6.3_gamux.org_a1.tar.xz', 1, 'https://www.teeworlds.com/'),
(51, 'Amnesia: A Machine for Pigs', '失忆症:猪猡的机器', 239200, 1, NULL, 'amnesia2', '2.2G', '2016-02-21 02:51:55', '2016-02-21 02:51:55', 'AmnesiaAMachineForPigs_crack_gamux.org_a1.tar.xz', 1, 'http://www.aamfp.com/'),
(52, 'Savant - Ascent', '飞速电梯', 259530, 0, NULL, 'savant_ascent', '121M', '2016-02-10 09:57:38', '2016-02-10 09:57:38', 'SavantAscent_1.0.30.99_gamux.org_a1.tar.xz', 1, 'http://www.savantgame.com/'),
(53, 'Minecraft', '我的世界', 2, 1, NULL, 'minecraft', '171M', '2016-04-24 18:33:16', '2016-02-14 23:00:50', 'minecraft_1.9.2_gamux.org_a1.tar.xz', 1, 'https://minecraft.net/'),
(54, 'Lips of Suna', 'Lips of Suna', 1, 0, NULL, 'lipsofsuna', '131M', '2016-01-29 20:36:00', '2016-01-29 20:36:00', 'LipsOfSuna_0.8.0_gamux.org_a1.tar.xz', 1, 'http://lipsofsuna.org/'),
(55, 'Awesomenauts', '王牌英雄', 204300, 0, NULL, 'awesomenauts', '258M', '2016-03-13 23:07:23', '2016-03-13 23:07:23', 'Awesomenauts_3.0.2_gamux.org_a1.tar.xz', 1, 'http://www.awesomenauts.com/'),
(56, 'BattleBlock Theater®', '战斗砖块剧场', 238460, 1, NULL, 'battleblocktheater', '2.0G', '2016-03-12 22:51:25', '2016-03-12 22:51:25', 'BattleBlockTheater_crack_gamux.org_a1.tar.xz', 1, 'http://www.battleblocktheater.com/'),
(57, 'BosWars', 'BosWars', 1, 0, NULL, 'boswars', '126M', '2016-01-27 15:49:45', '2016-01-27 15:49:45', 'BosWars_2.7_gamux.org_a1.tar.xz', 1, 'http://www.boswars.org/'),
(58, '0 A.D.', '0AD', 1, 1, NULL, '0ad', '918M', '2016-02-03 00:20:11', '2016-02-03 00:20:11', '0AD_0.19_gamux.org_a1.tar.xz', 1, 'https://play0ad.com/'),
(59, 'Clarc', '机器人克拉克', 2, 0, NULL, 'clarc', '259M', '2016-03-13 00:54:49', '2016-03-13 00:54:49', 'CLARC_1.0.0.3_gamux.org_a1.tar.xz', 1, 'http://goldentricycle.com/'),
(60, 'Crazy Belts', '疯狂传送带', 355510, 1, NULL, 'crazybelts', '55M', '2016-03-22 14:22:56', '2016-03-22 14:22:56', 'CrazyBelts_1.3_gamux.org_a1.tar.xz', 1, 'http://store.steampowered.com/app/355510'),
(61, 'Plague Inc: Evolved', '瘟疫公司：物竞天择', 246620, 1, NULL, 'plagueinc', '372M', '2016-03-23 15:34:58', '2016-03-23 15:34:58', 'PlagueInc_1.0_gamux.org_a1.tar.xz', 1, 'http://www.plagueincevolved.com/'),
(62, 'Electronic Super Joy', '电子超快感', 244870, 0, NULL, 'electronicsuperjoy', '234M', '2016-04-15 20:49:52', '2016-04-15 20:49:52', 'electronicsuperJoy_1.12c_gamux.org_a1.tar.xz', 1, 'http://www.electronicsuperjoy.com/'),
(63, 'Sid Meier''s Civilization®: Beyond Earth™', '文明：太空', 65980, 1, NULL, 'sidmeierscivilizationbe', '5.2G', '2016-03-19 20:05:05', '2016-03-19 20:05:05', 'SidMeiersCivilizationBE_1124035_gamux.org_a1.tar.xz', 1, 'http://www.civilization.com/'),
(64, 'Starbound', '星界边境', 211820, 1, NULL, 'starbound', '653M', '2016-02-04 22:10:18', '2016-02-04 22:10:18', 'Starbound_151216_gamux.org_a1.tar.xz', 1, 'http://playstarbound.com/'),
(65, 'Sid Meier''s Civilization® V', '文明5', 8930, 1, NULL, 'sidmeierscivilization', '5.3G', '2016-03-19 09:13:11', '2016-03-19 09:13:11', 'SidMeiersCivilizationV_103144_gamux.org_a1.tar.xz', 1, 'http://www.civilization.com/'),
(66, 'Don''t Starve', '饥荒', 219740, 0, NULL, 'dontstarve', '549M', '2016-02-14 00:35:13', '2016-02-14 00:35:13', 'DontStarve_ShipWrecked_gamux.org_a1.tar.xz', 1, 'https://www.kleientertainment.com/games/dont-starve'),
(67, 'Car Mechanic Simulator 2015', '汽车修理工模拟2015', 320300, 1, NULL, 'carmechanicsimulator', '952M', '2016-03-25 01:04:52', '2016-03-25 01:04:52', 'CarMechanicSimulator2015_1.0.6.2_gamux.org_a1.tar.xz', 1, 'http://www.car.playway.com/'),
(68, 'FoFix', 'FoFix', 0, 0, NULL, 'fofix', '30M', '2016-01-28 03:01:34', '2016-01-28 03:01:34', 'fofix_4.0.0alpha2_gamux.org_a1.tar.xz', 1, 'https://github.com/fofix/fofix'),
(69, 'Tales of Maj''Eyal', '马基埃亚尔的传说', 1, 1, NULL, 'tome4', '364M', '2016-02-04 20:21:29', '2016-02-04 20:21:29', 'tome4_1.4.3_gamux.org_a1.tar.xz', 1, 'http://te4.org/'),
(70, 'Crimsonland', '血腥大地', 262830, 1, NULL, 'crimsonland', '119M', '2016-03-24 21:11:03', '2016-03-24 21:11:03', 'Crimsonland_1.0.9_gamux.org_a1.tar.xz', 1, 'http://www.crimsonland.com/'),
(71, 'Project Zomboid', '僵尸毁灭工程', 0, 1, NULL, 'projectzomboid', '496M', '2016-04-18 22:00:42', '2016-04-18 22:00:42', 'ProjectZomboid_33.20_gamux.org_a1.tar.xz', 1, 'http://www.projectzomboid.com/'),
(72, 'Zen Bound 2', '极限缠绕2', 61600, 1, NULL, 'zenbound2', '465M', '2016-04-21 00:10:15', '2016-04-21 00:10:15', 'ZenBound2_2.2.6_gamux.org_a1.tar.xz', 1, 'http://zenbound.com/'),
(73, 'FEZ', '菲斯', 224760, 1, NULL, 'fez', '317M', '2016-05-06 00:12:02', '2016-05-06 00:12:02', 'fez_1.10_gamux.org_a1.tar.xz', 1, 'http://www.fezgame.com/'),
(76, 'Metro 2033 Redux', '地铁:2033 归来', 286690, 1, NULL, 'metro2033redux', '6.5G', NULL, '2016-05-03 06:46:57', 'Metro2033Redux_crack_gamux.org_a1.tar.xz', 1, 'http://www.enterthemetro.com/'),
(78, 'Tomb Raider', '古墓丽影9', 203160, 1, NULL, 'tombraider2013', '12G', NULL, '2016-05-05 15:56:05', 'TombRaider2013_1.1_gamux.org_a1.tar.xz', 1, 'http://www.tombraider.com/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meta`
--
ALTER TABLE `meta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meta`
--
ALTER TABLE `meta`
  MODIFY `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
