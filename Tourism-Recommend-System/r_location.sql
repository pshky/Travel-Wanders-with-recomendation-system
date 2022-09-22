-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 10, 2022 at 12:08 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travelwanders`
--

-- --------------------------------------------------------

--
-- Table structure for table `r_location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `location_id` int(200) NOT NULL,
  `city` varchar(200) NOT NULL,
  `destination` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `index` int(100) NOT NULL,
  `image_url` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `city`, `destination`, `description`, `index`, `image_url`) VALUES
(3, 'Kathmandu', 'Swayambhunath Stupa', 'It is the oldest temple standing in Nepal whose constrcution date is not stated.Is an ancient religious complex atop a hill in the Kathmandu Valley, west of Kathmandu city. The Tibetan name for the site means \'Sublime Trees', 12, 'https://worldtravelfamily.com/wp-content/uploads/2020/01/Swayambhunath-Kathmandu-Guide-720x720.jpg.webp'),
(5, 'pokhara', 'Mahendra cave', 'Mahendra Cave is a cave located in Pokhara-16, batulechaur, Kaski district, close to the Kali khola, is a large limestone cave. It is a rare example of a cave system in Nepal containing stalagmites and stalactites.', 14, 'https://www.holidify.com/images/cmsuploads/compressed/shutterstock_1366524428_20190822140844.jpg'),
(7, 'Kathmandu', 'Tribhuwan Park', 'It is a picnic spot,park made in honor of late King Tribhuwan. Tribhuvan park is the public park located at the South-West corner of Kathmandu in Thankot. It is about 3.3 km from the Ring road of Kathmandu.', 16, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/06/e7/df/13/getlstd-property-photo.jpg?w=1200&h=-1&s=1'),
(8, 'Kathmandu', 'White Gumba', 'It is a Majestic Gumba made near Swayambhu hill which is white in colour.A peaceful monastery which is in fully white color. The environment around the monastery is very much pleasant,greenery & full of natural beauty. ', 17, 'https://www.vivaanadventure.com/wp-content/uploads/2018/07/19624545_1309885282461309_2903205821158522880_n-1080x540.jpg'),
(11, 'Lumbini', 'Srilankan Monastary', 'Its the monastery dedicated by the Srilankan government towards the buddhism in Lumbini .Also known as Sri Lanka Temple, the monastery is a beautiful Sri Lankan Buddhist establishments that give insights into the life of Gautama Buddha', 20, 'https://www.holidify.com/images/cmsuploads/compressed/20746195808_951d82acf8_b_20181009125630_20181009125655.jpg\n'),
(12, 'Lumbini', 'Maya Devi Pond', 'It is an ancient pond of huge significane located inside the mayadevi temple complex.Located right in front of the Maya Devi Temple in Lumbini, Maya Devi Pond is a square-shaped structure with steps all around to ascend to the water level.', 21, 'https://visitsnepal.com/wp-content/uploads/2020/10/maya-devi-pond-lumbini-960x1149.jpg\n'),
(13, 'Kathmandu', 'Talaju mandir', 'Taleju Temple is a Hindu temple dedicated to Taleju Bhawani, the royal goddess of the Malla dynasty of Nepal. It was built in 1564 by Mahendra Malla and is located in Hanuman Dhoka, Kathmandu Durbar Square,', 22, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Taleju_Temple_02.jpg/272px-Taleju_Temple_02.jpg'),
(15, 'Lalitpur', 'Godavari Botanical Garden', 'It is an botanical garden established in Godawari.Picturesque botanical gardens set in a valley including a tropical house plus rose & lily gardens.', 24, 'https://wonderguides.imgix.net/media/image/private-tour-of-godawari-botanical-garden-including-lunch_441184.jpg'),
(16, 'Lalitpur', 'Banglamukhi Temple', 'It is an 17th century temple complex dedicated to Lord Shiva. It is one of the most famous Hindu sanctuaries in Patan where greatest lovers visit each Thursday for the achievement of their own just as expert lives.', 25, 'https://www.khojnu.com/wp-content/uploads/2021/01/Bagalamukhi-Temple-%E0%A4%AC%E0%A4%97%E0%A4%B2%E0%A4%BE%E0%A4%AE%E0%A5%81%E0%A4%96%E0%A5%80.png'),
(19, 'Lalitpur', 'NagDaha', 'It the an pond dedicated to the lake snakes in Lalitpur.Nagdaha is a lake in the Dhapakhel Village Development Committee (VDC) of Lalitpur District, in the Kathmandu Valley, Nepal.', 28, 'https://nepaltraveller.com/uploads/destination/nagdaha.jpg'),
(20, 'Lalitpur', 'Rato Machindranath Temple', 'It is an ancient 13th century temple of machindranath loacted at Bungamati.Almost directly across the road from the Minnath Temple, down an alley, a white-columned gateway leads to the wide, open square containing the revered Rato', 29, 'https://ktmguide.com/wp-content/uploads/2020/03/r0-1.jpg'),
(22, 'Bhaktapur', 'Changu Narayan Temple', 'It is one of the oldest temple dedicated to Shiva. The ancient Hindu temple of Changu Narayan is located on a high hilltop that is also known as Changu or Dolagiri. The temple was surrounded by champak tree forest and a small village known as Changu.', 31, 'https://www.templepurohit.com/wp-content/uploads/2016/05/Changu_Narayan_Temple.jpg'),
(24, 'Bhaktapur', 'Siddha Pokhari', 'It is an 15th century pond made by an Malla king.Siddha Pokhari is an artificial rectangular pond located near the main gate of Bhaktapur Durbar Square. It is one of the old and traditional ponds in Nepal.', 33, 'https://www.holidify.com/images/cmsuploads/compressed/1280px-SiddhaPokhari_20190717085636.jpg'),
(26, 'Bhaktapur', 'Pottery Square', 'It is and pottery educational center.The square is just few minutes walk away from Taumadhi Square. It is not a massive production of pottery where is just a small section with few pottery display.', 35, 'https://www.redcarpetjourney.com/wp-content/uploads/2018/06/pottery-square-red-carpet-journey.jpg'),
(27, 'Bhaktapur', 'Pilot Baba Ashram', 'it is an temple dedicated to Pilot Baba.An ashram is a sanctuary or holy site, and Pilot Baba\'s Ashram is situated on a lovely hill with panoramic views of the Kathmandu Valley. The hike is moderate', 36, 'https://nepaltraveller.com/images/main/1605093330.sidetrackimageashram.jpg'),
(28, 'Bhaktapur', 'KailashNath Temple', 'It is an 17th century temple dedicated to Shiva. Kailashnath Mahadev Statue is the tallest Shiva statue in the world. It is also the tallest Hindu deity statue after Garuda Wisnu Kencana Statue in Bali, Indonesia', 37, 'https://www.bhaktapur.com/wp-content/uploads/2020/04/sanga_mahadev-1.jpg'),
(31, 'Pokhara', 'Lake Side', 'It is an tourist area loacted beside the famous fewa lake. Lakeside is named so, as it surrounds the Phewa Lake or the Phewa Tal, a gorgeous freshwater lake which is eerily similar to a mirror!', 40, 'https://holeinthedonut.com/wp-content/uploads/2012/06/Nepal-Pokhara-Lakeside.jpg'),
(35, 'Pokhara', 'Poon Hill', 'It is an hill sation loacted near ghandruk.Poon Hill is a hill station overlooking the Annapurna Massif range and Dhaulagiri mountain range, located on border of Myagdi District and Kaski District in Gandaki Province of Nepal.', 44, 'https://www.himalayanzonetreks.com/wp-content/themes/himalayanzone/lib/timthumb.php?src=https://www.himalayanzonetreks.com/wp-content/uploads/2017/07/annapurna_via_poonhill.jpg&w=632&h=365'),
(36, 'Pokhara', 'World Peace Pagoda', 'It is an buddhiest stupa made by the japanese government on top of a hill.Pokhara Shanti Stupa is a Buddhist monument on Anadu Hill of the former Pumdi Bhumdi Village Development Committee, in the district of Kaski, Nepal', 45, 'https://media.tacdn.com/media/attractions-splice-spp-674x446/08/b8/57/90.jpg'),
(37, 'Pokhara', 'International Mountain Museum', 'it is an museum made to reflect the mountaineering culture of Nepal.International mountain mesuem is a mesuem located in Pokhara. It is located near the Seti river. It is the mesuem where we can observe the culture and costoms', 46, 'https://www.hlimg.com/images/things2do/738X538/museum_1510122011t.jpg'),
(39, 'Lalitpur', 'khumbeshwar temple', 'Kumbheshwar Temple is one of the oldest Hindu temples, situated 200m from the northern part of Patan Durbar Square. It was built in the 14th century by King Jayasthiti Malla that makes it the oldest temple in Patan', 48, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/02/36/bd/f9/templo.jpg?w=500&h=400&s=1'),
(40, 'Kathmandu', 'Sundarijal', 'It is an short hiking trip near kathmandu for proper wildlife. Sundarijal is a village and former Village Development Committee that is now part of Gokarneshwar Municipality in Kathmandu District in Province No. 3 of central Nepal.', 49, 'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/17/b8/b9/04/sundarijal-how-does-fresh.jpg?w=1200&h=1200&s=1'),
(41, 'Lalitpur', 'Krishna mandir', 'Krishna Mandir is a 17th-century Shikhara-style temple built by King Siddhi Narsing Malla. It is located at the Patan Durbar Square, a UNESCO World Heritage Site. It was damaged by the Nepal earthquake of April 2015, and was later restored in 2018', 50, 'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/39/b2/63.jpg'),
(47, 'Kirtipur', 'Tinthana Suspension Bridge', 'One of the secret place of Kirtipur which gives great scenery and mind-blowing views. Kirtipur suspension bridge linking neighbouring Tinthana/Chandragiri, lies in the north west of the hilltop town providing visitors with breathtaking views.\n\n', 61, 'https://www.teensyideas.com/wp-content/uploads/2021/01/Bridge_Kirtipur-1024x688.jpg\n'),
(48, 'Lumbini', 'Lumbini Monastic Site', 'It the monasic site of Lumbini.One of the largest monasteries in Lumbini is the Chinese Monastery, which has a peaceful internal courtyard within its walls and a central temple.', 62, 'https://www.holidify.com/images/cmsuploads/compressed/Royal_Thai_Monastery,Lumbini_20181009131055.jpg'),
(50, 'Lalitpur', 'Patan Durbar Square', 'It is one of the 3 durbar Squares of the valley loacted in Lalitpur and listed in UNESCO. One of its attractions is the ancient royal palace where the Malla Kings of Lalitpur resided', 64, 'https://www.holidify.com/images/cmsuploads/compressed/20746195808_951d82acf8_b_20181009125630_20181009125655.jpg'),
(51, 'Kathmandu', 'chandagiri', 'Chandragiri Hill is seven kilometres from Thankot, and lies on the south-west side of Kathmandu Valley which is 2551 metres above sea level. The hill provides panoramic views of Kathmandu Valley and the Himalayan ranges from Annapurna to Everest', 65, 'https://www.visionsoftravel.org/wp-content/uploads/2020/10/Chandragiri-Hills-Kathmandu-Nepal-21-1000x458.jpg'),
(53, 'Lalitpur', 'Golden Temple', 'It is an 13th century temple complex built on Golden scheme. Hira?yavar?a Mah?vih?ra, also Kwa Baha: informally called The Golden Temple with literal meaning \"Gold-colored Great Monastery\", is a historical vihara situated in Patan', 67, 'https://cdn.elebase.io/173fe953-8a63-4a8a-8ca3-1bacb56d78a5/a00983a0-9883-41bb-a6d2-cc54298456bd-museum-cover.jpg?q=90'),
(57, 'Kirtipur', 'Bagh Bhairab Temple', 'Bagh Bhairab Temple is a historic Hindu temple dedicated to Bagh Bhairab, an incarnation of Shiva as a tiger ', 72, 'https://www.nepal-travel-guide.com/wp-content/uploads/2020/06/20200605_215108.png'),
(59, 'Kirtipur', 'Uma Mahaeshwor Temple', 'It is an elegant three-story structure commanding fine views of the Kathmandu Valley and the surrounding mountains. ', 74, 'https://honeyguideapps.com/sites/default/files/Uma%20maheshwar.jpg'),
(61, 'Lumbini', 'Ashokan Pillar', 'A pillar inscribed by the Great indian emperor Ashoka.The Lumbini pillar inscription, also called the Paderia inscription, is an inscription in the ancient Brahmi script, discovered in December 1896 on a pillar of Ashoka in Lumbini', 76, 'https://thumbs.dreamstime.com/z/ashoka-pillar-lumbini-nepal-aligned-mayadevi-temp'),
(64, 'Kirtipur', 'Dev Pukkhu', 'center of attraction every year during Indra Jatra, when people of Kirtipur gather around the pond with various musical programmes.', 79, 'https://3.bp.blogspot.com/-_jLLD6WPwCI/WKVnMn7SS7I/AAAAAAAAPXA/9PpiPkn2P6MF-zn3Rmng2VbL_xNYsBznACLcB/w1200-h630-p-k-no-nu/22040078262_5b67c0b8ca_b.jpg'),
(65, 'Pokhara', 'Ghandruk', 'It is an old gurung village located on the outskirts of pokhara.A village in the Modi Khola Valley of Nepal\'s Annapurna region, Ghandruk offers panoramas of the surrounding Annapurna massif, including good views of Annapurna', 43, 'https://assets-cdn.kathmandupost.com/uploads/source/news/2019/others/shutterstock_725322385.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
