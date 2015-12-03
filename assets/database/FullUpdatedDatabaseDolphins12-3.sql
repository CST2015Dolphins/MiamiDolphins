-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 03, 2015 at 11:16 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dolphins`
--
CREATE DATABASE IF NOT EXISTS `dolphins` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `dolphins`;

-- --------------------------------------------------------

--
-- Table structure for table `game_history`
--

DROP TABLE IF EXISTS `game_history`;
CREATE TABLE IF NOT EXISTS `game_history` (
  `HISTORYID` int(11) NOT NULL AUTO_INCREMENT,
  `TEAMCODE` varchar(3) NOT NULL,
  `OPTEAMCODE` varchar(3) NOT NULL,
  `HOMETEAM` tinyint(1) NOT NULL,
  `HOMESCORE` int(11) NOT NULL,
  `AWAYSCORE` int(11) NOT NULL,
  `DATE` date NOT NULL,
  PRIMARY KEY (`HISTORYID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `game_history`
--

INSERT INTO `game_history` (`HISTORYID`, `TEAMCODE`, `OPTEAMCODE`, `HOMETEAM`, `HOMESCORE`, `AWAYSCORE`, `DATE`) VALUES
(1, 'MIA', 'PIT', 1, 30, 15, '2015-10-04'),
(2, 'MIA', 'CAR', 0, 45, 25, '2015-10-11'),
(3, 'MIA', 'SEA', 1, 35, 32, '2015-10-18');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
CREATE TABLE IF NOT EXISTS `players` (
  `PLAYERID` int(11) NOT NULL AUTO_INCREMENT,
  `TEAMCODE` varchar(3) NOT NULL,
  `FIRSTNAME` varchar(50) NOT NULL,
  `LASTNAME` varchar(50) NOT NULL,
  `PLAYERNUM` int(2) NOT NULL,
  `IMAGE` varchar(100) DEFAULT NULL,
  `INFO` varchar(500) NOT NULL,
  `POSITION` varchar(30) NOT NULL,
  PRIMARY KEY (`PLAYERID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`PLAYERID`, `TEAMCODE`, `FIRSTNAME`, `LASTNAME`, `PLAYERNUM`, `IMAGE`, `INFO`, `POSITION`) VALUES
(1, 'MIA', 'Ryan', 'Tannehill', 17, 'RyanTannehill.jpg', 'Ryan Timothy Tannehill III is an American football quarterback for the Miami Dolphins of the National Football League. He was drafted by the Dolphins eighth overall in the 2012 NFL Draft. He played college football at Texas A&M.', 'Quarterback'),
(2, 'MIA', 'Ndamukong', 'Suh', 93, 'NdamukongSuh.jpg', 'Ndamukong Suh is an American football defensive tackle for the Miami Dolphins of the National Football League. He was drafted by the Detroit Lions second overall in the 2010 NFL Draft.', 'Defensive tackle'),
(3, 'MIA', 'Knowshon', 'Moreno', 28, 'KnowshonMoreno.jpg', 'Knowshon Rockwell Moreno is an American football running back who is currently a free agent. He was selected 12th overall in the 2009 NFL Draft by the Denver Broncos. He played college football at the University of Georgia.', 'Running back'),
(4, 'MIA', 'DeVante', 'Parker', 11, 'DeVanteParker.jpg', 'DeVante Parker is an American football wide receiver for the Miami Dolphins of the National Football League. He played college football for the University of Louisville Cardinals.', 'Wide receiver'),
(5, 'MIA', 'Matt', 'Moore', 8, 'MattMoore.jpg', 'Matthew Erickson Moore is an American football quarterback for the Miami Dolphins of the National Football League. He played college football at UCLA and Oregon State University.', 'Quarterback'),
(6, 'MIA', 'Jarvis', 'Landry', 14, 'JarvisLandry.jpg', 'Jarvis Charles Landry is an American football wide receiver for the Miami Dolphins of the National Football League. He was drafted by the Dolphins in the second round of the 2014 NFL Draft. He played college football at LSU.', 'Wide receiver'),
(7, 'MIA', 'Cameron', 'Wake', 91, 'CameronWake.jpg', 'Derek Cameron Wake is an American football defensive end for the Miami Dolphins of the National Football League. He played college football for Penn State University, and was signed by the New York Giants as an undrafted free agent in 2005.', 'Defensive end'),
(8, 'MIA', 'Greg', 'Jennings', 85, 'GregJennings.jpg', 'Gregory Jennings, Jr. is an American football wide receiver for the Miami Dolphins of the National Football League. He was drafted by the Green Bay Packers out of Western Michigan University in the second round of the 2006 NFL Draft.', 'Wide receiver'),
(9, 'MIA', 'Brent', 'Grimes', 21, 'BrentGrimes.jpg', 'Brent Omar Grimes, is an American football cornerback for the Miami Dolphins of the National Football League. He played college football at Shippensburg University, and signed with the Atlanta Falcons as an undrafted free agent in 2006.', 'Cornerback'),
(10, 'MIA', 'Jay', 'Ajayi', 33, 'JayAjayi.jpg', 'Jay Ajayi is an English American football running back for the Miami Dolphins of the National Football League. He was drafted by the Dolphins in the fifth round of the 2015 NFL Draft. He played college football at Boise State.', 'Running back'),
(11, 'MIA', 'Lamar', 'Miller', 26, 'LamarMiller.jpg', 'Lamar Miller is an American football running back for the Miami Dolphins of the National Football League. Miller played college football at the University of Miami and was considered one of the top running backs in the 2012 NFL Draft.', 'Running back'),
(12, 'MIA', 'Kenny', 'Stills', 10, 'KennyStills.jpg', 'Kenneth Lee Stills, Jr. is an American football wide receiver for the Miami Dolphins of the National Football League.', 'Wide receiver'),
(13, 'MIA', 'Jordan', 'Cameron', 84, 'JordanCameron.jpg', 'Jordan Cravens Cameron is an American football tight end for the Miami Dolphins of the National Football League. He was drafted by the Cleveland Browns in the fourth round of the 2011 NFL Draft. He played college football at USC.', 'Tight end'),
(14, 'MIA', 'Chris', 'McCain', 47, 'ChrisMcCain.jpg', 'Christian Cornelius McCain is an American football linebacker for the Miami Dolphins of the National Football League. He played college football at California. He was signed by the Dolphins as an undrafted free agent in 2014.', 'Linebacker'),
(15, 'MIA', 'Mike', 'Pouncey', 51, 'MikePouncey.jpg', 'James Michael Pouncey is an American football center and guard for the Miami Dolphins of the National Football League.', 'Center'),
(16, 'MIA', 'Reshad', 'Jones', 20, 'ReshadJones.jpg', 'Reshad Monquez Jones is an American football safety for the Miami Dolphins of the National Football League. He was drafted by the Dolphins in the fifth round of the 2010 NFL Draft. He played college football at the University of Georgia.', 'Safety'),
(17, 'MIA', 'Branden', 'Albert', 71, 'BrandenAlbert.jpg', 'Branden Albert is an American football offensive tackle for the Miami Dolphins of the National Football League. He was drafted by the Kansas City Chiefs 15th overall in the 2008 NFL Draft. He played college football at Virginia.', 'Tackle'),
(18, 'MIA', 'Olivier', 'Vernon', 50, 'OlivierVernon.jpg', 'Olivier Alexander Vernon is an American football defensive end for the Miami Dolphins of the National Football League. He was drafted by the Dolphins in the third round of the 2012 NFL Draft. He played college football at the University of Miami', 'Defensive end'),
(19, 'MIA', 'Louis', 'Delmas', 25, 'LouisDelmas.jpg', 'Louis Delmas is an American football safety for the Miami Dolphins of the National Football League. He was drafted by the Detroit Lions in the second round of the 2009 NFL Draft. He played college football at Western Michigan.', 'Safety'),
(20, 'MIA', 'Tony', 'Lippett', 36, 'TonyLippett.jpg', 'Tony Lippett is an American football cornerback for the Miami Dolphins of the National Football League. He played college football for the Michigan State Spartans', 'Cornerback'),
(21, 'MIA', 'C.J.', 'Mosley', 94, 'CJMosley.jpg', 'Calvin Michael "C. J." Mosley, Jr. is an American football defensive tackle for the Miami Dolphins of the National Football League. He was drafted by the Minnesota Vikings in the sixth round of the 2005 NFL Draft.', 'Defensive tackle'),
(22, 'MIA', 'Jamar', 'Taylor', 22, 'JamarTaylor.jpg', 'Jamar Taylor is an American football cornerback for the Miami Dolphins of the National Football League. He was drafted by the Dolphins in the second round of the 2013 NFL Draft. He played college football at Boise State.', 'Cornerback'),
(23, 'MIA', 'Rishard', 'Matthews', 86, 'RishardMatthews.jpg', 'Rishard Andre Matthews is an American football wide receiver for the Miami Dolphins of the National Football League. He played college football at the University of Nevada. He was drafted by the Dolphins in the seventh round of the 2012 NFL Draft', 'Wide receiver'),
(24, 'MIA', 'Jelani', 'Jenkins', 43, 'JelaniJenkins.jpg', 'Jelani M. Jenkins is an American football linebacker for the Miami Dolphins of the National Football League. He was drafted by the Dolphins in the fourth round of the 2013 NFL Draft. He played college football for the University of Florida.', 'Linebacker'),
(25, 'MIA', 'Jordan', 'Phillips', 97, 'JordanPhillips.jpg', 'Jordan Phillips is an American football defensive tackle for the Miami Dolphins of the National Football League . He played college football at Oklahoma.', 'Defensive tackle'),
(26, 'MIA', 'Derrick', 'Shelby', 79, 'DerrickShelby.jpg', 'Derrick Shelby is an American football defensive end for the Miami Dolphins. He was not drafted in the 2012 NFL Draft. He played college football at Utah', 'Defensive end'),
(27, 'MIA', 'A.J.', 'Francis', 96, 'AJFrancis.jpg', 'Anthony Joseph Francis is an American football defensive tackle for the Miami Dolphins of the National Football League. He was originally signed by the Dolphins as an undrafted free agent in 2013. Francis played college football at Maryland.', 'Defensive tackle'),
(28, 'MIA', 'Koa', 'Misi', 55, 'KoaMisi.jpg', 'Nawa''akoa Lisiate Foti Analeseanoa Misi is an American football linebacker. He played college football at Utah. He was considered one of the top linebacker prospects for the 2010 NFL Draft.', 'Linebacker'),
(29, 'MIA', 'Matt', 'Hazel', 83, 'MattHazel.jpg', 'Matt Hazel is an American football wide receiver for the Miami Dolphins of the National Football League. He was drafted by the Dolphins in the sixth round of the 2014 NFL Draft. He played college football at Coastal Carolina.', 'Wide receiver'),
(30, 'MIA', 'Kelvin', 'Sheppard', 97, 'KelvinSheppard.jpg', 'Kelvin Anthony Sheppard is an American football linebacker for the Miami Dolphins of the National Football League. The Buffalo Bills drafted him with the 68th pick in the 3rd round of the 2011 NFL Draft. He played college football at LSU.', 'Linebacker'),
(31, 'MIA', 'Dion', 'Sims', 80, 'DionSims.jpg', 'Dion Sims is an American football tight end for the Miami Dolphins of the National Football League. He was drafted by the Dolphins in the fourth round of the 2013 NFL Draft. He played college football at Michigan State.', 'Tight end'),
(32, 'MIA', 'Jason', 'Fox', 74, 'JasonFox.jpg', 'Jason Fox is an American football offensive tackle for the Miami Dolphins of the National Football League. He was drafted by the Detroit Lions in the fourth round of the 2010 NFL Draft. He played college football at the University of Miami.', 'Tackle'),
(33, 'MIA', 'Earl', 'Mitchell', 90, 'EarlMitchell.jpg', 'Earl Mitchell is an American football player for the Miami Dolphins of the National Football League. Mitchell is primarily a defensive tackle but has been recently tried out as a fullback.', 'Nose tackle'),
(34, 'MIA', 'Terrence', 'Fede', 78, 'TerranceFede.jpg', 'Terrence Fede is an American football defensive end for the Miami Dolphins of the National Football League. He was drafted by the Dolphins in the seventh round of the 2014 NFL Draft. He played college football at Marist.', 'Defensive end'),
(35, 'MIA', 'Dustin', 'Keller', 81, 'DustinKeller.jpg', 'Dustin Kendall Keller is a former American football tight end. He was drafted by the New York Jets in the first round of the 2008 NFL Draft. He played college football at Purdue. Keller has also been a member of the Miami Dolphins.', 'Tight end');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `TEAMCODE` varchar(3) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `CONFERENCE` varchar(50) NOT NULL,
  `DIVISION` varchar(50) NOT NULL,
  `IMAGE` varchar(100) DEFAULT NULL,
  `CITY` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`ID`, `TEAMCODE`, `NAME`, `CONFERENCE`, `DIVISION`, `IMAGE`, `CITY`) VALUES
(1, 'MIA', 'Dolphins', 'American Football Conference', 'AFC East', 'MIA_logo-80x90.gif', 'Miami'),
(2, 'NE', 'Patriots', 'American Football Conference', 'AFC East', 'NE_logo-80x90.gif', 'New England'),
(3, 'NYJ', 'Jets', 'American Football Conference', 'AFC East', 'NYJ_logo-80x90.gif', 'New York'),
(4, 'BUF', 'Bills', 'American Football Conference', 'AFC East', 'BUF_logo-80x90.gif', 'Buffalo'),
(5, 'CIN', 'Bengals', 'American Football Conference', 'AFC North', 'CIN_logo-80x90.gif', 'Cincinnati'),
(6, 'PIT', 'Steelers', 'American Football Conference', 'AFC North', 'PIT_logo-80x90.gif', 'Pittsburgh'),
(7, 'CLE', 'Browns', 'American Football Conference', 'AFC North', 'CLE_logo-80x90.gif', 'Cleveland'),
(8, 'BAL', 'Ravens', 'American Football Conference', 'AFC North', 'BAL_logo-80x90.gif', 'Baltimore'),
(9, 'IND', 'Colts', 'American Football Conference', 'AFC South', 'IND_logo-80x90.gif', 'Indianapolis'),
(10, 'JAC', 'Jaguars', 'American Football Conference', 'AFC South', 'JAC_logo-80x90.gif', 'Jacksonville'),
(11, 'HOU', 'Texans', 'American Football Conference', 'AFC South', 'HOU_logo-80x90.gif', 'Houston'),
(12, 'TEN', 'Titans', 'American Football Conference', 'AFC South', 'TEN_logo-80x90.gif', 'Tennessee'),
(13, 'DEN', 'Broncos', 'American Football Conference', 'AFC West', 'DEN_logo-80x90.gif', 'Denver'),
(14, 'OAK', 'Raiders', 'American Football Conference', 'AFC West', 'OAK_logo-80x90.gif', 'Oakland'),
(15, 'SD', 'Chargers', 'American Football Conference', 'AFC West', 'SD_logo-80x90.gif', 'San Diego'),
(16, 'KC', 'Chiefs', 'American Football Conference', 'AFC West', 'KC_logo-80x90.gif', 'Kansas City'),
(17, 'DAL', 'Cowboys', 'National Football Conference', 'NFC East', 'DAL_logo-80x90.gif', 'Dallas'),
(18, 'NYG', 'Giants', 'National Football Conference', 'NFC East', 'NYG_logo-80x90.gif', 'New York'),
(19, 'WAS', 'Redskins', 'National Football Conference', 'NFC East', 'WAS_logo-80x90.gif', 'Washington'),
(20, 'PHI', 'Eagles', 'National Football Conference', 'NFC East', 'PHI_logo-80x90.gif', 'Philadelphia'),
(21, 'GB', 'Packers', 'National Football Conference', 'NFC North', 'GB_logo-80x90.gif', 'Green Bay'),
(22, 'MIN', 'Vikings', 'National Football Conference', 'NFC North', 'MIN_logo-80x90.gif', 'Minnesota'),
(23, 'DET', 'Lions', 'National Football Conference', 'NFC North', 'DET_logo-80x90.gif', 'Detroit'),
(24, 'CHI', 'Bears', 'National Football Conference', 'NFC North', 'CHI_logo-80x90.gif', 'Chicago'),
(25, 'CAR', 'Panthers', 'National Football Conference', 'NFC South', 'CAR_logo-80x90.gif', 'Carolina'),
(26, 'ATL', 'Falcons', 'National Football Conference', 'NFC South', 'ATL_logo-80x90.gif', 'Atlanta'),
(27, 'TB', 'Buccaneers', 'National Football Conference', 'NFC South', 'TB_logo-80x90.gif', 'Tampa Bay'),
(28, 'NO', 'Saints', 'National Football Conference', 'NFC South', 'NO_logo-80x90.gif', 'New Orleans'),
(29, 'ARI', 'Cardinals', 'National Football Conference', 'NFC West', 'ARI_logo-80x90.gif', 'Arizona'),
(30, 'STL', 'Rams', 'National Football Conference', 'NFC West', 'STL_logo-80x90.gif', 'St. Louis'),
(31, 'SF', '49ers', 'National Football Conference', 'NFC West', 'SF_logo-80x90.gif', 'San Francisco'),
(32, 'SEA', 'Seahawks', 'National Football Conference', 'NFC West', 'SEA_logo-80x90.gif', 'Seattle');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
